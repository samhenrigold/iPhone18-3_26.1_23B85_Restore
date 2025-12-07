uint64_t AnswerSynthesisModelServer.prewarm(urgency:)(uint64_t a1)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22_4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  TokenGenerator.prewarm(urgency:)();
}

Swift::String __swiftcall AnswerSynthesisModelServer.promptTemplateID()()
{
  v0 = 0x800000025DBEFB20;
  v1 = 0xD00000000000003ELL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void AnswerSynthesisModelServer.createPromptTemplate()()
{
  v1 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v3 + 16))(v7, v0 + v8, v1);
  lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
  v9 = swift_allocError();
  *v10 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v7, v9);
  v11 = OUTLINED_FUNCTION_180();
  v12(v11);
}

void AnswerSynthesisModelServer.createOverridePrompt()(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  if (AFIsInternalInstall())
  {
    v8 = type metadata accessor for NSUserDefaults();
    static NSUserDefaults.answerSynthesisPromptTemplateOverride.getter(v8, v9, v10, v11, v12);
    if (v13)
    {
      v14 = static NSUserDefaults.makeModelCatalogAjaxUserDefaults()();
      if (v14)
      {
        v15 = v14;
        static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServerID.getter();
        v16 = MEMORY[0x25F89A600](v2);
        v18 = v17;
        (*(v4 + 8))(v7, v2);
        v19 = MEMORY[0x25F89F4C0](v16, v18);

        v20 = [v15 objectForKey_];

        if (v20)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
        }

        v41 = v39;
        v42 = v40;
        if (*(&v40 + 1))
        {
          outlined destroy of IntentApplication?(&v41, &_sypSgMd, &_sypSgMR);
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logging.answerSynthesis);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            OUTLINED_FUNCTION_28_3();
            v29 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v30 = swift_slowAlloc();
            *&v41 = v30;
            *v29 = 136315138;
            *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v27, v28, "Using override prompt template for Answer Synthesis: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v30);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          Prompt.init(template:)();
          v35 = type metadata accessor for Prompt();
          v36 = a1;
          v37 = 0;
LABEL_23:
          __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {

        v41 = 0u;
        v42 = 0u;
      }

      outlined destroy of IntentApplication?(&v41, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logging.answerSynthesis);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_25D85C000, v32, v33, "Ignoring overridden Answer Synthesis prompt template since ajax override is not set", v34, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      type metadata accessor for Prompt();
      v36 = OUTLINED_FUNCTION_19_4();
      goto LABEL_23;
    }
  }

  type metadata accessor for Prompt();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void AnswerSynthesisModelServer.createSchemaOverride()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = type metadata accessor for GenerationSchema();
  OUTLINED_FUNCTION_14();
  v65 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  if (AFIsInternalInstall() && (v21 = type metadata accessor for NSUserDefaults(), v26 = static NSUserDefaults.answerSynthesisCDSchemaOverride.getter(v21, v22, v23, v24, v25), v27))
  {
    v61 = v14;
    v64 = a1;
    v28 = v26;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v29 = JSONDecoder.init()();
    static String.Encoding.utf8.getter();
    v62 = v28;
    v30 = String.data(using:allowLossyConversion:)();
    v32 = v31;
    (*(v4 + 8))(v8, v2);
    if (v32 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x277D0DC78], MEMORY[0x277D0DC88]);
      OUTLINED_FUNCTION_53_3();
      v63 = v29;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data?(v30, v32);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logging.answerSynthesis);
      v39 = v65;
      v40 = *(v65 + 16);
      v40(v17, v20, v9);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      v43 = OUTLINED_FUNCTION_54_3();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v60 = v40;
        v46 = v45;
        v59 = swift_slowAlloc();
        v66 = v59;
        *v46 = 136315394;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        LODWORD(v62) = v42;
        v48 = v39;
        v49 = v47;

        *(v46 + 4) = v49;
        *(v46 + 12) = 2080;
        v58 = v41;
        v50 = v61;
        v60(v61, v17, v9);
        v57 = String.init<A>(describing:)();
        v51 = *(v48 + 8);
        v51(v17, v9);
        v52 = v51;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v46 + 14) = v53;
        v54 = v58;
        _os_log_impl(&dword_25D85C000, v58, v62, "Decoded answerSynthesisCDSchemaOverride %s to type: %s", v46, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v40 = v60;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v55 = v64;
      }

      else
      {

        v52 = *(v39 + 8);
        v52(v17, v9);
        v55 = v64;
        v50 = v61;
      }

      v40(v50, v20, v9);
      Schema.init(type:)();

      v52(v20, v9);
      v56 = type metadata accessor for Schema();
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
      OUTLINED_FUNCTION_148();
    }
  }

  else
  {
    type metadata accessor for Schema();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[30] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v4[31] = OUTLINED_FUNCTION_160();
  v4[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  OUTLINED_FUNCTION_114(v6);
  v4[33] = OUTLINED_FUNCTION_160();
  v4[34] = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  v4[35] = v7;
  OUTLINED_FUNCTION_21(v7);
  v4[36] = v8;
  v4[37] = OUTLINED_FUNCTION_160();
  v4[38] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v4[39] = OUTLINED_FUNCTION_160();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v10 = type metadata accessor for Schema();
  v4[45] = v10;
  OUTLINED_FUNCTION_21(v10);
  v4[46] = v11;
  v4[47] = OUTLINED_FUNCTION_160();
  v4[48] = swift_task_alloc();
  v12 = type metadata accessor for PromptTemplate();
  v4[49] = v12;
  OUTLINED_FUNCTION_21(v12);
  v4[50] = v13;
  v4[51] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v14);
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  static Task<>.checkCancellation()();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v61 = swift_slowAlloc();
    *v4 = 136642819;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v2, v3, "Calling answer synthesis with user prompt: %{sensitive}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  AnswerSynthesisModelServer.createPromptTemplate()();
  v5 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  v9 = (*(v8 + 56))(v7, v8);
  v10 = v0[44];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v0[52] = Dictionary.init(dictionaryLiteral:)();
  AnswerSynthesisModelServer.createSchemaOverride()(v10);
  if (OUTLINED_FUNCTION_30_4() == 1)
  {
    v12 = v0[44];
    v13 = &_s29GenerativeFunctionsFoundation6SchemaVSgMd;
    v14 = &_s29GenerativeFunctionsFoundation6SchemaVSgMR;
  }

  else
  {
    v15 = v0[34];
    (*(v0[46] + 32))(v0[48], v0[44], v0[45]);
    AnswerSynthesisModelServer.createOverridePrompt()(v15);
    v16 = OUTLINED_FUNCTION_30_4();
    v17 = v0[48];
    v18 = v0[45];
    v19 = v0[46];
    if (v16 != 1)
    {
      v49 = v0[43];
      (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
      (*(v19 + 16))(v49, v17, v18);
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v18);
      v50 = swift_task_alloc();
      v0[53] = v50;
      *v50 = v0;
      v50[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
      OUTLINED_FUNCTION_49_4(v0[38]);
      goto LABEL_18;
    }

    v20 = v0[34];
    (*(v19 + 8))(v0[48], v0[45]);
    v13 = &_s9PromptKit0A0VSgMd;
    v14 = &_s9PromptKit0A0VSgMR;
    v12 = v20;
  }

  outlined destroy of IntentApplication?(v12, v13, v14);
  AnswerSynthesisModelServer.createSchemaOverride()(v0[42]);
  if (OUTLINED_FUNCTION_30_4() != 1)
  {
    v32 = v0[46];
    v33 = v0[47];
    v34 = v0[45];
    v35 = v0[41];
    v36 = v0[26];
    (*(v32 + 32))(v33, v0[42], v34);
    v38 = v5[3];
    v37 = v5[4];
    __swift_project_boxed_opaque_existential_1(v36, v38);
    OUTLINED_FUNCTION_46_4();
    v39(v38, v37);
    (*(v32 + 16))(v35, v33, v34);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
    v40 = swift_task_alloc();
    v0[55] = v40;
    *v40 = v0;
    v40[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
    OUTLINED_FUNCTION_49_4(v0[51]);
    goto LABEL_13;
  }

  v21 = v0[33];
  outlined destroy of IntentApplication?(v0[42], &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  AnswerSynthesisModelServer.createOverridePrompt()(v21);
  v22 = OUTLINED_FUNCTION_30_4();
  v23 = v0[45];
  if (v22 == 1)
  {
    v24 = v0[26];
    outlined destroy of IntentApplication?(v0[33], &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v26 = v5[3];
    v25 = v5[4];
    __swift_project_boxed_opaque_existential_1(v24, v26);
    OUTLINED_FUNCTION_46_4();
    v27(v26, v25);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
    v31 = swift_task_alloc();
    v0[59] = v31;
    *v31 = v0;
    v31[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
    OUTLINED_FUNCTION_49_4(v0[51]);
LABEL_13:
    OUTLINED_FUNCTION_17_4();

    return closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(v41, v42, v43, v44, v45, v46);
  }

  (*(v0[36] + 32))(v0[37], v0[33], v0[35]);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v23);
  v54 = swift_task_alloc();
  v0[57] = v54;
  *v54 = v0;
  v54[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
  OUTLINED_FUNCTION_49_4(v0[37]);
LABEL_18:
  OUTLINED_FUNCTION_17_4();

  return closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(v55, v56, v57, v58, v59);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[10] = v2;
  v3[11] = v5;
  v3[12] = v6;
  v3[13] = v0;
  OUTLINED_FUNCTION_25_3();
  *v7 = *v2;
  *(v8 + 432) = v0;

  OUTLINED_FUNCTION_25_3();
  outlined destroy of IntentApplication?(*(v1 + 344), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[14] = v2;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;
  OUTLINED_FUNCTION_25_3();
  *v7 = *v2;
  *(v8 + 448) = v0;

  OUTLINED_FUNCTION_25_3();
  v9 = *(v1 + 328);
  v10 = *(v1 + 256);

  outlined destroy of IntentApplication?(v9, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  outlined destroy of IntentApplication?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[18] = v2;
  v3[19] = v5;
  v3[20] = v6;
  v3[21] = v0;
  OUTLINED_FUNCTION_25_3();
  *v7 = *v2;
  *(v8 + 464) = v0;

  OUTLINED_FUNCTION_25_3();
  outlined destroy of IntentApplication?(*(v1 + 320), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[22] = v2;
  v3[23] = v5;
  v3[24] = v6;
  v3[25] = v0;
  OUTLINED_FUNCTION_25_3();
  *v7 = *v2;
  *(v8 + 480) = v0;

  OUTLINED_FUNCTION_25_3();
  v9 = *(v1 + 312);
  v10 = *(v1 + 248);

  outlined destroy of IntentApplication?(v9, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  outlined destroy of IntentApplication?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v11);
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = v18[48];
  v20 = v18[45];
  v21 = v18[46];
  (*(v18[36] + 8))(v18[38], v18[35]);
  (*(v21 + 8))(v19, v20);
  v22 = OUTLINED_FUNCTION_107();
  v23(v22);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  (*(v18[46] + 8))(v18[47], v18[45]);
  v19 = OUTLINED_FUNCTION_107();
  v20(v19);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  (*(v18[36] + 8))(v18[37], v18[35]);
  v19 = OUTLINED_FUNCTION_107();
  v20(v19);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  (*(v18[50] + 8))(v18[51], v18[49]);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);

  return closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(a1, a2, a3, v3, v8);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t AnswerSynthesisModelServer.modelVersion.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  v6[36] = swift_task_alloc();
  v6[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[38] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v6[45] = swift_task_alloc();
  v10 = type metadata accessor for FunctionIdentifier();
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v12 = type metadata accessor for ChatMessagesPrompt();
  v6[53] = v12;
  v6[54] = *(v12 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:));
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)()
{
  v25 = *(v0 + 480);
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v21 = *(v0 + 416);
  v22 = *(v0 + 408);
  v23 = *(v0 + 464);
  v24 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v5;
  ChatMessagesPrompt.init(_:)();

  v7 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  *(v0 + 496) = v7;
  MEMORY[0x25F89F2A0](v6, v4, v7);
  v8 = *(v2 + 8);
  *(v0 + 504) = v8;
  *(v0 + 512) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  ChatMessagesPrompt.locale(_:)();
  v9 = OUTLINED_FUNCTION_48_3();
  (v8)(v9);
  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 600) = *MEMORY[0x277D0E548];
  v10 = *(v22 + 104);
  *(v0 + 520) = v10;
  *(v0 + 528) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v21);
  OUTLINED_FUNCTION_48_3();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  *(v0 + 536) = *(v22 + 8);
  *(v0 + 544) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = OUTLINED_FUNCTION_180();
  v12(v11);
  v8(v1, v4);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v8(v23, v4);
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v13 = OUTLINED_FUNCTION_48_3();
  (v8)(v13);
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v8(v25, v4);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v18 = swift_task_alloc();
  *(v0 + 552) = v18;
  *v18 = v0;
  v18[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:);
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B60](v19);
}

{
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = v0[36];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v50 = v0[67];
    v58 = v0[63];
    v53 = v0[60];
    v54 = v0[61];
    v56 = v0[53];
    v57 = v0[54];
    v49 = v0[52];
    v44 = v0[48];
    v45 = v0[47];
    v46 = v0[46];
    v47 = v0[49];
    v59 = v0[44];
    v55 = v0[43];
    v3 = v0[42];
    v4 = v0[39];
    v5 = v0[40];
    v52 = v5;
    v6 = v0[37];
    v7 = v0[38];
    v48 = v0[32];
    v51 = v0[27];
    v42 = *(v2 + 48);
    v43 = v0[41];
    v41 = *(v6 + 48);
    v8 = *(v55 + 32);
    v8(v7, v1, v3);
    v9 = *(v5 + 32);
    v9(v7 + v41, v1 + v42, v4);
    v10 = *(v6 + 48);
    v8(v59, v7, v3);
    v11 = v7 + v10;
    v12 = v4;
    v9(v43, v11, v4);
    v13 = v43;
    v14 = _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    v22 = OUTLINED_FUNCTION_33_4(v14, v15, v16, v17, v18, v19, v20, v21, v41, v42, v43, v44, v45, v46, v47);
    v23(v22);
    v24 = OUTLINED_FUNCTION_52_3();
    v25(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_31_6(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(Self.defaultSamplingParameters))", xmmword_25DBC8180);
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    OUTLINED_FUNCTION_51_3();
    v27();
    inited[4].n128_u64[1] = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm(&inited[3]);
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v50(v49, v48);
    OUTLINED_FUNCTION_48_3();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit012ChatMessagesD11Convertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit012ChatMessagesD11Convertible_ptGMR);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_25DBC8180;
    strcpy((v28 + 32), "promptTemplate");
    *(v28 + 47) = -18;
    v29 = type metadata accessor for PromptTemplate();
    *(v28 + 72) = v29;
    *(v28 + 80) = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698], MEMORY[0x277D0E678]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 48));
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1Tm, v51, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit012ChatMessagesA11Convertible_pMd, &_s9PromptKit012ChatMessagesA11Convertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v52 + 8))(v13, v12);
    (*(v55 + 8))(v59, v3);
    v58(v54, v56);
    (*(v57 + 32))(v54, v53, v56);
  }

  v31 = v0[63];
  v32 = v0[60];
  v33 = v0[53];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v34 = OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_37_4(v34);
  v31(v32, v33);
  v35 = swift_task_alloc();
  v0[71] = v35;
  OUTLINED_FUNCTION_14_4();
  v38 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v36, v37, MEMORY[0x277D71A40]);
  *v35 = v0;
  v35[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:);
  v39 = v0[33];

  return MEMORY[0x282165A78](v39, v38);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[72] = v1;

  v6 = v4[35];
  v7 = v4[34];
  v8 = v4[33];
  if (!v1)
  {
    v4[73] = v0;
    v4[74] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[53];
  (*(v0[47] + 8))(v0[49], v0[46]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[74];
  v6 = v0[73];

  return v4(v5, v6);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_32_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_107();
  v18(v21);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_32_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_107();
  v18(v21);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(uint64_t a1)
{
  v1 = type metadata accessor for ChatMessagesPrompt();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTemplate();
  lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698], MEMORY[0x277D0E678]);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x25F89F110](v6);

  return (*(v2 + 8))(v4, v1);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride_generateGenerativeFunctionOverride()()
{
  v1 = type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  type metadata accessor for CompletionPrompt();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v11);
  CompletionPrompt.init(_:)();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_12_2();
  lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v12, v13, MEMORY[0x277D42D38]);
  OUTLINED_FUNCTION_180();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v3 + 8))(v7, v1);
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_107();
  v14(v15);
  v16 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (!v0)
  {
    v1 = v16;
  }

  v17 = OUTLINED_FUNCTION_53_3();
  v14(v17);
  return v1;
}

uint64_t closure #1 in AnswerSynthesisModelServer.synthesizeWithOverride_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = type metadata accessor for BindableVariable();
  v9[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  BindableVariable.init(name:)();
  v4 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DBC8180;
  (*(v1 + 16))(v6 + v5, v3, v0);
  MEMORY[0x25F89F150](v6, v0, v4);

  return (*(v1 + 8))(v3, v0);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  v5[35] = swift_task_alloc();
  v5[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v5[37] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v5[44] = swift_task_alloc();
  v9 = type metadata accessor for FunctionIdentifier();
  v5[45] = v9;
  v5[46] = *(v9 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[49] = v10;
  v5[50] = *(v10 - 8);
  v5[51] = swift_task_alloc();
  v11 = type metadata accessor for CompletionPrompt();
  v5[52] = v11;
  v5[53] = *(v11 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:));
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)()
{
  v28 = *(v0 + 464);
  v25 = *(v0 + 448);
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v26 = *(v0 + 232);
  v27 = *(v0 + 456);
  v7 = *(v0 + 216);
  v23 = *(v0 + 392);
  v24 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v7;
  CompletionPrompt.init(_:)();

  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 584) = *MEMORY[0x277D0E548];
  v8 = *(v6 + 104);
  *(v0 + 480) = v8;
  *(v0 + 488) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  OUTLINED_FUNCTION_12_2();
  v11 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v9, v10, MEMORY[0x277D42D38]);
  *(v0 + 496) = v11;
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = *(v6 + 8);
  *(v0 + 504) = v12;
  *(v0 + 512) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v5, v23);
  v13 = *(v4 + 8);
  *(v0 + 520) = v13;
  *(v0 + 528) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v2, v3);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v13(v1, v3);
  MEMORY[0x25F89F2A0](v26, v3, v11);
  v13(v25, v3);
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v13(v27, v3);
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v13(v28, v3);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v18 = swift_task_alloc();
  *(v0 + 536) = v18;
  *v18 = v0;
  v18[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B58](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = v0[35];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v57 = v0[65];
    v53 = v0[63];
    v55 = v0[59];
    v56 = v0[52];
    v51 = v0[51];
    v45 = v0[47];
    v46 = v0[46];
    v47 = v0[45];
    v48 = v0[48];
    v58 = v0[43];
    v54 = v0[42];
    v3 = v0[41];
    v5 = v0[38];
    v4 = v0[39];
    v52 = v4;
    v6 = v0[36];
    v7 = v0[37];
    v49 = v0[27];
    v50 = v0[31];
    v43 = *(v2 + 48);
    v44 = v0[40];
    v42 = *(v6 + 48);
    v8 = *(v54 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v42, v1 + v43, v5);
    v10 = *(v6 + 48);
    v8(v58, v7, v3);
    v9(v44, v7 + v10, v5);
    v11 = v44;
    v12 = _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    v20 = OUTLINED_FUNCTION_33_4(v12, v13, v14, v15, v16, v17, v18, v19, v42, v43, v44, v45, v46, v47, v48);
    v21(v20);
    v22 = OUTLINED_FUNCTION_52_3();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    strcpy((inited + 32), "overridePrompt");
    *(inited + 47) = -18;
    v25 = type metadata accessor for Prompt();
    v26 = MEMORY[0x277D42E20];
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v49, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    OUTLINED_FUNCTION_107();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v28 = swift_initStackObject();
    OUTLINED_FUNCTION_31_6(v28, "_OverrideConfigurationHelper.samplingParameters(.dynamic(Self.defaultSamplingParameters))", xmmword_25DBC8180);
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    OUTLINED_FUNCTION_51_3();
    v29();
    v28[4].n128_u64[1] = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm(&v28[3]);
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v53(v51, v50);
    OUTLINED_FUNCTION_180();
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v52 + 8))(v11, v5);
    (*(v54 + 8))(v58, v3);
    v57(v55, v56);
    v30 = OUTLINED_FUNCTION_53_3();
    v31(v30);
  }

  v32 = v0[65];
  v33 = v0[58];
  v34 = v0[52];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v35 = OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_37_4(v35);
  v32(v33, v34);
  v36 = swift_task_alloc();
  v0[69] = v36;
  OUTLINED_FUNCTION_14_4();
  v39 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v37, v38, MEMORY[0x277D71A48]);
  *v36 = v0;
  v36[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);
  v40 = v0[32];

  return MEMORY[0x282165A58](v40, v39);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[70] = v1;

  v6 = v4[34];
  v7 = v4[33];
  v8 = v4[32];
  if (!v1)
  {
    v4[71] = v0;
    v4[72] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[65];
  v32 = v20[54];
  v33 = v20[51];
  v34 = v20[47];
  v35 = v20[44];
  v36 = v20[43];
  v37 = v20[40];
  v38 = v20[37];
  v39 = v20[35];
  v40 = v20[34];
  (*(v20[46] + 8))(v20[48], v20[45]);
  v22 = OUTLINED_FUNCTION_180();
  v21(v22);

  OUTLINED_FUNCTION_17_4();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_28_5();
  v20(v19);
  v21 = OUTLINED_FUNCTION_107();
  v18(v21);
  OUTLINED_FUNCTION_18_7();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_28_5();
  v20(v19);
  v21 = OUTLINED_FUNCTION_107();
  v18(v21);
  OUTLINED_FUNCTION_18_7();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1)
{
  v1 = type metadata accessor for Prompt();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v7 + v6, v4, v1);
  MEMORY[0x25F89F150](v7, v1, v5);

  return (*(v2 + 8))(v4, v1);
}

uint64_t AnswerSynthesisModelServer.deinit()
{

  v1 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AnswerSynthesisModelServer.__deallocating_deinit()
{
  AnswerSynthesisModelServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelServer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelServer;

  return AnswerSynthesisModelServer.execute(request:userPrompt:)(a1, a2, a3);
}

uint64_t type metadata accessor for AnswerSynthesisModelServer(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerSynthesisModelServer;
  if (!type metadata singleton initialization cache for AnswerSynthesisModelServer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AnswerSynthesisModelServer(uint64_t a1)
{
  result = type metadata accessor for ResourceBundleQuery();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{
}

uint64_t OUTLINED_FUNCTION_11_4()
{
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

__n128 *OUTLINED_FUNCTION_31_6@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000059;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1)
{

  return GenerativeConfigurationProtocol.with<A>(model:)();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v0 + 208) = *(v1 + 32);

  return type metadata accessor for TokenGenerator();
}

uint64_t PQAVerificationModelOnDevice.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PQAVerificationModelOnDevice.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t PQAVerificationModelOnDevice.model.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t PQAVerificationModelOnDevice.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t PQAVerificationModelOnDevice.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_109();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  type metadata accessor for SamplingStrategy();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  AFIsInternalInstall();
  outlined init with copy of SamplingStrategy?(v7, v4);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  return outlined destroy of IntentApplication?(v7, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
}

uint64_t outlined init with copy of SamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PQAVerificationModelOnDevice.__allocating_init(languageCode:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PQAVerificationModelOnDevice.init(languageCode:)(a1);
  return v2;
}

void (**PQAVerificationModelOnDevice.init(languageCode:)(uint64_t a1))(uint64_t, char *, uint64_t)
{
  v112 = *v1;
  v3 = type metadata accessor for CachePolicy();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v96 = v6 - v5;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for SessionConfiguration();
  OUTLINED_FUNCTION_14();
  v99 = v8;
  v100 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v97 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  v101 = &v92 - v15;
  OUTLINED_FUNCTION_78_0();
  v105 = type metadata accessor for ModelBundle();
  OUTLINED_FUNCTION_14();
  v103 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v102 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v21 = OUTLINED_FUNCTION_114(v20);
  MEMORY[0x28223BE20](v21);
  v109 = &v92 - v22;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v106 = v23;
  v107 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_109();
  v95 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  v104 = &v92 - v28;
  MEMORY[0x28223BE20](v29);
  v108 = &v92 - v30;
  OUTLINED_FUNCTION_78_0();
  v31 = type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - v36;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v115 = v1;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logging.answerSynthesis);
  v40 = *(v33 + 16);
  v113 = a1;
  v114 = v40;
  (v40)(v37, a1, v31);
  v94 = v39;
  v41 = Logger.logObject.getter();
  v42 = v31;
  v43 = v33;
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v44))
  {
    OUTLINED_FUNCTION_28_3();
    v45 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v93 = swift_slowAlloc();
    v116 = v93;
    *v45 = 136315138;
    v46 = OUTLINED_FUNCTION_30_5();
    v114(v46);
    String.init<A>(describing:)();
    v47 = OUTLINED_FUNCTION_25_4();
    v48(v47);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v45 + 4) = v49;
    _os_log_impl(&dword_25D85C000, v41, v44, "Initializing PQAVerificationModelOnDevice with %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_25_4();
    v51(v50);
  }

  v52 = v42;
  static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerificationConfigurationID.getter();
  v53 = v109;
  v54 = v113;
  (v114)(v109, v113, v52);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
  v55 = v108;
  v56 = v110;
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  if (!v56)
  {
    v110 = v43;
    v114 = v52;
    v57 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
    v58 = v106;
    v59 = v107;
    v60 = v115;
    (*(v107 + 32))(v115 + OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery, v55, v106);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v61 = *(v59 + 16);
    v61(v104, v60 + v57, v58);
    v62 = v101;
    ModelBundle.init(resourceBundleQuery:)();
    v63 = v105;
    if (__swift_getEnumTagSinglePayload(v62, 1, v105) != 1)
    {
      v79 = v103;
      v80 = *(v103 + 32);
      v109 = v57;
      v81 = v102;
      v80(v102, v62, v63);
      OUTLINED_FUNCTION_107();
      v108 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
      v104 = v82;
      OUTLINED_FUNCTION_107();
      v101 = static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
      v94 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v84 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v85 = swift_allocObject();
      v112 = v61;
      *(v85 + 16) = xmmword_25DBC8180;
      (*(v79 + 16))(v85 + v84, v81, v105);
      static CachePolicy.inMemory.getter();
      v86 = [objc_opt_self() processInfo];
      [v86 processIdentifier];

      v87 = v98;
      v88 = v115;
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      v89 = v99;
      v90 = v100;
      (*(v99 + 16))(v97, v87);
      type metadata accessor for TokenGenerator();
      swift_allocObject();
      *(v88 + 32) = TokenGenerator.init(configuration:)();
      v91 = v95;
      v112(v95, &v109[v88], v58);
      specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(v91);
      v111(v113, v114);
      (*(v107 + 8))(v91, v58);
      (*(v89 + 8))(v87, v90);
      (*(v103 + 8))(v102, v105);
      return v115;
    }

    outlined destroy of IntentApplication?(v62, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_28_3();
      v66 = v61;
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v68 = swift_slowAlloc();
      v117 = v68;
      *v67 = 136315138;
      v66(v104, v115 + v57, v106);
      String.init<A>(describing:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v67 + 4) = v69;
      OUTLINED_FUNCTION_44_4();
      _os_log_impl(v70, v71, v72, v73, v74, v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v76 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v76);
    }

    v52 = v114;
    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    v54 = v113;
  }

  v111(v54, v52);

  if (!v56)
  {
    (*(v107 + 8))(v115 + OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery, v106);
  }

  swift_deallocPartialClassInstance();
  return v115;
}

uint64_t PQAVerificationModelOnDevice.prewarm(urgency:)()
{
  v0 = type metadata accessor for PrewarmUrgency();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = v5 - v4;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logging.answerSynthesis);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25D85C000, v8, v9, "Prewarming PQASynthesisModelOnDevice model...", v10, 2u);
    v11 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v11);
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  static PrewarmUrgency.default.getter();
  TokenGenerator.prewarm(urgency:)();

  return (*(v2 + 8))(v6, v0);
}

Swift::String __swiftcall PQAVerificationModelOnDevice.promptTemplateID()()
{
  v0 = 0x800000025DBEFC50;
  v1 = 0xD00000000000002BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void PQAVerificationModelOnDevice.createPromptTemplate()()
{
  v1 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v3 + 16))(v7, v0 + v8, v1);
  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  v9 = swift_allocError();
  *v10 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v7, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  (*(v3 + 8))(v7, v1);
}

uint64_t PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[37] = v4;
  v1[38] = v0;
  v1[35] = v5;
  v1[36] = v6;
  v7 = type metadata accessor for Date();
  v1[39] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[40] = v8;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  *v4 = *v1;
  v3[46] = v5;
  v3[47] = v6;
  v3[48] = v0;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 22);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v3 = v2;
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = (*(*static MetricsLogger.shared + 312))(v0[42]);
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.pqaModelInferenceTime.setter();
  }

  v1(v0 + 31, 0);
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  v30 = v0[46];
  v31 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v14 = v0[2];
  v13 = v0[3];

  Date.init()();
  specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(v10, v12, v11, v14, v13, v8, v7, v30, v6);

  v15 = *(v9 + 8);
  v15(v10, v31);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logging.answerSynthesis);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_28_3();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v32 = swift_slowAlloc();
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v26 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v26);
  }

  v27 = String.oms_BOOLeanValue.getter(v0[46], v0[47]);

  v28 = OUTLINED_FUNCTION_34_5();
  (v15)(v28);

  OUTLINED_FUNCTION_62();

  return v29(v27 & 1);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[40] + 8))(v0[42], v0[39]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

  OUTLINED_FUNCTION_62();

  return v1(0);
}

uint64_t PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:)(uint64_t a1)
{
  v12 = v1;
  static Task<>.checkCancellation()();
  memcpy(v11, (v1 + 16), sizeof(v11));
  *(v1 + 344) = PQAVerificationRequest.userPrompt()();
  if (v2)
  {

    OUTLINED_FUNCTION_62();

    return v3(0);
  }

  v5 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v7 = v6;
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    OUTLINED_FUNCTION_34_5();
    result = String.count.getter();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v11[0] = 0;
      MEMORY[0x25F89E580](result);
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

LABEL_9:
  v5(v1 + 216, 0);
  Date.init()();
  *(v1 + 200) = &type metadata for PQAVerificationRequest;
  *(v1 + 208) = lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest();
  v9 = swift_allocObject();
  *(v1 + 176) = v9;
  memcpy((v9 + 16), (v1 + 16), 0x50uLL);
  outlined init with copy of PQAVerificationRequest(v1 + 16, v1 + 96);
  v10 = swift_task_alloc();
  *(v1 + 360) = v10;
  *v10 = v1;
  v10[1] = PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:);

  return PQAVerificationModelOnDevice.execute(request:userPrompt:)();
}

uint64_t PQAVerificationModelOnDevice.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_48();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v1[21] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  OUTLINED_FUNCTION_114(v4);
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for Prompt();
  v1[23] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[24] = v6;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplate();
  v1[27] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[28] = v8;
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v29 = swift_slowAlloc();
    *v4 = 136642819;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v11);
    v12 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v12);
  }

  PQAVerificationModelOnDevice.createPromptTemplate()();
  v13 = v0[22];
  v15 = v0[18];
  v14 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  v0[30] = Dictionary.init(dictionaryLiteral:)();
  PQAVerificationModelOnDevice.createOverridePrompt()(v13);
  v18 = v0[22];
  v17 = v0[23];
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    v19 = v0[29];
    v20 = v0[21];
    outlined destroy of IntentApplication?(v18, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    *(swift_task_alloc() + 16) = v19;
    Prompt.init(_:)();

    v21 = swift_task_alloc();
    v0[33] = v21;
    *v21 = v0;
    v21[1] = PQAVerificationModelOnDevice.execute(request:userPrompt:);
    v22 = OUTLINED_FUNCTION_31_7(v0[25]);
    v25 = v20;
  }

  else
  {
    v26 = v0[21];
    (*(v0[24] + 32))(v0[26], v18, v17);
    v27 = swift_task_alloc();
    v0[31] = v27;
    *v27 = v0;
    v27[1] = PQAVerificationModelOnDevice.execute(request:userPrompt:);
    v22 = OUTLINED_FUNCTION_31_7(v0[26]);
    v25 = v26;
  }

  return closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(v22, v23, v24, v25);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v5;
  v2[13] = v0;
  OUTLINED_FUNCTION_25_3();
  *v6 = *v1;
  *(v7 + 256) = v0;

  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[26], v0[23]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_32_5();
  v4 = OUTLINED_FUNCTION_107();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_78();
  (*(v0[24] + 8))(v0[26], v0[23]);
  v1 = OUTLINED_FUNCTION_107();
  v2(v1);

  OUTLINED_FUNCTION_127();

  return v3();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v5;
  v2[17] = v0;
  OUTLINED_FUNCTION_25_3();
  *v6 = *v1;
  *(v7 + 272) = v0;

  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = OUTLINED_FUNCTION_54_0();
  v2(v1);

  OUTLINED_FUNCTION_32_5();
  v3 = OUTLINED_FUNCTION_107();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_78();
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = OUTLINED_FUNCTION_107();
  v2(v1);

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44[6] = a6;
  v44[7] = a7;
  v44[8] = a8;
  v44[9] = a9;
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution();
      v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v13 = v12;

      v42 = type metadata accessor for SearchToolTranscript();
      v43 = v39;
      v41 = *(v42 - 8);
      MEMORY[0x28223BE20](v42);
      v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      SearchToolTranscript.init()();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v39[1] = v39;
      MEMORY[0x28223BE20](v16 - 8);
      v18 = v39 - v17;
      v19 = type metadata accessor for Date();
      v40 = 0;
      v20 = v11;
      v21 = v13;
      v22 = v19;
      (*(*(v19 - 8) + 16))(v18, a1, v19);
      v23 = v22;
      v24 = v21;
      v25 = v20;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v23);
      SearchToolTranscript.absoluteTimestamp.setter();

      v26 = v15;
      SearchToolTranscript.requestId.setter();

      SearchToolTranscript.query.setter();
      SearchToolTranscript.eventType.setter();
      outlined copy of Data._Representation(v20, v24);
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v27 = v40;
      static StreamResource.source()();
      if (v27)
      {
        v29 = v41;
        v28 = v42;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logging.search);
        v31 = v27;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = v24;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          v37 = v27;
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v35 + 4) = v38;
          *v36 = v38;
          _os_log_impl(&dword_25D85C000, v32, v33, "Failed to send transcript event: %@", v35, 0xCu);
          outlined destroy of IntentApplication?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x25F8A1050](v36, -1, -1);
          MEMORY[0x25F8A1050](v35, -1, -1);

          outlined consume of Data._Representation(v25, v34);
        }

        else
        {
          outlined consume of Data._Representation(v25, v24);
        }

        return (*(v29 + 8))(v26, v28);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        dispatch thunk of Source.sendEvent(_:)();
        outlined consume of Data._Representation(v25, v24);
        (*(v41 + 8))(v15, v42);
        return __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }
    }
  }

  return result;
}

{
  v49[6] = a6;
  v49[7] = a7;
  v49[8] = a8;
  v49[9] = a9;
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution();
      v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v12 = v11;

      v47 = type metadata accessor for SearchToolTranscript();
      v48 = v44;
      OUTLINED_FUNCTION_14();
      v46 = v13;
      MEMORY[0x28223BE20](v14);
      OUTLINED_FUNCTION_36();
      v17 = v16 - v15;
      SearchToolTranscript.init()();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v44[1] = v44;
      v19 = OUTLINED_FUNCTION_114(v18);
      MEMORY[0x28223BE20](v19);
      v21 = v44 - v20;
      v22 = type metadata accessor for Date();
      v45 = 0;
      v23 = v10;
      v24 = v12;
      v25 = v22;
      OUTLINED_FUNCTION_17();
      v26 = OUTLINED_FUNCTION_107();
      v27(v26);
      v28 = v25;
      v29 = v24;
      v30 = v23;
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v28);
      SearchToolTranscript.absoluteTimestamp.setter();

      v31 = v17;
      SearchToolTranscript.requestId.setter();

      SearchToolTranscript.query.setter();
      SearchToolTranscript.eventType.setter();
      outlined copy of Data._Representation(v23, v29);
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v32 = v45;
      static StreamResource.source()();
      if (v32)
      {
        v34 = v46;
        v33 = v47;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logging.search);
        v36 = v32;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_28_3();
          v39 = v29;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v32;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_25D85C000, v37, v38, "Failed to send transcript event: %@", v40, 0xCu);
          outlined destroy of IntentApplication?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          outlined consume of Data._Representation(v30, v39);
        }

        else
        {
          outlined consume of Data._Representation(v30, v29);
        }

        return (*(v34 + 8))(v31, v33);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        dispatch thunk of Source.sendEvent(_:)();
        outlined consume of Data._Representation(v30, v29);
        (*(v46 + 8))(v17, v47);
        return __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }
    }
  }

  return result;
}

void PQAVerificationModelOnDevice.createOverridePrompt()(uint64_t a2@<X8>)
{
  if (!AFIsInternalInstall() || (v4 = type metadata accessor for NSUserDefaults(), static NSUserDefaults.pqaVerificationPromptTemplateOverride.getter(v4, v5, v6, v7, v8), !v9))
  {
    v23 = type metadata accessor for Prompt();
    v24 = a2;
    v25 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
    return;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logging.answerSynthesis);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = "NNSStringCompareOptions" + 17;
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_28_3();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v26 = swift_slowAlloc();
    *v14 = 136315138;
    OUTLINED_FUNCTION_30_5();
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v11, v12, "Using override prompt template for PQA Verification: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v13 = "ptions";
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_30_5();
  Prompt.init(template:)();
  if (!v2)
  {
    v23 = type metadata accessor for Prompt();
    v24 = a2;
    v25 = 0;
    goto LABEL_12;
  }

  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_28_3();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v27 = swift_slowAlloc();
    *v18 = *(v13 + 46);
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 4) = v20;
    _os_log_impl(&dword_25D85C000, v16, v17, "Unable to create override prompt for PQAVerification model: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v21 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v21);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  swift_allocError();
  *v22 = 3;
  swift_willThrow();
}

uint64_t PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);

  return closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(v5, v3, v0, v6);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  OUTLINED_FUNCTION_32_5();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t closure #1 in PQAVerificationModelOnDevice.execute(request:userPrompt:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptTemplate();
  v13[3] = v6;
  v13[4] = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v6);
  v8 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DBC8180;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x25F89F150](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

char *PQAVerificationModelOnDevice.synthesizeWithPrompt_generateGenerativeFunctionOverride()()
{
  v1 = type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = type metadata accessor for CompletionPrompt();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v12);
  v33 = v30 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  MEMORY[0x28223BE20](v17);
  v34 = v30 - v18;
  CompletionPrompt.init(_:)();
  v35 = v0;
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v19, v20, MEMORY[0x277D42D38]);
  OUTLINED_FUNCTION_21_4();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v21 = *(v3 + 8);
  v31 = v1;
  v32 = v3 + 8;
  v21(v7, v1);
  v22 = *(v10 + 8);
  v30[1] = v10 + 8;
  v23 = OUTLINED_FUNCTION_107();
  v22(v23);
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_21_4();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v21(v7, v1);
  v24 = OUTLINED_FUNCTION_107();
  v22(v24);
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_21_4();
  v26 = v25;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v21(v7, v31);
  (v22)(v16, v8);
  v27 = v35;
  v28 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (!v27)
  {
    v16 = v28;
  }

  (v22)(v26, v8);
  return v16;
}

uint64_t closure #1 in PQAVerificationModelOnDevice.synthesizeWithPrompt_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = type metadata accessor for BindableVariable();
  v9[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  BindableVariable.init(name:)();
  v4 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DBC8180;
  (*(v1 + 16))(v6 + v5, v3, v0);
  MEMORY[0x25F89F150](v6, v0, v4);

  return (*(v1 + 8))(v3, v0);
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a3;
  v4[42] = a4;
  v4[39] = a1;
  v4[40] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  v4[46] = swift_task_alloc();
  v4[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[48] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v4[55] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v4[56] = v8;
  v4[57] = *(v8 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v4[60] = v9;
  v4[61] = *(v9 - 8);
  v4[62] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v4[63] = v10;
  v4[64] = *(v10 - 8);
  v4[65] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer();
  v4[66] = v11;
  v4[67] = *(v11 - 8);
  v4[68] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v4[69] = v12;
  v4[70] = *(v12 - 8);
  v4[71] = swift_task_alloc();
  v13 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v4[72] = v13;
  v4[73] = *(v13 - 8);
  v4[74] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer();
  v4[75] = v14;
  v4[76] = *(v14 - 8);
  v4[77] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[78] = v15;
  v4[79] = *(v15 - 8);
  v4[80] = swift_task_alloc();
  v16 = type metadata accessor for CompletionPrompt();
  v4[81] = v16;
  v4[82] = *(v16 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:));
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)()
{
  v1 = *(v0 + 664);
  v45 = *(v0 + 680);
  v46 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v51 = *(v0 + 608);
  v52 = *(v0 + 600);
  v6 = *(v0 + 584);
  v47 = *(v0 + 592);
  v48 = *(v0 + 568);
  v49 = *(v0 + 560);
  v50 = *(v0 + 616);
  v57 = *(v0 + 544);
  v58 = *(v0 + 536);
  v59 = *(v0 + 528);
  v53 = *(v0 + 520);
  v54 = *(v0 + 512);
  v55 = *(v0 + 496);
  v56 = *(v0 + 488);
  v7 = *(v0 + 312);
  v44 = *(v0 + 320);
  *(swift_task_alloc() + 16) = v7;
  CompletionPrompt.init(_:)();

  static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter();
  *(v0 + 936) = *MEMORY[0x277D0E548];
  v8 = *(v4 + 104);
  *(v0 + 704) = v8;
  *(v0 + 712) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v3);
  OUTLINED_FUNCTION_11_2();
  *(v0 + 720) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v9, v10, MEMORY[0x277D42D38]);
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v11 = *(v4 + 8);
  *(v0 + 728) = v11;
  *(v0 + 736) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  v12 = *(v46 + 8);
  *(v0 + 744) = v12;
  *(v0 + 752) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v2);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v44);
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v13 = OUTLINED_FUNCTION_30_5();
  (v12)(v13);
  *(v0 + 760) = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *(v0 + 940) = *MEMORY[0x277D0E5C0];
  v18 = *(v6 + 104);
  *(v0 + 768) = v18;
  *(v0 + 776) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v47);
  *(v0 + 784) = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *(v0 + 944) = *MEMORY[0x277D0E5C8];
  v23 = *(v49 + 104);
  *(v0 + 792) = v23;
  *(v0 + 800) = (v49 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v48);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v24 = *(v51 + 8);
  *(v0 + 808) = v24;
  *(v0 + 816) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v50, v52);
  v12(v45, v2);
  *(v0 + 824) = type metadata accessor for StringResponseSanitizer.Overrides();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *(v0 + 948) = *MEMORY[0x277D0E578];
  v29 = *(v54 + 104);
  *(v0 + 832) = v29;
  *(v0 + 840) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v53);
  *(v0 + 848) = type metadata accessor for StringResponseSanitizer.Guardrails();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  *(v0 + 952) = *MEMORY[0x277D0E580];
  v34 = *(v56 + 104);
  *(v0 + 856) = v34;
  *(v0 + 864) = (v56 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v55);
  StringResponseSanitizer.init(overrides:guardrails:)();
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v35 = *(v58 + 8);
  *(v0 + 872) = v35;
  *(v0 + 880) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v57, v59);
  v36 = OUTLINED_FUNCTION_34_5();
  (v12)(v36);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v41 = swift_task_alloc();
  *(v0 + 888) = v41;
  *v41 = v0;
  v41[1] = closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);
  v42 = *(v0 + 368);

  return MEMORY[0x282166B58](v42, 0xD00000000000001CLL, 0x800000025DBEFEA0);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 896) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 368);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v75 = *(v0 + 872);
    v71 = *(v0 + 856);
    v70 = *(v0 + 952);
    v68 = *(v0 + 848);
    v67 = *(v0 + 832);
    v66 = *(v0 + 948);
    v64 = *(v0 + 824);
    v62 = *(v0 + 808);
    v60 = *(v0 + 792);
    v59 = *(v0 + 944);
    v57 = *(v0 + 784);
    v54 = *(v0 + 768);
    v53 = *(v0 + 940);
    v51 = *(v0 + 760);
    v81 = *(v0 + 744);
    v76 = *(v0 + 728);
    v74 = *(v0 + 704);
    v73 = *(v0 + 936);
    v78 = *(v0 + 688);
    v79 = *(v0 + 696);
    v80 = *(v0 + 656);
    v42 = *(v2 + 48);
    v77 = *(v0 + 648);
    v63 = *(v0 + 640);
    v65 = *(v0 + 624);
    v50 = *(v0 + 600);
    v46 = *(v0 + 592);
    v47 = *(v0 + 576);
    v48 = *(v0 + 568);
    v49 = *(v0 + 552);
    v61 = *(v0 + 528);
    v52 = *(v0 + 520);
    v55 = *(v0 + 504);
    v56 = *(v0 + 496);
    v58 = *(v0 + 480);
    v3 = *(v0 + 456);
    v43 = *(v0 + 448);
    v44 = *(v0 + 472);
    v82 = *(v0 + 432);
    v72 = *(v0 + 424);
    v41 = *(v0 + 408);
    v4 = *(v0 + 400);
    v5 = *(v0 + 376);
    v6 = *(v0 + 384);
    v45 = *(v0 + 312);
    v39 = *(v5 + 48);
    v40 = *(v0 + 392);
    v7 = *(v72 + 32);
    v8 = *(v0 + 416);
    v69 = v8;
    v7(v6, v1);
    v9 = *(v4 + 32);
    v9(v6 + v39, v1 + v42, v40);
    v10 = *(v5 + 48);
    (v7)(v82, v6, v8);
    v9(v41, v6 + v10, v40);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v3 + 8))(v44, v43);
    v11 = OUTLINED_FUNCTION_107();
    v12(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v14 = type metadata accessor for Prompt();
    v15 = MEMORY[0x277D42E20];
    *(inited + 72) = v14;
    *(inited + 80) = v15;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1Tm, v45, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_25DBC8400;
    *(v17 + 32) = 0xD00000000000007BLL;
    *(v17 + 40) = 0x800000025DBEFDA0;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v51);
    v54(v46, v53, v47);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v57);
    v60(v48, v59, v49);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    *(v17 + 72) = v50;
    __swift_allocate_boxed_opaque_existential_1Tm((v17 + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v24 = OUTLINED_FUNCTION_54_0();
    v62(v24);
    *(v17 + 80) = 0xD000000000000075;
    *(v17 + 88) = 0x800000025DBEFE20;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v64);
    v67(v52, v66, v55);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v68);
    v71(v56, v70, v58);
    StringResponseSanitizer.init(overrides:guardrails:)();
    *(v17 + 120) = v61;
    __swift_allocate_boxed_opaque_existential_1Tm((v17 + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v31 = OUTLINED_FUNCTION_54_0();
    v75(v31);
    *(v17 + 128) = 0xD000000000000061;
    *(v17 + 136) = 0x800000025DBEFD30;
    static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter();
    v74(v63, v73, v65);
    *(v17 + 168) = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm((v17 + 144));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v76(v63, v65);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v41, v40);
    (*(v72 + 8))(v82, v69);
    v81(v79, v77);
    (*(v80 + 32))(v79, v78, v77);
  }

  v32 = *(v0 + 744);
  v33 = *(v0 + 328);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 304) = *(v33 + 32);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:)();
  v34 = OUTLINED_FUNCTION_54_0();
  v32(v34);
  v35 = swift_task_alloc();
  *(v0 + 904) = v35;
  v36 = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v35 = v0;
  v35[1] = closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);
  v37 = *(v0 + 344);

  return MEMORY[0x282165A58](v37, v36);
}

{
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[81];
  (*(v0[57] + 8))(v0[59], v0[56]);
  v1(v2, v3);

  OUTLINED_FUNCTION_32_5();
  v5 = v0[116];
  v6 = v0[115];

  return v4(v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_16_6();
  v2(v1);
  v3 = OUTLINED_FUNCTION_107();
  v0(v3);
  OUTLINED_FUNCTION_3_5();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  v1 = OUTLINED_FUNCTION_16_6();
  v2(v1);
  v3 = OUTLINED_FUNCTION_107();
  v0(v3);
  OUTLINED_FUNCTION_3_5();

  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *v8 = *v3;
  v7[114] = v2;

  v9 = v6[45];
  v10 = v6[44];
  v11 = v6[43];
  if (!v2)
  {
    v7[115] = a2;
    v7[116] = a1;
  }

  (*(v10 + 8))(v9, v11);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12);
}

uint64_t closure #1 in closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(uint64_t a1)
{
  v1 = type metadata accessor for Prompt();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v7 + v6, v4, v1);
  MEMORY[0x25F89F150](v7, v1, v5);

  return (*(v2 + 8))(v4, v1);
}

uint64_t PQAVerificationModelOnDevice.deinit()
{

  v1 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PQAVerificationModelOnDevice.__deallocating_deinit()
{
  PQAVerificationModelOnDevice.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:) in conformance PQAVerificationModelOnDevice()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:) in conformance PQAVerificationModelOnDevice;

  return PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:)();
}

{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_62();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance PQAVerificationModelOnDevice()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance PQAVerificationModelOnDevice;

  return PQAVerificationModelOnDevice.execute(request:userPrompt:)();
}

unint64_t lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest()
{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

uint64_t type metadata accessor for PQAVerificationModelOnDevice(uint64_t a1)
{
  result = type metadata singleton initialization cache for PQAVerificationModelOnDevice;
  if (!type metadata singleton initialization cache for PQAVerificationModelOnDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PQAVerificationModelOnDevice(uint64_t a1)
{
  result = type metadata accessor for ResourceBundleQuery();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL #_hasSymbol query for SearchToolTranscript()
{
  if (MEMORY[0x277D211E0])
  {
    v0 = MEMORY[0x277D211E8] == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && MEMORY[0x277D211D8] != 0 && MEMORY[0x277D211F0] != 0 && MEMORY[0x277D211D0] != 0 && MEMORY[0x277D211C8] != 0 && MEMORY[0x277D211F8] != 0;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript()
{
  result = lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript;
  if (!lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript)
  {
    type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution()
{
  result = lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  result = v1;
  *(v2 - 152) = *(v0 + 8);
  return result;
}

uint64_t dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0x7373654D6C69616DLL;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_45_3();
    if (v5)
    {
      v6 = 1954047342;
    }

    else
    {
      v6 = 0x7473726966;
    }
  }

  else
  {
    v6 = 1953718636;
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  OUTLINED_FUNCTION_44_6();
  if (v2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1701667182;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_54_4();
    if (v5)
    {
      v6 = 0x656C616D6566;
    }

    else
    {
      v6 = 1701601645;
    }
  }

  else
  {
    v6 = 1701736302;
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_90_2();
    if (v5)
    {
      v6 = 0x73757361676570;
    }

    else
    {
      v6 = 0x7953726577736E61;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_7();
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x6465646E61707865;
  }

  else
  {
    v5 = 0x4B746C7561666564;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x6563697665446E6FLL;
  }

  else
  {
    v5 = 0x726576726573;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_90_2();
    if (v5)
    {
      v6 = 0x6C617669727261;
    }

    else
    {
      v6 = 0x7275747261706564;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x676E69727473;
  }

  else
  {
    v5 = 0x6E41686372616573;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_45_3();
    if (v5)
    {
      v6 = 1953718640;
    }

    else
    {
      v6 = 0x6669636570736E75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_130_1();
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_54_4();
    if (v5)
    {
      v6 = 0x7265646E6573;
    }

    else
    {
      v6 = 0x7265766965636572;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  OUTLINED_FUNCTION_44_6();
  if (v2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_136_0();
    if (v5)
    {
      v6 = 0x6C69616D65;
    }

    else
    {
      v6 = 0x656D697465636166;
    }
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
  }

  OUTLINED_FUNCTION_57_3(v3, v6, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x797469746E65;
  }

  else
  {
    v5 = 0x6C646E7542707061;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_21_5();
  }

  else
  {
    v5 = 1701869940;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x69646E6563736564;
  }

  else
  {
    v5 = 0x6E69646E65637361;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  v3 = OUTLINED_FUNCTION_92_2(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_94_1(v4, v5, v6);

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a2);
  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    v5 = 0x697274744173635FLL;
  }

  else
  {
    v5 = 1835365481;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_56_3(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_92_2(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_94_1(v4, v5, v6);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_56_3(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_63_2();
  }

  else
  {
    v5 = 1701667182;
  }

  OUTLINED_FUNCTION_57_3(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  OUTLINED_FUNCTION_92_2(a1, a2);
  v2(v5, v3);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_129_1();
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_75_1();
      break;
    case 2:
      OUTLINED_FUNCTION_50_3();
      break;
    case 3:
      OUTLINED_FUNCTION_64_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_3(v3, v4, v5);

  return Hasher._finalize()();
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_109_1();
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_122_1();
    v7 = OUTLINED_FUNCTION_13_3(v6);
  }

  return v7 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedSharedLink.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedBreadcrumb.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedContact.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedCard.Keys.rawValue.getter);
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v4)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      v2 = 0xE600000000000000;
      break;
    case 3:
      v2 = 0x800000025DBEDDF0;
      break;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 5:
      v2 = 0x800000025DBEDE10;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v9)
  {
    case 1:
      v3 = 0xE400000000000000;
      v6 = 1701080941;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v6 = 0x656C61636F6CLL;
      break;
    case 3:
      v6 = 0xD000000000000015;
      v3 = (v8 - 32) | 0x8000000000000000;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v6 = 0x747865746E6F63;
      break;
    case 5:
      v3 = (v7 - 32) | 0x8000000000000000;
      v6 = 0xD000000000000019;
      break;
    default:
      break;
  }

  if (v5 == v6 && v2 == v3)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v11 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StructuredQueryEntity.CodingKeys.rawValue.getter);
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v4)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      v2 = 0xE700000000000000;
      break;
    case 3:
      v2 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_112_1();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v7)
  {
    case 1:
      v3 = 0xE400000000000000;
      v6 = 1701603686;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 0x6567617373656DLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v6 = 1702129518;
      break;
    case 4:
      OUTLINED_FUNCTION_110_0();
      v6 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    default:
      break;
  }

  if (v5 == v6 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v10 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AppEntityStatus.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreferredType.rawValue.getter);
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      break;
    case 2:
      v2 = 0xE800000000000000;
      break;
    case 3:
      v2 = 0xE400000000000000;
      break;
    case 6:
      v2 = 0xE300000000000000;
      break;
    case 7:
      v2 = 0xE900000000000041;
      break;
    case 8:
      v2 = 0xE700000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v7)
  {
    case 1:
      v3 = 0xE300000000000000;
      v6 = 4473168;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = 0x4E414D4553524F48;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v6 = 1398097242;
      break;
    case 4:
      v6 = 0x4F454D4143;
      break;
    case 5:
      v6 = 0x4843544157;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v6 = 5390659;
      break;
    case 7:
      v6 = 0x544952414752414DLL;
      v3 = 0xE900000000000041;
      break;
    case 8:
      v3 = 0xE700000000000000;
      OUTLINED_FUNCTION_178();
      break;
    default:
      break;
  }

  if (v5 == v6 && v2 == v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v9 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ExtractedType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, EntityUTType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContainsType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SourceType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ReturnType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, FilterType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, EntityType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, OmniSearchOptions.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchResultKey.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D37090]);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchToolIntentRequest.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D374C8]);
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000656761;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xED00007365707954;
  }

  else
  {
    v1 = 0xEB00000000737965;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEC00000072657773;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEB00000000644965;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEA0000000000676ELL;
  }

  else
  {
    v1 = 0xE900000000000067;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_32_6();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

{
  if (a1)
  {
    v1 = 0xED00007365747562;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v2);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_32_6();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2)
{
  v2 = 1953718636;
  if (a1)
  {
    OUTLINED_FUNCTION_45_3();
    if (v3)
    {
      v5 = 1954047342;
    }

    else
    {
      v5 = 0x7473726966;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1953718636;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_45_3();
    if (v7)
    {
      v2 = 1954047342;
    }

    else
    {
      v2 = 0x7473726966;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v11 & 1;
}

{
  v2 = 1701736302;
  if (a1)
  {
    OUTLINED_FUNCTION_54_4();
    if (v3)
    {
      v5 = 0x656C616D6566;
    }

    else
    {
      v5 = 1701601645;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701736302;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_54_4();
    if (v7)
    {
      v2 = 0x656C616D6566;
    }

    else
    {
      v2 = 1701601645;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v11 & 1;
}

{
  v2 = 0x657275747566;
  if (a1)
  {
    OUTLINED_FUNCTION_45_3();
    if (v3)
    {
      v5 = 1953718640;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x657275747566;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_45_3();
    if (v7)
    {
      v2 = 1953718640;
    }

    else
    {
      v2 = 0x6669636570736E75;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000646569;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v11 & 1;
}

{
  v2 = 0x656E6F6870;
  if (a1)
  {
    OUTLINED_FUNCTION_136_0();
    if (v3)
    {
      v5 = 0x6C69616D65;
    }

    else
    {
      v5 = 0x656D697465636166;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x656E6F6870;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_136_0();
    if (v7)
    {
      v2 = 0x6C69616D65;
    }

    else
    {
      v2 = 0x656D697465636166;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = 0xEA0000000000746FLL;
  OUTLINED_FUNCTION_105_1();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA0000000000746FLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_102_1();
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_81_3();
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6F6D6F6C73;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_61_3();
      v6 = 0xEC0000000000746FLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      v2 = 0x6569666C6573;
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_98_1();
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x6F6D6F6C73;
      break;
    case 4:
      OUTLINED_FUNCTION_99_1();
      v0 = 0xEC0000006F656469;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5(v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_91_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_77_3(20);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1935896420;
      break;
    case 2:
      v4 = 0x676F6C616964;
      break;
    case 3:
      OUTLINED_FUNCTION_78_2();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3(v3);
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_91_1();
  switch(v2)
  {
    case 1:
      v0 = 0xEC00000065746175;
      break;
    case 2:
      OUTLINED_FUNCTION_77_3(17);
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v4 = 0x6769626D61736964;
      v1 = 0xEC00000065746175;
      break;
    case 2:
      OUTLINED_FUNCTION_78_2();
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x726577736E416F6ELL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3(v3);
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    v5 = v2;
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    if (v3)
    {
      v5 = 0x6C617669727261;
    }

    else
    {
      v5 = 0x7275747261706564;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x6C617669727261;
    }

    else
    {
      v2 = 0x7275747261706564;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE900000000000065;
    }
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5(v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    v5 = v2;
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_54_4();
    if (v3)
    {
      v5 = 0x7265646E6573;
    }

    else
    {
      v5 = 0x7265766965636572;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7265646E6573;
    }

    else
    {
      v2 = 0x7265766965636572;
    }

    if (v1 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5(v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_135_0();
  v3 = 0x676E697070696873;
  v5 = v4;
  v6 = 0x676E697070696873;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x800000025DBEDFB0;
      v6 = v2 + 5;
      break;
    case 2:
      v7 = 0x800000025DBEDFD0;
      v6 = 0xD000000000000010;
      break;
    case 3:
      v7 = 0x800000025DBEDFF0;
      v6 = v2 + 2;
      break;
    case 4:
      break;
    case 5:
      v7 = 0x800000025DBEE020;
      v6 = v2 + 6;
      break;
    case 6:
      v6 = 0x646574656B636974;
      v8 = 2003789907;
      goto LABEL_9;
    case 7:
      v6 = 0x45636972656E6567;
      v8 = 1953391990;
LABEL_9:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v7 = 0x800000025DBEDF90;
      v6 = v2 + 1;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000025DBEDFB0;
      v3 = v2 + 5;
      break;
    case 2:
      v0 = 0x800000025DBEDFD0;
      v3 = 0xD000000000000010;
      break;
    case 3:
      v0 = 0x800000025DBEDFF0;
      v3 = v2 + 2;
      break;
    case 4:
      break;
    case 5:
      v0 = 0x800000025DBEE020;
      v3 = v2 + 6;
      break;
    case 6:
      v3 = 0x646574656B636974;
      v9 = 2003789907;
      goto LABEL_18;
    case 7:
      v3 = 0x45636972656E6567;
      v9 = 1953391990;
LABEL_18:
      v0 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v0 = 0x800000025DBEDF90;
      v3 = v2 + 1;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_46_5(v6);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_128_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_132_0();
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_117_1();
      break;
    case 4:
      v0 = 0xEA00000000006C65;
      break;
    case 5:
      v0 = 0xEB00000000746867;
      break;
    case 6:
      OUTLINED_FUNCTION_115_1();
      break;
    case 7:
      OUTLINED_FUNCTION_112_1();
      break;
    case 8:
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_36_5();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_126_1();
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1685217635;
      break;
    case 3:
      OUTLINED_FUNCTION_121_1();
      v4 = v7 | 0x7365527400000000;
      v1 = 0xEF746E6172756174;
      break;
    case 4:
      OUTLINED_FUNCTION_121_1();
      v4 = v6 | 0x746F487400000000;
      v1 = 0xEA00000000006C65;
      break;
    case 5:
      OUTLINED_FUNCTION_121_1();
      v4 = v9 | 0x696C467400000000;
      v1 = 0xEB00000000746867;
      break;
    case 6:
      v4 = 0x7372655064726163;
      v1 = 0xEE0064496C616E6FLL;
      break;
    case 7:
      OUTLINED_FUNCTION_110_0();
      v4 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 8:
      OUTLINED_FUNCTION_34_6();
      v1 = 0xED0000746E657645;
      break;
    case 9:
      v4 = 0x616964656DLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v3);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_178();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x6867696C746F7073;
      v2 = 0xE900000000000074;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v5 = 0x6C61626F6C67;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_77_3(24);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0x6867696C746F7073;
      v6 = 0xE900000000000074;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v1 = 0x6C61626F6C67;
      break;
    case 3:
      OUTLINED_FUNCTION_78_2();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_44_6();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 1701667182;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v10 & 1;
}

{
  OUTLINED_FUNCTION_44_6();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x64696C6176;
    }

    if (v3 == 1)
    {
      v5 = 0x800000025DBEDDC0;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x800000025DBEDDA0;
    v4 = 0xD000000000000010;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x64696C6176;
    }

    if (a2 == 1)
    {
      v6 = 0x800000025DBEDDC0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0x800000025DBEDDA0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v4);
  }

  return v8 & 1;
}

{
  v2 = 1701869940;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x6156676E69727473;
    }

    if (v3 == 1)
    {
      v5 = 0x800000025DBEE120;
    }

    else
    {
      v5 = 0xEB0000000065756CLL;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701869940;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_44_6();
    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = 0x6156676E69727473;
    }

    if (v7 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEB0000000065756CLL;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3(v4);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  StackedGridsLayout.rawValue.getter();
  OUTLINED_FUNCTION_62_3();
  StackedGridsLayout.rawValue.getter();
  v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5();

  return v3 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a1)
    {
      v5 = 104;
    }

    else
    {
      v5 = 72;
    }

    v4 = 0xE100000000000000;
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_109_1();
    if ((a4 & 1) == 0)
    {
LABEL_6:
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      goto LABEL_12;
    }
  }

  if (a3)
  {
    v8 = 104;
  }

  else
  {
    v8 = 72;
  }

  v10 = 0xE100000000000000;
LABEL_12:
  if (v5 == v8 && v4 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_13_3(v5);
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_109_1();
  if (v4 == a3() && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_122_1();
    v9 = OUTLINED_FUNCTION_13_3(v8);
  }

  return v9 & 1;
}

{
  a3(0);
  v3 = OUTLINED_FUNCTION_62_3();
  lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(v3, v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10 == v8 && v11 == v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46_5(v10);
  }

  return v6 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE400000000000000;
      break;
    case 2u:
      v2 = 0xEC000000676E6972;
      break;
    case 3u:
      v2 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1685217635;
      break;
    case 2:
      v4 = 0x7453686372616573;
      v1 = 0xEC000000676E6972;
      break;
    case 3:
      v4 = 0x704F646C756F6873;
      v1 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3(v3);
  }

  return v7 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE400000000000000;
      break;
    case 2u:
      OUTLINED_FUNCTION_114_1();
      break;
    case 3u:
      v2 = 0xE800000000000000;
      break;
    case 6u:
      v2 = 0xE500000000000000;
      break;
    case 7u:
      v2 = 0xEA00000000006E6FLL;
      break;
    case 8u:
      v2 = 0xE300000000000000;
      break;
    case 9u:
      v2 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1702125924;
      break;
    case 2:
      v4 = 0x706D6F4365746164;
      v1 = 0xEE0073746E656E6FLL;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v6 = 1634891108;
      goto LABEL_16;
    case 4:
      v4 = 0x6E6F73726570;
      break;
    case 5:
      v4 = 0x7265626D756ELL;
      break;
    case 6:
      v1 = 0xE500000000000000;
      v4 = 0x616964656DLL;
      break;
    case 7:
      v4 = 0x697461676976616ELL;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 8:
      v1 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 9:
      v1 = 0xE800000000000000;
      v6 = 1633906540;
LABEL_16:
      v4 = v6 | 0x6E6F697400000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v3);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  OUTLINED_FUNCTION_109_1();
  if (v4 == (a3)(a2) && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_122_1();
    v10 = OUTLINED_FUNCTION_13_3(v9);
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = 1701667182;
  if (a1)
  {
    OUTLINED_FUNCTION_80_3();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v8 = 1701667182;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_44_6();
    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_13_3(v8);
  }

  return v17 & 1;
}

uint64_t one-time initialization function for mailMessageSchemaIdentifier()
{
  v0 = type metadata accessor for AssistantSchemaVersion();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for AssistantSchemaIdentifier();
  __swift_allocate_value_buffer(v1, static TypedValue.mailMessageSchemaIdentifier);
  __swift_project_value_buffer(v1, static TypedValue.mailMessageSchemaIdentifier);
  AssistantSchemaVersion.init(major:minor:patch:)();
  return AssistantSchemaIdentifier.init(kind:version:domain:)();
}

uint64_t TypedValue.TypedValueSchemas.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedValue.TypedValueSchemas.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TypedValue.TypedValueSchemas.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x7373654D6C69616DLL;
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_45_3();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_54_4();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_90_2();
  }

  else
  {
    OUTLINED_FUNCTION_15_7();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_90_2();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_45_3();
  }

  else
  {
    OUTLINED_FUNCTION_130_1();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_54_4();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_21_5();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_89_3();
      break;
    case 4:
      OUTLINED_FUNCTION_74_3();
      break;
    case 5:
      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_100_1();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_63_2();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_114_1();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PreExtractedSharedLink.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PreExtractedBreadcrumb.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PreExtractedContact.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PreExtractedCard.Keys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StructuredQueryEntity.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AppEntityStatus.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PreferredType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ExtractedType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContainsType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SourceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ReturnType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, FilterType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, EntityType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, OmniSearchOptions.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchResultKey.rawValue.getter);
}

{
  return MEMORY[0x25F8A0680](a2);
}

{
  OUTLINED_FUNCTION_39_4();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_15_7();
      break;
    case 3:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchToolIntentRequest.CodingKeys.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_44_6();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_44_6();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_47_6(a1, 28, 0x800000025DBEEA10);
}

{
  OUTLINED_FUNCTION_129_1();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_75_1();
      break;
    case 2:
      OUTLINED_FUNCTION_50_3();
      break;
    case 3:
      OUTLINED_FUNCTION_64_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_47_6(a1, 18, 0x800000025DBEE210);
}

uint64_t specialized RawRepresentable<>.hash(into:)(void *a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_27_4();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_68_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_125_0();
  switch(v0)
  {
    case 3:
    case 5:
      OUTLINED_FUNCTION_27_4();
      break;
    case 4:
      OUTLINED_FUNCTION_74_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_68_3();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_125_0();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_89_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_125_0();
  switch(v0)
  {
    case 8:
      OUTLINED_FUNCTION_39_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_137_0();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_27_4();
      break;
    case 4:
    case 6:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_135_0();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_97_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_74_3();
      break;
    case 2:
      OUTLINED_FUNCTION_75_1();
      break;
    case 3:
      OUTLINED_FUNCTION_117_1();
      OUTLINED_FUNCTION_97_1();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_97_1();
      break;
    case 6:
      OUTLINED_FUNCTION_115_1();
      break;
    case 8:
      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_100_1();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_93_1(v3, v4);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_93_1(v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TypedValue.TypedValueSchemas@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TypedValue.TypedValueSchemas.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TypedValue.TypedValueSchemas@<X0>(uint64_t *a1@<X8>)
{
  result = TypedValue.TypedValueSchemas.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall TypedValue.asString()()
{
  type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_52_4(v2);
  v4(v3);
  v5 = OUTLINED_FUNCTION_52_1();
  if (v6(v5) == *MEMORY[0x277D72A58])
  {
    v7 = OUTLINED_FUNCTION_52_1();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_73_1();
    v10(v9);
    v11 = OUTLINED_FUNCTION_107();
    v12(v11);
    v13 = OUTLINED_FUNCTION_107();
    v14(v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_52_1();
    v16(v15);
  }

  v17 = OUTLINED_FUNCTION_94();
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

void TypedValue.asAttributeString()()
{
  TypedValue.asAttributeString()();
}

{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_67_3();
  v20(v19, v5, v15);
  OUTLINED_FUNCTION_120_1();
  v21 = OUTLINED_FUNCTION_45_0();
  if (v22(v21) != *MEMORY[0x277D72A58])
  {
    v36 = OUTLINED_FUNCTION_45_0();
    v37(v36);
LABEL_6:
    v2(0);
    OUTLINED_FUNCTION_92();
    goto LABEL_7;
  }

  v23 = OUTLINED_FUNCTION_45_0();
  v24(v23);
  v25 = swift_projectBox();
  (*(v10 + 16))(v14, v25, v8);
  v26 = OUTLINED_FUNCTION_37_5();
  if (v27(v26) != *v4)
  {
    v38 = OUTLINED_FUNCTION_37_5();
    v39(v38);

    goto LABEL_6;
  }

  v28 = OUTLINED_FUNCTION_37_5();
  v29(v28);
  v30 = (v2)(0);
  OUTLINED_FUNCTION_17();
  (*(v31 + 32))(v7, v14, v30);

  v32 = v7;
  v33 = 0;
  v34 = 1;
  v35 = v30;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_148();
}

void __swiftcall TypedValue.asASPerson()(OmniSearch::ASPerson_optional *__return_ptr retstr)
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v11 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue();
  OUTLINED_FUNCTION_14();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_67_3();
  v17 = OUTLINED_FUNCTION_51_4();
  v18(v17);
  OUTLINED_FUNCTION_120_1();
  v19 = OUTLINED_FUNCTION_118_0();
  if (v20(v19) != *MEMORY[0x277D72A58])
  {
    v35 = OUTLINED_FUNCTION_118_0();
    v36(v35);
LABEL_6:
    v33 = xmmword_25DBC9A70;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_7;
  }

  v21 = OUTLINED_FUNCTION_118_0();
  v22(v21);
  v23 = swift_projectBox();
  (*(v5 + 16))(v9, v23, v3);
  v24 = OUTLINED_FUNCTION_62_3();
  if (v25(v24) != *MEMORY[0x277D729B0])
  {
    v37 = OUTLINED_FUNCTION_62_3();
    v38(v37);

    goto LABEL_6;
  }

  v26 = OUTLINED_FUNCTION_62_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_116_1();
  v29(v28);

  v30 = TypedValue.PrimitiveValue.PersonValue.person.getter();
  ASPerson.init(from:)(&v44, v30);
  name = v44.name;
  email = v44.email;
  phoneNumber = v44.phoneNumber;
  unknownHandle = v44.unknownHandle;
  (*(v43 + 8))(v16, v11);
  v31 = phoneNumber;
  v32 = unknownHandle;
  v33 = name;
  v34 = email;
LABEL_7:
  *v2 = v33;
  v2[1] = v34;
  v2[2] = v31;
  v2[3] = v32;
  OUTLINED_FUNCTION_148();
}

void __swiftcall ASPerson.init(from:)(OmniSearch::ASPerson *__return_ptr retstr, INPerson from)
{
  v4 = [(objc_class *)from.super.isa personHandle];
  if (v4 && (v5 = v4, v6 = [v4 type], v5, (v7 = -[objc_class personHandle](from.super.isa, sel_personHandle)) != 0) && (v8 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v7), v9))
  {
    v10 = v8;
    v11 = v9;
    if ((v6 - 1) >= 2)
    {
      if (v6)
      {
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logging.answerSynthesis);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        v25 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v25, v26))
        {
          OUTLINED_FUNCTION_28_3();
          v27 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v28 = swift_slowAlloc();
          v39[0] = v28;
          *v27 = 136380675;
          v35.value._countAndFlagsBits = v6;
          type metadata accessor for INPersonHandleType(0);
          String.init<A>(describing:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v27 + 4) = v29;
          _os_log_impl(&dword_25D85C000, v23, v24, "ASPerson: Found personHandle with an unexepected type: %{private}s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }
      }

      v13 = 0;
      v12 = v10;
      v10 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v9;
      v11 = 0;
    }

    v30 = [(objc_class *)from.super.isa displayName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v31;
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logging.answerSynthesis);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25D85C000, v15, v16, "Could not construct ASPerson from INPerson. Missing personHandle", v19, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v12 = 0;
    v13 = 0;
    v10 = 0;
    v20 = 0;
    v21 = 0;
    v11 = 0;
  }

  v35.value._countAndFlagsBits = v21;
  v35.value._object = v20;
  v36.value._countAndFlagsBits = v10;
  v36.value._object = v13;
  v37 = 0;
  v38.value._countAndFlagsBits = v12;
  v38.value._object = v11;
  v39[0] = v21;
  v39[1] = v20;
  v39[2] = v10;
  v39[3] = v13;
  v39[4] = 0;
  v39[5] = 0;
  v39[6] = v12;
  v39[7] = v11;
  outlined init with copy of ASPerson(&v35, v34);
  outlined destroy of ASPerson(v39);
  v32 = v36;
  retstr->name = v35;
  retstr->email = v32;
  v33 = v38;
  retstr->phoneNumber = v37;
  retstr->unknownHandle = v33;
}

Swift::OpaquePointer_optional __swiftcall TypedValue.asASPersonArray()()
{
  OUTLINED_FUNCTION_155();
  v80 = type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  v85 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v79 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue();
  OUTLINED_FUNCTION_14();
  v75 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v10);
  v11 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v89 = *(v13 + 16);
  v89(v1, v0, v11);
  v24 = OUTLINED_FUNCTION_51_4();
  v88 = v25;
  if (v25(v24) == *MEMORY[0x277D729E0])
  {
    v26 = OUTLINED_FUNCTION_51_4();
    v84 = v7;
    v83 = v27;
    v27(v26);
    swift_projectBox();
    OUTLINED_FUNCTION_67_3();
    v28();

    v29 = *(TypedValue.CollectionValue.values.getter() + 16);
    if (v29)
    {
      v72 = v0;
      v73 = v22;
      v74 = v20;
      OUTLINED_FUNCTION_79();
      v32 = v30 + v31;
      v33 = *(v13 + 72);
      v87 = *MEMORY[0x277D72A58];
      v34 = (v13 + 8);
      v82 = (v85 + 16);
      v81 = *MEMORY[0x277D729B0];
      v77 = (v75 + 32);
      v76 = (v75 + 8);
      v86 = MEMORY[0x277D84F90];
      v35 = v80;
      do
      {
        v89(v2, v32, v11);
        v89(v17, v2, v11);
        v36 = OUTLINED_FUNCTION_45_0();
        if (v88(v36) == v87)
        {
          v37 = OUTLINED_FUNCTION_45_0();
          v83(v37);
          v38 = swift_projectBox();
          (*v82)(v84, v38, v35);
          v39 = OUTLINED_FUNCTION_71_3();
          if (v40(v39) == v81)
          {
            v41 = OUTLINED_FUNCTION_71_3();
            v42(v41);
            (*v77)(v78, v84, v79);

            v43 = TypedValue.PrimitiveValue.PersonValue.person.getter();
            ASPerson.init(from:)(&v90, v43);
            (*v76)(v78, v79);
            v44 = OUTLINED_FUNCTION_40_5();
            v45(v44);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v46 = v86;
            }

            else
            {
              v60 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60, v61, v62, v63);
              v46 = v64;
            }

            v48 = *(v46 + 16);
            v47 = *(v46 + 24);
            if (v48 >= v47 >> 1)
            {
              v65 = OUTLINED_FUNCTION_26_3(v47);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v48 + 1, 1, v66);
              v46 = v67;
            }

            *(v46 + 16) = v48 + 1;
            v86 = v46;
            v49 = (v46 + (v48 << 6));
            name = v90.name;
            email = v90.email;
            unknownHandle = v90.unknownHandle;
            v49[4] = v90.phoneNumber;
            v49[5] = unknownHandle;
            v49[2] = name;
            v49[3] = email;
            v35 = v80;
          }

          else
          {
            v56 = OUTLINED_FUNCTION_40_5();
            v57(v56);
            v58 = OUTLINED_FUNCTION_71_3();
            v59(v58);
          }
        }

        else
        {
          v53 = *v34;
          v54 = OUTLINED_FUNCTION_40_5();
          v53(v54);
          v55 = OUTLINED_FUNCTION_45_0();
          v53(v55);
        }

        v32 += v33;
        --v29;
      }

      while (v29);

      v20 = v74;
      v22 = v73;
      v0 = v72;
    }

    else
    {
    }

    (*(v22 + 8))(v0, v20);
  }

  else
  {
    v68 = OUTLINED_FUNCTION_51_4();
    v69(v68);
  }

  OUTLINED_FUNCTION_148();
  result.value._rawValue = v70;
  result.is_nil = v71;
  return result;
}

Swift::Bool_optional __swiftcall TypedValue.asBool()()
{
  type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_52_4(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_52_1();
  if (v7(v6) != *MEMORY[0x277D72A58])
  {
    v17 = OUTLINED_FUNCTION_52_1();
    v18(v17);
    return 2;
  }

  v8 = OUTLINED_FUNCTION_52_1();
  v9(v8);
  swift_projectBox();
  v10 = OUTLINED_FUNCTION_73_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_107();
  if (v13(v12) != *MEMORY[0x277D72988])
  {
    v19 = OUTLINED_FUNCTION_107();
    v20(v19);

    return 2;
  }

  v14 = OUTLINED_FUNCTION_107();
  v15(v14);
  v16.value = v0->value;

  return v16;
}

INFile_optional __swiftcall TypedValue.asFile()()
{
  OUTLINED_FUNCTION_155();
  type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v1 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_67_3();
  v9 = OUTLINED_FUNCTION_45_0();
  v10(v9);
  OUTLINED_FUNCTION_120_1();
  if (v11(v7, v1) == *MEMORY[0x277D72A58])
  {
    (*(v3 + 96))(v7, v1);
    swift_projectBox();
    v12 = OUTLINED_FUNCTION_73_1();
    v13(v12);
    v14 = OUTLINED_FUNCTION_107();
    if (v15(v14) == *MEMORY[0x277D72998])
    {
      v16 = OUTLINED_FUNCTION_107();
      v17(v16);
      v18 = OUTLINED_FUNCTION_37_5();
      v19(v18);

      TypedValue.PrimitiveValue.FileValue.file.getter();
      v20 = OUTLINED_FUNCTION_52_1();
      v21(v20);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_107();
      v23(v22);
    }
  }

  else
  {
    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_148();
  result.value.super.isa = v24;
  result.is_nil = v25;
  return result;
}

Swift::OpaquePointer_optional __swiftcall TypedValue.asFileArray()()
{
  OUTLINED_FUNCTION_155();
  v3 = type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_14();
  v68 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v62 = type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  OUTLINED_FUNCTION_14();
  v60 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v61 = v11;
  OUTLINED_FUNCTION_78_0();
  v12 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v72 = *(v14 + 16);
  v72(v1, v0, v12);
  v25 = OUTLINED_FUNCTION_51_4();
  v71 = v26;
  if (v26(v25) == *MEMORY[0x277D729E0])
  {
    v27 = OUTLINED_FUNCTION_51_4();
    v67 = v8;
    v66 = v28;
    v28(v27);
    swift_projectBox();
    OUTLINED_FUNCTION_67_3();
    v29();

    v30 = TypedValue.CollectionValue.values.getter();
    v73 = MEMORY[0x277D84F90];
    v31 = *(v30 + 16);
    if (v31)
    {
      v59 = v23;
      OUTLINED_FUNCTION_79();
      v34 = v32 + v33;
      v35 = *(v14 + 72);
      v70 = *MEMORY[0x277D72A58];
      v36 = (v14 + 8);
      v64 = (v68 + 16);
      v63 = *MEMORY[0x277D72998];
      v69 = v3;
      v65 = v35;
      do
      {
        v72(v2, v34, v12);
        v72(v18, v2, v12);
        v37 = OUTLINED_FUNCTION_45_0();
        if (v71(v37) == v70)
        {
          v38 = OUTLINED_FUNCTION_45_0();
          v66(v38);
          v39 = swift_projectBox();
          (*v64)(v67, v39, v3);
          v40 = OUTLINED_FUNCTION_72_3();
          if (v41(v40) == v63)
          {
            v42 = OUTLINED_FUNCTION_72_3();
            v43(v42);
            (*(v60 + 32))(v61, v67, v62);

            TypedValue.PrimitiveValue.FileValue.file.getter();
            (*(v60 + 8))(v61, v62);
            v44 = OUTLINED_FUNCTION_40_5();
            v46 = v45(v44);
            MEMORY[0x25F89F850](v46);
            v47 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
            {
              OUTLINED_FUNCTION_26_3(v47);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v3 = v69;
          }

          else
          {
            v51 = OUTLINED_FUNCTION_40_5();
            v52(v51);
            v53 = OUTLINED_FUNCTION_72_3();
            v54(v53);
          }

          v35 = v65;
        }

        else
        {
          v48 = *v36;
          v49 = OUTLINED_FUNCTION_40_5();
          v48(v49);
          v50 = OUTLINED_FUNCTION_45_0();
          v48(v50);
          v3 = v69;
        }

        v34 += v35;
        --v31;
      }

      while (v31);

      v23 = v59;
    }

    else
    {
    }

    (*(v23 + 8))(v0, v21);
  }

  else
  {
    v55 = OUTLINED_FUNCTION_51_4();
    v56(v55);
  }

  OUTLINED_FUNCTION_148();
  result.value._rawValue = v57;
  result.is_nil = v58;
  return result;
}

uint64_t TypedValue.asSearchResult(toolDatabase:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a1;
  v180 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v5);
  v6 = type metadata accessor for SystemTypeProtocol();
  OUTLINED_FUNCTION_14();
  v193 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  v184 = v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  v197 = v11;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v195 = v13;
  OUTLINED_FUNCTION_78_0();
  v182 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_14();
  v181 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v16);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMd, &_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMR);
  OUTLINED_FUNCTION_14();
  v176 = v17;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v19);
  v186 = type metadata accessor for TypeDefinitionQuery();
  OUTLINED_FUNCTION_14();
  v178 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v185 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit14TypeDefinitionOSgMd, &_s7ToolKit14TypeDefinitionOSgMR);
  OUTLINED_FUNCTION_114(v24);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v26);
  v172 = type metadata accessor for TypeDefinition();
  OUTLINED_FUNCTION_14();
  v170 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v29);
  type metadata accessor for TypeIdentifier();
  OUTLINED_FUNCTION_14();
  v188 = v30;
  v189 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v187 = v34;
  OUTLINED_FUNCTION_78_0();
  v35 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  v42 = &v165 - v41;
  v194 = type metadata accessor for TypedValue.EntityValue();
  OUTLINED_FUNCTION_14();
  v191 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_36();
  v47 = (v46 - v45);
  v48 = *(v37 + 16);
  v48(v42, v2, v35);
  OUTLINED_FUNCTION_120_1();
  v49 = OUTLINED_FUNCTION_60_2();
  if (v50(v49) == *MEMORY[0x277D72A38])
  {
    v51 = OUTLINED_FUNCTION_60_2();
    v52(v51);
    v53 = swift_projectBox();
    (*(v191 + 16))(v47, v53, v194);

    v55 = v187;
    MEMORY[0x25F89EEA0](v54);
    v173 = v192[3];
    v166 = v192[4];
    v171 = __swift_project_boxed_opaque_existential_1(v192, v173);
    v56 = v174;
    static TypeDefinitionQuery.all()();
    swift_getKeyPath();
    v57 = v188;
    v58 = swift_allocBox();
    v192 = v47;
    v59 = v189 + 16;
    v165 = *(v189 + 16);
    v165(v60, v55, v57);
    v61 = v175;
    *v175 = v58;
    v62 = v176;
    v63 = v177;
    (*(v176 + 104))(v61, *MEMORY[0x277D721C8], v177);
    lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type TypeDefinitionQuery and conformance TypeDefinitionQuery, MEMORY[0x277D73198]);
    lazy protocol witness table accessor for type CompoundToolKitPropertyFilter<TypeIdentifier> and conformance CompoundToolKitPropertyFilter<A>();
    v64 = v185;
    OUTLINED_FUNCTION_60_2();
    ToolKitDatabaseQuery.where<A>(_:_:)();

    (*(v62 + 8))(v61, v63);
    v65 = *(v178 + 8);
    v65(v56, v186);
    v66 = v179;
    static Locale.autoupdatingCurrent.getter();
    v67 = v190;
    (*(v166 + 8))(v64, v66, v173);
    v68 = v189;
    v69 = v192;
    if (v67)
    {
      v70 = OUTLINED_FUNCTION_66_1();
      v71(v70);
      v65(v185, v186);
      (*(v68 + 8))(v187, v188);
      v72 = OUTLINED_FUNCTION_70_3();
      return v73(v72, v194);
    }

    v178 = v59;
    v92 = OUTLINED_FUNCTION_66_1();
    v93(v92);
    v65(v185, v186);
    v94 = v172;
    if (__swift_getEnumTagSinglePayload(v183, 1, v172) == 1)
    {
      outlined destroy of IntentApplication?(v183, &_s7ToolKit14TypeDefinitionOSgMd, &_s7ToolKit14TypeDefinitionOSgMR);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      __swift_project_value_buffer(v95, static Logging.answerSynthesis);
      v96 = v168;
      v97 = v187;
      v98 = v188;
      v99 = v165;
      v165(v168, v187, v188);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      v102 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v102, v103))
      {
        OUTLINED_FUNCTION_28_3();
        v104 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v105 = swift_slowAlloc();
        v190 = 0;
        v106 = v105;
        v196 = v105;
        *v104 = 136315138;
        v107 = OUTLINED_FUNCTION_40_5();
        LODWORD(v197) = v101;
        v108 = v188;
        v99(v107);
        String.init<A>(describing:)();
        v109 = v69;
        v110 = *(v68 + 8);
        v110(v96, v108);
        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v104 + 4) = v111;
        OUTLINED_FUNCTION_138_0(&dword_25D85C000, "Could not hydrate type definition for typeIdentifier: %s", v197);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v110(v187, v108);
        (*(v191 + 8))(v109, v194);
      }

      else
      {

        v134 = *(v68 + 8);
        v134(v96, v98);
        v134(v97, v98);
        v135 = OUTLINED_FUNCTION_70_3();
        v136(v135, v194);
      }

      goto LABEL_39;
    }

    v190 = 0;
    (*(v170 + 32))(v169, v183, v94);
    v112 = TypeDefinition.systemProtocols.getter();
    v113 = *(v112 + 16);
    if (!v113)
    {

      v114 = MEMORY[0x277D84F90];
      v120 = v194;
LABEL_31:
      v137 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7ToolKit10TypedValueO10OmniSearchE0dE7Schemas33_F4902E7748E6CBF6DA574BE514694318LLO_SayAJGTt0g5(v114);
      if (*(v137 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v138 = Hasher._finalize()();
        v139 = -1 << *(v137 + 32);
        v140 = v138 & ~v139;
        v141 = v191;
        if ((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140))
        {
          v142 = ~v139;
          while (1)
          {
            if ((*(*(v137 + 48) + v140) & 1) == 0)
            {

              goto LABEL_43;
            }

            OUTLINED_FUNCTION_76_2();
            v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v143)
            {
              break;
            }

            v140 = (v140 + 1) & v142;
            v141 = v191;
            if (((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v141 = v191;
LABEL_43:

          v154 = v167;
          v155 = v192;
          static TypedValue.convertMailResult(typedEntityValue:)();
          v156 = OUTLINED_FUNCTION_12_3();
          v157(v156);
          (*(v68 + 8))(v187, v188);
          (*(v141 + 8))(v155, v194);
          v158 = type metadata accessor for SearchResult(0);
          v159 = OUTLINED_FUNCTION_93_0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v159, v160, v158);
          v162 = v180;
          if (EnumTagSinglePayload != 1)
          {
            v163 = OUTLINED_FUNCTION_37_5();
            outlined init with take of SearchResult(v163, v164);
            v150 = v162;
            v151 = 0;
            v152 = 1;
            v153 = v158;
            return __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
          }

          outlined destroy of IntentApplication?(v154, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        }

        else
        {
LABEL_37:

          v144 = OUTLINED_FUNCTION_12_3();
          v145(v144);
          (*(v68 + 8))(v187, v188);
          (*(v141 + 8))(v192, v194);
        }
      }

      else
      {

        v146 = OUTLINED_FUNCTION_12_3();
        v147(v146);
        (*(v68 + 8))(v187, v188);
        v148 = OUTLINED_FUNCTION_70_3();
        v149(v148, v120);
      }

LABEL_39:
      type metadata accessor for SearchResult(0);
      OUTLINED_FUNCTION_92();
      return __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
    }

    v196 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
    v114 = v196;
    v116 = v193 + 16;
    v115 = *(v193 + 16);
    OUTLINED_FUNCTION_79();
    v178 = v112;
    v118 = v112 + v117;
    v119 = *(v116 + 56);
    v185 = (v116 + 72);
    v186 = v119;
    v179 = (v116 + 80);
    LODWORD(v182) = *MEMORY[0x277D73010];
    v183 = (v116 - 8);
    v181 = (v116 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v120 = v194;
    v193 = v116;
    while (1)
    {
      v121 = v195;
      v122 = OUTLINED_FUNCTION_118_0();
      v115(v122);
      v123 = v197;
      (v115)(v197, v121, v6);
      v124 = (*v185)(v123, v6);
      if (v124 != v182)
      {
        break;
      }

      v125 = v184;
      (v115)(v184, v123, v6);
      (*v179)(v125, v6);
      if (one-time initialization token for mailMessageSchemaIdentifier != -1)
      {
        OUTLINED_FUNCTION_23_4();
        swift_once();
      }

      v126 = type metadata accessor for AssistantSchemaIdentifier();
      __swift_project_value_buffer(v126, static TypedValue.mailMessageSchemaIdentifier);
      OUTLINED_FUNCTION_25_5();
      lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type AssistantSchemaIdentifier and conformance AssistantSchemaIdentifier, v127);
      v128 = dispatch thunk of static Equatable.== infix(_:_:)();
      v129 = *v183;
      (*v183)(v195, v6);
      (*(*(v126 - 8) + 8))(v125, v126);
      if ((v128 & 1) == 0)
      {
        v120 = v194;
        goto LABEL_24;
      }

      v130 = 0;
      v120 = v194;
LABEL_25:
      v129(v197, v6);
      v196 = v114;
      v132 = *(v114 + 16);
      v131 = *(v114 + 24);
      if (v132 >= v131 >> 1)
      {
        v133 = OUTLINED_FUNCTION_26_3(v131);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v133, v132 + 1, 1);
        v120 = v194;
        v114 = v196;
      }

      *(v114 + 16) = v132 + 1;
      *(v114 + v132 + 32) = v130;
      v118 += v186;
      if (!--v113)
      {

        v68 = v189;
        goto LABEL_31;
      }
    }

    v129 = *v183;
    (*v183)(v121, v6);
LABEL_24:
    v130 = 1;
    goto LABEL_25;
  }

  v75 = *(v37 + 8);
  v76 = OUTLINED_FUNCTION_60_2();
  v75(v76);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, static Logging.answerSynthesis);
  v78 = v173;
  v48(v173, v2, v35);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  v81 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v81, v82))
  {
    OUTLINED_FUNCTION_28_3();
    v83 = swift_slowAlloc();
    v194 = v75;
    v84 = v83;
    OUTLINED_FUNCTION_9_4();
    v197 = swift_slowAlloc();
    v196 = v197;
    *v84 = 136315138;
    LODWORD(v195) = v80;
    v48(v171, v78, v35);
    String.init<A>(describing:)();
    v85 = OUTLINED_FUNCTION_60_2();
    v194(v85);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v84 + 4) = v86;
    OUTLINED_FUNCTION_138_0(&dword_25D85C000, "Expected EntityTypedValue but got: %s", v195);
    __swift_destroy_boxed_opaque_existential_1Tm(v197);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v87 = OUTLINED_FUNCTION_60_2();
    v75(v87);
  }

  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
}

uint64_t key path setter for TypeDefinitionQuery.typeID : TypeDefinitionQuery(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMd, &_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMR);
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return TypeDefinitionQuery.typeID.setter();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x25F89FB60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7ToolKit10TypedValueO10OmniSearchE0dE7Schemas33_F4902E7748E6CBF6DA574BE514694318LLO_SayAJGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas();
  v4 = MEMORY[0x25F89FB60](v2, &type metadata for TypedValue.TypedValueSchemas, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10OmniSearch0C9ResultKeyO_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_113_1();
  v2 = lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
  v3 = MEMORY[0x25F89FB60](v1, &type metadata for SearchResultKey, v2);
  v9 = v3;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v8, *(v0 + v5++));
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void static TypedValue.convertMailResult(typedEntityValue:)()
{
  OUTLINED_FUNCTION_155();
  v285 = v0;
  v278 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v267 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  v4 = OUTLINED_FUNCTION_28_2(v3);
  v284 = type metadata accessor for SearchResult(v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v11 = OUTLINED_FUNCTION_28_2(v10);
  v273 = type metadata accessor for SearchResultItem(v11);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v14);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v20);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v23);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v292 = v33;
  OUTLINED_FUNCTION_78_0();
  v289 = type metadata accessor for EmailDocument();
  OUTLINED_FUNCTION_14();
  v274 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  v288 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  v299 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  v298 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43 = OUTLINED_FUNCTION_114(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v291 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v293 = v47;
  OUTLINED_FUNCTION_78_0();
  v294 = type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v49);
  v50 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_14();
  v269 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_109();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_2();
  v290 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v62 = OUTLINED_FUNCTION_114(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  v295 = v67;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v68);
  v70 = &v260 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v260 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = &v260 - v75;
  v77 = type metadata accessor for AssistantSchemaIdentifier();
  OUTLINED_FUNCTION_14();
  v79 = v78;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_36();
  v83 = v82 - v81;
  TypedValue.EntityValue.properties.getter();
  if (one-time initialization token for mailMessageSchemaIdentifier != -1)
  {
LABEL_111:
    OUTLINED_FUNCTION_23_4();
    swift_once();
  }

  v84 = __swift_project_value_buffer(v77, static TypedValue.mailMessageSchemaIdentifier);
  (*(v79 + 16))(v83, v84, v77);
  type metadata accessor for SchemaProperties(0);
  swift_allocObject();
  SchemaProperties.init(_:schemaIdentifier:)();
  if (!v85)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logging.answerSynthesis);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v284;
    if (v92)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_25D85C000, v90, v91, "Unable to initialize schema properties for mail result.", v94, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v95 = 1;
    v96 = v285;
    goto LABEL_108;
  }

  v86 = v85;
  v265 = MEMORY[0x25F89EE70]();
  v264 = v87;
  v83 = *(*v86 + 112);
  v79 = *v86 + 112;
  v297 = v86;
  (v83)(0x7463656A627573, 0xE700000000000000);
  v77 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_9_5(v76);
  if (v88)
  {
    outlined destroy of IntentApplication?(v76, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v97 = TypedValue.asString()();
    countAndFlagsBits = v97.value._countAndFlagsBits;
    object = v97.value._object;
    OUTLINED_FUNCTION_10_4();
    (*(v98 + 8))(v76, v77);
  }

  (v83)(2036625250, 0xE400000000000000);
  OUTLINED_FUNCTION_9_5(v73);
  v99 = v290;
  if (v88)
  {
    outlined destroy of IntentApplication?(v73, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v50);
  }

  else
  {
    TypedValue.asAttributeString()();
    OUTLINED_FUNCTION_10_4();
    (*(v103 + 8))(v73, v77);
  }

  outlined init with copy of ResourceBundle?(v99, v58, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v104 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v104, v105, v50) == 1)
  {
    outlined destroy of IntentApplication?(v58, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v260 = 0;
    v261 = 0;
  }

  else
  {
    v106 = v269;
    v107 = v268;
    (*(v269 + 32))(v268, v58, v50);
    AttributedString.characters.getter();
    lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x277CC8B30]);
    v260 = String.init<A>(_:)();
    v261 = v108;
    (*(v106 + 8))(v107, v50);
  }

  (v83)(0x7265646E6573, 0xE600000000000000);
  OUTLINED_FUNCTION_9_5(v70);
  if (v88)
  {
    outlined destroy of IntentApplication?(v70, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    v70 = MEMORY[0x277D84F90];
    v270 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  TypedValue.asASPerson()(&v301);
  v50 = v301.value.email.value._countAndFlagsBits;
  v109 = v301.value.email.value._object;
  OUTLINED_FUNCTION_10_4();
  v110 = OUTLINED_FUNCTION_116_1();
  v111(v110);
  v70 = MEMORY[0x277D84F90];
  v112 = v301.value.name.value._object;
  if (v301.value.name.value._object)
  {
    v270 = MEMORY[0x277D84F90];
    if (v301.value.name.value._object == 1)
    {
      goto LABEL_30;
    }

    v113 = v301.value.name.value._countAndFlagsBits;

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
    v115 = v114;
    v73 = *(v114 + 16);
    v116 = *(v114 + 24);
    v117 = v73 + 1;
    if (v73 >= v116 >> 1)
    {
LABEL_113:
      v258 = OUTLINED_FUNCTION_26_3(v116);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v258);
      v115 = v259;
    }

    *(v115 + 16) = v117;
    v270 = v115;
    v118 = v115 + 16 * v73;
    *(v118 + 32) = v113;
    *(v118 + 40) = v112;
  }

  else
  {
    v270 = MEMORY[0x277D84F90];
  }

  outlined destroy of IntentApplication?(&v301, &_s10OmniSearch8ASPersonVSgMd, &_s10OmniSearch8ASPersonVSgMR);
  if (v109)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
    v70 = v119;
    v121 = *(v119 + 16);
    v120 = *(v119 + 24);
    if (v121 >= v120 >> 1)
    {
      v256 = OUTLINED_FUNCTION_26_3(v120);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v256);
      v70 = v257;
    }

    *(v70 + 16) = v121 + 1;
    v122 = v70 + 16 * v121;
    *(v122 + 32) = v50;
    *(v122 + 40) = v109;
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

LABEL_30:
  v58 = v295;
  (v83)(28532, 0xE200000000000000);
  OUTLINED_FUNCTION_9_5(v58);
  v269 = v70;
  v296 = v79;
  if (v88)
  {
    outlined destroy of IntentApplication?(v58, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
LABEL_34:

    v76 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v76 = TypedValue.asASPersonArray()();
  OUTLINED_FUNCTION_10_4();
  v123 = OUTLINED_FUNCTION_52_1();
  v124(v123);
  if (!v76)
  {
    goto LABEL_34;
  }

LABEL_35:
  v50 = 0;
  v73 = *(v76 + 2);
  v294 = MEMORY[0x277D84F90];
  v79 = v83;
LABEL_36:
  v125 = &v76[64 * v50 + 56];
  while (v73 != v50)
  {
    if (v50 >= *(v76 + 2))
    {
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v126 = v125 + 64;
    ++v50;
    v127 = *v125;
    v125 += 64;
    if (v127)
    {
      v70 = *(v126 - 9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v132);
        v294 = v133;
      }

      v129 = *(v294 + 16);
      v128 = *(v294 + 24);
      v58 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        v134 = OUTLINED_FUNCTION_26_3(v128);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v134);
        v294 = v135;
      }

      v130 = v294;
      *(v294 + 16) = v58;
      v131 = v130 + 16 * v129;
      *(v131 + 32) = v70;
      *(v131 + 40) = v127;
      v83 = v79;
      goto LABEL_36;
    }
  }

  v136 = v283;
  (v83)(25443, 0xE200000000000000);
  OUTLINED_FUNCTION_9_5(v136);
  if (v88)
  {
    outlined destroy of IntentApplication?(v136, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    v76 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = TypedValue.asASPersonArray()();
    OUTLINED_FUNCTION_10_4();
    v137 = OUTLINED_FUNCTION_52_1();
    v138(v137);
    if (!v76)
    {
      v76 = MEMORY[0x277D84F90];
    }
  }

  v70 = 0;
  v50 = *(v76 + 2);
  v73 = (v76 + 56);
  v58 = MEMORY[0x277D84F90];
LABEL_51:
  v139 = (v73 + (v70 << 6));
  while (v50 != v70)
  {
    if (v70 >= *(v76 + 2))
    {
      goto LABEL_110;
    }

    v140 = v139 + 8;
    ++v70;
    v141 = *v139;
    v139 += 8;
    if (v141)
    {
      v142 = *(v140 - 9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v147);
        v58 = v148;
      }

      v144 = *(v58 + 16);
      v143 = *(v58 + 24);
      v145 = v58;
      if (v144 >= v143 >> 1)
      {
        v149 = OUTLINED_FUNCTION_26_3(v143);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v149);
        v145 = v150;
      }

      *(v145 + 16) = v144 + 1;
      v58 = v145;
      v146 = v145 + 16 * v144;
      *(v146 + 32) = v142;
      *(v146 + 40) = v141;
      v83 = v79;
      goto LABEL_51;
    }
  }

  v283 = v58;

  v151 = v280;
  v117 = v297;
  (v83)(0x6563655265746164, 0xEC00000064657669);
  OUTLINED_FUNCTION_9_5(v151);
  if (v88)
  {
    outlined destroy of IntentApplication?(v151, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
  }

  else
  {
    TypedValue.asDate()();
    OUTLINED_FUNCTION_10_4();
    (*(v156 + 8))(v151, v77);
  }

  v113 = v282;
  v157 = v281;
  (v79)(0x646165527369, 0xE600000000000000);
  OUTLINED_FUNCTION_9_5(v157);
  if (v88)
  {
    outlined destroy of IntentApplication?(v157, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  }

  else
  {
    v158.value = TypedValue.asBool()().value;
    OUTLINED_FUNCTION_10_4();
    (*(v159 + 8))(v157, v77);
    if (v158.value != 2)
    {
      v83 = !v158.value;
      goto LABEL_69;
    }
  }

  v83 = 2;
LABEL_69:
  (v79)(0x656D686361747461, 0xEB0000000073746ELL);
  OUTLINED_FUNCTION_9_5(v113);
  LODWORD(v282) = v83;
  if (v88)
  {
    outlined destroy of IntentApplication?(v113, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  }

  else
  {
    v112 = TypedValue.asFileArray()();
    OUTLINED_FUNCTION_10_4();
    v160 = OUTLINED_FUNCTION_116_1();
    v161(v160);
    if (v112)
    {
      v162 = specialized Array.count.getter();
      if (v162)
      {
        v109 = v162;
        if (v162 < 1)
        {
          __break(1u);
          goto LABEL_113;
        }

        v163 = 0;
        v295 = v112 & 0xC000000000000001;
        v164 = MEMORY[0x277D84F90];
        v165 = MEMORY[0x277D84F90];
        v166 = MEMORY[0x277D84F90];
        v296 = v112;
        do
        {
          if (v295)
          {
            v167 = MEMORY[0x25F89FFD0](v163, v112);
          }

          else
          {
            v167 = *(v112 + 8 * v163 + 32);
          }

          v168 = v167;
          v169 = [v167 filename];
          v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v172 = v171;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v192);
            v164 = v193;
          }

          v174 = *(v164 + 16);
          v173 = *(v164 + 24);
          if (v174 >= v173 >> 1)
          {
            v194 = OUTLINED_FUNCTION_26_3(v173);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v194);
            v164 = v195;
          }

          *(v164 + 16) = v174 + 1;
          v175 = v164 + 16 * v174;
          *(v175 + 32) = v170;
          *(v175 + 40) = v172;
          v176 = outlined bridged method (pb) of @objc INFile.typeIdentifier.getter(v168);
          if (v177)
          {
            v178 = v176;
            v179 = v177;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v196 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v196);
              v165 = v197;
            }

            v181 = *(v165 + 16);
            v180 = *(v165 + 24);
            if (v181 >= v180 >> 1)
            {
              v198 = OUTLINED_FUNCTION_26_3(v180);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v198);
              v165 = v199;
            }

            *(v165 + 16) = v181 + 1;
            v182 = v165 + 16 * v181;
            *(v182 + 32) = v178;
            *(v182 + 40) = v179;
          }

          v184 = v298;
          v183 = v299;
          v185 = [v168 fileURL];
          if (v185)
          {
            v186 = v185;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v187 = 0;
          }

          else
          {
            v187 = 1;
          }

          v188 = type metadata accessor for URL();
          __swift_storeEnumTagSinglePayload(v183, v187, 1, v188);
          outlined init with take of URL?(v183, v184);
          if (__swift_getEnumTagSinglePayload(v184, 1, v188) == 1)
          {

            outlined destroy of IntentApplication?(v184, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          }

          else
          {
            v189 = URL.path(percentEncoded:)(1);
            (*(*(v188 - 8) + 8))(v184, v188);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v200 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v200);
              v166 = v201;
            }

            v191 = *(v166 + 16);
            v190 = *(v166 + 24);
            if (v191 >= v190 >> 1)
            {
              v202 = OUTLINED_FUNCTION_26_3(v190);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v202);
              v166 = v203;
            }

            *(v166 + 16) = v191 + 1;
            *(v166 + 16 * v191 + 32) = v189;
          }

          v163 = v163 + 1;
          v112 = v296;
        }

        while (v109 != v163);
      }
    }
  }

  outlined init with copy of ResourceBundle?(v293, v291, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v212 = v261;
  if (v261)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
    String.oms_trimCharacters(_:)(v213, v260, v212);
    v298 = v214;
    v299 = v215;
  }

  else
  {
    v298 = 0;
    v299 = 0;
  }

  outlined init with copy of ResourceBundle?(v291, v286, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v292, v271, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v216 = v287;
  outlined init with copy of ResourceBundle?(v287, v272, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
  type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v224);
  type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  v233 = v288;
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of IntentApplication?(v216, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v292, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v291, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v234 = [objc_allocWithZone(MEMORY[0x277CC34B0]) init];
  v235 = v274;
  OUTLINED_FUNCTION_67_3();
  v236(v276, v233, v289);
  swift_storeEnumTagMultiPayload();
  v237 = v277;
  OUTLINED_FUNCTION_92();
  v238 = v278;
  __swift_storeEnumTagSinglePayload(v239, v240, v241, v278);
  v93 = v284;
  v242 = v279;
  *(v279 + *(v284 + 28)) = MEMORY[0x277D84F90];
  v243 = (v242 + v93[10]);
  *v243 = 0;
  v243[1] = 0;
  v244 = OUTLINED_FUNCTION_40_5();
  _s10OmniSearch0B10ResultItemOWOcTm_0(v244, v245, v246);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v247 = v234;
  CodableNSSecureCoding.init(wrappedValue:)();
  v248 = v275;
  outlined init with copy of ResourceBundle?(v237, v275, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v249 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v249, v250, v238) == 1)
  {
    v251 = OUTLINED_FUNCTION_37_5();
    outlined destroy of IntentApplication?(v251, v252, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_85_3();
    v300 = v253;
    SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

    outlined destroy of IntentApplication?(v237, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_31_8();
    (*(v235 + 8))(v288, v289);
    outlined destroy of IntentApplication?(v293, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of IntentApplication?(v290, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  }

  else
  {

    outlined destroy of IntentApplication?(v237, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_31_8();
    (*(v235 + 8))(v288, v289);
    outlined destroy of IntentApplication?(v293, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of IntentApplication?(v290, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v254 = *(v267 + 32);
    v255 = v266;
    v254(v266, v248, v238);
    v254(v242 + v93[5], v255, v238);
  }

  *(v242 + v93[8]) = 0;
  *(v242 + v93[9]) = 1;
  v96 = v285;
  outlined init with take of SearchResult(v242, v285);
  v95 = 0;
LABEL_108:
  __swift_storeEnumTagSinglePayload(v96, v95, 1, v93);
  OUTLINED_FUNCTION_148();
}

void SchemaProperties.__allocating_init(_:schemaIdentifier:)()
{
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  SchemaProperties.init(_:schemaIdentifier:)();
}

void SchemaProperties.init(_:schemaIdentifier:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AssistantSchemaIdentifier();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v74 = v10;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for EntityPropertyDefinition();
  OUTLINED_FUNCTION_14();
  v76 = v11;
  v77 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  type metadata accessor for AssistantEntitySchemaDefinition();
  OUTLINED_FUNCTION_14();
  v69 = v17;
  v70 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v68 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit29AssistantTypeSchemaDefinitionOSgMd, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMR);
  v20 = OUTLINED_FUNCTION_114(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_109();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v65 - v26);
  *(v1 + 16) = v5;
  v71 = v8;
  v28 = *(v8 + 16);
  v75 = OBJC_IVAR____TtC10OmniSearch16SchemaProperties_schemaIdentifier;
  v73 = v6;
  v67 = v28;
  (v28)(v1 + OBJC_IVAR____TtC10OmniSearch16SchemaProperties_schemaIdentifier, v3, v6, v25);
  type metadata accessor for AssistantSchemaProvider();
  static AssistantSchemaProvider.shared.getter();
  AssistantSchemaProvider.types.getter();

  v72 = v3;
  specialized Dictionary.subscript.getter();

  outlined init with copy of ResourceBundle?(v27, v23, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMd, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMR);
  v29 = type metadata accessor for AssistantTypeSchemaDefinition();
  v30 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v30, v31, v29) == 1)
  {
    outlined destroy of IntentApplication?(v23, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMd, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMR);
LABEL_11:
    v54 = v73;
    v55 = v75;
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logging.answerSynthesis);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_28_3();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v60 = swift_slowAlloc();
      v78 = v60;
      *v59 = 136315138;
      v67(v74, &v55[v1], v54);
      String.init<A>(describing:)();
      v61 = v1;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v59 + 4) = v62;
      v1 = v61;
      _os_log_impl(&dword_25D85C000, v57, v58, "Failed to construct SchemaProperties for unsupported schema identifier %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v63 = *(v71 + 8);
    v63(v72, v54);
    outlined destroy of IntentApplication?(v27, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMd, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMR);

    v63(&v55[v1], v54);
    type metadata accessor for SchemaProperties(0);
    swift_deallocPartialClassInstance();
    goto LABEL_18;
  }

  v32 = OUTLINED_FUNCTION_37_5();
  if (v33(v32) != *MEMORY[0x277D733D0])
  {
    v52 = OUTLINED_FUNCTION_37_5();
    v53(v52);
    goto LABEL_11;
  }

  v67 = v27;
  v34 = OUTLINED_FUNCTION_37_5();
  v35(v34);
  (*(v69 + 32))(v68, v23, v70);
  v36 = AssistantEntitySchemaDefinition.properties.getter();
  v37 = *(v36 + 16);
  if (v37)
  {
    v66 = v1;
    v78 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v78;
    OUTLINED_FUNCTION_79();
    v65 = v36;
    v40 = v36 + v39;
    v74 = *(v41 + 56);
    v75 = v42;
    v77 = v41;
    v43 = (v41 - 8);
    do
    {
      v44 = v76;
      (v75)(v15, v40, v76);
      v45 = EntityPropertyDefinition.id.getter();
      v47 = v46;
      (*v43)(v15, v44);
      v78 = v38;
      v49 = *(v38 + 16);
      v48 = *(v38 + 24);
      if (v49 >= v48 >> 1)
      {
        v51 = OUTLINED_FUNCTION_26_3(v48);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v49 + 1, 1);
        v38 = v78;
      }

      *(v38 + 16) = v49 + 1;
      v50 = v38 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      v40 += v74;
      --v37;
    }

    while (v37);

    v1 = v66;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v38);
  (*(v71 + 8))(v72, v73);
  (*(v69 + 8))(v68, v70);
  outlined destroy of IntentApplication?(v67, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMd, &_s7ToolKit29AssistantTypeSchemaDefinitionOSgMR);
  *(v1 + OBJC_IVAR____TtC10OmniSearch16SchemaProperties_entitySchemaProperties) = v64;
LABEL_18:
  OUTLINED_FUNCTION_148();
}

void SchemaProperties.subscript.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for AssistantSchemaIdentifier();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  if (specialized Set.contains(_:)(v5, v3, *(v0 + OBJC_IVAR____TtC10OmniSearch16SchemaProperties_entitySchemaProperties)))
  {
    v15 = *(v0 + 16);
    if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v3), (v17 & 1) != 0))
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = type metadata accessor for TypedValue();
      OUTLINED_FUNCTION_17();
      (*(v21 + 16))(v7, v19 + *(v21 + 72) * v18, v20);
    }

    else
    {
      type metadata accessor for TypedValue();
      OUTLINED_FUNCTION_92();
    }

    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logging.answerSynthesis);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v25 + 12) = 2080;
      (*(v10 + 16))(v14, v1 + OBJC_IVAR____TtC10OmniSearch16SchemaProperties_schemaIdentifier, v8);
      String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v25 + 14) = v26;
      _os_log_impl(&dword_25D85C000, v23, v24, "SchemaProperties: Property %s is unsupported by Schema %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    type metadata accessor for TypedValue();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_148();
  }
}

uint64_t SchemaProperties.deinit()
{

  v1 = OBJC_IVAR____TtC10OmniSearch16SchemaProperties_schemaIdentifier;
  type metadata accessor for AssistantSchemaIdentifier();
  OUTLINED_FUNCTION_17();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SchemaProperties.__deallocating_deinit()
{
  SchemaProperties.deinit();

  return swift_deallocClassInstance();
}

uint64_t ASPerson.name.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ASPerson.email.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ASPerson.phoneNumber.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ASPerson.unknownHandle.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x25F8A0660](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v2 = a1;
  v3 = specialized RawRepresentable<>._rawHashValue(seed:)(*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  OUTLINED_FUNCTION_96_1(a1);
  SearchPropertyRequest.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  specialized RawRepresentable<>.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();

  v1 = OUTLINED_FUNCTION_62_3();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x25F8A0680](v1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1 & 1, v2);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  OUTLINED_FUNCTION_39_4();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_96_1(a1);
  String.hash(into:)();
  Hasher._finalize()();
  v2 = OUTLINED_FUNCTION_52_1();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  type metadata accessor for AssistantSchemaIdentifier();
  OUTLINED_FUNCTION_25_5();
  lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(v0, v1);
  OUTLINED_FUNCTION_122_1();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v2 = OUTLINED_FUNCTION_41_3();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  AnyHashable._rawHashValue(seed:)(*(v0 + 40));
  v1 = OUTLINED_FUNCTION_41_3();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for AssistantSchemaIdentifier();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type AssistantSchemaIdentifier and conformance AssistantSchemaIdentifier, MEMORY[0x277D73358]);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

{
  v3 = v2;
  v6 = type metadata accessor for SearchPropertyRequest(0);
  MEMORY[0x28223BE20](v6);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + 64;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  if (((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return v12;
  }

  v13 = ~v11;
  v14 = *(v7 + 72);
  v114 = v14;
  v115 = v6;
  v113 = ~v11;
  while (1)
  {
    _s10OmniSearch0B10ResultItemOWOcTm_0(*(v3 + 48) + v14 * v12, v9, type metadata accessor for SearchPropertyRequest);
    if ((static DisplayRepresentation.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
    if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
    lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
    if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMR);
    lazy protocol witness table accessor for type HydrationContext? and conformance <A> A?();
    v15 = v115;
    if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_31;
    }

    v16 = *(v15 + 32);
    v18 = *&v9[v16];
    v17 = *&v9[v16 + 8];
    v20 = *&v9[v16 + 16];
    v19 = *&v9[v16 + 24];
    LODWORD(v21) = v9[v16 + 32];
    v22 = a1 + v16;
    v24 = *v22;
    v23 = *(v22 + 8);
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v27 = *(v22 + 32);
    if (v21 == 255)
    {
      if (v27 == 255)
      {
        LOBYTE(v21) = -1;
        v77 = *v22;
        v78 = v17;
        v79 = *(v22 + 16);
        v80 = v20;
        v103 = v20;
        v81 = v19;
        v82 = v23;
        v83 = v25;
        v84 = v18;
        outlined copy of SearchPropertyRequest.GroupInfo?(v18, v17, v80, v19, 255);
        v85 = v83;
        v39 = v103;
        outlined copy of SearchPropertyRequest.GroupInfo?(v77, v82, v79, v85, 255);
        v86 = v84;
        goto LABEL_48;
      }

LABEL_23:
      v117[0] = v18;
      v117[1] = v17;
      v117[2] = v20;
      v117[3] = v19;
      v118 = v21;
      v119 = v24;
      v120 = v23;
      v121 = v26;
      v122 = v25;
      v123 = v27;
      v45 = v20;
      v46 = v21;
      v47 = v23;
      v48 = v25;
      outlined copy of SearchPropertyRequest.GroupInfo?(v18, v17, v45, v19, v46);
      outlined copy of SearchPropertyRequest.GroupInfo?(v24, v47, v26, v48, v27);
      outlined destroy of IntentApplication?(v117, &_s10OmniSearch0B15PropertyRequestV9GroupInfoOSg_AFtMd, &_s10OmniSearch0B15PropertyRequestV9GroupInfoOSg_AFtMR);
LABEL_24:
      v14 = v114;
      goto LABEL_30;
    }

    if (v27 == 255)
    {
      goto LABEL_23;
    }

    v111 = *(v22 + 16);
    v112 = v23;
    v109 = v25;
    v110 = v24;
    v107 = v27;
    if (v21)
    {
      if (v27)
      {
        v28 = v18 == v24 && v17 == v23;
        v106 = v17;
        v103 = v20;
        if (v28 || (v29 = v24, v105 = v21, v30 = v19, v31 = v25, v21 = v18, v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v21, v25 = v31, v33 = v112, v17 = v106, v19 = v30, v20 = v103, LOBYTE(v21) = v105, (v32 & 1) != 0))
        {
          v34 = v20 == v26 && v19 == v25;
          v14 = v114;
          if (!v34)
          {
            v35 = v17;
            v36 = v19;
            v37 = v18;
            LODWORD(v104) = _stringCompareWithSmolCheck(_:_:expecting:)();
            v38 = v35;
            v39 = v103;
            outlined copy of SearchPropertyRequest.GroupInfo?(v37, v38, v103, v36, v21);
            outlined copy of SearchPropertyRequest.GroupInfo?(v110, v112, v111, v109, v107);
            outlined copy of SearchPropertyRequest.GroupInfo?(v37, v106, v39, v36, v21);
            outlined consume of SearchPropertyRequest.GroupInfo(v37, v106, v39, v36, 1);
            outlined consume of SearchPropertyRequest.GroupInfo(v110, v112, v111, v109, 1);
            if (v104)
            {
              v88 = v36;
              v87 = v106;
              v86 = v37;
              goto LABEL_49;
            }

            v40 = v37;
            v41 = v106;
            v42 = v39;
            v43 = v36;
            v44 = v21;
LABEL_29:
            outlined consume of SearchPropertyRequest.GroupInfo?(v40, v41, v42, v43, v44);
LABEL_30:
            v13 = v113;
            goto LABEL_31;
          }

          v78 = v17;
          v96 = v20;
          v39 = v20;
          v81 = v19;
          v97 = v18;
          outlined copy of SearchPropertyRequest.GroupInfo?(v18, v17, v96, v19, v21);
          v98 = v110;
          v99 = v112;
          outlined copy of SearchPropertyRequest.GroupInfo?(v110, v112, v39, v81, v107);
          outlined copy of SearchPropertyRequest.GroupInfo?(v97, v78, v39, v81, v21);
          outlined consume of SearchPropertyRequest.GroupInfo(v97, v78, v39, v81, 1);
          outlined consume of SearchPropertyRequest.GroupInfo(v98, v99, v39, v81, 1);
          v86 = v97;
LABEL_48:
          v87 = v78;
          v88 = v81;
          goto LABEL_49;
        }

        v102 = v19;
        v72 = v25;
        v108 = v18;
        outlined copy of SearchPropertyRequest.GroupInfo?(v18, v106, v103, v19, v105);
        outlined copy of SearchPropertyRequest.GroupInfo?(v29, v33, v26, v72, v107);
        v73 = v106;
        v74 = v103;
        v75 = v102;
        outlined copy of SearchPropertyRequest.GroupInfo?(v108, v106, v103, v102, v21);
        outlined consume of SearchPropertyRequest.GroupInfo(v108, v73, v74, v75, 1);
        outlined consume of SearchPropertyRequest.GroupInfo(v29, v112, v111, v109, 1);
        outlined consume of SearchPropertyRequest.GroupInfo?(v108, v73, v74, v75, v21);
        goto LABEL_24;
      }

      v49 = v21;
      LODWORD(v104) = 0;
LABEL_28:
      v14 = v114;
      v108 = v18;
      v50 = v17;
      v51 = v20;
      v52 = v20;
      v53 = v19;
      v54 = v49;
      outlined copy of SearchPropertyRequest.GroupInfo?(v18, v17, v51, v19, v49);
      outlined copy of SearchPropertyRequest.GroupInfo?(v110, v112, v111, v109, v107);
      v105 = v54;
      outlined copy of SearchPropertyRequest.GroupInfo?(v108, v50, v52, v53, v54);
      v55 = v54 & 1;
      v56 = v108;
      outlined consume of SearchPropertyRequest.GroupInfo(v108, v50, v52, v53, v55);
      outlined consume of SearchPropertyRequest.GroupInfo(v110, v112, v111, v109, v104);
      v40 = v56;
      v41 = v50;
      v42 = v52;
      v43 = v53;
      v44 = v105;
      goto LABEL_29;
    }

    if (v27)
    {
      v49 = v21;
      LODWORD(v104) = 1;
      goto LABEL_28;
    }

    v102 = v19;
    v57 = v18 == v24 && v17 == v23;
    v106 = v17;
    if (!v57)
    {
      v58 = v18;
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v58;
      LOBYTE(v26) = v111;
      v17 = v106;
      if ((v59 & 1) == 0)
      {
        v49 = v21;
        LODWORD(v104) = 0;
        v19 = v102;
        goto LABEL_28;
      }
    }

    v60 = v18;
    LOBYTE(v117[0]) = v20;
    v116 = v26;
    v103 = v20;
    v61 = PreferredType.rawValue.getter();
    v63 = v62;
    v65 = v61 == PreferredType.rawValue.getter() && v63 == v64;
    v14 = v114;
    v104 = v64;
    v101 = v63;
    if (v65)
    {
      break;
    }

    HIDWORD(v100) = _stringCompareWithSmolCheck(_:_:expecting:)();
    v66 = v60;
    v108 = v60;
    v67 = v106;
    v68 = v103;
    outlined copy of SearchPropertyRequest.GroupInfo?(v66, v106, v103, v102, v21);
    outlined copy of SearchPropertyRequest.GroupInfo?(v110, v112, v111, v109, v107);
    v69 = v108;
    outlined copy of SearchPropertyRequest.GroupInfo?(v108, v67, v68, v102, v21);
    v70 = v67;
    v71 = v102;
    outlined consume of SearchPropertyRequest.GroupInfo(v69, v70, v68, v102, 0);
    outlined consume of SearchPropertyRequest.GroupInfo(v110, v112, v111, v109, 0);

    outlined consume of SearchPropertyRequest.GroupInfo?(v69, v106, v68, v71, v21);
    v13 = v113;
    if ((v100 & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_31:
    _s10OmniSearch0B10ResultItemOWOhTm_1(v9, type metadata accessor for SearchPropertyRequest);
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return v12;
    }
  }

  v89 = v60;
  v90 = v106;
  v91 = v103;
  v92 = v102;
  outlined copy of SearchPropertyRequest.GroupInfo?(v60, v106, v103, v102, v21);
  v93 = v110;
  v94 = v111;
  v95 = v109;
  outlined copy of SearchPropertyRequest.GroupInfo?(v110, v112, v111, v109, v107);
  outlined copy of SearchPropertyRequest.GroupInfo?(v89, v90, v91, v92, v21);
  outlined consume of SearchPropertyRequest.GroupInfo(v89, v90, v91, v92, 0);
  outlined consume of SearchPropertyRequest.GroupInfo(v93, v112, v94, v95, 0);

  v86 = v89;
  v87 = v90;
  v88 = v92;
  v39 = v91;
LABEL_49:
  outlined consume of SearchPropertyRequest.GroupInfo?(v86, v87, v39, v88, v21);
LABEL_50:
  _s10OmniSearch0B10ResultItemOWOhTm_1(v9, type metadata accessor for SearchPropertyRequest);
  return v12;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x25F89FF00](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x6C69616D65;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x4D53656C69626F6DLL;
          v7 = 0xE900000000000053;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x7261646E656C6163;
          break;
        case 3:
          v8 = 0x6F746F6870;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x726577736E61;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1702129518;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x7265646E696D6572;
          break;
        case 7:
          v8 = 0x736948656E6F6870;
          v9 = 2037542772;
          goto LABEL_30;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x800000025DBEEC90;
          break;
        case 9:
          v8 = 0x456C616E72756F6ALL;
          v7 = 0xEC0000007972746ELL;
          break;
        case 0xA:
          v8 = 0x6D654D6563696F76;
          v7 = 0xE90000000000006FLL;
          break;
        case 0xB:
          v7 = 0xE600000000000000;
          v8 = 0x697261666173;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1701603686;
          break;
        case 0xD:
          v8 = 0xD000000000000011;
          v7 = 0x800000025DBEECC0;
          break;
        case 0xE:
          v8 = 0x615074656C6C6177;
          v7 = 0xEA00000000007373;
          break;
        case 0xF:
          v7 = 0xE700000000000000;
          v8 = 0x746361746E6F63;
          break;
        case 0x10:
          v8 = 0xD000000000000011;
          v7 = 0x800000025DBEDF90;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x800000025DBEDFD0;
          break;
        case 0x12:
          v8 = 0xD000000000000015;
          v7 = 0x800000025DBEDFB0;
          break;
        case 0x13:
          v8 = 0x65526C61626F6C67;
          v9 = 1953265011;
          goto LABEL_30;
        case 0x14:
          v8 = 0xD000000000000016;
          v7 = 0x800000025DBEECF0;
          break;
        case 0x15:
          v8 = 0x7469746E45707061;
          v7 = 0xE900000000000079;
          break;
        case 0x16:
          v8 = 0xD000000000000014;
          v7 = 0x800000025DBEED10;
          break;
        case 0x17:
          v8 = 0x676E697070696873;
          v7 = 0xED0000726564724FLL;
          break;
        case 0x18:
          v8 = 0xD000000000000016;
          v7 = 0x800000025DBEE020;
          break;
        case 0x19:
          v8 = 0x646574656B636974;
          v9 = 2003789907;
LABEL_30:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1A:
          v8 = 0x6D746E696F707061;
          v7 = 0xEB00000000746E65;
          break;
        case 0x1B:
          v8 = 0x7974726170;
          break;
        case 0x1C:
          v7 = 0xE400000000000000;
          v8 = 1885958772;
          break;
        case 0x1D:
          v7 = 0xE800000000000000;
          v8 = 0x6E65657263536E6FLL;
          break;
        case 0x1E:
          v8 = 0xD000000000000014;
          v7 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x6C69616D65;
      switch(a1)
      {
        case 1:
          v11 = 0x4D53656C69626F6DLL;
          v10 = 0xE900000000000053;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v11 = 0x7261646E656C6163;
          break;
        case 3:
          v11 = 0x6F746F6870;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v11 = 0x726577736E61;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v11 = 1702129518;
          break;
        case 6:
          v10 = 0xE800000000000000;
          v11 = 0x7265646E696D6572;
          break;
        case 7:
          v11 = 0x736948656E6F6870;
          v12 = 2037542772;
          goto LABEL_62;
        case 8:
          v11 = 0xD000000000000013;
          v10 = 0x800000025DBEEC90;
          break;
        case 9:
          v11 = 0x456C616E72756F6ALL;
          v10 = 0xEC0000007972746ELL;
          break;
        case 10:
          v11 = 0x6D654D6563696F76;
          v10 = 0xE90000000000006FLL;
          break;
        case 11:
          v10 = 0xE600000000000000;
          v11 = 0x697261666173;
          break;
        case 12:
          v10 = 0xE400000000000000;
          v11 = 1701603686;
          break;
        case 13:
          v11 = 0xD000000000000011;
          v10 = 0x800000025DBEECC0;
          break;
        case 14:
          v11 = 0x615074656C6C6177;
          v10 = 0xEA00000000007373;
          break;
        case 15:
          v10 = 0xE700000000000000;
          v11 = 0x746361746E6F63;
          break;
        case 16:
          v11 = 0xD000000000000011;
          v10 = 0x800000025DBEDF90;
          break;
        case 17:
          v11 = 0xD000000000000010;
          v10 = 0x800000025DBEDFD0;
          break;
        case 18:
          v11 = 0xD000000000000015;
          v10 = 0x800000025DBEDFB0;
          break;
        case 19:
          v11 = 0x65526C61626F6C67;
          v12 = 1953265011;
          goto LABEL_62;
        case 20:
          v11 = 0xD000000000000016;
          v10 = 0x800000025DBEECF0;
          break;
        case 21:
          v11 = 0x7469746E45707061;
          v10 = 0xE900000000000079;
          break;
        case 22:
          v11 = 0xD000000000000014;
          v10 = 0x800000025DBEED10;
          break;
        case 23:
          v11 = 0x676E697070696873;
          v10 = 0xED0000726564724FLL;
          break;
        case 24:
          v11 = 0xD000000000000016;
          v10 = 0x800000025DBEE020;
          break;
        case 25:
          v11 = 0x646574656B636974;
          v12 = 2003789907;
LABEL_62:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 26:
          v11 = 0x6D746E696F707061;
          v10 = 0xEB00000000746E65;
          break;
        case 27:
          v11 = 0x7974726170;
          break;
        case 28:
          v10 = 0xE400000000000000;
          v11 = 1885958772;
          break;
        case 29:
          v10 = 0xE800000000000000;
          v11 = 0x6E65657263536E6FLL;
          break;
        case 30:
          v11 = 0xD000000000000014;
          v10 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED0000726564724FLL;
      v8 = 0x676E697070696873;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000015;
          v7 = 0x800000025DBEDFB0;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x800000025DBEDFD0;
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x800000025DBEDFF0;
          break;
        case 4:
          break;
        case 5:
          v8 = 0xD000000000000016;
          v7 = 0x800000025DBEE020;
          break;
        case 6:
          v8 = 0x646574656B636974;
          v9 = 2003789907;
          goto LABEL_11;
        case 7:
          v8 = 0x45636972656E6567;
          v9 = 1953391990;
LABEL_11:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          v8 = 0xD000000000000011;
          v7 = 0x800000025DBEDF90;
          break;
      }

      v10 = 0x676E697070696873;
      v11 = 0xED0000726564724FLL;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000015;
          v11 = 0x800000025DBEDFB0;
          break;
        case 2:
          v10 = 0xD000000000000010;
          v11 = 0x800000025DBEDFD0;
          break;
        case 3:
          v10 = 0xD000000000000012;
          v11 = 0x800000025DBEDFF0;
          break;
        case 4:
          break;
        case 5:
          v10 = 0xD000000000000016;
          v11 = 0x800000025DBEE020;
          break;
        case 6:
          v10 = 0x646574656B636974;
          v12 = 2003789907;
          goto LABEL_20;
        case 7:
          v10 = 0x45636972656E6567;
          v12 = 1953391990;
LABEL_20:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          v10 = 0xD000000000000011;
          v11 = 0x800000025DBEDF90;
          break;
      }

      if (v8 == v10 && v7 == v11)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6867696C746F7073;
          v7 = 0xE900000000000074;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x6C61626F6C67;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x800000025DBEED60;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v10 = 0x6867696C746F7073;
          v9 = 0xE900000000000074;
          break;
        case 2:
          v9 = 0xE600000000000000;
          v10 = 0x6C61626F6C67;
          break;
        case 3:
          v10 = 0xD000000000000018;
          v9 = 0x800000025DBEED60;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5()
{
  OUTLINED_FUNCTION_113_1();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR), OUTLINED_FUNCTION_41_3(), v4 = static _SetStorage.allocate(capacity:)(), (v5 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_82_3();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_79_2(v6);

      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_35_6();
      while (1)
      {
        OUTLINED_FUNCTION_84_2();
        if (v9)
        {
          break;
        }

        OUTLINED_FUNCTION_111_0();
        v9 = v9 && v8 == v2;
        if (!v9)
        {
          OUTLINED_FUNCTION_76_2();
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_49_5(v7);
      if (v11)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v10;
LABEL_15:
      if (v3 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  v36 = v9;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR), OUTLINED_FUNCTION_41_3(), v10 = static _SetStorage.allocate(capacity:)(), v11 = v10, (v32 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v35 = v10 + 56;
    v30 = v1;
    v31 = v1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    while (v12 < *(v1 + 16))
    {
      v13 = *(v33 + 72);
      v34 = v12 + 1;
      v14 = *(v33 + 16);
      v14(v36, v31 + v13 * v12, v2);
      OUTLINED_FUNCTION_24_6();
      lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, v15);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v11 + 32));
      while (1)
      {
        v18 = v16 & v17;
        v19 = (v16 & v17) >> 6;
        v20 = *(v35 + 8 * v19);
        v21 = 1 << (v16 & v17);
        if ((v21 & v20) == 0)
        {
          break;
        }

        v22 = v11;
        v14(v7, *(v11 + 48) + v18 * v13, v2);
        OUTLINED_FUNCTION_24_6();
        lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, v23);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v33 + 8);
        v26 = OUTLINED_FUNCTION_116_1();
        v25(v26);
        if (v24)
        {
          (v25)(v36, v2);
          v11 = v22;
          goto LABEL_12;
        }

        v16 = v18 + 1;
        v11 = v22;
      }

      *(v35 + 8 * v19) = v21 | v20;
      (*(v33 + 32))(*(v11 + 48) + v18 * v13, v36, v2);
      v27 = *(v11 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_15;
      }

      *(v11 + 16) = v29;
LABEL_12:
      v12 = v34;
      v1 = v30;
      if (v34 == v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_148();
  }
}