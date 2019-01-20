	rm_publisher = <"openehr">
	rm_release = <"1.1.0">
	packages = <
		["ORG.OPENEHR.PROC.TASK_PLANNING"] = <
			packages = <
				["DEFINITION"] = <
					name = <"definition">
					classes = <"WORK_PLAN", "TASK_PLAN", "TASK_PARTICIPATION", "PLAN_ITEM", "TASK_GROUP", "TASK", "DISPATCHABLE_TASK", "PERFORMABLE_TASK", "PLAN_DATA_CONTEXT", "CONTEXT_VALUE", "CONTEXT_EXPRESSION", "CONTEXT_VARIABLE", "BOOLEAN_CONTEXT_EXPRESSION", "CONTEXT_CONSTANT", "EXTERNAL_VARIABLE", "LOCAL_VARIABLE", "EVENT_VARIABLE", "STATE_VARIABLE", "CONTINUOUS_EVENT_VARIABLE", "PLAN_CALENDAR", "PLAN_TIMELINE", "CALENDAR_ENTRY", "TASK_REPEAT", "TASK_ACTION", "PERFORMABLE_ACTION", "DISPATCHABLE_ACTION", "DEFINED_ACTION", "SYSTEM_REQUEST", "EXTERNAL_REQUEST", "LINKED_PLAN", "HAND_OFF", "SUB_PLAN", "DATASET_SPEC", "RESOURCE_PARTICIPATION", "CHOICE_GROUP", "CHOICE_BRANCH", "ADHOC_GROUP", "ADHOC_BRANCH", "OVERRIDE_TYPE", "CONDITION_GROUP", "CONDITION_BRANCH", "DECISION_GROUP", "DECISION_BRANCH", "EVENT_GROUP", "EVENT_BRANCH", "SUBJECT_PRECONDITION", "TASK_COSTING", "EXECUTION_TYPE", "TASK_WAIT", "TIMELINE_MOMENT", "MANUAL_NOTIFICATION", "SYSTEM_NOTIFICATION", "TASK_TRANSITION", "PLAN_EVENT", "TIMER_EVENT", "CALENDAR_EVENT", "DELAY_EVENT", "STATE_TRIGGER", "REMINDER", "TIMER_WAIT", "EVENT_WAIT", "EVENT_ACTION", "RESUME_ACTION", "CALLBACK_WAIT", "CALLBACK_NOTIFICATION">
				>
				["HISTORY"] = <
					name = <"history">
					classes = <"TASK_PLAN_EXECUTION_HISTORY", ...>
				>
			>
			name = <"org.openehr.proc.task_planning">
			classes = <"SYSTEM_CALL", "PARAMETER_MAPPING", "PARAMETER_DEF", "QUERY_CALL", "API_CALL", "TASK_LIFECYCLE", "TIME_SPECIFIER", "CLOCK_TIME", "CALENDAR_TIME", "CUSTOMARY_TIME", "TEMPORAL_RELATION", "RESUME_TYPE">
		>
	>
	schema_name = <"proc_task_planning">
	schema_revision = <"1.1.0.1">
	schema_lifecycle_state = <"development">
	schema_author = <"Thomas Beale <thomas.beale@openehr.org>">
	schema_description = <"openEHR Release 1.1.0 Task Management schema">
	bmm_version = <"2.3">
	model_name = <"TASK_PLANNING">
	includes = <
		["1"] = <
			id = <"openehr_rm_ehr_1.0.4">
		>
		["2"] = <
			id = <"openehr_rm_demographic_1.0.4">
		>
		["3"] = <
			id = <"openehr_lang_1.0.0">
		>
	>
	primitive_types = <
		["Any"] = <
			name = <"Any">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <46>
		>
		["Ordered"] = <
			documentation = <"Ancestor of types with total order relation defined, i.e. '<' and '='.">
			name = <"Ordered">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <47>
		>
		["Numeric"] = <
			documentation = <"Ancestor of numeric types.">
			name = <"Numeric">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <48>
		>
		["Ordered_Numeric"] = <
			documentation = <"Ancestor of ordered numeric types.">
			name = <"Ordered_Numeric">
			ancestors = <"Numeric", "Ordered">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <49>
		>
		["Byte"] = <
			name = <"Byte">
			ancestors = <"Ordered", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <50>
		>
		["Octet"] = <
			name = <"Octet">
			ancestors = <"Ordered", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <51>
		>
		["Boolean"] = <
			name = <"Boolean">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <52>
		>
		["Integer"] = <
			name = <"Integer">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <53>
		>
		["Integer64"] = <
			name = <"Integer64">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <54>
		>
		["Real"] = <
			name = <"Real">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <55>
		>
		["Double"] = <
			name = <"Double">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <56>
		>
		["Character"] = <
			name = <"Character">
			ancestors = <"Ordered", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <57>
		>
		["String"] = <
			name = <"String">
			ancestors = <"Ordered", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <58>
		>
		["Uri"] = <
			name = <"Uri">
			ancestors = <"String", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <59>
		>
		["List"] = <
			name = <"List">
			generic_parameter_defs = <
				["V"] = <
					name = <"V">
				>
			>
			ancestors = <"Container", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <60>
		>
		["Array"] = <
			name = <"Array">
			generic_parameter_defs = <
				["V"] = <
					name = <"V">
				>
			>
			ancestors = <"Container", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <61>
		>
		["Set"] = <
			name = <"Set">
			generic_parameter_defs = <
				["V"] = <
					name = <"V">
				>
			>
			ancestors = <"Container", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <62>
		>
		["Interval"] = <
			documentation = <"Type defining an interval of any ordered type.">
			name = <"Interval">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"Ordered">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["lower"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"lower">
					type = <"T">
				>
				["upper"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"upper">
					type = <"T">
				>
				["lower_unbounded"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lower_unbounded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["upper_unbounded"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"upper_unbounded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["lower_included"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lower_included">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["upper_included"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"upper_included">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <63>
		>
		["Hash"] = <
			documentation = <"Type defining Hash table / hash map structure, whose type parameters V and K represent a value type and an Ordered key type respectively.">
			name = <"Hash">
			generic_parameter_defs = <
				["K"] = <
					name = <"K">
					conforms_to_type = <"Ordered">
				>
				["V"] = <
					name = <"V">
				>
			>
			ancestors = <"Container", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <64>
		>
		["Container"] = <
			name = <"Container">
			generic_parameter_defs = <
				["V"] = <
					name = <"V">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <65>
		>
		["Temporal"] = <
			name = <"Temporal">
			ancestors = <"Ordered", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <66>
		>
		["Iso8601_type"] = <
			documentation = <"Parent of ISO8601 types.">
			name = <"Iso8601_type">
			ancestors = <"Temporal", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <67>
		>
		["Iso8601_date"] = <
			documentation = <"Date type based on IS8601 representation.">
			name = <"Iso8601_date">
			ancestors = <"Iso8601_type", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <68>
		>
		["Iso8601_time"] = <
			documentation = <"Time type based on IS8601 representation.">
			name = <"Iso8601_time">
			ancestors = <"Iso8601_type", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <69>
		>
		["Iso8601_date_time"] = <
			documentation = <"Date Time type based on IS8601 representation.">
			name = <"Iso8601_date_time">
			ancestors = <"Iso8601_type", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <70>
		>
		["Iso8601_duration"] = <
			documentation = <"Duration type based on IS8601 representation.">
			name = <"Iso8601_duration">
			ancestors = <"Iso8601_type", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <71>
		>
		["Terminology_term"] = <
			name = <"Terminology_term">
			ancestors = <"Any", ...>
			properties = <
				["text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"text">
					type = <"String">
					is_mandatory = <True>
				>
				["concept"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"concept">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <72>
		>
		["Terminology_code"] = <
			name = <"Terminology_code">
			ancestors = <"Any", ...>
			properties = <
				["terminology_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_id">
					type = <"String">
					is_mandatory = <True>
				>
				["terminology_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_version">
					type = <"String">
				>
				["code_string"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"code_string">
					type = <"String">
					is_mandatory = <True>
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uri">
					type = <"Uri">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <73>
		>
	>
	class_definitions = <
		["RESUME_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"RESUME_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			item_names = <"resume_specified", "retry_current_group", "new_thread">
			uid = <109>
		>
		["TEMPORAL_RELATION"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"TEMPORAL_RELATION">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			item_names = <"before", "with", "after">
			uid = <110>
		>
		["TASK_LIFECYCLE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"TASK_LIFECYCLE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			item_names = <"planned", "available", "cancelled", "aborted", "abandoned", "underway", "suspended", "resumed", "completed">
			uid = <111>
		>
		["SYSTEM_CALL"] = <
			name = <"SYSTEM_CALL">
			properties = <
				["call_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"call_name">
					type = <"String">
					is_mandatory = <True>
				>
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["parameter_map"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"parameter_map">
					type_def = <
						type = <"PARAMETER_MAPPING">
						container_type = <"List">
					>
				>
				["bound_parameters"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"bound_parameters">
					type_def = <
						type = <"PARAMETER_DEF">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <112>
		>
		["PARAMETER_DEF"] = <
			name = <"PARAMETER_DEF">
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"EXPR_TYPE_DEF">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Any">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <113>
		>
		["PARAMETER_MAPPING"] = <
			name = <"PARAMETER_MAPPING">
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["context_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context_name">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <114>
		>
		["QUERY_CALL"] = <
			name = <"QUERY_CALL">
			ancestors = <"SYSTEM_CALL", ...>
			properties = <
				["query_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"query_id">
					type = <"String">
				>
				["query_text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"query_text">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <115>
		>
		["API_CALL"] = <
			name = <"API_CALL">
			ancestors = <"SYSTEM_CALL", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <116>
		>
		["PLAN_DATA_CONTEXT"] = <
			name = <"PLAN_DATA_CONTEXT">
			properties = <
				["expressions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"expressions">
					type_def = <
						type = <"CONTEXT_EXPRESSION">
						container_type = <"List">
					>
				>
				["variables"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"variables">
					type_def = <
						type = <"CONTEXT_VARIABLE">
						container_type = <"List">
					>
				>
				["constants"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"constants">
					type_def = <
						type = <"CONTEXT_CONSTANT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <117>
		>
		["CONTEXT_VALUE"] = <
			name = <"CONTEXT_VALUE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"type">
					type = <"T">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <118>
		>
		["CONTEXT_VARIABLE"] = <
			name = <"CONTEXT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VALUE", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <119>
		>
		["CONTEXT_EXPRESSION"] = <
			name = <"CONTEXT_EXPRESSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VALUE", ...>
			properties = <
				["expression"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expression">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <120>
		>
		["BOOLEAN_CONTEXT_EXPRESSION"] = <
			name = <"BOOLEAN_CONTEXT_EXPRESSION">
			ancestor_defs = <
				["1"] = <
					root_type = <"CONTEXT_EXPRESSION">
					generic_parameters = <"TYPE_DEF_BOOLEAN", ...>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <121>
		>
		["STATE_VARIABLE"] = <
			name = <"STATE_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"EXTERNAL_VARIABLE", ...>
			properties = <
				["required_currency"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"required_currency">
					type = <"Iso8601_duration">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <122>
		>
		["EXTERNAL_VARIABLE"] = <
			name = <"EXTERNAL_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VARIABLE", ...>
			properties = <
				["populating_request"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"populating_request">
					type = <"SYSTEM_CALL">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <123>
		>
		["EVENT_VARIABLE"] = <
			name = <"EVENT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"EXTERNAL_VARIABLE", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <124>
		>
		["LOCAL_VARIABLE"] = <
			name = <"LOCAL_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VARIABLE", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <125>
		>
		["CONTINUOUS_EVENT_VARIABLE"] = <
			name = <"CONTINUOUS_EVENT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"EVENT_VARIABLE", ...>
			properties = <
				["update_variation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"update_variation">
					type = <"Real">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <126>
		>
		["CONTEXT_CONSTANT"] = <
			name = <"CONTEXT_CONSTANT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VALUE", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <127>
		>
		["WORK_PLAN"] = <
			name = <"WORK_PLAN">
			ancestors = <"CONTENT_ITEM", "AUTHORED_RESOURCE">
			properties = <
				["care_plan"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"care_plan">
					type = <"LOCATABLE_REF">
				>
				["care_pathway"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"care_pathway">
					type = <"DV_IDENTIFIER">
				>
				["order_list"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"order_list">
					cardinality = <|>=0|>
					type_def = <
						type = <"LOCATABLE_REF">
						container_type = <"List">
					>
				>
				["calendar"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"calendar">
					type = <"PLAN_CALENDAR">
					is_mandatory = <True>
				>
				["timeline"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeline">
					type = <"PLAN_TIMELINE">
					is_mandatory = <True>
				>
				["plans"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"plans">
					cardinality = <|>=1|>
					type_def = <
						type = <"UID_BASED_ID">
						container_type = <"List">
					>
				>
				["event_wait_states"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"event_wait_states">
					type_def = <
						type = <"EVENT_WAIT">
						container_type = <"List">
					>
				>
				["top_level_plans"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"top_level_plans">
					cardinality = <|>=1|>
					type_def = <
						type = <"TASK_PLAN">
						container_type = <"List">
					>
				>
				["indications"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"indications">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
				["context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context">
					type = <"PLAN_DATA_CONTEXT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <128>
		>
		["TASK_PLAN"] = <
			name = <"TASK_PLAN">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["guideline"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"guideline">
					type = <"DV_IDENTIFIER">
				>
				["best_practice_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"best_practice_ref">
					type = <"DV_URI">
				>
				["definition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"definition">
					type = <"TASK_GROUP">
					is_mandatory = <True>
				>
				["principal_performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"principal_performer">
					type = <"TASK_PARTICIPATION">
				>
				["order_set_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"order_set_type">
					type = <"DV_IDENTIFIER">
				>
				["order_set_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"order_set_id">
					type = <"DV_IDENTIFIER">
				>
				["due_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"due_time">
					type = <"Iso8601_duration">
				>
				["expiry_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expiry_time">
					type = <"Iso8601_duration">
				>
				["indications"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"indications">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
				["execution_history"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"execution_history">
					type = <"TASK_PLAN_EXECUTION_HISTORY">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <129>
		>
		["PLAN_CALENDAR"] = <
			name = <"PLAN_CALENDAR">
			properties = <
				["entries"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"entries">
					cardinality = <|>=0|>
					type_def = <
						type = <"CALENDAR_ENTRY">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <130>
		>
		["CALENDAR_ENTRY"] = <
			name = <"CALENDAR_ENTRY">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <131>
		>
		["PLAN_TIMELINE"] = <
			name = <"PLAN_TIMELINE">
			properties = <
				["planned_items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"planned_items">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_ITEM">
						container_type = <"List">
					>
				>
				["timers"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"timers">
					cardinality = <|>=0|>
					type_def = <
						type = <"TIMER_WAIT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <132>
		>
		["TASK_PARTICIPATION"] = <
			name = <"TASK_PARTICIPATION">
			properties = <
				["function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"function">
					type = <"DV_TEXT">
				>
				["role"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"role">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"mode">
					type = <"DV_CODED_TEXT">
				>
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_PROXY">
				>
				["optionality"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"optionality">
					type = <"VALIDITY_KIND">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <133>
		>
		["PLAN_ITEM"] = <
			name = <"PLAN_ITEM">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["repeat_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"repeat_spec">
					type = <"TASK_REPEAT">
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
				["wait_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wait_spec">
					type = <"TASK_WAIT">
				>
				["review_dataset"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"review_dataset">
					cardinality = <|>=0|>
					type_def = <
						type = <"DATASET_SPEC">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <134>
		>
		["TASK_REPEAT"] = <
			name = <"TASK_REPEAT">
			properties = <
				["repeats"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"repeats">
					type_def = <
						root_type = <"Interval">
						generic_parameters = <"Integer", ...>
					>
				>
				["terminate_condition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminate_condition">
					type = <"PLAN_EVENT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <135>
		>
		["TASK_GROUP"] = <
			name = <"TASK_GROUP">
			ancestors = <"PLAN_ITEM", ...>
			properties = <
				["execution_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"execution_type">
					type = <"EXECUTION_TYPE">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_ITEM">
						container_type = <"List">
					>
				>
				["training_level"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"training_level">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <136>
		>
		["EXECUTION_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"EXECUTION_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			item_names = <"sequential", "parallel">
			uid = <137>
		>
		["TASK"] = <
			name = <"TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"TASK_ACTION">
				>
			>
			ancestors = <"PLAN_ITEM", ...>
			properties = <
				["action"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"action">
					type = <"T">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <138>
		>
		["DISPATCHABLE_TASK"] = <
			name = <"DISPATCHABLE_TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DISPATCHABLE_ACTION">
				>
			>
			ancestors = <"TASK", ...>
			properties = <
				["wait"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wait">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["callback"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"callback">
					type = <"CALLBACK_WAIT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <139>
		>
		["PERFORMABLE_TASK"] = <
			name = <"PERFORMABLE_TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"PERFORMABLE_ACTION">
				>
			>
			ancestors = <"TASK", ...>
			properties = <
				["capture_dataset"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"capture_dataset">
					cardinality = <|>=0|>
					type_def = <
						type = <"DATASET_SPEC">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <140>
		>
		["TASK_ACTION"] = <
			name = <"TASK_ACTION">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["subject_preconditions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"subject_preconditions">
					cardinality = <|>=0|>
					type_def = <
						type = <"SUBJECT_PRECONDITION">
						container_type = <"List">
					>
				>
				["costing_data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"costing_data">
					type = <"TASK_COSTING">
				>
				["instruction_activity"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_activity">
					type = <"LOCATABLE_REF">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <141>
		>
		["DISPATCHABLE_ACTION"] = <
			name = <"DISPATCHABLE_ACTION">
			ancestors = <"TASK_ACTION", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <142>
		>
		["PERFORMABLE_ACTION"] = <
			name = <"PERFORMABLE_ACTION">
			ancestors = <"TASK_ACTION", ...>
			properties = <
				["other_participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_participations">
					cardinality = <|>=0|>
					type_def = <
						type = <"TASK_PARTICIPATION">
						container_type = <"List">
					>
				>
				["resources"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"resources">
					cardinality = <|>=0|>
					type_def = <
						type = <"RESOURCE_PARTICIPATION">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <143>
		>
		["RESOURCE_PARTICIPATION"] = <
			name = <"RESOURCE_PARTICIPATION">
			properties = <
				["resource_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resource_type">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["external_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"external_ref">
					type = <"OBJECT_REF">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <144>
		>
		["SUBJECT_PRECONDITION"] = <
			name = <"SUBJECT_PRECONDITION">
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"String">
					is_mandatory = <True>
				>
				["expression"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expression">
					type = <"BOOLEAN_CONTEXT_EXPRESSION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <145>
		>
		["EXTERNAL_REQUEST"] = <
			name = <"EXTERNAL_REQUEST">
			ancestors = <"DISPATCHABLE_ACTION", ...>
			properties = <
				["organisation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"organisation">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"String">
					is_mandatory = <True>
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <146>
		>
		["DEFINED_ACTION"] = <
			name = <"DEFINED_ACTION">
			ancestors = <"PERFORMABLE_ACTION", ...>
			properties = <
				["prototype"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"prototype">
					cardinality = <|>=0|>
					type_def = <
						type = <"ENTRY">
						container_type = <"List">
					>
				>
				["optionality"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"optionality">
					type = <"VALIDITY_KIND">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <147>
		>
		["SYSTEM_REQUEST"] = <
			name = <"SYSTEM_REQUEST">
			ancestors = <"DISPATCHABLE_ACTION", ...>
			properties = <
				["system_call"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_call">
					type = <"SYSTEM_CALL">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <148>
		>
		["DATASET_SPEC"] = <
			name = <"DATASET_SPEC">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
				["form_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"form_id">
					type = <"String">
				>
				["template_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"template_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <149>
		>
		["LINKED_PLAN"] = <
			name = <"LINKED_PLAN">
			properties = <
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"TASK_PLAN">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <150>
		>
		["HAND_OFF"] = <
			name = <"HAND_OFF">
			ancestors = <"LINKED_PLAN", "DISPATCHABLE_ACTION">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <151>
		>
		["SUB_PLAN"] = <
			name = <"SUB_PLAN">
			ancestors = <"LINKED_PLAN", "PERFORMABLE_ACTION">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <152>
		>
		["TASK_COSTING"] = <
			name = <"TASK_COSTING">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <153>
		>
		["CHOICE_GROUP"] = <
			name = <"CHOICE_GROUP">
			ancestors = <"TASK_GROUP", ...>
			properties = <
				["override_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"override_type">
					type = <"OVERRIDE_TYPE">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"CHOICE_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <154>
		>
		["OVERRIDE_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"OVERRIDE_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			item_names = <"allowed", "allowed_with_reason", "prohibited">
			uid = <155>
		>
		["CHOICE_BRANCH"] = <
			name = <"CHOICE_BRANCH">
			ancestors = <"TASK_GROUP", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <156>
		>
		["ADHOC_GROUP"] = <
			name = <"ADHOC_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <157>
		>
		["ADHOC_BRANCH"] = <
			name = <"ADHOC_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <158>
		>
		["CONDITION_GROUP"] = <
			name = <"CONDITION_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"CONDITION_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <159>
		>
		["CONDITION_BRANCH"] = <
			name = <"CONDITION_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			properties = <
				["test"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"test">
					type = <"BOOLEAN_CONTEXT_EXPRESSION">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <160>
		>
		["DECISION_GROUP"] = <
			name = <"DECISION_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["test"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"test">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"EXPR_TYPE_DEF", ...>
					>
					is_mandatory = <True>
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"DECISION_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <161>
		>
		["DECISION_BRANCH"] = <
			name = <"DECISION_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			properties = <
				["value_constraint"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value_constraint">
					type = <"BOOLEAN_CONTEXT_EXPRESSION">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <162>
		>
		["EVENT_GROUP"] = <
			name = <"EVENT_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"EVENT_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <163>
		>
		["EVENT_BRANCH"] = <
			name = <"EVENT_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <164>
		>
		["TASK_WAIT"] = <
			name = <"TASK_WAIT">
			properties = <
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["start_window"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"start_window">
					type = <"REMINDER">
				>
				["events"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"events">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_EVENT">
						container_type = <"List">
					>
				>
				["event_relation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"event_relation">
					type = <"TEMPORAL_RELATION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <165>
		>
		["PLAN_EVENT"] = <
			name = <"PLAN_EVENT">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <166>
		>
		["TIMELINE_MOMENT"] = <
			name = <"TIMELINE_MOMENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["timeline_offset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeline_offset">
					type = <"Iso8601_duration">
				>
				["fixed_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"fixed_time">
					type = <"TIME_SPECIFIER">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <167>
		>
		["SYSTEM_NOTIFICATION"] = <
			name = <"SYSTEM_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["notification_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"notification_type">
					type = <"String">
				>
				["reference_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"reference_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <168>
		>
		["CALLBACK_NOTIFICATION"] = <
			name = <"CALLBACK_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["task_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"task_id">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <169>
		>
		["MANUAL_NOTIFICATION"] = <
			name = <"MANUAL_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <170>
		>
		["TASK_TRANSITION"] = <
			name = <"TASK_TRANSITION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["task_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"task_id">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
				["transitions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"transitions">
					cardinality = <|>=1|>
					type_def = <
						type = <"TASK_LIFECYCLE">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <171>
		>
		["EVENT_WAIT"] = <
			name = <"EVENT_WAIT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"PLAN_EVENT">
				>
			>
			properties = <
				["event"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"event">
					type = <"T">
					is_mandatory = <True>
				>
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["success_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"success_action">
					type = <"EVENT_ACTION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <172>
		>
		["DELAY_EVENT"] = <
			name = <"DELAY_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["delay"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"delay">
					type = <"Iso8601_duration">
					is_mandatory = <True>
				>
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"source">
					type = <"PLAN_EVENT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <173>
		>
		["STATE_TRIGGER"] = <
			name = <"STATE_TRIGGER">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["expression"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expression">
					type = <"BOOLEAN_CONTEXT_EXPRESSION">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <174>
		>
		["TIMER_EVENT"] = <
			name = <"TIMER_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["duration"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration">
					type = <"Iso8601_duration">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <175>
		>
		["REMINDER"] = <
			name = <"REMINDER">
			ancestors = <"TIMER_WAIT", ...>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <176>
		>
		["TIMER_WAIT"] = <
			name = <"TIMER_WAIT">
			ancestor_defs = <
				["1"] = <
					root_type = <"EVENT_WAIT">
					generic_parameters = <"TIMER_EVENT", ...>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <177>
		>
		["CALLBACK_WAIT"] = <
			name = <"CALLBACK_WAIT">
			ancestor_defs = <
				["1"] = <
					root_type = <"EVENT_WAIT">
					generic_parameters = <"CALLBACK_NOTIFICATION", ...>
				>
			>
			properties = <
				["fail_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"fail_action">
					type = <"EVENT_ACTION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <178>
		>
		["EVENT_ACTION"] = <
			name = <"EVENT_ACTION">
			properties = <
				["system_call"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"system_call">
					cardinality = <|>=0|>
					type_def = <
						type = <"SYSTEM_CALL">
						container_type = <"List">
					>
				>
				["resume_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_action">
					type = <"RESUME_ACTION">
				>
				["message"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"message">
					type = <"DV_TEXT">
				>
				["receiver_thread_next_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"receiver_thread_next_state">
					type = <"TASK_LIFECYCLE">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <179>
		>
		["CALENDAR_EVENT"] = <
			name = <"CALENDAR_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["entry_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"entry_id">
					type = <"UID_BASED_ID">
				>
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"Iso8601_date_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <180>
		>
		["RESUME_ACTION"] = <
			name = <"RESUME_ACTION">
			properties = <
				["resume_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_type">
					type = <"RESUME_TYPE">
					is_mandatory = <True>
				>
				["resume_location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_location">
					type = <"UID_BASED_ID">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <181>
		>
		["TIME_SPECIFIER"] = <
			name = <"TIME_SPECIFIER">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			is_abstract = <True>
			uid = <182>
		>
		["CLOCK_TIME"] = <
			name = <"CLOCK_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"Iso8601_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <183>
		>
		["CALENDAR_TIME"] = <
			name = <"CALENDAR_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"Iso8601_date_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <184>
		>
		["CUSTOMARY_TIME"] = <
			name = <"CUSTOMARY_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <185>
		>
		["TASK_PLAN_EXECUTION_HISTORY"] = <
			name = <"TASK_PLAN_EXECUTION_HISTORY">
			source_schema_id = <"openehr_proc_task_planning_1.1.0">
			uid = <186>
		>
		["EXPR_TYPE_DEF"] = <
			name = <"EXPR_TYPE_DEF">
			ancestors = <"Any", ...>
			properties = <
				["type_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_name">
					type = <"String">
					is_mandatory = <True>
				>
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Any">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			is_abstract = <True>
			uid = <98>
		>
		["TYPE_DEF_BOOLEAN"] = <
			name = <"TYPE_DEF_BOOLEAN">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <99>
		>
		["TYPE_DEF_INTEGER"] = <
			name = <"TYPE_DEF_INTEGER">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Integer">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <100>
		>
		["TYPE_DEF_REAL"] = <
			name = <"TYPE_DEF_REAL">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Real">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <101>
		>
		["TYPE_DEF_DATE"] = <
			name = <"TYPE_DEF_DATE">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Iso8601_date">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <102>
		>
		["TYPE_DEF_DATE_TIME"] = <
			name = <"TYPE_DEF_DATE_TIME">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Iso8601_date_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <103>
		>
		["TYPE_DEF_TIME"] = <
			name = <"TYPE_DEF_TIME">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Iso8601_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <104>
		>
		["TYPE_DEF_DURATION"] = <
			name = <"TYPE_DEF_DURATION">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Iso8601_duration">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <105>
		>
		["TYPE_DEF_STRING"] = <
			name = <"TYPE_DEF_STRING">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <106>
		>
		["TYPE_DEF_URI"] = <
			name = <"TYPE_DEF_URI">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Uri">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <107>
		>
		["TYPE_DEF_TERMINOLOGY_CODE"] = <
			name = <"TYPE_DEF_TERMINOLOGY_CODE">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_lang_1.0.0">
			uid = <108>
		>
		["OBJECT_REF"] = <
			name = <"OBJECT_REF">
			ancestors = <"Any", ...>
			properties = <
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"id">
					type = <"OBJECT_ID">
					is_mandatory = <True>
				>
				["namespace"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"namespace">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <74>
		>
		["LOCATABLE_REF"] = <
			name = <"LOCATABLE_REF">
			ancestors = <"OBJECT_REF", ...>
			properties = <
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"id">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
				["path"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"path">
					type = <"String">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <75>
		>
		["PARTY_REF"] = <
			name = <"PARTY_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <76>
		>
		["ACCESS_GROUP_REF"] = <
			name = <"ACCESS_GROUP_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <77>
		>
		["OBJECT_ID"] = <
			name = <"OBJECT_ID">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <78>
		>
		["TERMINOLOGY_ID"] = <
			name = <"TERMINOLOGY_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <79>
		>
		["UID_BASED_ID"] = <
			name = <"UID_BASED_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <80>
		>
		["GENERIC_ID"] = <
			name = <"GENERIC_ID">
			ancestors = <"OBJECT_ID", ...>
			properties = <
				["scheme"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"scheme">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <81>
		>
		["ARCHETYPE_ID"] = <
			name = <"ARCHETYPE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <82>
		>
		["ARCHETYPE_HRID"] = <
			name = <"ARCHETYPE_HRID">
			ancestors = <"Any", ...>
			properties = <
				["namespace"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"namespace">
					type = <"String">
					is_mandatory = <True>
				>
				["rm_publisher"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"rm_publisher">
					type = <"String">
					is_mandatory = <True>
				>
				["rm_package"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"rm_package">
					type = <"String">
					is_mandatory = <True>
				>
				["rm_class"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"rm_class">
					type = <"String">
					is_mandatory = <True>
				>
				["concept_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"concept_id">
					type = <"String">
					is_mandatory = <True>
				>
				["release_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"release_version">
					type = <"String">
					is_mandatory = <True>
				>
				["version_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_status">
					type = <"VERSION_STATUS">
					is_mandatory = <True>
				>
				["build_count"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"build_count">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <83>
		>
		["TEMPLATE_ID"] = <
			name = <"TEMPLATE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <84>
		>
		["OBJECT_VERSION_ID"] = <
			name = <"OBJECT_VERSION_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <85>
		>
		["HIER_OBJECT_ID"] = <
			name = <"HIER_OBJECT_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <86>
		>
		["VERSION_TREE_ID"] = <
			name = <"VERSION_TREE_ID">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <87>
		>
		["UID"] = <
			name = <"UID">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <88>
		>
		["INTERNET_ID"] = <
			name = <"INTERNET_ID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <89>
		>
		["UUID"] = <
			name = <"UUID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <90>
		>
		["ISO_OID"] = <
			name = <"ISO_OID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <91>
		>
		["VALIDITY_KIND"] = (P_BMM_ENUMERATION_STRING) <
			name = <"VALIDITY_KIND">
			ancestors = <"String", ...>
			source_schema_id = <"openehr_base_1.1.0">
			item_names = <"mandatory", "optional", "prohibited">
			uid = <92>
		>
		["VERSION_STATUS"] = (P_BMM_ENUMERATION_STRING) <
			name = <"VERSION_STATUS">
			ancestors = <"String", ...>
			source_schema_id = <"openehr_base_1.1.0">
			item_names = <"alpha", "beta", "release_candidate", "released", "build">
			uid = <93>
		>
		["AUTHORED_RESOURCE"] = <
			name = <"AUTHORED_RESOURCE">
			ancestors = <"Any", ...>
			properties = <
				["original_language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"original_language">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
				["is_controlled"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_controlled">
					type = <"Boolean">
				>
				["translations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"translations">
					cardinality = <|>=1|>
					type_def = <
						type = <"TRANSLATION_DETAILS">
						container_type = <"List">
					>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"RESOURCE_DESCRIPTION">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <94>
		>
		["TRANSLATION_DETAILS"] = <
			name = <"TRANSLATION_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
				["author"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"author">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
				["accreditation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accreditation">
					type = <"String">
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <95>
		>
		["RESOURCE_DESCRIPTION"] = <
			name = <"RESOURCE_DESCRIPTION">
			ancestors = <"Any", ...>
			properties = <
				["original_author"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"original_author">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
				["other_contributors"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_contributors">
					cardinality = <|>=0|>
					type_def = <
						type = <"String">
						container_type = <"List">
					>
				>
				["lifecycle_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lifecycle_state">
					type = <"String">
					is_mandatory = <True>
				>
				["resource_package_uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resource_package_uri">
					type = <"String">
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
				>
				["parent_resource"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"parent_resource">
					type = <"AUTHORED_RESOURCE">
					is_mandatory = <True>
				>
				["details"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"details">
					cardinality = <|>=1|>
					type_def = <
						type = <"RESOURCE_DESCRIPTION_ITEM">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <96>
		>
		["RESOURCE_DESCRIPTION_ITEM"] = <
			name = <"RESOURCE_DESCRIPTION_ITEM">
			ancestors = <"Any", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"String">
					is_mandatory = <True>
				>
				["keywords"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"keywords">
					cardinality = <|>=0|>
					type_def = <
						type = <"String">
						container_type = <"List">
					>
				>
				["use"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"use">
					type = <"String">
				>
				["misuse"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"misuse">
					type = <"String">
				>
				["copyright"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"copyright">
					type = <"String">
				>
				["original_resource_uri"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"original_resource_uri">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"Hash">
							generic_parameters = <"String", "String">
						>
						container_type = <"List">
					>
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <97>
		>
		["EHR"] = <
			name = <"EHR">
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
				>
				["ehr_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_id">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["ehr_access"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_access">
					type = <"OBJECT_REF">
					is_mandatory = <True>
				>
				["ehr_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_status">
					type = <"OBJECT_REF">
					is_mandatory = <True>
				>
				["directory"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"directory">
					type = <"OBJECT_REF">
				>
				["compositions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"compositions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
				>
				["contributions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"contributions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["most_recent_composition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"most_recent_composition">
					type = <"COMPOSITION">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <502>
		>
		["EHR_ACCESS"] = <
			name = <"EHR_ACCESS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["settings"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"settings">
					type = <"ACCESS_CONTROL_SETTINGS">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <503>
		>
		["ACCESS_CONTROL_SETTINGS"] = <
			name = <"ACCESS_CONTROL_SETTINGS">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <504>
		>
		["EHR_STATUS"] = <
			name = <"EHR_STATUS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_SELF">
					is_mandatory = <True>
				>
				["is_queryable"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_queryable">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["is_modifiable"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_modifiable">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <505>
		>
		["COMPOSITION"] = <
			name = <"COMPOSITION">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["territory"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"territory">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"category">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["composer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"composer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context">
					type = <"EVENT_CONTEXT">
				>
				["content"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"content">
					cardinality = <|>=1|>
					type_def = <
						type = <"CONTENT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <506>
		>
		["EVENT_CONTEXT"] = <
			name = <"EVENT_CONTEXT">
			ancestors = <"PATHABLE", ...>
			properties = <
				["health_care_facility"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"health_care_facility">
					type = <"PARTY_IDENTIFIED">
				>
				["start_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"start_time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["end_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"end_time">
					type = <"DV_DATE_TIME">
				>
				["participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"participations">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTICIPATION">
						container_type = <"List">
					>
				>
				["location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"location">
					type = <"String">
				>
				["setting"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"setting">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["other_context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_context">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <507>
		>
		["CONTENT_ITEM"] = <
			name = <"CONTENT_ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <508>
		>
		["SECTION"] = <
			name = <"SECTION">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=1|>
					type_def = <
						type = <"CONTENT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <509>
		>
		["ENTRY"] = <
			name = <"ENTRY">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["encoding"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"encoding">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["provider"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"provider">
					type = <"PARTY_PROXY">
				>
				["other_participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_participations">
					cardinality = <|>=0|>
					type_def = <
						type = <"PARTICIPATION">
						container_type = <"List">
					>
				>
				["workflow_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"workflow_id">
					type = <"OBJECT_REF">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <510>
		>
		["ADMIN_ENTRY"] = <
			name = <"ADMIN_ENTRY">
			ancestors = <"ENTRY", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <511>
		>
		["CARE_ENTRY"] = <
			documentation = <"Abstract ENTRY subtype corresponding to any type of ENTRY in the clinical care cycle.">
			name = <"CARE_ENTRY">
			ancestors = <"ENTRY", ...>
			properties = <
				["protocol"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"protocol">
					type = <"ITEM_STRUCTURE">
				>
				["guideline_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"guideline_id">
					type = <"OBJECT_REF">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <512>
		>
		["OBSERVATION"] = <
			documentation = <"ENTRY subtype used to represent observation information in time, as either a single or multiple samples.">
			name = <"OBSERVATION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["data"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Data of the observation, in the form of a HISTORY of EVENTs.">
					name = <"data">
					type_def = <
						root_type = <"HISTORY">
						generic_parameters = <"ITEM_STRUCTURE", ...>
					>
					is_mandatory = <True>
				>
				["state"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"state">
					type_def = <
						root_type = <"HISTORY">
						generic_parameters = <"ITEM_STRUCTURE", ...>
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <513>
		>
		["EVALUATION"] = <
			name = <"EVALUATION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <514>
		>
		["INSTRUCTION"] = <
			name = <"INSTRUCTION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["narrative"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"narrative">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["expiry_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expiry_time">
					type = <"DV_DATE_TIME">
				>
				["wf_definition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wf_definition">
					type = <"DV_PARSABLE">
					is_im_runtime = <True>
				>
				["activities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"activities">
					cardinality = <|>=1|>
					type_def = <
						type = <"ACTIVITY">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <515>
		>
		["ACTIVITY"] = <
			name = <"ACTIVITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["timing"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timing">
					type = <"DV_PARSABLE">
				>
				["action_archetype_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"action_archetype_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <516>
		>
		["ACTION"] = <
			name = <"ACTION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["ism_transition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ism_transition">
					type = <"ISM_TRANSITION">
					is_mandatory = <True>
				>
				["instruction_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_details">
					type = <"INSTRUCTION_DETAILS">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <517>
		>
		["INSTRUCTION_DETAILS"] = <
			name = <"INSTRUCTION_DETAILS">
			ancestors = <"PATHABLE", ...>
			properties = <
				["instruction_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_id">
					type = <"LOCATABLE_REF">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["wf_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wf_details">
					type = <"ITEM_STRUCTURE">
					is_im_runtime = <True>
				>
				["activity_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"activity_id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <518>
		>
		["ISM_TRANSITION"] = <
			name = <"ISM_TRANSITION">
			ancestors = <"PATHABLE", ...>
			properties = <
				["current_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"current_state">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["transition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"transition">
					type = <"DV_CODED_TEXT">
				>
				["careflow_step"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"careflow_step">
					type = <"DV_CODED_TEXT">
				>
				["reason"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"reason">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <519>
		>
		["GENERIC_ENTRY"] = <
			name = <"GENERIC_ENTRY">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_TREE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <520>
		>
		["DATA_STRUCTURE"] = <
			name = <"DATA_STRUCTURE">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <550>
		>
		["ITEM_STRUCTURE"] = <
			name = <"ITEM_STRUCTURE">
			ancestors = <"DATA_STRUCTURE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <551>
		>
		["ITEM_SINGLE"] = <
			name = <"ITEM_SINGLE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["item"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item">
					type = <"ELEMENT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <552>
		>
		["ITEM_LIST"] = <
			name = <"ITEM_LIST">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"ELEMENT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <553>
		>
		["ITEM_TABLE"] = <
			name = <"ITEM_TABLE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["rows"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"rows">
					cardinality = <|>=0|>
					type_def = <
						type = <"CLUSTER">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <554>
		>
		["ITEM_TREE"] = <
			name = <"ITEM_TREE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <555>
		>
		["ITEM"] = <
			name = <"ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <556>
		>
		["CLUSTER"] = <
			name = <"CLUSTER">
			ancestors = <"ITEM", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=1|>
					type_def = <
						type = <"ITEM">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <557>
		>
		["ELEMENT"] = <
			name = <"ELEMENT">
			ancestors = <"ITEM", ...>
			properties = <
				["null_flavour"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"null_flavour">
					type = <"DV_CODED_TEXT">
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DATA_VALUE">
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <558>
		>
		["HISTORY"] = <
			name = <"HISTORY">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"ITEM_STRUCTURE">
				>
			>
			ancestors = <"DATA_STRUCTURE", ...>
			properties = <
				["origin"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"origin">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["period"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"period">
					type = <"DV_DURATION">
				>
				["duration"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration">
					type = <"DV_DURATION">
				>
				["summary"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"summary">
					type = <"ITEM_STRUCTURE">
				>
				["events"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"events">
					cardinality = <|>=1|>
					type_def = <
						type = <"EVENT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <559>
		>
		["EVENT"] = <
			name = <"EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"ITEM_STRUCTURE">
				>
			>
			ancestors = <"LOCATABLE", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"state">
					type = <"ITEM_STRUCTURE">
				>
				["data"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"data">
					type = <"T">
					is_mandatory = <True>
				>
				["offset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"offset">
					type = <"DV_DURATION">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <560>
		>
		["POINT_EVENT"] = <
			name = <"POINT_EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"EVENT", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <561>
		>
		["INTERVAL_EVENT"] = <
			name = <"INTERVAL_EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"EVENT", ...>
			properties = <
				["width"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"width">
					type = <"DV_DURATION">
					is_mandatory = <True>
				>
				["sample_count"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"sample_count">
					type = <"Integer">
					is_im_runtime = <True>
				>
				["math_function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"math_function">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <562>
		>
		["REVISION_HISTORY"] = <
			name = <"REVISION_HISTORY">
			ancestors = <"Any", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"REVISION_HISTORY_ITEM">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <563>
		>
		["REVISION_HISTORY_ITEM"] = <
			name = <"REVISION_HISTORY_ITEM">
			ancestors = <"Any", ...>
			properties = <
				["version_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_id">
					type = <"OBJECT_VERSION_ID">
					is_mandatory = <True>
				>
				["audits"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"audits">
					cardinality = <|>=1|>
					type_def = <
						type = <"AUDIT_DETAILS">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <564>
		>
		["AUDIT_DETAILS"] = <
			name = <"AUDIT_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["time_committed"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_committed">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["change_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"change_type">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
				>
				["committer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"committer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <565>
		>
		["ATTESTATION"] = <
			name = <"ATTESTATION">
			ancestors = <"AUDIT_DETAILS", ...>
			properties = <
				["attested_view"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"attested_view">
					type = <"DV_MULTIMEDIA">
				>
				["proof"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"proof">
					type = <"String">
				>
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_EHR_URI">
						container_type = <"List">
					>
				>
				["reason"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"reason">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["is_pending"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_pending">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <566>
		>
		["PARTICIPATION"] = <
			name = <"PARTICIPATION">
			ancestors = <"Any", ...>
			properties = <
				["function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"function">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["time"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE_TIME", ...>
					>
					is_im_runtime = <True>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"mode">
					type = <"DV_CODED_TEXT">
				>
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <567>
		>
		["PARTY_PROXY"] = <
			name = <"PARTY_PROXY">
			ancestors = <"Any", ...>
			properties = <
				["external_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"external_ref">
					type = <"PARTY_REF">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <568>
		>
		["PARTY_IDENTIFIED"] = <
			name = <"PARTY_IDENTIFIED">
			ancestors = <"PARTY_PROXY", ...>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
				>
				["identifiers"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"identifiers">
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <569>
		>
		["PARTY_RELATED"] = <
			name = <"PARTY_RELATED">
			ancestors = <"PARTY_IDENTIFIED", ...>
			properties = <
				["relationship"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"relationship">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <570>
		>
		["PARTY_SELF"] = <
			name = <"PARTY_SELF">
			ancestors = <"PARTY_PROXY", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <571>
		>
		["PATHABLE"] = <
			name = <"PATHABLE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <572>
		>
		["LOCATABLE"] = <
			name = <"LOCATABLE">
			ancestors = <"PATHABLE", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"UID_BASED_ID">
					is_im_infrastructure = <True>
				>
				["archetype_node_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_node_id">
					type = <"String">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["archetype_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_details">
					type = <"ARCHETYPED">
					is_im_infrastructure = <True>
				>
				["feeder_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"feeder_audit">
					type = <"FEEDER_AUDIT">
					is_im_runtime = <True>
				>
				["links"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"links">
					cardinality = <|>=1|>
					type_def = <
						type = <"LINK">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <573>
		>
		["LINK"] = <
			name = <"LINK">
			ancestors = <"Any", ...>
			properties = <
				["meaning"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"meaning">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"DV_EHR_URI">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <574>
		>
		["ARCHETYPED"] = <
			name = <"ARCHETYPED">
			ancestors = <"Any", ...>
			properties = <
				["archetype_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_id">
					type = <"ARCHETYPE_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["template_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"template_id">
					type = <"TEMPLATE_ID">
					is_im_infrastructure = <True>
				>
				["rm_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"rm_version">
					type = <"String">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <575>
		>
		["FEEDER_AUDIT"] = <
			name = <"FEEDER_AUDIT">
			ancestors = <"Any", ...>
			properties = <
				["originating_system_item_ids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"originating_system_item_ids">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
				["feeder_system_item_ids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"feeder_system_item_ids">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
				["original_content"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"original_content">
					type = <"DV_ENCAPSULATED">
					is_im_runtime = <True>
				>
				["originating_system_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"originating_system_audit">
					type = <"FEEDER_AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["feeder_system_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"feeder_system_audit">
					type = <"FEEDER_AUDIT_DETAILS">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <576>
		>
		["FEEDER_AUDIT_DETAILS"] = <
			name = <"FEEDER_AUDIT_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"location">
					type = <"PARTY_IDENTIFIED">
					is_im_runtime = <True>
				>
				["provider"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"provider">
					type = <"PARTY_IDENTIFIED">
					is_im_runtime = <True>
				>
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
					is_im_runtime = <True>
				>
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_im_runtime = <True>
				>
				["version_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_id">
					type = <"String">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <577>
		>
		["FOLDER"] = <
			name = <"FOLDER">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["folders"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"folders">
					cardinality = <|>=1|>
					type_def = <
						type = <"FOLDER">
						container_type = <"List">
					>
				>
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <578>
		>
		["CONTRIBUTION"] = <
			name = <"CONTRIBUTION">
			ancestors = <"Any", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"audit">
					type = <"AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["versions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"versions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <579>
		>
		["VERSIONED_OBJECT"] = <
			name = <"VERSIONED_OBJECT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["owner_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"owner_id">
					type = <"OBJECT_REF">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <580>
		>
		["VERSION"] = <
			name = <"VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["contribution"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"contribution">
					type = <"OBJECT_REF">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["commit_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"commit_audit">
					type = <"AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["signature"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"signature">
					type = <"String">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <581>
		>
		["ORIGINAL_VERSION"] = <
			name = <"ORIGINAL_VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"VERSION", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"OBJECT_VERSION_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["preceding_version_uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"preceding_version_uid">
					type = <"OBJECT_VERSION_ID">
					is_im_infrastructure = <True>
				>
				["other_input_version_uids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_input_version_uids">
					cardinality = <|>=1|>
					type_def = <
						type = <"OBJECT_VERSION_ID">
						container_type = <"List">
					>
					is_im_infrastructure = <True>
				>
				["attestations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"attestations">
					cardinality = <|>=1|>
					type_def = <
						type = <"ATTESTATION">
						container_type = <"List">
					>
				>
				["lifecycle_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lifecycle_state">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["data"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"data">
					type = <"T">
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <582>
		>
		["IMPORTED_VERSION"] = <
			name = <"IMPORTED_VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"VERSION", ...>
			properties = <
				["item"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"item">
					type_def = <
						root_type = <"ORIGINAL_VERSION">
						generic_parameters = <"T", ...>
					>
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <583>
		>
		["DATA_VALUE"] = <
			name = <"DATA_VALUE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <457>
		>
		["DV_BOOLEAN"] = <
			name = <"DV_BOOLEAN">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <458>
		>
		["DV_IDENTIFIER"] = <
			name = <"DV_IDENTIFIER">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["issuer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"issuer">
					type = <"String">
				>
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"String">
				>
				["assigner"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"assigner">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <459>
		>
		["DV_STATE"] = <
			name = <"DV_STATE">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["is_terminal"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_terminal">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <460>
		>
		["TERM_MAPPING"] = <
			name = <"TERM_MAPPING">
			properties = <
				["match"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"match">
					type = <"Character">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_CODED_TEXT">
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <461>
		>
		["DV_TEXT"] = <
			name = <"DV_TEXT">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
				["hyperlink"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"hyperlink">
					type = <"DV_URI">
					is_im_runtime = <True>
				>
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_im_infrastructure = <True>
				>
				["encoding"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"encoding">
					type = <"CODE_PHRASE">
					is_im_infrastructure = <True>
				>
				["formatting"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"formatting">
					type = <"String">
					is_im_runtime = <True>
				>
				["mappings"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"mappings">
					cardinality = <|>=1|>
					type_def = <
						type = <"TERM_MAPPING">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <462>
		>
		["DV_CODED_TEXT"] = <
			name = <"DV_CODED_TEXT">
			ancestors = <"DV_TEXT", ...>
			properties = <
				["defining_code"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"defining_code">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <463>
		>
		["CODE_PHRASE"] = <
			name = <"CODE_PHRASE">
			properties = <
				["terminology_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_id">
					type = <"TERMINOLOGY_ID">
					is_mandatory = <True>
				>
				["code_string"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"code_string">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <464>
		>
		["DV_PARAGRAPH"] = <
			name = <"DV_PARAGRAPH">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <465>
		>
		["DV_INTERVAL"] = <
			name = <"DV_INTERVAL">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DV_ORDERED">
				>
			>
			ancestors = <"Interval", "DATA_VALUE">
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <466>
		>
		["REFERENCE_RANGE"] = <
			name = <"REFERENCE_RANGE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DV_ORDERED">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"T", ...>
					>
					is_mandatory = <True>
				>
				["meaning"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"meaning">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <467>
		>
		["DV_ORDERED"] = <
			name = <"DV_ORDERED">
			ancestors = <"Ordered", "DATA_VALUE">
			properties = <
				["normal_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"normal_status">
					type = <"CODE_PHRASE">
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_ORDERED", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					cardinality = <|>=1|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_ORDERED", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <468>
		>
		["DV_QUANTIFIED"] = <
			name = <"DV_QUANTIFIED">
			ancestors = <"DV_ORDERED", ...>
			properties = <
				["magnitude_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude_status">
					type = <"String">
					is_im_runtime = <True>
				>
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"Any">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <469>
		>
		["DV_ORDINAL"] = <
			name = <"DV_ORDINAL">
			ancestors = <"DV_ORDERED", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
					is_mandatory = <True>
				>
				["symbol"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"symbol">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <470>
		>
		["DV_AMOUNT"] = <
			name = <"DV_AMOUNT">
			ancestors = <"DV_QUANTIFIED", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"Real">
					is_im_runtime = <True>
				>
				["accuracy_is_percent"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy_is_percent">
					type = <"Boolean">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <471>
		>
		["DV_ABSOLUTE_QUANTITY"] = <
			name = <"DV_ABSOLUTE_QUANTITY">
			ancestors = <"DV_QUANTIFIED", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"DV_AMOUNT">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <472>
		>
		["DV_QUANTITY"] = <
			name = <"DV_QUANTITY">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Real">
					is_mandatory = <True>
				>
				["property"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"property">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["units"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"units">
					type = <"String">
					is_mandatory = <True>
				>
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"precision">
					type = <"Integer">
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_QUANTITY", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_QUANTITY", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <473>
		>
		["DV_COUNT"] = <
			name = <"DV_COUNT">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Integer64">
					is_mandatory = <True>
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_COUNT", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_COUNT", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <474>
		>
		["DV_PROPORTION"] = <
			name = <"DV_PROPORTION">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["numerator"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"numerator">
					type = <"Real">
					is_mandatory = <True>
				>
				["denominator"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"denominator">
					type = <"Real">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"PROPORTION_KIND">
					is_mandatory = <True>
				>
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"precision">
					type = <"Integer">
				>
				["is_integral"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_integral">
					type = <"Boolean">
					is_computed = <True>
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_PROPORTION", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					cardinality = <|>=1|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_PROPORTION", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <475>
		>
		["PROPORTION_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"PROPORTION_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			item_names = <"pk_ratio", "pk_unitary", "pk_percent", "pk_fraction", "pk_integer_fraction">
			uid = <476>
		>
		["DV_TEMPORAL"] = <
			name = <"DV_TEMPORAL">
			ancestors = <"DV_ABSOLUTE_QUANTITY", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"DV_DURATION">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <477>
		>
		["DV_DATE"] = <
			name = <"DV_DATE">
			ancestors = <"DV_TEMPORAL", "Iso8601_date">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <478>
		>
		["DV_TIME"] = <
			name = <"DV_TIME">
			ancestors = <"DV_TEMPORAL", "Iso8601_time">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <479>
		>
		["DV_DATE_TIME"] = <
			name = <"DV_DATE_TIME">
			ancestors = <"DV_TEMPORAL", "Iso8601_date_time">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <480>
		>
		["DV_DURATION"] = <
			name = <"DV_DURATION">
			ancestors = <"DV_AMOUNT", "Iso8601_duration">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <481>
		>
		["DV_ENCAPSULATED"] = <
			name = <"DV_ENCAPSULATED">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["charset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"charset">
					type = <"CODE_PHRASE">
					is_im_runtime = <True>
				>
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <482>
		>
		["DV_MULTIMEDIA"] = <
			name = <"DV_MULTIMEDIA">
			ancestors = <"DV_ENCAPSULATED", ...>
			properties = <
				["alternate_text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"alternate_text">
					type = <"String">
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uri">
					type = <"DV_URI">
				>
				["data"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"data">
					cardinality = <|>=0|>
					type_def = <
						type = <"Octet">
						container_type = <"Array">
					>
				>
				["media_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"media_type">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["compression_algorithm"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"compression_algorithm">
					type = <"CODE_PHRASE">
				>
				["integrity_check"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"integrity_check">
					cardinality = <|>=0|>
					type_def = <
						type = <"Octet">
						container_type = <"Array">
					>
				>
				["integrity_check_algorithm"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integrity_check_algorithm">
					type = <"CODE_PHRASE">
				>
				["thumbnail"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"thumbnail">
					type = <"DV_MULTIMEDIA">
				>
				["size"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"size">
					type = <"Integer">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <483>
		>
		["DV_PARSABLE"] = <
			name = <"DV_PARSABLE">
			ancestors = <"DV_ENCAPSULATED", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
				["formalism"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"formalism">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <484>
		>
		["DV_URI"] = <
			name = <"DV_URI">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <485>
		>
		["DV_EHR_URI"] = <
			name = <"DV_EHR_URI">
			ancestors = <"DV_URI", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <486>
		>
		["DV_TIME_SPECIFICATION"] = <
			name = <"DV_TIME_SPECIFICATION">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DV_PARSABLE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <487>
		>
		["DV_PERIODIC_TIME_SPECIFICATION"] = <
			name = <"DV_PERIODIC_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <488>
		>
		["DV_GENERAL_TIME_SPECIFICATION"] = <
			name = <"DV_GENERAL_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <489>
		>
		["PARTY"] = <
			name = <"PARTY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
				>
				["identities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"identities">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_IDENTITY">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["contacts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"contacts">
					cardinality = <|>=1|>
					type_def = <
						type = <"CONTACT">
						container_type = <"Set">
					>
				>
				["relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"relationships">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_RELATIONSHIP">
						container_type = <"Set">
					>
				>
				["reverse_relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"reverse_relationships">
					cardinality = <|>=1|>
					type_def = <
						type = <"LOCATABLE_REF">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			is_abstract = <True>
			uid = <490>
		>
		["PARTY_IDENTITY"] = <
			name = <"PARTY_IDENTITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <491>
		>
		["CONTACT"] = <
			name = <"CONTACT">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
				["addresses"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"addresses">
					cardinality = <|>=1|>
					type_def = <
						type = <"ADDRESS">
						container_type = <"List">
					>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <492>
		>
		["ADDRESS"] = <
			name = <"ADDRESS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <493>
		>
		["ACTOR"] = <
			name = <"ACTOR">
			ancestors = <"PARTY", ...>
			properties = <
				["roles"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"roles">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_REF">
						container_type = <"List">
					>
				>
				["languages"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"languages">
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			is_abstract = <True>
			uid = <494>
		>
		["PERSON"] = <
			name = <"PERSON">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <495>
		>
		["ORGANISATION"] = <
			name = <"ORGANISATION">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <496>
		>
		["GROUP"] = <
			name = <"GROUP">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <497>
		>
		["AGENT"] = <
			name = <"AGENT">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <498>
		>
		["ROLE"] = <
			name = <"ROLE">
			ancestors = <"PARTY", ...>
			properties = <
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_REF">
					is_mandatory = <True>
				>
				["capabilities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"capabilities">
					cardinality = <|>=1|>
					type_def = <
						type = <"CAPABILITY">
						container_type = <"List">
					>
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <499>
		>
		["CAPABILITY"] = <
			name = <"CAPABILITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["credentials"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"credentials">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <500>
		>
		["PARTY_RELATIONSHIP"] = <
			name = <"PARTY_RELATIONSHIP">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"source">
					type = <"PARTY_REF">
					is_mandatory = <True>
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"PARTY_REF">
					is_mandatory = <True>
				>
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <501>
		>
	>
	passed = <True>
	missed_class_count = <0>
