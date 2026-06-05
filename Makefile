# Makefile for specifications-ITS-BMM
#
# (Re)generates the ODIN and YAML serializations of the BMM schemas, per the
# update flow described in AGENTS.md: the .bmm.json files in this repository
# are the source of truth; ODIN/YAML are generated from them by the
# bmm-publisher tool. Updated JSON schemas arrive from the specifications-*
# repositories via `make import` (driven by .github/workflows/generate.yml).
#
# Run `make help` (or just `make`) for an overview of the available targets.
#
# Requirements: docker (the bmm-publisher image bundles everything else).

IMAGE     ?= ghcr.io/openehr/bmm-publisher:latest
BUILD_DIR := .build

# Conventional location of the .bmm.json files inside a specifications-*
# repository checkout (used by `make import SRC=<checkout>`).
SRC_BMM_DIR := computable/BMM

DOCKER_RUN := docker run --rm --user $(shell id -u):$(shell id -g) -v $(CURDIR):/work

JSON_FILES := $(wildcard components/*/json/*.bmm.json)
YAML_FILES := $(subst /json/,/yaml/,$(JSON_FILES:.bmm.json=.bmm.yaml))
ODIN_FILES := $(subst /json/,/odin/,$(JSON_FILES:.bmm.json=.bmm))

# Pretty-print helpers (degrade gracefully when not a TTY)
BOLD  := $(shell tput bold 2>/dev/null)
CYAN  := $(shell tput setaf 6 2>/dev/null)
DIM   := $(shell tput dim 2>/dev/null)
RESET := $(shell tput sgr0 2>/dev/null)

.DEFAULT_GOAL := help

.PHONY: all import generate yaml odin status clean help

##@ Main targets

all: generate ## Regenerate all out-of-date ODIN and YAML files

# Copy each openehr_<component>_<release>.bmm.json from a specifications-*
# repository checkout to its components/<COMPONENT>/json/ destination. Files
# are only overwritten when their content differs, so unchanged schemas keep
# their timestamps and do not trigger regeneration. JSON_FILES is computed at
# parse time, so run `make generate` as a separate invocation after importing.
import: ## Copy changed .bmm.json files from <SRC>/computable/BMM/ into components/<COMPONENT>/json/
	@test -n "$(SRC)" || { echo "error: usage: make import SRC=/path/to/specifications-XX checkout" >&2; exit 2; }
	@test -d "$(SRC)/$(SRC_BMM_DIR)" || { echo "error: $(SRC)/$(SRC_BMM_DIR) not found" >&2; exit 2; }
	@found=0; changed=0; \
	for f in "$(SRC)/$(SRC_BMM_DIR)"/*.bmm.json; do \
		[ -e "$$f" ] || continue; \
		found=1; \
		b=$$(basename "$$f"); \
		case "$$b" in \
			openehr_*_*.bmm.json) ;; \
			*) echo "error: unexpected schema filename: $$b (want openehr_<component>_<release>.bmm.json)" >&2; exit 1;; \
		esac; \
		comp=$$(echo "$$b" | cut -d_ -f2 | tr "[:lower:]" "[:upper:]"); \
		dst="components/$$comp/json/$$b"; \
		if ! cmp -s "$$f" "$$dst"; then \
			mkdir -p "components/$$comp/json"; \
			cp "$$f" "$$dst"; \
			echo "  imported $$dst"; \
			changed=1; \
		fi; \
	done; \
	[ "$$found" = 1 ] || { echo "error: no .bmm.json files in $(SRC)/$(SRC_BMM_DIR)" >&2; exit 1; }; \
	[ "$$changed" = 1 ] || echo "  all schemas already up to date"

# Generate the YAML and ODIN variant of each .bmm.json file. bmm-publisher
# writes to output/BMM-YAML/ and output/BMM-ODIN/ inside the container; we
# mount $(BUILD_DIR) there and copy each result to its
# components/<COMPONENT>/{yaml,odin}/ destination.
generate: yaml odin ## Regenerate out-of-date ODIN and YAML files from the JSON sources

##@ Partial generation

yaml: $(YAML_FILES) ## Regenerate out-of-date YAML files only

odin: $(ODIN_FILES) ## Regenerate out-of-date ODIN files only

##@ Housekeeping

status: ## Show schemas whose ODIN/YAML are out of date relative to their JSON
	@stale=0; \
	for t in $(YAML_FILES) $(ODIN_FILES); do \
		$(MAKE) --no-print-directory -q $$t 2>/dev/null || { echo "  stale    $$t"; stale=1; }; \
	done; \
	[ "$$stale" = 1 ] || echo "  everything up to date"

clean: ## Remove the intermediate build directory (.build/)
	rm -rf $(BUILD_DIR)

help: ## Show this help
	@printf '\n$(BOLD)specifications-ITS-BMM$(RESET) — openEHR BMM schema maintenance\n'
	@printf '\nThe .bmm.json schemas in this repository are the source of truth; ODIN and\n'
	@printf 'YAML are generated from them — never edit those by hand. JSON updates arrive\n'
	@printf 'from the specifications-* repositories ($(CYAN)make import$(RESET)); CI then regenerates\n'
	@printf 'ODIN/YAML ($(CYAN)make generate$(RESET)) and commits all serializations together.\n'
	@printf '\n$(BOLD)Usage:$(RESET)\n  make $(CYAN)<target>$(RESET) $(DIM)[IMAGE=<bmm-publisher image>] [SRC=<checkout>]$(RESET)\n'
	@awk 'BEGIN {FS = ":.*##"} \
		/^##@/ { printf "\n$(BOLD)%s$(RESET)\n", substr($$0, 5) } \
		/^[a-zA-Z_-]+:.*?##/ { printf "  $(CYAN)%-10s$(RESET) %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
	@printf '\n$(BOLD)Examples:$(RESET)\n'
	@printf '  make generate                             $(DIM)# regenerate stale ODIN/YAML$(RESET)\n'
	@printf '  make import SRC=../specifications-RM      $(DIM)# pull updated JSON from a checkout$(RESET)\n'
	@printf '  make components/RM/yaml/openehr_rm_1.2.0.bmm.yaml\n'
	@printf '                                            $(DIM)# regenerate a single file$(RESET)\n'
	@printf '  make generate IMAGE=ghcr.io/openehr/bmm-publisher:0.7.0\n'
	@printf '                                            $(DIM)# pin a specific tool version$(RESET)\n'
	@printf '\n$(BOLD)Requirements:$(RESET) docker $(DIM)(image: $(IMAGE))$(RESET)\n\n'

.SECONDEXPANSION:

$(YAML_FILES): %.bmm.yaml: $$(subst /yaml/,/json/,$$*).bmm.json
	@mkdir -p $(@D) $(BUILD_DIR)
	@echo "$(BOLD)yaml$(RESET)  $< -> $@"
	@$(DOCKER_RUN) -v $(CURDIR)/$(BUILD_DIR):/app/output $(IMAGE) yaml -q /work/$<
	@cp $(BUILD_DIR)/BMM-YAML/$(@F) $@

$(ODIN_FILES): %.bmm: $$(subst /odin/,/json/,$$*).bmm.json
	@mkdir -p $(@D) $(BUILD_DIR)
	@echo "$(BOLD)odin$(RESET)  $< -> $@"
	@$(DOCKER_RUN) -v $(CURDIR)/$(BUILD_DIR):/app/output $(IMAGE) odin -q /work/$<
	@cp $(BUILD_DIR)/BMM-ODIN/$(@F) $@
