	rm_publisher = <"openehr">
	rm_release = <"1.0.2">
	packages = <
		["ORG.OPENEHR.TEST_PKG"] = <
			name = <"org.openehr.test_pkg">
			classes = <"WHOLE", "SOME_TYPE", "BOOK", "CHAPTER", "ENTRY", "CAR", "CAR_BODY", "CAR_BODY_PART", "WHEEL", "RIM", "ENGINE_PART", "ENGINE_PART_ITEM", "ITEM", "CLUSTER", "ELEMENT", "MULTIPLICITY_OBJECT", "GENERIC_PARENT", "SUPPLIER", "SUPPLIER_A", "SUPPLIER_B", "GENERIC_CHILD_OPEN_T", "GENERIC_CHILD_OPEN_U", "GENERIC_CHILD_CLOSED">
		>
	>
	schema_name = <"adltest">
	schema_revision = <"21">
	schema_lifecycle_state = <"stable">
	schema_description = <"openEHR schema to support test archetypes">
	bmm_version = <"2.3">
	model_name = <"TEST_PKG">
	includes = <
		["1"] = <
			id = <"openehr_rm_data_types_1.0.4">
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
		["ITEM"] = <
			name = <"ITEM">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_adltest_1.0.2">
			is_abstract = <True>
			uid = <720>
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
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <721>
		>
		["ELEMENT"] = <
			name = <"ELEMENT">
			ancestors = <"ITEM", ...>
			properties = <
				["null_flavour"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"null_flavour">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DATA_VALUE">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <722>
		>
		["ENTRY"] = <
			name = <"ENTRY">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"CODE_PHRASE">
				>
				["coded_text_value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"coded_text_value">
					type = <"DV_CODED_TEXT">
				>
				["ordinal_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ordinal_attr_1">
					type = <"DV_ORDINAL">
				>
				["element_attr"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"element_attr">
					type = <"ELEMENT">
				>
				["element_attr_2"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"element_attr_2">
					cardinality = <|>=0|>
					type_def = <
						type = <"ELEMENT">
						container_type = <"List">
					>
				>
				["item"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item">
					type = <"DATA_VALUE">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <723>
		>
		["BOOK"] = <
			name = <"BOOK">
			ancestors = <"Any", ...>
			properties = <
				["author"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"author">
					type = <"String">
					is_mandatory = <True>
				>
				["title"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"title">
					type = <"String">
					is_mandatory = <True>
				>
				["chapters"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"chapters">
					cardinality = <|>=0|>
					type_def = <
						type = <"CHAPTER">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <724>
		>
		["CHAPTER"] = <
			name = <"CHAPTER">
			ancestors = <"Any", ...>
			properties = <
				["title"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"title">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <725>
		>
		["WHOLE"] = <
			name = <"WHOLE">
			ancestors = <"Any", ...>
			properties = <
				["string_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"string_attr1">
					type = <"String">
				>
				["string_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"string_attr2">
					type = <"String">
				>
				["string_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"string_attr3">
					type = <"String">
				>
				["string_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"string_attr4">
					type = <"String">
				>
				["string_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"string_attr5">
					type = <"String">
				>
				["boolean_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"boolean_attr1">
					type = <"Boolean">
				>
				["boolean_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"boolean_attr2">
					type = <"Boolean">
				>
				["boolean_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"boolean_attr3">
					type = <"Boolean">
				>
				["boolean_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"boolean_attr4">
					type = <"Boolean">
				>
				["integer_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr1">
					type = <"Integer">
				>
				["integer_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr2">
					type = <"Integer">
				>
				["integer_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr3">
					type = <"Integer">
				>
				["integer_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr4">
					type = <"Integer">
				>
				["integer_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr5">
					type = <"Integer">
				>
				["integer_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr6">
					type = <"Integer">
				>
				["integer_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr7">
					type = <"Integer">
				>
				["integer_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr8">
					type = <"Integer">
				>
				["integer_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr9">
					type = <"Integer">
				>
				["integer_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr10">
					type = <"Integer">
				>
				["integer_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr11">
					type = <"Integer">
				>
				["integer_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr12">
					type = <"Integer">
				>
				["integer_attr13"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integer_attr13">
					type = <"Integer">
				>
				["real_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr1">
					type = <"Real">
				>
				["real_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr2">
					type = <"Real">
				>
				["real_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr3">
					type = <"Real">
				>
				["real_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr4">
					type = <"Real">
				>
				["real_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr5">
					type = <"Real">
				>
				["real_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr6">
					type = <"Real">
				>
				["real_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr7">
					type = <"Real">
				>
				["real_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr8">
					type = <"Real">
				>
				["real_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr9">
					type = <"Real">
				>
				["real_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr10">
					type = <"Real">
				>
				["real_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr11">
					type = <"Real">
				>
				["real_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr12">
					type = <"Real">
				>
				["real_attr13"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"real_attr13">
					type = <"Real">
				>
				["date_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr1">
					type = <"Iso8601_date">
				>
				["date_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr2">
					type = <"Iso8601_date">
				>
				["date_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr3">
					type = <"Iso8601_date">
				>
				["date_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr4">
					type = <"Iso8601_date">
				>
				["date_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr5">
					type = <"Iso8601_date">
				>
				["date_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr6">
					type = <"Iso8601_date">
				>
				["date_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr7">
					type = <"Iso8601_date">
				>
				["date_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr8">
					type = <"Iso8601_date">
				>
				["date_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr9">
					type = <"Iso8601_date">
				>
				["date_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr10">
					type = <"Iso8601_date">
				>
				["date_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr11">
					type = <"Iso8601_date">
				>
				["date_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_attr12">
					type = <"Iso8601_date">
				>
				["time_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr1">
					type = <"Iso8601_time">
				>
				["time_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr2">
					type = <"Iso8601_time">
				>
				["time_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr3">
					type = <"Iso8601_time">
				>
				["time_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr4">
					type = <"Iso8601_time">
				>
				["time_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr5">
					type = <"Iso8601_time">
				>
				["time_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr6">
					type = <"Iso8601_time">
				>
				["time_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr7">
					type = <"Iso8601_time">
				>
				["time_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr8">
					type = <"Iso8601_time">
				>
				["time_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr9">
					type = <"Iso8601_time">
				>
				["time_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr10">
					type = <"Iso8601_time">
				>
				["time_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr11">
					type = <"Iso8601_time">
				>
				["time_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr12">
					type = <"Iso8601_time">
				>
				["time_attr13"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_attr13">
					type = <"Iso8601_time">
				>
				["date_time_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr1">
					type = <"Iso8601_date_time">
				>
				["date_time_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr2">
					type = <"Iso8601_date_time">
				>
				["date_time_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr3">
					type = <"Iso8601_date_time">
				>
				["date_time_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr4">
					type = <"Iso8601_date_time">
				>
				["date_time_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr5">
					type = <"Iso8601_date_time">
				>
				["date_time_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr6">
					type = <"Iso8601_date_time">
				>
				["date_time_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr7">
					type = <"Iso8601_date_time">
				>
				["date_time_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr8">
					type = <"Iso8601_date_time">
				>
				["date_time_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr9">
					type = <"Iso8601_date_time">
				>
				["date_time_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr10">
					type = <"Iso8601_date_time">
				>
				["date_time_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr11">
					type = <"Iso8601_date_time">
				>
				["date_time_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr12">
					type = <"Iso8601_date_time">
				>
				["date_time_attr13"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr13">
					type = <"Iso8601_date_time">
				>
				["date_time_attr14"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"date_time_attr14">
					type = <"Iso8601_date_time">
				>
				["duration_attr1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr1">
					type = <"Iso8601_duration">
				>
				["duration_attr2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr2">
					type = <"Iso8601_duration">
				>
				["duration_attr3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr3">
					type = <"Iso8601_duration">
				>
				["duration_attr4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr4">
					type = <"Iso8601_duration">
				>
				["duration_attr5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr5">
					type = <"Iso8601_duration">
				>
				["duration_attr6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr6">
					type = <"Iso8601_duration">
				>
				["duration_attr7"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr7">
					type = <"Iso8601_duration">
				>
				["duration_attr8"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr8">
					type = <"Iso8601_duration">
				>
				["duration_attr9"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr9">
					type = <"Iso8601_duration">
				>
				["duration_attr10"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr10">
					type = <"Iso8601_duration">
				>
				["duration_attr11"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr11">
					type = <"Iso8601_duration">
				>
				["duration_attr12"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr12">
					type = <"Iso8601_duration">
				>
				["duration_attr13"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr13">
					type = <"Iso8601_duration">
				>
				["duration_attr14"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr14">
					type = <"Iso8601_duration">
				>
				["duration_attr15"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr15">
					type = <"Iso8601_duration">
				>
				["duration_attr16"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr16">
					type = <"Iso8601_duration">
				>
				["duration_attr17"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr17">
					type = <"Iso8601_duration">
				>
				["duration_attr18"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr18">
					type = <"Iso8601_duration">
				>
				["duration_attr19"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr19">
					type = <"Iso8601_duration">
				>
				["duration_attr20"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr20">
					type = <"Iso8601_duration">
				>
				["duration_attr21"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr21">
					type = <"Iso8601_duration">
				>
				["duration_attr22"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr22">
					type = <"Iso8601_duration">
				>
				["duration_attr23"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr23">
					type = <"Iso8601_duration">
				>
				["duration_attr24"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr24">
					type = <"Iso8601_duration">
				>
				["duration_attr25"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr25">
					type = <"Iso8601_duration">
				>
				["duration_attr26"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr26">
					type = <"Iso8601_duration">
				>
				["duration_attr27"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr27">
					type = <"Iso8601_duration">
				>
				["duration_attr28"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr28">
					type = <"Iso8601_duration">
				>
				["duration_attr29"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr29">
					type = <"Iso8601_duration">
				>
				["duration_attr30"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr30">
					type = <"Iso8601_duration">
				>
				["duration_attr31"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr31">
					type = <"Iso8601_duration">
				>
				["duration_attr32"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr32">
					type = <"Iso8601_duration">
				>
				["duration_attr33"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr33">
					type = <"Iso8601_duration">
				>
				["duration_attr34"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr34">
					type = <"Iso8601_duration">
				>
				["duration_attr35"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr35">
					type = <"Iso8601_duration">
				>
				["duration_attr36"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration_attr36">
					type = <"Iso8601_duration">
				>
				["any_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"any_attr_1">
					type = <"Any">
				>
				["any_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"any_attr_2">
					type = <"Any">
				>
				["any_attr_3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"any_attr_3">
					type = <"Any">
				>
				["any_attr_4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"any_attr_4">
					type = <"Any">
				>
				["any_attr_5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"any_attr_5">
					type = <"Any">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <726>
		>
		["SOME_TYPE"] = <
			name = <"SOME_TYPE">
			ancestors = <"Any", ...>
			properties = <
				["standard_quantity_attr"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"standard_quantity_attr">
					type = <"DV_QUANTITY">
				>
				["clinical_quantity_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_1">
					type = <"DV_QUANTITY">
				>
				["clinical_quantity_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_2">
					type = <"DV_QUANTITY">
				>
				["clinical_quantity_attr_3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_3">
					type = <"DV_QUANTITY">
				>
				["clinical_quantity_attr_4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_4">
					type = <"DATA_VALUE">
				>
				["clinical_quantity_attr_5"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_5">
					type = <"DATA_VALUE">
				>
				["clinical_quantity_attr_6"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_quantity_attr_6">
					type = <"DATA_VALUE">
				>
				["standard_ordinal_attr"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"standard_ordinal_attr">
					type = <"DV_ORDINAL">
				>
				["clinical_ordinal_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_ordinal_attr_1">
					type = <"DATA_VALUE">
				>
				["clinical_ordinal_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_ordinal_attr_2">
					type = <"DATA_VALUE">
				>
				["clinical_coded_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_attr_1">
					type = <"CODE_PHRASE">
				>
				["clinical_coded_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_attr_2">
					type = <"CODE_PHRASE">
				>
				["clinical_coded_attr_3"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_attr_3">
					type = <"CODE_PHRASE">
				>
				["clinical_coded_attr_4"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_attr_4">
					type = <"CODE_PHRASE">
				>
				["standard_coded_text_attr"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"standard_coded_text_attr">
					type = <"DV_CODED_TEXT">
				>
				["standard_coded_text_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"standard_coded_text_attr_2">
					type = <"DV_CODED_TEXT">
				>
				["clinical_coded_text_attr_1"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_text_attr_1">
					type = <"DV_CODED_TEXT">
				>
				["clinical_coded_text_attr_2"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"clinical_coded_text_attr_2">
					type = <"DV_CODED_TEXT">
				>
				["qty_interval_attr_1"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"qty_interval_attr_1">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_QUANTITY", ...>
					>
				>
				["qty_interval_attr_2"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"qty_interval_attr_2">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_QUANTITY", ...>
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <727>
		>
		["CAR"] = <
			name = <"CAR">
			ancestors = <"Any", ...>
			properties = <
				["body"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"body">
					type = <"CAR_BODY">
				>
				["engine_parts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"engine_parts">
					cardinality = <|>=0|>
					type_def = <
						type = <"ENGINE_PART">
						container_type = <"List">
					>
				>
				["wheels"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"wheels">
					cardinality = <|>=0|>
					type_def = <
						type = <"WHEEL">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <728>
		>
		["CAR_BODY"] = <
			name = <"CAR_BODY">
			ancestors = <"Any", ...>
			properties = <
				["model"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"model">
					type = <"String">
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"String">
				>
				["parts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"parts">
					cardinality = <|>=0|>
					type_def = <
						type = <"CAR_BODY_PART">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <729>
		>
		["CAR_BODY_PART"] = <
			name = <"CAR_BODY_PART">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <730>
		>
		["ENGINE_PART"] = <
			name = <"ENGINE_PART">
			ancestors = <"Any", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"ENGINE_PART_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <731>
		>
		["ENGINE_PART_ITEM"] = <
			name = <"ENGINE_PART_ITEM">
			ancestors = <"Any", ...>
			properties = <
				["model"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"model">
					type = <"String">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <732>
		>
		["WHEEL"] = <
			name = <"WHEEL">
			ancestors = <"Any", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"String">
				>
				["parts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"parts">
					cardinality = <|>=0|>
					type_def = <
						type = <"RIM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <733>
		>
		["RIM"] = <
			name = <"RIM">
			ancestors = <"Any", ...>
			properties = <
				["nuts"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"nuts">
					type = <"Integer">
				>
				["hubcap"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"hubcap">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <734>
		>
		["MULTIPLICITY_OBJECT"] = <
			name = <"MULTIPLICITY_OBJECT">
			ancestors = <"Any", ...>
			properties = <
				["integer_list"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"integer_list">
					cardinality = <|>=0|>
					type_def = <
						type = <"Integer">
						container_type = <"List">
					>
				>
				["string_list"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"string_list">
					cardinality = <|>=0|>
					type_def = <
						type = <"String">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <735>
		>
		["GENERIC_PARENT"] = <
			name = <"GENERIC_PARENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"SUPPLIER">
				>
				["U"] = <
					name = <"U">
					conforms_to_type = <"SUPPLIER">
				>
			>
			properties = <
				["property_a"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"property_a">
					type = <"T">
				>
				["property_b"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"property_b">
					type = <"U">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <736>
		>
		["SUPPLIER"] = <
			name = <"SUPPLIER">
			properties = <
				["abstract_prop"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"abstract_prop">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			is_abstract = <True>
			uid = <737>
		>
		["SUPPLIER_A"] = <
			name = <"SUPPLIER_A">
			ancestors = <"SUPPLIER", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Double">
					is_mandatory = <True>
				>
				["units"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"units">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <738>
		>
		["SUPPLIER_B"] = <
			name = <"SUPPLIER_B">
			ancestors = <"SUPPLIER", ...>
			properties = <
				["property"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"property">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"precision">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <739>
		>
		["GENERIC_CHILD_OPEN_T"] = <
			name = <"GENERIC_CHILD_OPEN_T">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"SUPPLIER">
				>
			>
			ancestor_defs = <
				["1"] = <
					root_type = <"GENERIC_PARENT">
					generic_parameters = <"T", "SUPPLIER_B">
				>
			>
			properties = <
				["gen_child_open_t_prop"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"gen_child_open_t_prop">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <740>
		>
		["GENERIC_CHILD_OPEN_U"] = <
			name = <"GENERIC_CHILD_OPEN_U">
			generic_parameter_defs = <
				["U"] = <
					name = <"U">
					conforms_to_type = <"SUPPLIER">
				>
			>
			ancestor_defs = <
				["1"] = <
					root_type = <"GENERIC_PARENT">
					generic_parameters = <"SUPPLIER_A", "U">
				>
			>
			properties = <
				["gen_child_open_u_prop"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"gen_child_open_u_prop">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <741>
		>
		["GENERIC_CHILD_CLOSED"] = <
			name = <"GENERIC_CHILD_CLOSED">
			ancestor_defs = <
				["1"] = <
					root_type = <"GENERIC_PARENT">
					generic_parameters = <"SUPPLIER_A", "SUPPLIER_B">
				>
			>
			properties = <
				["gen_child_closed_prop"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"gen_child_closed_prop">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_adltest_1.0.2">
			uid = <742>
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
	>
	passed = <True>
	missed_class_count = <0>
