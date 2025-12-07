uint64_t one-time initialization function for GenderedCNRelationLabelToNLSemanticValue()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266969B60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = 0x676E696C626973;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = 0x6573756F7073;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v3;
  *(inited + 112) = 0x6E61747369737361;
  *(inited + 120) = 0xE900000000000074;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v4;
  *(inited + 144) = 0x726567616E616DLL;
  *(inited + 152) = 0xE700000000000000;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v5;
  *(inited + 176) = 0x756761656C6C6F63;
  *(inited + 184) = 0xE900000000000065;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v6;
  *(inited + 208) = 0x72656863616574;
  *(inited + 216) = 0xE700000000000000;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v7;
  *(inited + 240) = 0x72656E74726170;
  *(inited + 248) = 0xE700000000000000;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v8;
  *(inited + 272) = 0x72656E74726170;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v9;
  *(inited + 304) = 0x646E65697266;
  *(inited + 312) = 0xE600000000000000;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v10;
  *(inited + 336) = 0x646E65697266;
  *(inited + 344) = 0xE600000000000000;
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v11;
  *(inited + 368) = 0x6E6973756F63;
  *(inited + 376) = 0xE600000000000000;
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v12;
  *(inited + 400) = 0x6E6973756F63;
  *(inited + 408) = 0xE600000000000000;
  result = Dictionary.init(dictionaryLiteral:)();
  static Dictionary<>.GenderedCNRelationLabelToNLSemanticValue = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t a1)
{

  return swift_once();
}

uint64_t ContactsNeedsValueStrategy.deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));
  return v0;
}

uint64_t ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  v7 = OUTLINED_FUNCTION_5_39();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t ContactsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = type metadata accessor for Parse();
  v1[12] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[15] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_10_0();
  v1[18] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[19] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v31 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v29 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = static Signpost.contactsLog;
  *(v0 + 160) = static Signpost.contactsLog;
  v6;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = v1 + *(v2 + 20);
  *v7 = "ParseResponseValueNeedsValue";
  *(v7 + 8) = 28;
  *(v7 + 16) = 2;
  *(v0 + 168) = *(v5 + 240);
  *(v0 + 176) = type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v10 = v9;
  (*(v4 + 8))(v3, v29);

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  v12.value = GetContactSlots.init(rawValue:)(v11).value;
  *(v0 + 216) = v12;
  if (v12.value == SiriContactsIntents_GetContactSlots_unknownDefault)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriContacts);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v16 = 136315394;
      OUTLINED_FUNCTION_5_39();
      v17 = _typeName(_:qualified:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v30);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v30);
      _os_log_impl(&dword_26686A000, v14, v15, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: encountered invalid parameter %s, throwing", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v20 = *(v0 + 152);
    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    *v21 = v8;
    v21[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_2_47();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v20);

    OUTLINED_FUNCTION_3();

    return v22();
  }

  else
  {
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);

    Input.parse.getter();
    v26 = ParameterResolutionRecord.intent.getter();
    *(v0 + 184) = v26;
    v27 = *(v24 + 264);
    *(v0 + 192) = v27;
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = ContactsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);

    return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v25 + 192, v26, v27);
  }
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1[23];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = *v0;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v9 + 208) = v8;

  (*(v4 + 8))(v3, v5);
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v32 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    if (swift_dynamicCastUnknownClass())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.siriContacts);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *&v31[0] = v6;
        *v5 = 136315138;
        OUTLINED_FUNCTION_5_39();
        v7 = _typeName(_:qualified:)();
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v31);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_26686A000, v3, v4, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: Converted ContactIntent to SK intent.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v10 = *(v0 + 192);
      v11 = *(v0 + 216);
      v12 = *(v0 + 168);
      v13 = *(v0 + 56);
      v14 = ParameterResolutionRecord.intent.getter();
      *(v0 + 40) = &type metadata for GetContactSlots;
      *(v0 + 48) = &protocol witness table for GetContactSlots;
      *(v0 + 16) = v11;
      (*(v10 + 56))(v31, v0 + 16, v12, v10);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v15 = type metadata accessor for IntentPromptAnswer();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_2_47();
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriContacts);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v31[0] = swift_slowAlloc();
    *v19 = 136315394;
    OUTLINED_FUNCTION_5_39();
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    OUTLINED_FUNCTION_5_39();
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v31);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_26686A000, v17, v18, "#ContactsNeedsValueStrategyAsync<%s> parseValueResponse: failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  memset(v31, 0, sizeof(v31));
  ParameterResolutionRecord.intent.getter();
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  type metadata accessor for IntentPromptAnswer();
  v26 = OUTLINED_FUNCTION_5_39();
  __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
LABEL_14:
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(*(v0 + 152));

  OUTLINED_FUNCTION_3();

  return v29();
}

uint64_t ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = type metadata accessor for NLContextUpdate();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for TemplatingResult();
  v1[8] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v4 = (**(v0[3] + 96) + class metadata base offset for ContactsCommonCATs + 416);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  v2 = v0[10];

  return v5(v2);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v5 = ContactsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
  default argument 1 of ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)();
  v8 = type metadata accessor for AceOutput();
  v9 = MEMORY[0x277D5C1D8];
  v7[3] = v8;
  v7[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v7);
  ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v10();
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ContactsNeedsValueStrategy.__deallocating_deinit()
{
  v0 = ContactsNeedsValueStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 312) + **(**v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 320) + **(**v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  v10 = *(a3 + 272);
  v11 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v11;
  *(v4 + 48) = v10;
  v12 = type metadata accessor for ContactsNeedsValueStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return MEMORY[0x2821B9BF8](a1, a2, v12, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  v10 = *(a3 + 272);
  v11 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v11;
  *(v4 + 48) = v10;
  v12 = type metadata accessor for ContactsNeedsValueStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821B9C00](a1, a2, v12, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 56) = v13;
  v14 = *(a5 + 272);
  v15 = *(a5 + 256);
  *(v6 + 16) = *(a5 + 240);
  *(v6 + 32) = v15;
  *(v6 + 48) = v14;
  v16 = type metadata accessor for ContactsNeedsValueStrategy(0, v6 + 16);
  *v13 = v6;
  v13[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v16, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactsNeedsValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 56) = v15;
  v16 = *(a6 + 272);
  v17 = *(a6 + 256);
  *(v7 + 16) = *(a6 + 240);
  *(v7 + 32) = v17;
  *(v7 + 48) = v16;
  v18 = type metadata accessor for ContactsNeedsValueStrategy(0, v7 + 16);
  *v15 = v7;
  v15[1] = protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactsNeedsValueStrategy<A, B, C>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v18, a7);
}

uint64_t GetContactNeedsValueStrategy.__deallocating_deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t type metadata accessor for GetContactNeedsValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactNeedsValueStrategy;
  if (!type metadata singleton initialization cache for GetContactNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t USOParse.toSiriKitIntent(previousIntent:referenceResolver:)()
{
  OUTLINED_FUNCTION_4();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents28ModifyContactAttributeIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents28ModifyContactAttributeIntentCSgGMR);
  v1[49] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[50] = v5;
  v1[51] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v1[52] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[53] = v7;
  v1[54] = OUTLINED_FUNCTION_10_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  v1[55] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_update_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[60] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[61] = v11;
  v1[62] = OUTLINED_FUNCTION_10_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_checkExistence_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_checkExistence_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[63] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[64] = v13;
  v1[65] = OUTLINED_FUNCTION_10_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_read_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_read_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[66] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[67] = v15;
  v1[68] = OUTLINED_FUNCTION_10_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_summarise_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_summarise_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[69] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v1[70] = v17;
  v1[71] = OUTLINED_FUNCTION_10_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_noVerb_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology28UsoTask_noVerb_common_PersonC0A15ContactsIntents16GetContactIntentCSgGMR);
  v1[72] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[73] = v19;
  v1[74] = OUTLINED_FUNCTION_10_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v20);
  v1[75] = OUTLINED_FUNCTION_10_0();
  v21 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[76] = v21;
  OUTLINED_FUNCTION_18_0(v21);
  v1[77] = OUTLINED_FUNCTION_10_0();
  v22 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  v141 = v0;
  v0[5] = MEMORY[0x277D837D0];
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v0[2] = 5198677;
  v0[6] = v1;
  v0[3] = 0xE300000000000000;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = static Signpost.contactsLog;
  v0[78] = static Signpost.contactsLog;
  v6 = v5;
  OSSignpostID.init(log:)();
  v7 = static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966D90;
  outlined init with copy of ContactServiceProtocol((v0 + 2), v8 + 32);
  v138 = v0;
  v9 = v0 + 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v7, &dword_26686A000, v6, "ToSiriKitIntent", 15, 2, v2, "Parse = %s", 0xA);

  v10 = v2 + *(v3 + 20);
  *v10 = "ToSiriKitIntent";
  *(v10 + 8) = 15;
  v11 = v138;
  v12 = v9;
  *(v10 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  USOParse.preferredUserDialogAct.getter(v4);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v13);
  v15 = v138[75];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v138[75], &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_12:
    *(v9 + 12) = 0u;
    *(v9 + 13) = 0u;
    goto LABEL_13;
  }

  v16 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52();
  (*(v17 + 8))(v15, v13);
  if (!v16)
  {
    goto LABEL_12;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v138[29])
  {
LABEL_13:
    outlined destroy of Result<TemplatingResult, Error>((v9 + 24), &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  outlined init with take of Any(v9 + 12, v9 + 10);
  outlined init with copy of Any((v9 + 20), (v9 + 28));
  type metadata accessor for UsoTask_create_common_Person();
  OUTLINED_FUNCTION_17_16();
  if (swift_dynamicCast())
  {
    goto LABEL_10;
  }

  type metadata accessor for UsoTask_delete_common_Person();
  OUTLINED_FUNCTION_17_16();
  if (swift_dynamicCast())
  {
    goto LABEL_10;
  }

  type metadata accessor for UsoTask_update_common_Communication();
  OUTLINED_FUNCTION_17_16();
  if (swift_dynamicCast())
  {
    goto LABEL_10;
  }

  type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_10_32((v9 + 35)))
  {
    v22 = v138[37];
    v138[79] = v22;
    v23 = UsoTask_noVerb_common_Person.isRequestForMultipleContacts.getter();
    if ((v23 & 1) == 0)
    {
      v24 = v138[46];
      if (UsoTask_noVerb_common_Person.isGetAttributeIntent.getter(v23))
      {
        if (v24)
        {
          OUTLINED_FUNCTION_23_16();
          type metadata accessor for GetContactAttributeIntent();
          OUTLINED_FUNCTION_73();
          swift_dynamicCastClass();
        }

        type metadata accessor for GetContactAttributeIntent();
        v36 = swift_task_alloc();
        v138[80] = v36;
        *v36 = v138;
        OUTLINED_FUNCTION_4_34(v36);
        OUTLINED_FUNCTION_20_14();

        return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v37, v38, v39);
      }

      if (v24)
      {
        OUTLINED_FUNCTION_23_16();
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v28 = swift_dynamicCastClass();
      }

      else
      {
        v28 = 0;
      }

      v50 = v138[74];
      v51 = v138[73];
      v52 = v138[72];
      OUTLINED_FUNCTION_36_11();
      *(swift_allocObject() + 16) = v28;
      v53 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      goto LABEL_50;
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v9 + 20);

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v9 + 28);
    goto LABEL_14;
  }

  v25 = type metadata accessor for UsoTask_summarise_common_Person();
  if (OUTLINED_FUNCTION_10_32((v9 + 36)))
  {
    if ((UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter() & 1) == 0)
    {
      if (v138[46])
      {
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v26 = swift_dynamicCastClass();
      }

      else
      {
        v26 = 0;
      }

      v41 = v138[71];
      v42 = v138[70];
      v43 = v138[69];
      outlined init with copy of ContactServiceProtocol(v138[47], (v12 + 15));
      OUTLINED_FUNCTION_38_7();
      v44 = swift_allocObject();
      *(v44 + 16) = v26;
      outlined init with take of DeviceState((v12 + 15), v44 + 24);
      v45 = v26;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      OUTLINED_FUNCTION_21_18(v46, v47, v48, v46);
      v49 = Transformer.transform.getter();
      (*(v42 + 8))(v41, v43);
      OUTLINED_FUNCTION_7_27();
      v49();
      if (v25)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v12 + 20);

LABEL_52:
        __swift_destroy_boxed_opaque_existential_0Tm(v12 + 28);
        goto LABEL_14;
      }

LABEL_51:

      __swift_destroy_boxed_opaque_existential_0Tm(v12 + 20);

      goto LABEL_52;
    }

    goto LABEL_10;
  }

  type metadata accessor for UsoTask_read_common_Person();
  if (OUTLINED_FUNCTION_10_32((v9 + 37)))
  {
    v22 = v138[39];
    v138[82] = v22;
    if (UsoTask_read_common_Person.isRequestForMultipleContacts.getter())
    {
      goto LABEL_10;
    }

    v27 = v138[46];
    if (UsoTask_read_common_Person.isGetAttributeIntent.getter())
    {
      if (v27)
      {
        OUTLINED_FUNCTION_23_16();
        type metadata accessor for GetContactAttributeIntent();
        OUTLINED_FUNCTION_73();
        swift_dynamicCastClass();
      }

      type metadata accessor for GetContactAttributeIntent();
      v64 = swift_task_alloc();
      v138[83] = v64;
      *v64 = v138;
      OUTLINED_FUNCTION_4_34(v64);
      OUTLINED_FUNCTION_20_14();

      return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v65, v66, v67);
    }

    if (v27)
    {
      OUTLINED_FUNCTION_23_16();
      type metadata accessor for GetContactIntent();
      OUTLINED_FUNCTION_73();
      v55 = swift_dynamicCastClass();
    }

    else
    {
      v55 = 0;
    }

    v50 = v138[68];
    v51 = v138[67];
    v52 = v138[66];
    OUTLINED_FUNCTION_36_11();
    *(swift_allocObject() + 16) = v55;
    v69 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
LABEL_50:
    Transformer.init(transform:)();
    v54 = Transformer.transform.getter();
    (*(v51 + 8))(v50, v52);
    v139 = v22;
    v54(&v140, &v139);
    goto LABEL_51;
  }

  type metadata accessor for UsoTask_checkExistence_common_Person();
  if (!OUTLINED_FUNCTION_10_32((v9 + 38)))
  {
    type metadata accessor for UsoTask_request_common_Person();
    OUTLINED_FUNCTION_17_16();
    if (swift_dynamicCast())
    {
      v29 = v138[46];
      v138[88] = v138[41];
      if (v29)
      {
        type metadata accessor for GetContactAttributeIntent();
        swift_dynamicCastClass();
      }

      type metadata accessor for GetContactAttributeIntent();
      v30 = swift_task_alloc();
      v138[89] = v30;
      *v30 = v138;
      v30[1] = USOParse.toSiriKitIntent(previousIntent:referenceResolver:);
      OUTLINED_FUNCTION_20_14();

      return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v31, v32, v33);
    }

    updated = type metadata accessor for UsoTask_update_common_Person();
    if (!OUTLINED_FUNCTION_10_32((v9 + 40)))
    {
LABEL_93:
      __swift_destroy_boxed_opaque_existential_0Tm(v9 + 20);
      goto LABEL_11;
    }

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v9[41])
    {
      v58 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      if (v58)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v59 = type metadata accessor for Logger();
        v60 = OUTLINED_FUNCTION_52_0(v59, static Logger.siriContacts);
        v61 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v61))
        {
          *OUTLINED_FUNCTION_30() = 0;
          OUTLINED_FUNCTION_33_11(&dword_26686A000, v62, updated, "Learning pronunciation is unsupported");
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        goto LABEL_93;
      }
    }

    if (UsoTask_update_common_Person.isChangeContactPoster.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v70 = type metadata accessor for Logger();
      v71 = OUTLINED_FUNCTION_52_0(v70, static Logger.siriContacts);
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_30();
        *v73 = 0;
        _os_log_impl(&dword_26686A000, v71, v72, "Encountered contact poster update request, treating as GetContact", v73, 2u);
        OUTLINED_FUNCTION_6();
      }

      v74 = v138[46];

      if (v74)
      {
        type metadata accessor for GetContactIntent();
        OUTLINED_FUNCTION_73();
        v75 = swift_dynamicCastClass();
      }

      else
      {
        v75 = 0;
      }

      v102 = v138[61];
      v101 = v138[62];
      v103 = v138[60];
      outlined init with copy of ContactServiceProtocol(v138[47], (v9 + 10));
      OUTLINED_FUNCTION_38_7();
      v104 = swift_allocObject();
      *(v104 + 16) = v75;
      outlined init with take of DeviceState(v9 + 5, v104 + 24);
      v105 = v75;
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
      OUTLINED_FUNCTION_21_18(v106, v107, v108, v106);
      v109 = Transformer.transform.getter();
      (*(v102 + 8))(v101, v103);
      OUTLINED_FUNCTION_7_27();
      v109();
      if (!updated)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v9[42] && (v82 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , v82))
    {

      if (dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
      {
        v84 = v138[58];
        v83 = v138[59];
        v85 = v138[55];
        v86 = v138[56];
        v88 = v138[52];
        v87 = v138[53];
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
        (*(v87 + 104))(v84, *MEMORY[0x277D5E828], v88);
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
        v92 = *(v85 + 48);
        outlined init with copy of Result<RRResult, Error>(v83, v86, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined init with copy of Result<RRResult, Error>(v84, v86 + v92, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        OUTLINED_FUNCTION_57(v86, 1, v88);
        if (v93)
        {
          v94 = v138[59];
          v95 = v138[52];
          outlined destroy of Result<TemplatingResult, Error>(v138[58], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v94, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          OUTLINED_FUNCTION_57(v86 + v92, 1, v95);
          if (!v93)
          {
            goto LABEL_107;
          }

          outlined destroy of Result<TemplatingResult, Error>(v138[56], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        }

        else
        {
          v110 = v138[52];
          outlined init with copy of Result<RRResult, Error>(v138[56], v138[57], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v111 = __swift_getEnumTagSinglePayload(v86 + v92, 1, v110);
          v136 = v138[58];
          v137 = v138[59];
          v112 = v138[57];
          if (v111 == 1)
          {
            v114 = v138[52];
            v113 = v138[53];
            updated = &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd;
            outlined destroy of Result<TemplatingResult, Error>(v136, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
            outlined destroy of Result<TemplatingResult, Error>(v137, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
            (*(v113 + 8))(v112, v114);
LABEL_107:
            outlined destroy of Result<TemplatingResult, Error>(v138[56], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_108:
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v115 = type metadata accessor for Logger();
            v98 = OUTLINED_FUNCTION_52_0(v115, static Logger.siriContacts);
            v116 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_13_16(v116))
            {
              *OUTLINED_FUNCTION_30() = 0;
              OUTLINED_FUNCTION_33_11(&dword_26686A000, v117, updated, "Modifying other contacts' relationships is unsupported");
              OUTLINED_FUNCTION_6();

              goto LABEL_112;
            }

            goto LABEL_115;
          }

          v135 = v138[56];
          v119 = v138[53];
          v118 = v138[54];
          v120 = v138[52];
          (*(v119 + 32))(v118, v86 + v92, v120);
          OUTLINED_FUNCTION_11_24();
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(v121, v122);
          v123 = dispatch thunk of static Equatable.== infix(_:_:)();
          v124 = *(v119 + 8);
          v124(v118, v120);
          outlined destroy of Result<TemplatingResult, Error>(v136, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v137, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v124(v112, v120);
          outlined destroy of Result<TemplatingResult, Error>(v135, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if ((v123 & 1) == 0)
          {
            goto LABEL_108;
          }
        }
      }
    }

    else
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v9[43])
      {
        goto LABEL_120;
      }

      dispatch thunk of UsoEntity_common_Person.name.getter();
      if (v96)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v97 = type metadata accessor for Logger();
        v98 = OUTLINED_FUNCTION_52_0(v97, static Logger.siriContacts);
        v99 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v99))
        {
          v100 = OUTLINED_FUNCTION_30();
          *v100 = 0;
          _os_log_impl(&dword_26686A000, v98, updated, "Modifying other contacts' attributes is unsupported", v100, 2u);
          OUTLINED_FUNCTION_6();
LABEL_112:

LABEL_116:
          __swift_destroy_boxed_opaque_existential_0Tm(v9 + 20);
          __swift_destroy_boxed_opaque_existential_0Tm(v9 + 28);
LABEL_127:
          v11 = v138;
LABEL_14:
          v18 = v11[77];
          v19 = static os_signpost_type_t.end.getter();
          OUTLINED_FUNCTION_6_37(v19);
          outlined destroy of Signpost.OpenSignpost(v18);

          OUTLINED_FUNCTION_20_14();

          __asm { BRAA            X3, X16 }
        }

LABEL_115:

        goto LABEL_116;
      }
    }

LABEL_120:
    if (v138[46])
    {
      type metadata accessor for ModifyContactAttributeIntent();
      OUTLINED_FUNCTION_73();
      v125 = swift_dynamicCastClass();
    }

    else
    {
      v125 = 0;
    }

    v126 = v138[50];
    v127 = v138[51];
    v128 = v138[49];
    outlined init with copy of ContactServiceProtocol(v138[47], (v9 + 5));
    OUTLINED_FUNCTION_38_7();
    v129 = swift_allocObject();
    *(v129 + 16) = v125;
    outlined init with take of DeviceState((v9 + 5), v129 + 24);
    v130 = v125;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents28ModifyContactAttributeIntentCSgMd, &_s19SiriContactsIntents28ModifyContactAttributeIntentCSgMR);
    OUTLINED_FUNCTION_21_18(v131, v132, v133, v131);
    v134 = Transformer.transform.getter();
    (*(v126 + 8))(v127, v128);
    OUTLINED_FUNCTION_7_27();
    v134();
    if (!updated)
    {
LABEL_125:

      __swift_destroy_boxed_opaque_existential_0Tm(v9 + 20);

      goto LABEL_126;
    }

LABEL_124:

    __swift_destroy_boxed_opaque_existential_0Tm(v9 + 20);

LABEL_126:
    __swift_destroy_boxed_opaque_existential_0Tm(v9 + 28);
    goto LABEL_127;
  }

  v22 = v138[40];
  v138[85] = v22;
  if (UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter())
  {
    goto LABEL_10;
  }

  v56 = v138[46];
  if ((UsoTask_checkExistence_common_Person.isGetAttributeIntent.getter() & 1) == 0)
  {
    if (v56)
    {
      OUTLINED_FUNCTION_23_16();
      type metadata accessor for GetContactIntent();
      OUTLINED_FUNCTION_73();
      v63 = swift_dynamicCastClass();
    }

    else
    {
      v63 = 0;
    }

    v50 = v138[65];
    v52 = v138[63];
    v51 = v138[64];
    OUTLINED_FUNCTION_36_11();
    *(swift_allocObject() + 16) = v63;
    v81 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16GetContactIntentCSgMd, &_s19SiriContactsIntents16GetContactIntentCSgMR);
    goto LABEL_50;
  }

  if (v56)
  {
    OUTLINED_FUNCTION_23_16();
    type metadata accessor for GetContactAttributeIntent();
    OUTLINED_FUNCTION_73();
    swift_dynamicCastClass();
  }

  type metadata accessor for GetContactAttributeIntent();
  v76 = swift_task_alloc();
  v138[86] = v76;
  *v76 = v138;
  OUTLINED_FUNCTION_4_34(v76);
  OUTLINED_FUNCTION_20_14();

  return static GetContactAttributeIntent.from(_:_:referenceResolver:)(v77, v78, v79);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 648) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 696) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 720) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t USOParse.getSiriKitIntentType()()
{
  type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v100 = v0;
  v101 = v1;
  MEMORY[0x28223BE20](v0);
  v97 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v99 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v98 = v8 - v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v102 = &v96 - v11;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  v103 = &v96 - v13;
  type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v104 = v14;
  v105 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v19);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v23 = OUTLINED_FUNCTION_18_0(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v96 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v33);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  USOParse.preferredUserDialogAct.getter(&v96 - v35);
  v37 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v36, 1, v37);
  if (v62)
  {
    outlined destroy of Result<TemplatingResult, Error>(v36, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_10:
    v107 = 0u;
    v108 = 0u;
    goto LABEL_11;
  }

  v38 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52();
  (*(v39 + 8))(v36, v37);
  if (!v38)
  {
    goto LABEL_10;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v108 + 1))
  {
LABEL_11:
    outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  outlined init with take of Any(&v107, v109);
  outlined init with copy of Any(v109, &v107);
  type metadata accessor for UsoTask_create_common_Person();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v40 = type metadata accessor for UsoTask_delete_common_Person();
  if (OUTLINED_FUNCTION_2_48(v40))
  {
    goto LABEL_8;
  }

  v43 = type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_2_48(v43))
  {

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v106 && (v44 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter(), , v44) || (OUTLINED_FUNCTION_22_14(), dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter(), v106) && (v45 = dispatch thunk of UsoEntity_common_Person.structuredName.getter(), , v45))
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_29:
      ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
      __swift_destroy_boxed_opaque_existential_0Tm(&v107);
      return ContactAttributeIntent;
    }

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v106)
    {
      v50 = dispatch thunk of UsoEntity_common_Person.age.getter();

      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      if (v50)
      {
        goto LABEL_28;
      }

LABEL_56:
      ContactAttributeIntent = type metadata accessor for GetContactIntent();
      __swift_destroy_boxed_opaque_existential_0Tm(&v107);
      return ContactAttributeIntent;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    goto LABEL_56;
  }

  v46 = type metadata accessor for UsoTask_summarise_common_Person();
  if (OUTLINED_FUNCTION_2_48(v46))
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

    if (v106 && (v47 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v47))
    {
      dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();

      v48 = v104;
    }

    else
    {
      v48 = v104;
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v104);
    }

    (*(v105 + 104))(v30, *MEMORY[0x277D5EA28], v48);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
    v54 = *(v18 + 48);
    outlined init with copy of Result<RRResult, Error>(v32, v21, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined init with copy of Result<RRResult, Error>(v30, &v21[v54], &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_57(v21, 1, v48);
    if (v62)
    {

      OUTLINED_FUNCTION_43_8(v30);
      OUTLINED_FUNCTION_43_8(v32);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      OUTLINED_FUNCTION_57(&v21[v54], 1, v48);
      if (v62)
      {
        outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        goto LABEL_9;
      }
    }

    else
    {
      outlined init with copy of Result<RRResult, Error>(v21, v26, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(&v21[v54], 1, v48);
      if (!v62)
      {
        v65 = v105;
        (*(v105 + 32))(v17, &v21[v54], v48);
        lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60]);
        LODWORD(v104) = dispatch thunk of static Equatable.== infix(_:_:)();

        v66 = *(v65 + 8);
        v66(v17, v48);
        outlined destroy of Result<TemplatingResult, Error>(v30, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        outlined destroy of Result<TemplatingResult, Error>(v32, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v109);
        v66(v26, v48);
        outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
        if (v104)
        {
          goto LABEL_9;
        }

        goto LABEL_56;
      }

      OUTLINED_FUNCTION_43_8(v30);
      OUTLINED_FUNCTION_43_8(v32);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      (*(v105 + 8))(v26, v48);
    }

    outlined destroy of Result<TemplatingResult, Error>(v21, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    goto LABEL_56;
  }

  v49 = type metadata accessor for UsoTask_request_common_Person();
  if (OUTLINED_FUNCTION_2_48(v49))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_28:

    goto LABEL_29;
  }

  updated = type metadata accessor for UsoTask_update_common_Person();
  if (OUTLINED_FUNCTION_2_48(updated))
  {

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    v56 = v106;
    if (v106)
    {
      v57 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      if (v57)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v58 = type metadata accessor for Logger();
        v59 = OUTLINED_FUNCTION_52_0(v58, static Logger.siriContacts);
        v60 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v60))
        {
          v61 = OUTLINED_FUNCTION_30();
          *v61 = 0;
          _os_log_impl(&dword_26686A000, v59, v56, "Learning pronunciation is unsupported", v61, 2u);
          OUTLINED_FUNCTION_6();

LABEL_93:
          __swift_destroy_boxed_opaque_existential_0Tm(v109);
          goto LABEL_9;
        }

LABEL_92:

        goto LABEL_93;
      }
    }

    if (UsoTask_update_common_Person.isChangeContactPoster.getter())
    {

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_22_14();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (!v106 || (v68 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , !v68))
    {
      OUTLINED_FUNCTION_22_14();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v106)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_97:

        goto LABEL_98;
      }

      dispatch thunk of UsoEntity_common_Person.name.getter();
      if (!v78)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_98:
        ContactAttributeIntent = type metadata accessor for ModifyContactAttributeIntent();
        __swift_destroy_boxed_opaque_existential_0Tm(&v107);
        return ContactAttributeIntent;
      }

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v79 = type metadata accessor for Logger();
      v80 = OUTLINED_FUNCTION_52_0(v79, static Logger.siriContacts);
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = OUTLINED_FUNCTION_30();
        *v82 = 0;
        _os_log_impl(&dword_26686A000, v80, v81, "Modifying other contacts' attributes is unsupported", v82, 2u);
        OUTLINED_FUNCTION_6();

        goto LABEL_92;
      }

LABEL_91:

      goto LABEL_92;
    }

    v69 = dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter();
    if (!v69)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_96:

      goto LABEL_97;
    }

    v70 = v103;
    v105 = v69;
    dispatch thunk of UsoEntity_common_Person.definedValue.getter();
    v71 = v102;
    v72 = v100;
    (*(v101 + 104))(v102, *MEMORY[0x277D5E828], v100);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
    v76 = *(v3 + 48);
    v77 = v99;
    outlined init with copy of Result<RRResult, Error>(v70, v99, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined init with copy of Result<RRResult, Error>(v71, v77 + v76, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_57(v77, 1, v72);
    if (v62)
    {
      OUTLINED_FUNCTION_42_9(v102);
      OUTLINED_FUNCTION_42_9(v103);
      OUTLINED_FUNCTION_57(v77 + v76, 1, v72);
      if (v62)
      {
        outlined destroy of Result<TemplatingResult, Error>(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_95:
        __swift_destroy_boxed_opaque_existential_0Tm(v109);

        goto LABEL_96;
      }
    }

    else
    {
      v84 = v98;
      outlined init with copy of Result<RRResult, Error>(v77, v98, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(v77 + v76, 1, v72);
      if (!v85)
      {
        v90 = v101;
        v91 = v97;
        (*(v101 + 32))(v97, v77 + v76, v72);
        OUTLINED_FUNCTION_11_24();
        lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(v92, v93);
        v94 = dispatch thunk of static Equatable.== infix(_:_:)();
        v95 = *(v90 + 8);
        v95(v91, v72);
        outlined destroy of Result<TemplatingResult, Error>(v102, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of Result<TemplatingResult, Error>(v103, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v95(v84, v72);
        outlined destroy of Result<TemplatingResult, Error>(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v94)
        {
          goto LABEL_95;
        }

        goto LABEL_85;
      }

      OUTLINED_FUNCTION_42_9(v102);
      OUTLINED_FUNCTION_42_9(v103);
      (*(v101 + 8))(v84, v72);
    }

    outlined destroy of Result<TemplatingResult, Error>(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_85:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v86 = type metadata accessor for Logger();
    v87 = OUTLINED_FUNCTION_52_0(v86, static Logger.siriContacts);
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_33_11(&dword_26686A000, v89, v88, "Modifying other contacts' relationships is unsupported");
      OUTLINED_FUNCTION_6();

      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v63 = type metadata accessor for UsoTask_checkExistence_common_Person();
  if (OUTLINED_FUNCTION_2_48(v63))
  {
    if ((UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter() & 1) == 0)
    {
      Attribute = UsoTask_checkExistence_common_Person.isGetAttributeIntent.getter();
      goto LABEL_76;
    }
  }

  else
  {
    common_Person = type metadata accessor for UsoTask_read_common_Person();
    if (!OUTLINED_FUNCTION_2_48(common_Person))
    {
      goto LABEL_93;
    }

    if ((UsoTask_read_common_Person.isRequestForMultipleContacts.getter() & 1) == 0)
    {
      Attribute = UsoTask_read_common_Person.isGetAttributeIntent.getter();
LABEL_76:
      v83 = Attribute;

      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      if (v83)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0Tm(v109);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(&v107);
  return 0;
}

uint64_t USOParse.preferredUserDialogAct.getter@<X0>(char *a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v60 = v6 - v7;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v61 = v15 - v16;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  v69 = &v58 - v18;
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v59 = &v58 - v27;
  OUTLINED_FUNCTION_16();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v58 - v30;
  MEMORY[0x28223BE20](v29);
  v62 = &v58 - v32;
  v66 = v1;
  v33 = USOParse.userParse.getter();
  v34 = MEMORY[0x26D5E0460](v33);
  v35 = *(v4 + 8);
  v67 = v2;
  v64 = v35;
  v65 = v4 + 8;
  result = v35(v12, v2);
  v37 = 0;
  v38 = *(v34 + 16);
  for (i = (v21 + 8); ; result = (*i)(v31, v19))
  {
    if (v38 == v37)
    {

      v40 = 1;
      v41 = v69;
      goto LABEL_8;
    }

    if (v37 >= *(v34 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    (*(v21 + 16))(v31, v34 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v37, v19);
    if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
    {
      break;
    }

    ++v37;
  }

  v41 = v69;
  (*(v21 + 32))(v69, v31, v19);
  v40 = 0;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v19);
  OUTLINED_FUNCTION_57(v41, 1, v19);
  if (v42)
  {
    outlined destroy of Result<TemplatingResult, Error>(v41, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v43 = USOParse.userParse.getter();
    MEMORY[0x26D5E0460](v43);
    v44 = OUTLINED_FUNCTION_40_7();
    result = v45(v44);
    v46 = 0;
    v47 = *(v38 + 16);
    while (1)
    {
      if (v47 == v46)
      {

        v50 = 1;
        v51 = v61;
        goto LABEL_17;
      }

      if (v46 >= *(v38 + 16))
      {
        goto LABEL_23;
      }

      (*(v21 + 16))(v25, v38 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v46, v19);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        break;
      }

      ++v46;
      result = (*i)(v25, v19);
    }

    v51 = v61;
    (*(v21 + 32))(v61, v25, v19);
    v50 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v51, v50, 1, v19);
    OUTLINED_FUNCTION_57(v51, 1, v19);
    if (v42)
    {
      outlined destroy of Result<TemplatingResult, Error>(v51, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v52 = USOParse.userParse.getter();
      MEMORY[0x26D5E0460](v52);
      v53 = OUTLINED_FUNCTION_40_7();
      v54(v53);
      specialized Collection.first.getter(v38, v68);
    }

    v48 = *(v21 + 32);
    v49 = v59;
    v48(v59, v51, v19);
  }

  else
  {
    v48 = *(v21 + 32);
    v49 = v62;
    v48(v62, v41, v19);
  }

  v48(v68, v49, v19);
  OUTLINED_FUNCTION_50();
  return __swift_storeEnumTagSinglePayload(v55, v56, v57, v19);
}

uint64_t USOParse.isOrdinalDisambiguation.getter(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  USOParse.preferredUserDialogAct.getter(&v11 - v4);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v7)
  {
    outlined destroy of Result<TemplatingResult, Error>(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  v8 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52();
  (*(v9 + 8))(v5, v6);
  if (!v8)
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v13 + 1))
  {
LABEL_9:
    outlined destroy of Result<TemplatingResult, Error>(&v12, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  a1(0);
  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  OUTLINED_FUNCTION_38_7();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void partial apply for closure #1 in static Transformer<>.transformer(_:referenceResolver:)(void *x8_0@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(*(v2 + 16), v2 + 24, x8_0);
}

{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(*(v2 + 16), v2 + 24, x8_0);
}

void partial apply for closure #1 in static Transformer<>.transformer(_:)(void *x8_0@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:)(*(v2 + 16), x8_0);
}

{
  closure #1 in static Transformer<>.transformer(_:)(*(v2 + 16), x8_0);
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return static os_signpost_type_t.end.getter();
}

uint64_t OUTLINED_FUNCTION_2_48(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_37(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + 240));
}

uint64_t OUTLINED_FUNCTION_21_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Transformer.init(transform:)();
}

void OUTLINED_FUNCTION_33_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_8(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t ModifyContactAttributeIntent.__allocating_init(_:referenceResolver:)(uint64_t a1, void *a2)
{
  v147 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v144 = &v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v133 - v7;
  v8 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v148 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v133 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v133 - v20;
  v22 = [objc_allocWithZone(v2) init];
  v23 = one-time initialization token for setRelationship;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = static ContactNLv3Intent.setRelationship;
  v26 = type metadata accessor for ContactNLv3Intent(0);
  v27 = lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  OUTLINED_FUNCTION_4_35(v25);
  v28 = v151;
  if (v151)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for removeRelationship != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_35(static ContactNLv3Intent.removeRelationship);
  v28 = v151;
  if (v151)
  {
LABEL_7:
    v29 = MEMORY[0x26D5E2470](v150, v28);
  }

  else
  {
    v29 = 0;
  }

  [v24 setModifyRelationship_];

  ContactNLv3Intent.person.getter(v30, v31, v32, v33, v34, v35, v36, v37, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_13_23(v21);
  if (v38)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v21, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  }

  else
  {
    v39 = PersonIntentNodeContaining.relationship.getter();
    v41 = v40;
    (*(v10 + 8))(v21, v8);
    if (v41)
    {
      outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v39, v41, v24, &selRef_setModifyRelationship_);
    }
  }

  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  v149 = v27;
  IntentNodeTraversable.value<A>(forNode:)();
  v42 = v151;
  if (v151)
  {
    v43 = v150;

    specialized Collection.prefix(_:)(1, v43, v42);
    Substring.uppercased()();
    OUTLINED_FUNCTION_7_28();
    v10 = v26;
    v45 = v44;
    v47 = v46;

    v48 = specialized Collection.dropFirst(_:)(1uLL, v43, v42);
    v154 = v45;
    v155 = v47;
    v150 = v48;
    v151 = v49;
    v152 = v50;
    v153 = v51;
    lazy protocol witness table accessor for type Substring and conformance Substring();

    String.append<A>(contentsOf:)();

    v42 = MEMORY[0x26D5E2470](v154, v155);
    v26 = v10;
    OUTLINED_FUNCTION_8_31();
  }

  [v24 setModifyNickName_];

  v52 = ContactNLv3Intent.hasPersonNickName.getter();
  if (v52)
  {
    v60 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v24, &selRef_modifyRelationship);
    if (v67)
    {

      goto LABEL_28;
    }

    v68 = v145;
    ContactNLv3Intent.person.getter(v60, 0, v61, v62, v63, v64, v65, v66, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
    OUTLINED_FUNCTION_13_23(v68);
    if (v38)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v68, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    }

    else
    {
      v69 = PersonIntentNodeContaining.nickName.getter();
      v71 = v70;
      (*(v10 + 8))(v68, v8);
      if (v71)
      {

        specialized Collection.prefix(_:)(1, v69, v71);
        v145 = v26;
        Substring.uppercased()();
        OUTLINED_FUNCTION_7_28();
        v73 = v72;
        v75 = v74;

        v76 = specialized Collection.dropFirst(_:)(1uLL, v69, v71);
        v154 = v73;
        v155 = v75;
        v150 = v76;
        v151 = v77;
        v152 = v78;
        v153 = v79;
        v10 = lazy protocol witness table accessor for type Substring and conformance Substring();

        OUTLINED_FUNCTION_8_31();
        String.append<A>(contentsOf:)();

        v80 = MEMORY[0x26D5E2470](v154, v155);

LABEL_27:
        [v24 setModifyNickName_];

        goto LABEL_28;
      }
    }

    v80 = 0;
    goto LABEL_27;
  }

LABEL_28:
  v81 = v148;
  ContactNLv3Intent.person.getter(v52, v53, v54, v55, v56, v57, v58, v59, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_13_23(v81);
  if (v38)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v81, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    goto LABEL_50;
  }

  v82 = (*(v10 + 32))(v14, v81, v8);
  v83 = ContactNLv3Intent.hasPersonNameNode.getter(v82);
  if (v83 & 1) == 0 || (ContactNLv3Intent.isForgetNickname.getter())
  {
    (*(v10 + 8))(v14, v8);
    goto LABEL_50;
  }

  result = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v24);
  if (!result)
  {
    v145 = 0;
    v146 = 0;
    goto LABEL_40;
  }

  v85 = v24;
  v86 = a1;
  if ((result & 0xC000000000000001) != 0)
  {
    v87 = v14;
    v88 = MEMORY[0x26D5E29D0](0, result);
    goto LABEL_38;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v87 = v14;
    v88 = *(result + 32);
LABEL_38:
    v89 = v88;

    v90 = outlined bridged method (ob) of @objc INObject.identifier.getter(v89, &selRef_identifier);
    v145 = v91;
    v146 = v90;
    v14 = v87;
    a1 = v86;
    v24 = v85;
LABEL_40:
    v92 = PersonIntentNodeContaining.firstName.getter();
    if (v93)
    {
      v141 = v93;
      v142 = v92;
      v94 = v14;
    }

    else
    {
      v94 = v14;
      v95 = PersonIntentNodeContaining.fullName.getter();
      v141 = v96;
      v142 = v95;
    }

    OUTLINED_FUNCTION_11_25();
    v97 = PersonIntentNodeContaining.middleName.getter();
    v139 = v98;
    v140 = v97;
    OUTLINED_FUNCTION_11_25();
    v99 = PersonIntentNodeContaining.lastName.getter();
    v137 = v100;
    v138 = v99;
    OUTLINED_FUNCTION_11_25();
    v101 = PersonIntentNodeContaining.nickName.getter();
    v135 = v102;
    v136 = v101;
    v103 = v143;
    OUTLINED_FUNCTION_11_25();
    v148 = v94;
    PersonIntentNodeContaining.namePrefix.getter();
    v104 = v103;
    v105 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, 1, v105);
    v107 = v10;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v104, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
      v134 = 0;
      v108 = 0;
    }

    else
    {
      v134 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
      v108 = v109;
      (*(*(v105 - 8) + 8))(v104, v105);
    }

    v110 = v144;
    PersonIntentNodeContaining.namePostfix.getter();
    v111 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
    if (__swift_getEnumTagSinglePayload(v110, 1, v111) == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v110, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
      v112 = 0;
      v113 = 0;
    }

    else
    {
      v112 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
      v114 = v110;
      v113 = v115;
      (*(*(v111 - 8) + 8))(v114, v111);
    }

    type metadata accessor for Contact();
    v116 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v146, v145, v142, v141, v140, v139, v138, v137, v136, v135, 0, 0, v134, v108, v112, v113, 0, 0, 0, 0);
    [v24 setRelatedContact_];

    (*(v107 + 8))(v148, v8);
LABEL_50:
    [v24 setContactAttributeToModify_];
    [v24 setModifyOperation_];
    if (one-time initialization token for contactId != -1)
    {
      swift_once();
    }

    v117 = static ContactNLv3Intent.contactId;
    OUTLINED_FUNCTION_4_35(static ContactNLv3Intent.contactId);
    v118 = &selRef_isoCountryCode;
    if (v151)
    {
      v119 = String.sanitizeContactIdURL.getter(v150, v151);
      v121 = v120;

      v122 = [v24 relatedContact];
      if (v122)
      {
        v123 = v122;
        v124 = Contact.formattedFullName.getter();
        v126 = v125;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v118 = &selRef_isoCountryCode;
        v128 = SiriMatch.__allocating_init(identifier:fullName:)(v119, v121, v124, v126);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v129 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v128 = @nonobjc INObject.init(identifier:display:)(v119, v121, v119, v121);
      }

      *(v127 + 32) = v128;
      outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.relatedSiriMatches.setter(v127, v24);
    }

    v130 = [v24 v118[91]];
    if (v130)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_35(v117);
      if (!v151)
      {
        v132 = ContactNLv3Intent.isForgetNickname.getter();
        v131 = v147;
        if ((v132 & 1) == 0)
        {
          ModifyContactAttributeIntent.runReferenceResolution(_:)(v147);
        }

        goto LABEL_62;
      }
    }

    v131 = v147;
LABEL_62:
    __swift_destroy_boxed_opaque_existential_0Tm(v131);
    outlined destroy of ContactNLv3Intent(a1);
    return v24;
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      String.subscript.getter();
      OUTLINED_FUNCTION_30_3();

      return OUTLINED_FUNCTION_37_0();
    }
  }

  __break(1u);
  return result;
}

char *ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(a5, 0);
  type metadata accessor for ContactRelation();
  v13 = v12;
  v14 = ContactRelation.__allocating_init(relationship:relatedFullName:)(a1, a2, a3, a4);
  [v13 setUpdatedRelationship_];

  return v13;
}

uint64_t ModifyContactAttributeIntent.runReferenceResolution(_:)(uint64_t a1)
{
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(swift_allocObject() + 16) = v3;
  static SiriKitContactIntent.runReferenceResolution(_:completion:)(a1, partial apply for specialized closure #1 in ModifyContactAttributeIntent.runReferenceResolution(_:));

  return MEMORY[0x26D5E33A0](v3);
}

uint64_t ModifyContactAttributeIntent.getContactAttributeToModify(from:)()
{
  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_modifyRelationship);
  if (v1)
  {

    return 10;
  }

  outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v0);
  if (v3)
  {
    goto LABEL_4;
  }

  if (ContactNLv3Intent.containsAttribute(_:)() || (ContactNLv3Intent.isForgetNickname.getter() & 1) != 0)
  {
    return 6;
  }

  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  result = v4;
  if (v4)
  {
LABEL_4:

    return 6;
  }

  return result;
}

uint64_t ModifyContactAttributeIntent.modifyOperation(from:)()
{
  if (one-time initialization token for contactVerb != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 != 17 && (specialized == infix<A>(_:_:)(v1, 15) & 1) != 0)
  {
    return 3;
  }

  if (one-time initialization token for removeRelationship != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v2)
  {

    return 3;
  }

  if (one-time initialization token for setRelationship != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (one-time initialization token for setNickName != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  IntentNodeTraversable.value<A>(forNode:)();
  result = 0;
  if (v1 != 17)
  {
    IntentNodeTraversable.value<A>(forNode:)();
    if (specialized == infix<A>(_:_:)(v1, 4))
    {
      return 1;
    }
  }

  return result;
}

id ModifyContactAttributeIntent.__allocating_init(_:)(char *a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000026 && 0x800000026696DFC0 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.siriContacts);
      (*(v5 + 16))(v9, a1, v3);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v69 = v19;
        *v18 = 136315138;
        v20 = Parse.DirectInvocation.identifier.getter();
        v21 = v3;
        v23 = v22;
        v66 = a1;
        v24 = *(v5 + 8);
        v24(v9, v21);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v69);

        *(v18 + 4) = v25;
        _os_log_impl(&dword_26686A000, v16, v17, "DirectInvocation %s that cannot be handled. No object constructed", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        v24(v66, v21);
      }

      else
      {

        v39 = *(v5 + 8);
        v39(a1, v3);
        v39(v9, v3);
      }

      return 0;
    }
  }

  v26 = [objc_allocWithZone(v1) init];
  v27 = Parse.DirectInvocation.userData.getter();
  if (!v27)
  {
    goto LABEL_21;
  }

  specialized Dictionary.subscript.getter(0x656D616E6B63696ELL, 0xE800000000000000, v27, &v69);

  if (!*(&v70 + 1))
  {
LABEL_22:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v69, &_sypSgMd, &_sypSgMR);
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_12_19(v28, v29, v30, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_23:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriContacts);
    (*(v5 + 16))(v11, a1, v3);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v64 = v26;
      v65 = v3;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v69 = v44;
      *v43 = 136315138;
      v45 = Parse.DirectInvocation.userData.getter();
      v66 = a1;
      if (!v45)
      {
        Dictionary.init(dictionaryLiteral:)();
      }

      v46 = Dictionary.description.getter();
      v48 = v47;

      v49 = *(v5 + 8);
      v50 = v11;
      v51 = v65;
      v49(v50, v65);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v69);

      *(v43 + 4) = v52;
      _os_log_impl(&dword_26686A000, v41, v42, "Unable to extract nickname and modify operation from provided userData: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      v49(v66, v51);
    }

    else
    {

      v53 = *(v5 + 8);
      v53(a1, v3);
      v53(v11, v3);
    }

    return 0;
  }

  v31 = v67;
  v32 = v68;
  v33 = Parse.DirectInvocation.userData.getter();
  if (!v33)
  {

LABEL_21:
    v69 = 0u;
    v70 = 0u;
    goto LABEL_22;
  }

  specialized Dictionary.subscript.getter(0x704F796669646F6DLL, 0xEF6E6F6974617265, v33, &v69);

  if (!*(&v70 + 1))
  {

    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_12_19(v34, v35, v36, MEMORY[0x277D83B88]) & 1) == 0 || (v37 = ModifyOperation.init(rawValue:)(v67), (v38))
  {

    goto LABEL_23;
  }

  v55 = v37;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.siriContacts);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v65 = v3;
    v60 = v59;
    v61 = a1;
    v62 = swift_slowAlloc();
    *&v69 = v62;
    *v60 = 136315138;
    *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v69);
    _os_log_impl(&dword_26686A000, v57, v58, "Received updated nickname value %s from DirectInvocation", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    a1 = v61;
    OUTLINED_FUNCTION_6();
    v3 = v65;
    OUTLINED_FUNCTION_6();
  }

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v31, v32, v26, &selRef_setModifyNickName_);
  [v26 setModifyOperation_];
  [v26 setContactAttributeToModify_];
  (*(v5 + 8))(a1, v3);
  return v26;
}

id ModifyContactAttributeIntent.siriInferenceContact.getter()
{
  v1 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for ContactHandle();
  OUTLINED_FUNCTION_1_0();
  v50 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  Contact.init()();
  v14 = [v0 relatedContact];
  if (v14)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v14, &selRef_identifier);
    if (v15)
    {
      Contact.id.setter();
    }
  }

  v16 = OUTLINED_FUNCTION_6_38();
  if (v16)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v16, &selRef_givenName);
    if (v17)
    {
      Contact.givenName.setter();
    }
  }

  v18 = OUTLINED_FUNCTION_6_38();
  if (v18)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v18, &selRef_middleName);
    if (v19)
    {
      Contact.middleName.setter();
    }
  }

  v20 = OUTLINED_FUNCTION_6_38();
  if (v20)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v20, &selRef_familyName);
    if (v21)
    {
      Contact.familyName.setter();
    }
  }

  v22 = OUTLINED_FUNCTION_6_38();
  if (v22)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v22, &selRef_nickName);
    if (v23)
    {
      Contact.nickname.setter();
    }
  }

  v24 = OUTLINED_FUNCTION_6_38();
  if (v24)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v24, &selRef_namePrefix);
    if (v25)
    {
      Contact.namePrefix.setter();
    }
  }

  v26 = OUTLINED_FUNCTION_6_38();
  if (v26)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v26, &selRef_nameSuffix);
    if (v27)
    {
      Contact.nameSuffix.setter();
    }
  }

  v28 = OUTLINED_FUNCTION_6_38();
  if (v28)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v28, &selRef_fullName);
    if (v29)
    {
      Contact.givenName.setter();
    }
  }

  v30 = OUTLINED_FUNCTION_6_38();
  if (v30)
  {
    outlined bridged method (ob) of @objc INObject.identifier.getter(v30, &selRef_phoneNumber);
    if (v31)
    {
      (*(v3 + 104))(v7, *MEMORY[0x277D56010], v1);
      OUTLINED_FUNCTION_2_49();
      ContactHandle.init(id:type:label:value:isSuggested:)();
      v32 = Contact.handles.modify();
      v34 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v35 = v7;
      v36 = v13;
      v37 = v3;
      v38 = v1;
      v39 = v8;
      v40 = *(*v34 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v40);
      v41 = *v34;
      *(v41 + 16) = v40 + 1;
      v42 = v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40;
      v8 = v39;
      v1 = v38;
      v3 = v37;
      v13 = v36;
      v7 = v35;
      (*(v50 + 32))(v42, v13, v8);
      v32(v51, 0);
    }
  }

  result = OUTLINED_FUNCTION_6_38();
  if (result)
  {
    result = outlined bridged method (ob) of @objc INObject.identifier.getter(result, &selRef_emailAddress);
    if (v44)
    {
      (*(v3 + 104))(v7, *MEMORY[0x277D56008], v1);
      OUTLINED_FUNCTION_2_49();
      ContactHandle.init(id:type:label:value:isSuggested:)();
      v45 = Contact.handles.modify();
      v47 = v46;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v48 = *(*v47 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
      v49 = *v47;
      *(v49 + 16) = v48 + 1;
      (*(v50 + 32))(v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v48, v13, v8);
      return v45(v51, 0);
    }
  }

  return result;
}

uint64_t ModifyContactAttributeIntent.contactIdentifier.getter()
{
  v1 = [v0 relatedContact];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 identifier];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_30_3();
    }

    return OUTLINED_FUNCTION_37_0();
  }

  v5 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v0);
  if (!v5)
  {
    return OUTLINED_FUNCTION_37_0();
  }

  v6 = v5;
  result = specialized Array._getCount()();
  if (!result)
  {

    return OUTLINED_FUNCTION_37_0();
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D5E29D0](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    outlined bridged method (ob) of @objc INObject.identifier.getter(v9, &selRef_identifier);
    OUTLINED_FUNCTION_30_3();
    return OUTLINED_FUNCTION_37_0();
  }

  __break(1u);
  return result;
}

uint64_t ModifyContactAttributeIntent.requestedName.getter()
{
  v1 = [v0 relatedContact];
  if (v1)
  {
    v2 = v1;
    outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_fullName);
    if (v3 || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_givenName), v4) || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_middleName), v5) || (outlined bridged method (pb) of @objc PostalAddress.street.getter(v2, &selRef_familyName), v6))
    {
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v7 = [v2 nickName];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_30_3();
      }
    }
  }

  return OUTLINED_FUNCTION_37_0();
}

void specialized closure #1 in ModifyContactAttributeIntent.runReferenceResolution(_:)(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    switch(a3)
    {
      case 1:
        v29 = one-time initialization token for siriContacts;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.siriContacts);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v39 = a2;
          v40 = v34;
          *v33 = 136315138;
          v38 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v35 = String.init<A>(describing:)();
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v40);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_26686A000, v31, v32, "#ModifyContactAttributeIntent: Resolved an email from reference resolution: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x26D5E3300](v34, -1, -1);
          MEMORY[0x26D5E3300](v33, -1, -1);
        }

        type metadata accessor for Contact();
        v15 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2);
        goto LABEL_22;
      case 2:
        v16 = one-time initialization token for siriContacts;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.siriContacts);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v39 = a2;
          v40 = v21;
          *v20 = 136315138;
          v38 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v22 = String.init<A>(describing:)();
          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_26686A000, v18, v19, "#ModifyContactAttributeIntent: Resolved a phone number from reference resolution: %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          MEMORY[0x26D5E3300](v21, -1, -1);
          MEMORY[0x26D5E3300](v20, -1, -1);
        }

        type metadata accessor for Contact();
        v15 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2, 0, 0);
        goto LABEL_22;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.siriContacts);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_26686A000, v26, v27, "#ModifyContactAttributeIntent: no value found from reference resolution", v28, 2u);
          MEMORY[0x26D5E3300](v28, -1, -1);
        }

        goto LABEL_23;
      default:
        v9 = one-time initialization token for siriContacts;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.siriContacts);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v38 = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
          _os_log_impl(&dword_26686A000, v11, v12, "#ModifyContactAttributeIntent: Resolved a contact from reference resolution with identifier: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x26D5E3300](v14, -1, -1);
          MEMORY[0x26D5E3300](v13, -1, -1);
        }

        type metadata accessor for Contact();
        v15 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(a1, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_22:
        v26 = v15;
        [v8 setRelatedContact_];
LABEL_23:

        break;
    }
  }
}

id @nonobjc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x26D5E2470](a3, a4);

  v9 = [v4 initWithIdentifier:v7 displayString:v8];

  return v9;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.relatedSiriMatches.setter(uint64_t a1, void *a2)
{
  type metadata accessor for SiriMatch();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRelatedSiriMatches_];
}

uint64_t outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(void *a1)
{
  v1 = [a1 relatedSiriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INObject.identifier.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  return OUTLINED_FUNCTION_37_0();
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1)
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

id OUTLINED_FUNCTION_6_38()
{

  return [v1 (v0 + 2142)];
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContactsError(0);
  v4[6] = v5;
  OUTLINED_FUNCTION_18_0(v5);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_18_0(v6);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for NLIntent();
  v4[9] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v4[10] = v8;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = type metadata accessor for USOParse();
  v4[14] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v4[15] = v10;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for Parse.DirectInvocation();
  v4[18] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v4[19] = v12;
  v4[20] = swift_task_alloc();
  v13 = type metadata accessor for Parse();
  v4[21] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v4[22] = v14;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](Parse.toSiriKitIntent(referenceResolver:previousIntent:), 0, 0);
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)()
{
  v100 = v0;
  v2 = v0 + 24;
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0 + 21;
  v4 = v0[21];
  v6 = *(v3 + 16);
  (v6)(v1, v0[5], v4);
  v7 = (*(v3 + 88))(v1, v4);
  if (v7 == *MEMORY[0x277D5C128])
  {
    v2 = v0 + 13;
    v5 = v0 + 9;
    (*(v0[22] + 96))(v0[24], v0[21]);
    v8 = OUTLINED_FUNCTION_66_2();
    v9(v8);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriContacts);
    v11 = OUTLINED_FUNCTION_26_3();
    v95 = v12;
    v12(v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_33_12(v14))
    {
      OUTLINED_FUNCTION_5_5();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v99 = swift_slowAlloc();
      *v15 = 136315138;
      OUTLINED_FUNCTION_24_14();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v16, v17);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = OUTLINED_FUNCTION_60_0();
      v23 = v22;
      (v22)(v21);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v99);
      v5 = v0 + 9;

      *(v15 + 4) = v24;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v25, v14, "#Parse.toSiriKitIntent Converting NLv3IntentOnly Parse to SiriKit Intent: %s");
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v26 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v26);
    }

    else
    {

      v37 = OUTLINED_FUNCTION_60_0();
      v23 = v38;
      (v38)(v37);
    }

    v39 = v0[11];
    v40 = v0[8];
    v41 = v0[2];
    v95(v39, v0[13], v0[9]);
    ContactNLv3Intent.init(intent:)(v39, v40);
    v42 = ContactNLv3Intent.toSiriKitIntent(referenceResolver:previousIntent:)(v41);
    v94 = v43;
    v96 = v42;
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v40, v44);
    v36 = v23;
LABEL_14:
    v36(*v2, *v5);

    v45 = v0[1];

    return v45(v96, v94);
  }

  if (v7 == *MEMORY[0x277D5C150])
  {
    v2 = v0 + 20;
    v5 = v0 + 18;
    (*(v0[22] + 96))(v0[24], v0[21]);
    v27 = OUTLINED_FUNCTION_66_2();
    v28(v27);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v29, static Logger.siriContacts);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_11_4();
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26686A000, v30, v31, "#Parse.toSiriKitIntent Converting DirectInvocation Parse to SiriKit Intent", v32, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    v33 = v0[19];

    Parse.DirectInvocation.toSiriKitIntent()();
    v94 = v35;
    v96 = v34;
    v36 = *(v33 + 8);
    goto LABEL_14;
  }

  if (v7 != *MEMORY[0x277D5C160])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v67 = v0[23];
    v68 = v0[21];
    v69 = v0[5];
    v70 = type metadata accessor for Logger();
    v71 = __swift_project_value_buffer(v70, static Logger.siriContacts);
    (v6)(v67, v69, v68);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v74 = OUTLINED_FUNCTION_21_2(v73);
    v75 = v0[23];
    v93 = v0[22];
    v76 = v0[21];
    if (v74)
    {
      v98 = v71;
      v77 = v0[7];
      OUTLINED_FUNCTION_5_5();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v99 = swift_slowAlloc();
      *v78 = 136315138;
      v79 = OUTLINED_FUNCTION_60_0();
      v6(v79);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v80, v81);
      v82 = Error.localizedDescription.getter();
      v84 = v83;
      OUTLINED_FUNCTION_25_12();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v77, v85);
      v86 = *(v93 + 8);
      v86(v75, v76);
      v87 = v82;
      v5 = v0 + 21;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v84, &v99);
      OUTLINED_FUNCTION_59_8();

      *(v78 + 4) = v86;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v88, v98, "%s");
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v89 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v89);
    }

    else
    {

      v86 = *(v93 + 8);
      v86(v75, v76);
    }

    v36 = v86;
    v94 = 0;
    v96 = 0;
    goto LABEL_14;
  }

  (*(v0[22] + 96))(v0[24], v0[21]);
  v47 = OUTLINED_FUNCTION_26_3();
  v48(v47);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.siriContacts);
  v50 = OUTLINED_FUNCTION_26_3();
  v51(v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = OUTLINED_FUNCTION_33_12(v53);
  v55 = v0[15];
  if (v54)
  {
    OUTLINED_FUNCTION_5_5();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v57 = swift_slowAlloc();
    v99 = v57;
    *v56 = 136315138;
    v97 = USOParse.debugDescription.getter();
    v59 = v58;
    v62 = *(v55 + 8);
    v60 = v55 + 8;
    v61 = v62;
    v63 = OUTLINED_FUNCTION_54_6();
    v62(v63);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v59, &v99);

    *(v56 + 4) = v64;
    OUTLINED_FUNCTION_37_8(&dword_26686A000, v65, v53, "#Parse.toSiriKitIntent Converting USO Parse to SiriKit Intent: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    v66 = OUTLINED_FUNCTION_10_33();
    MEMORY[0x26D5E3300](v66);
  }

  else
  {

    v90 = *(v55 + 8);
    v60 = v55 + 8;
    v61 = v90;
    v91 = OUTLINED_FUNCTION_54_6();
    v90(v91);
  }

  v0[25] = v60;
  v0[26] = v61;
  v92 = swift_task_alloc();
  v0[27] = v92;
  *v92 = v0;
  v92[1] = Parse.toSiriKitIntent(referenceResolver:previousIntent:);

  return USOParse.toSiriKitIntent(previousIntent:referenceResolver:)();
}

{
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  (*(v0 + 208))(*(v0 + 136), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1(v3, v4);
}

uint64_t Parse.toSiriKitIntent(referenceResolver:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return MEMORY[0x2822009F8](Parse.toSiriKitIntent(referenceResolver:previousIntent:), 0, 0);
}

void Parse.isLearnPronunciation.getter()
{
  OUTLINED_FUNCTION_15();
  v2 = type metadata accessor for ContactNLv3Intent(0);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v4 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v8);
  v10 = v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v11);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v54[1] = v16;
  v54[2] = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v54[0] = v18 - v17;
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v20 = OUTLINED_FUNCTION_58();
  v21(v20);
  v22 = OUTLINED_FUNCTION_36_12();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D5C128])
  {
    v25 = OUTLINED_FUNCTION_36_12();
    v26(v25);
    v27 = OUTLINED_FUNCTION_40_8();
    v28(v27);
    OUTLINED_FUNCTION_56_6();
    v29(v1, v10, v4);
    ContactNLv3Intent.init(intent:)(v1, v0);
    ContactNLv3Intent.isLearnPronunciation.getter();
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v30);
    (*(v6 + 8))(v10, v4);
    goto LABEL_17;
  }

  if (v24 != *MEMORY[0x277D5C160])
  {
    v39 = OUTLINED_FUNCTION_36_12();
    v40(v39);
    goto LABEL_17;
  }

  v31 = OUTLINED_FUNCTION_36_12();
  v32(v31);
  v33 = OUTLINED_FUNCTION_40_8();
  v34(v33);
  USOParse.preferredUserDialogAct.getter(v14);
  v35 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_57(v14, 1, v35);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_12_20();
    v38(v37);
    outlined destroy of Result<TemplatingResult, Error>(v14, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_15:
    OUTLINED_FUNCTION_46_1();
LABEL_16:
    outlined destroy of Result<TemplatingResult, Error>(v55, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  v41 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52();
  (*(v42 + 8))(v14, v35);
  if (!v41)
  {
    v46 = OUTLINED_FUNCTION_12_20();
    v47(v46);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v55[3])
  {
    v48 = OUTLINED_FUNCTION_12_20();
    v49(v48);
    goto LABEL_16;
  }

  type metadata accessor for UsoTask_update_common_Person();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

    if (v55[0])
    {
      v43 = dispatch thunk of UsoEntity_common_Person.phoneticStructuredName.getter();

      v44 = OUTLINED_FUNCTION_12_20();
      v45(v44);
      if (v43)
      {
      }
    }

    else
    {
      v52 = OUTLINED_FUNCTION_12_20();
      v53(v52);
    }
  }

  else
  {
    v50 = OUTLINED_FUNCTION_12_20();
    v51(v50);
  }

LABEL_17:
  OUTLINED_FUNCTION_14();
}

void Parse.isRequestForMultipleContacts.getter()
{
  OUTLINED_FUNCTION_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_16();
  v65 = v5;
  OUTLINED_FUNCTION_16();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v66[-v8];
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_65_4();
  v11 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, v0, v18);
  v25 = OUTLINED_FUNCTION_46_0();
  if (v26(v25) == *MEMORY[0x277D5C160])
  {
    v27 = OUTLINED_FUNCTION_46_0();
    v28(v27);
    (*(v13 + 32))(v17, v24, v11);
    USOParse.preferredUserDialogAct.getter(v2);
    v29 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_60_6();
    if (__swift_getEnumTagSinglePayload(v30, v31, v32) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_13_24();
      (*(v35 + 8))(v2, v29);
      if (v2)
      {
        OUTLINED_FUNCTION_52_1();

        if (v67)
        {
          v36 = type metadata accessor for UsoTask_summarise_common_Person();
          if (OUTLINED_FUNCTION_14_21(v36))
          {
LABEL_35:
            OUTLINED_FUNCTION_72_3();
            UsoTask_summarise_common_Person.isRequestForMultipleContacts.getter();
            goto LABEL_36;
          }

LABEL_11:
          USOParse.preferredUserDialogAct.getter(v1);
          OUTLINED_FUNCTION_60_6();
          OUTLINED_FUNCTION_57(v37, v38, v39);
          if (v40)
          {
            outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
          }

          else
          {
            Siri_Nlu_External_UserDialogAct.usoTask.getter();
            OUTLINED_FUNCTION_13_24();
            (*(v41 + 8))(v1, v29);
            if (v1)
            {
              OUTLINED_FUNCTION_52_1();

              if (v67)
              {
                common_Person = type metadata accessor for UsoTask_read_common_Person();
                if (OUTLINED_FUNCTION_14_21(common_Person))
                {
                  OUTLINED_FUNCTION_72_3();
                  UsoTask_read_common_Person.isRequestForMultipleContacts.getter();
LABEL_36:

                  v57 = OUTLINED_FUNCTION_18_18();
                  v58(v57);
                  goto LABEL_40;
                }

LABEL_20:
                USOParse.preferredUserDialogAct.getter(v9);
                OUTLINED_FUNCTION_60_6();
                OUTLINED_FUNCTION_57(v43, v44, v45);
                if (v40)
                {
                  outlined destroy of Result<TemplatingResult, Error>(v9, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                }

                else
                {
                  Siri_Nlu_External_UserDialogAct.usoTask.getter();
                  OUTLINED_FUNCTION_13_24();
                  v46 = OUTLINED_FUNCTION_43();
                  v47(v46);
                  if (v9)
                  {
                    OUTLINED_FUNCTION_52_1();

                    v48 = v65;
                    if (v67)
                    {
                      v49 = type metadata accessor for UsoTask_noVerb_common_Person();
                      if (OUTLINED_FUNCTION_14_21(v49))
                      {
                        OUTLINED_FUNCTION_72_3();
                        UsoTask_noVerb_common_Person.isRequestForMultipleContacts.getter();
                        goto LABEL_36;
                      }

LABEL_29:
                      USOParse.preferredUserDialogAct.getter(v48);
                      OUTLINED_FUNCTION_60_6();
                      OUTLINED_FUNCTION_57(v50, v51, v52);
                      if (v40)
                      {
                        v53 = OUTLINED_FUNCTION_18_18();
                        v54(v53);
                        outlined destroy of Result<TemplatingResult, Error>(v48, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                      }

                      else
                      {
                        Siri_Nlu_External_UserDialogAct.usoTask.getter();
                        OUTLINED_FUNCTION_13_24();
                        (*(v55 + 8))(v48, v29);
                        if (v48)
                        {
                          OUTLINED_FUNCTION_52_1();

                          if (v67)
                          {
                            v56 = type metadata accessor for UsoTask_checkExistence_common_Person();
                            if ((OUTLINED_FUNCTION_14_21(v56) & 1) == 0)
                            {
                              v63 = OUTLINED_FUNCTION_18_18();
                              v64(v63);
                              goto LABEL_40;
                            }

                            goto LABEL_35;
                          }

                          v61 = OUTLINED_FUNCTION_18_18();
                          v62(v61);
LABEL_39:
                          outlined destroy of Result<TemplatingResult, Error>(v66, &_sypSgMd, &_sypSgMR);
                          goto LABEL_40;
                        }

                        v59 = OUTLINED_FUNCTION_18_18();
                        v60(v59);
                      }

                      OUTLINED_FUNCTION_46_1();
                      goto LABEL_39;
                    }

LABEL_28:
                    outlined destroy of Result<TemplatingResult, Error>(v66, &_sypSgMd, &_sypSgMR);
                    goto LABEL_29;
                  }
                }

                OUTLINED_FUNCTION_46_1();
                v48 = v65;
                goto LABEL_28;
              }

LABEL_19:
              outlined destroy of Result<TemplatingResult, Error>(v66, &_sypSgMd, &_sypSgMR);
              goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_46_1();
          goto LABEL_19;
        }

LABEL_10:
        outlined destroy of Result<TemplatingResult, Error>(v66, &_sypSgMd, &_sypSgMR);
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_46_1();
    goto LABEL_10;
  }

  v33 = OUTLINED_FUNCTION_46_0();
  v34(v33);
LABEL_40:
  OUTLINED_FUNCTION_14();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.DirectInvocation.getSelectionIndex()()
{
  v1 = v0;
  v2 = Parse.DirectInvocation.userData.getter();
  if (!v2)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_6;
  }

  specialized Dictionary.subscript.getter(0x7865646E69, 0xE500000000000000, v2, &v21);

  if (!*(&v22 + 1))
  {
LABEL_6:
    outlined destroy of Result<TemplatingResult, Error>(&v21, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v20;
  }

LABEL_7:
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_11_4();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_64_3();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_10_33();
    MEMORY[0x26D5E3300](v13);
  }

  type metadata accessor for ContactsError(0);
  OUTLINED_FUNCTION_2_50();
  v16 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v14, v15);
  OUTLINED_FUNCTION_56(v16);
  v18 = v17;
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_10_1();
  (*(v19 + 16))(v18, v1);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.toContactId(existingCandidates:)(Swift::OpaquePointer existingCandidates)
{
  v4 = v1;
  rawValue = existingCandidates._rawValue;
  v114 = type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_16();
  v118 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_65_4();
  v8 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v117 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_16();
  v110 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_4();
  v109 = v19;
  OUTLINED_FUNCTION_13_8();
  v113 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v116 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v115 = (v23 - v22);
  OUTLINED_FUNCTION_13_8();
  v24 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  v111 = *(v26 + 16);
  v112 = v4;
  v111(v29 - v28, v4, v24);
  v31 = OUTLINED_FUNCTION_61_5();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D5C128])
  {
    v34 = OUTLINED_FUNCTION_61_5();
    v35(v34);
    v36 = v117;
    v37 = OUTLINED_FUNCTION_63_4();
    v38(v37, v30, v8);
    (*(v117 + 16))(v13, v2, v8);
    ContactNLv3Intent.init(intent:)(v13, v3);
    v39 = v2;
    v40 = v118;
    if ((ContactNLv3Intent.isContactDomain.getter() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (one-time initialization token for contactId == -1)
    {
LABEL_4:
      OUTLINED_FUNCTION_5_40();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v41, v42);
      IntentNodeTraversable.value<A>(forNode:)();
      if (v120)
      {
        rawValue = v8;
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.siriContacts);
        outlined init with copy of ContactNLv3Intent(v3, v40);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v44, v45))
        {
          OUTLINED_FUNCTION_5_5();
          v46 = swift_slowAlloc();
          v116 = v39;
          v47 = v46;
          OUTLINED_FUNCTION_8_3();
          v115 = swift_slowAlloc();
          v119 = v115;
          *v47 = 136315138;
          OUTLINED_FUNCTION_5_40();
          _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v48, v49);
          LODWORD(v113) = v45;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v3;
          v53 = v52;
          OUTLINED_FUNCTION_2_25();
          v54 = v40;
          v56 = v55;
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v54, v57);
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, &v119);

          *(v47 + 4) = v58;
          _os_log_impl(&dword_26686A000, v44, v113, "ContactIntent: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v115);
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();

          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v51, v56);
          (*(v36 + 1))(v116, rawValue);
        }

        else
        {

          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v40, type metadata accessor for ContactNLv3Intent);
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v3, type metadata accessor for ContactNLv3Intent);
          (*(v36 + 1))(v39, rawValue);
        }

        goto LABEL_34;
      }

LABEL_13:
      type metadata accessor for ContactsError(0);
      OUTLINED_FUNCTION_2_50();
      v67 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v65, v66);
      OUTLINED_FUNCTION_56(v67);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v3, v68);
      (*(v36 + 1))(v39, v8);
      goto LABEL_34;
    }

LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  if (v33 == *MEMORY[0x277D5C160])
  {
    v39 = (v26 + 96);
    v59 = OUTLINED_FUNCTION_61_5();
    v60(v59);
    v40 = v115;
    v61 = OUTLINED_FUNCTION_63_4();
    v62 = v113;
    v63(v61, v30, v113);
    if (rawValue[2])
    {
      USOParse.preferredUserDialogAct.getter(v109);
      v64 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      if (__swift_getEnumTagSinglePayload(v109, 1, v64) != 1)
      {
        Siri_Nlu_External_UserDialogAct.contactIds.getter();
        v81 = v80;
        OUTLINED_FUNCTION_52();
        v82 = OUTLINED_FUNCTION_19_11();
        v84 = v83(v82);
        v8 = 0;
        v36 = *(v81 + 16);
        v3 = (v81 + 40);
        v40 = v115;
        while (1)
        {
          if (v36 == v8)
          {

            v62 = v113;
            goto LABEL_27;
          }

          if (v8 >= *(v81 + 16))
          {
            break;
          }

          v39 = &v108;
          v85 = *v3;
          v119 = *(v3 - 1);
          v120 = v85;
          MEMORY[0x28223BE20](v84);
          *(&v108 - 2) = &v119;

          if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v108 - 4), rawValue))
          {
            v105 = OUTLINED_FUNCTION_46_5();
            v106(v105, v113);

            goto LABEL_34;
          }

          ++v8;
          v3 += 16;
        }

        __break(1u);
        goto LABEL_37;
      }

      outlined destroy of Result<TemplatingResult, Error>(v109, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v40 = v115;
    }

LABEL_27:
    type metadata accessor for ReferenceResolutionClient();
    ReferenceResolutionClient.__allocating_init()();
    v86 = v110;
    USOParse.preferredUserDialogAct.getter(v110);
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_60_6();
    if (__swift_getEnumTagSinglePayload(v87, v88, v89) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v86, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      Siri_Nlu_External_UserDialogAct.contactId.getter();
      v91 = v90;
      OUTLINED_FUNCTION_52();
      v92 = OUTLINED_FUNCTION_54_6();
      v93(v92);
      if (v91)
      {
LABEL_32:
        v96 = OUTLINED_FUNCTION_46_5();
        v97(v96, v62);

        goto LABEL_34;
      }
    }

    if (!specialized RRReferenceResolverProtocol.resolvePersonDisambiguationReference(from:)(v40) || (UsoEntity_common_Person.contactId.getter(), v95 = v94, , !v95))
    {
      type metadata accessor for ContactsError(0);
      OUTLINED_FUNCTION_2_50();
      v100 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v98, v99);
      OUTLINED_FUNCTION_56(v100);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v101 = OUTLINED_FUNCTION_46_5();
      v102(v101, v62);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.siriContacts);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_5_5();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v73 = swift_slowAlloc();
    v119 = v73;
    *v72 = 136315138;
    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573726150, 0xE500000000000000, &v119);
    _os_log_impl(&dword_26686A000, v70, v71, "Unexpected parse type: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  type metadata accessor for ContactsError(0);
  OUTLINED_FUNCTION_2_50();
  v76 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v74, v75);
  OUTLINED_FUNCTION_56(v76);
  v111(v77, v112, v24);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v78 = OUTLINED_FUNCTION_61_5();
  v79(v78);
LABEL_34:
  v103 = OUTLINED_FUNCTION_61_5();
  result._object = v104;
  result._countAndFlagsBits = v103;
  return result;
}

void Parse.confirmationResponse.getter()
{
  OUTLINED_FUNCTION_15();
  v212 = v1;
  v213 = v0;
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v206 = v3;
  v207 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_16();
  v195 = v4;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_4();
  v205 = v6;
  v7 = OUTLINED_FUNCTION_13_8();
  v8 = type metadata accessor for ContactNLv3Intent(v7);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v10 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v194 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v20);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v21);
  v202 = &v194 - v22;
  OUTLINED_FUNCTION_13_8();
  v208 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_1_0();
  v199 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_16();
  v196 = v25;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  v203 = v27;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_4();
  v204 = v29;
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v210 = v31;
  v211 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_16();
  v198 = v32;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_6();
  v201 = v34;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19_4();
  v209 = v36;
  OUTLINED_FUNCTION_13_8();
  v37 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_16();
  v197 = v41;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_6();
  v200 = v43;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  v46 = &v194 - v45;
  v47 = *(v39 + 16);
  v47(&v194 - v45, v213, v37);
  v48 = OUTLINED_FUNCTION_43();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D5C128])
  {
    v51 = OUTLINED_FUNCTION_43();
    v52(v51);
    v53 = OUTLINED_FUNCTION_19_11();
    v54(v53);
    (*(v12 + 16))(v16, v19, v10);
    ContactNLv3Intent.init(intent:)(v16, v0);
    ContactNLv3Intent.confirmationResponse.getter(v212);
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v55);
    (*(v12 + 8))(v19, v10);
    goto LABEL_56;
  }

  if (v50 == *MEMORY[0x277D5C150])
  {
    v56 = OUTLINED_FUNCTION_43();
    v57(v56);
    v58 = v206;
    v59 = v207;
    (*(v206 + 32))(v205, v46, v207);
    Parse.DirectInvocation.identifier.getter();
    v61 = v60;
    OUTLINED_FUNCTION_21_11();
    v64 = v62 == 0xD00000000000001FLL && v63 == v61;
    if (v64 || (v65 = v62, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v66 = OUTLINED_FUNCTION_58();
      v67(v66);

LABEL_10:
      v68 = MEMORY[0x277D5BED8];
LABEL_54:
      v178 = *v68;
      v179 = type metadata accessor for ConfirmationResponse();
      OUTLINED_FUNCTION_10_1();
      v181 = v212;
      (*(v180 + 104))(v212, v178, v179);
      v137 = v181;
      v138 = 0;
      v136 = v179;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_21_11();
    if (v65 == 0xD00000000000001CLL && v106 == v61)
    {
    }

    else
    {
      v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v108 & 1) == 0)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v109, static Logger.siriContacts);
        v110 = v195;
        v111 = OUTLINED_FUNCTION_40_8();
        v112(v111);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_33_12(v114))
        {
          OUTLINED_FUNCTION_5_5();
          v115 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_3();
          v116 = swift_slowAlloc();
          v214[0] = v116;
          *v115 = 136315138;
          Parse.DirectInvocation.identifier.getter();
          v117 = OUTLINED_FUNCTION_59_8();
          v118 = *(v58 + 8);
          v118(v117, v59);
          v119 = OUTLINED_FUNCTION_54_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v121);
          OUTLINED_FUNCTION_59_8();

          *(v115 + 4) = v110;
          OUTLINED_FUNCTION_74_3(&dword_26686A000, v122, v123, "Direct invocation %s is not a confirmation response.");
          __swift_destroy_boxed_opaque_existential_0Tm(v116);
          v124 = OUTLINED_FUNCTION_10_33();
          MEMORY[0x26D5E3300](v124);
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();

          v125 = OUTLINED_FUNCTION_58();
          (v118)(v125);
        }

        else
        {

          v182 = *(v58 + 8);
          v182(v110, v59);
          v183 = OUTLINED_FUNCTION_58();
          (v182)(v183);
        }

        v184 = v212;
        v136 = type metadata accessor for ConfirmationResponse();
        v137 = v184;
        goto LABEL_36;
      }
    }

    v156 = OUTLINED_FUNCTION_58();
    v157(v156);
LABEL_53:
    v68 = MEMORY[0x277D5BED0];
    goto LABEL_54;
  }

  if (v50 == *MEMORY[0x277D5C160])
  {
    v69 = OUTLINED_FUNCTION_43();
    v70(v69);
    v71 = v209;
    v72 = v210;
    (*(v210 + 32))(v209, v46, v211);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v73, static Logger.siriContacts);
    v74 = *(v72 + 16);
    v75 = v201;
    v74(v201, v71, v211);
    v213 = v0;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    v78 = OUTLINED_FUNCTION_21_2(v77);
    v79 = v202;
    if (v78)
    {
      OUTLINED_FUNCTION_5_5();
      v80 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v207 = swift_slowAlloc();
      v214[0] = v207;
      *v80 = 136315138;
      v81 = OUTLINED_FUNCTION_58();
      v82 = v211;
      (v74)(v81);
      v83 = String.init<A>(describing:)();
      v84 = v75;
      v86 = v85;
      v87 = *(v72 + 8);
      v87(v84, v82);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v86, v214);

      *(v80 + 4) = v88;
      OUTLINED_FUNCTION_37_8(&dword_26686A000, v89, v0, "#confirmationResponse usoParse: %s");
      OUTLINED_FUNCTION_53_5();
      v71 = v209;
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      v90 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v90);
    }

    else
    {

      v87 = *(v72 + 8);
      v87(v75, v211);
    }

    v126 = v208;
    v127 = v203;
    USOParse.preferredUserDialogAct.getter(v79);
    OUTLINED_FUNCTION_57(v79, 1, v126);
    if (v64)
    {
      outlined destroy of Result<TemplatingResult, Error>(v79, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v129))
      {
        OUTLINED_FUNCTION_11_4();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_16_17();
        _os_log_impl(v130, v131, v132, v133, v134, 2u);
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      v135 = v71;
    }

    else
    {
      v142 = v199;
      v143 = v204;
      (*(v199 + 32))(v204, v79, v126);
      v144 = *(v142 + 16);
      v144(v127, v143, v126);
      v145 = v213;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v147))
      {
        OUTLINED_FUNCTION_5_5();
        v149 = swift_slowAlloc();
        v207 = v87;
        v150 = v149;
        OUTLINED_FUNCTION_8_3();
        v151 = swift_slowAlloc();
        v214[0] = v151;
        *v150 = 136315138;
        v144(v196, v127, v208);
        v152 = String.init<A>(describing:)();
        v144 = v153;
        v154 = *(v142 + 8);
        v154(v127, v208);
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v144, v214);

        *(v150 + 4) = v155;
        _os_log_impl(&dword_26686A000, v146, v145, "#confirmationResponse userDialogAct: %s", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v151);
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
        v87 = v207;
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      else
      {

        v154 = *(v142 + 8);
        v154(v127, v126);
      }

      v158 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      v159 = v209;
      if (v158)
      {
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v161))
        {
          OUTLINED_FUNCTION_11_4();
          v162 = swift_slowAlloc();
          OUTLINED_FUNCTION_42_10(v162);
          OUTLINED_FUNCTION_16_17();
          _os_log_impl(v163, v164, v165, v166, v167, 2u);
          v154 = v144;
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
        }

        v168 = OUTLINED_FUNCTION_41_11();
        (v154)(v168);
        v87(v159, v211);
        goto LABEL_10;
      }

      if (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
      {
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v170))
        {
          OUTLINED_FUNCTION_11_4();
          v171 = swift_slowAlloc();
          OUTLINED_FUNCTION_42_10(v171);
          OUTLINED_FUNCTION_16_17();
          _os_log_impl(v172, v173, v174, v175, v176, 2u);
          v154 = v144;
          OUTLINED_FUNCTION_3_3();
          MEMORY[0x26D5E3300]();
        }

        v177 = OUTLINED_FUNCTION_41_11();
        (v154)(v177);
        v87(v159, v211);
        goto LABEL_53;
      }

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v186))
      {
        OUTLINED_FUNCTION_11_4();
        v187 = swift_slowAlloc();
        OUTLINED_FUNCTION_42_10(v187);
        OUTLINED_FUNCTION_16_17();
        _os_log_impl(v188, v189, v190, v191, v192, 2u);
        v154 = v144;
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      v193 = OUTLINED_FUNCTION_41_11();
      (v154)(v193);
      v135 = v159;
    }

    v87(v135, v211);
    v136 = type metadata accessor for ConfirmationResponse();
    v137 = v212;
LABEL_36:
    v138 = 1;
LABEL_55:
    __swift_storeEnumTagSinglePayload(v137, v138, 1, v136);
    goto LABEL_56;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v91, static Logger.siriContacts);
  v47(v200, v213, v37);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_21_2(v93))
  {
    OUTLINED_FUNCTION_5_5();
    v94 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v213 = swift_slowAlloc();
    v214[0] = v213;
    *v94 = 136315138;
    v95 = OUTLINED_FUNCTION_36_12();
    (v47)(v95);
    v96 = String.init<A>(describing:)();
    v98 = v97;
    v99 = *(v39 + 8);
    OUTLINED_FUNCTION_67_4();
    v99();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v214);

    *(v94 + 4) = v100;
    OUTLINED_FUNCTION_16_17();
    _os_log_impl(v101, v102, v103, v104, v105, 0xCu);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  else
  {

    v99 = *(v39 + 8);
    OUTLINED_FUNCTION_67_4();
    v139 = OUTLINED_FUNCTION_46_0();
    (v99)(v139);
  }

  v140 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v212, 1, 1, v140);
  v141 = OUTLINED_FUNCTION_43();
  (v99)(v141);
LABEL_56:
  OUTLINED_FUNCTION_14();
}

void Parse.cancelOrContactIntent.getter()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v3 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_6();
  v11 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_56_6();
  v18(v17, v0, v11);
  v19 = (*(v13 + 88))(v17, v11);
  if (v19 == *MEMORY[0x277D5C128])
  {
    (*(v13 + 96))(v17, v11);
    v20 = OUTLINED_FUNCTION_63_4();
    v21(v20, v17, v3);
    (*(v5 + 16))(v9, v1, v3);
    ContactNLv3Intent.init(intent:)(v9, v0);
    if (ContactNLv3Intent.isContactDomain.getter())
    {
      if (one-time initialization token for contactConfirmation != -1)
      {
        OUTLINED_FUNCTION_10_20(&one-time initialization token for contactConfirmation);
      }

      OUTLINED_FUNCTION_5_40();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v22, v23);
      IntentNodeTraversable.value<A>(forNode:)();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v24);
      (*(v5 + 8))(v1, v3);
    }

    else
    {
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v0, v29);
      (*(v5 + 8))(v1, v3);
    }
  }

  else
  {
    v25 = v19;
    v26 = *MEMORY[0x277D5C150];
    v27 = *MEMORY[0x277D5C160];
    (*(v13 + 8))(v17, v11);
    if (v25 == v26 || v25 == v27)
    {
      Parse.isCancel.getter();
      Parse.isContactIntent.getter();
    }
  }

  OUTLINED_FUNCTION_14();
}

uint64_t Parse.isUSODisambiguationTask.getter()
{
  v1 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_27_12();
  v5 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9, v0, v5);
  v12 = OUTLINED_FUNCTION_61_1();
  if (v13(v12) == *MEMORY[0x277D5C160])
  {
    v14 = OUTLINED_FUNCTION_61_1();
    v15(v14);
    (*(v3 + 32))(v0, v11, v1);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      v16 = 1;
    }

    else
    {
      v16 = USOParse.isContactDisambiguation.getter();
    }

    (*(v3 + 8))(v0, v1);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_61_1();
    v18(v17);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_26_3();
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void Parse.isCancel.getter()
{
  OUTLINED_FUNCTION_15();
  v61 = v0;
  v60 = type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  v7 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_6();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v12);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v59 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_1_0();
  v56 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v55 = v19 - v18;
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v57 = v21;
  v58 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v22 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v28 = v27 - v26;
  (*(v24 + 16))(v27 - v26, v61, v22);
  v29 = OUTLINED_FUNCTION_70_4();
  v31 = v30(v29);
  if (v31 == *MEMORY[0x277D5C128])
  {
    v32 = OUTLINED_FUNCTION_70_4();
    v33(v32);
    v34 = OUTLINED_FUNCTION_63_4();
    v35(v34, v28, v7);
    OUTLINED_FUNCTION_56_6();
    v36(v2, v1, v7);
    ContactNLv3Intent.init(intent:)(v2, v6);
    if (one-time initialization token for contactConfirmation != -1)
    {
      OUTLINED_FUNCTION_10_20(&one-time initialization token for contactConfirmation);
    }

    OUTLINED_FUNCTION_5_40();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v37, v38);
    IntentNodeTraversable.value<A>(forNode:)();
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v6, v39);
    (*(v9 + 8))(v1, v7);
  }

  else if (v31 == *MEMORY[0x277D5C160])
  {
    v40 = OUTLINED_FUNCTION_70_4();
    v41(v40);
    v42 = OUTLINED_FUNCTION_19_11();
    v43(v42);
    USOParse.preferredUserDialogAct.getter(v15);
    v44 = v59;
    OUTLINED_FUNCTION_57(v15, 1, v59);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_19_11();
      v47(v46);
      outlined destroy of Result<TemplatingResult, Error>(v15, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v51 = v55;
      v50 = v56;
      (*(v56 + 32))(v55, v15, v44);
      v52 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
      if ((v52 & 1) == 0)
      {
        Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
      }

      (*(v50 + 8))(v51, v44);
      v53 = OUTLINED_FUNCTION_19_11();
      v54(v53);
    }
  }

  else
  {
    v48 = OUTLINED_FUNCTION_70_4();
    v49(v48);
  }

  OUTLINED_FUNCTION_14();
}

void Parse.getSiriKitIntentType()()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v109 = type metadata accessor for ContactsError(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v108 = v4 - v3;
  v5 = OUTLINED_FUNCTION_13_8();
  v6 = type metadata accessor for ContactNLv3Intent(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  v11 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_16();
  v117 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_6();
  v116 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v20 = &v107 - v19;
  v114 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v112 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_16();
  v110 = v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_4();
  v113 = v25;
  OUTLINED_FUNCTION_13_8();
  v26 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_16();
  v115 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  v33 = (&v107 - v32);
  v34 = *(v28 + 16);
  v111 = v1;
  v34(&v107 - v32, v1, v26);
  v35 = OUTLINED_FUNCTION_47_0();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D5C128])
  {
    v38 = OUTLINED_FUNCTION_47_0();
    v39(v38);
    (*(v13 + 32))(v20, v33, v11);
    v40 = v20;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v115 = v10;
    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v41, static Logger.siriContacts);
    v114 = *(v13 + 16);
    v114(v116, v20, v11);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_33_12(v43))
    {
      OUTLINED_FUNCTION_5_5();
      v44 = swift_slowAlloc();
      v111 = v44;
      OUTLINED_FUNCTION_8_3();
      v112 = swift_slowAlloc();
      v118 = v112;
      *v44 = 136315138;
      OUTLINED_FUNCTION_24_14();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v45, v46);
      dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v40;
      v47 = OUTLINED_FUNCTION_49_8();
      v33(v47);
      v48 = OUTLINED_FUNCTION_60_0();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v50);
      v40 = v113;

      v52 = v111;
      *(v111 + 1) = v51;
      _os_log_impl(&dword_26686A000, v42, v43, "#Parse.getSiriKitIntentType Getting SiriKit Intent Type for NLv3IntentOnly: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v65 = OUTLINED_FUNCTION_49_8();
      v33(v65);
    }

    v66 = v117;
    v114(v117, v40, v11);
    v67 = v115;
    v68 = ContactNLv3Intent.init(intent:)(v66, v115);
    ContactNLv3Intent.getSiriKitIntentType()(v68);
    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v67, v69);
    (v33)(v40, v11);
  }

  else if (v37 == *MEMORY[0x277D5C150])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v53, static Logger.siriContacts);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_64_3();
      _os_log_impl(v56, v57, v58, v59, v60, v61);
      v62 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v62);
    }

    v63 = OUTLINED_FUNCTION_47_0();
    v64(v63);
  }

  else if (v37 == *MEMORY[0x277D5C160])
  {
    v70 = OUTLINED_FUNCTION_47_0();
    v71(v70);
    v72 = v112;
    v73 = v114;
    (v112[4])(v113, v33, v114);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v74, static Logger.siriContacts);
    v75 = v110;
    v76 = OUTLINED_FUNCTION_40_8();
    v77(v76);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_33_12(v79))
    {
      OUTLINED_FUNCTION_5_5();
      v80 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v81 = swift_slowAlloc();
      v118 = v81;
      *v80 = 136315138;
      USOParse.debugDescription.getter();
      v82 = OUTLINED_FUNCTION_59_8();
      v83 = v72[1];
      v83(v82, v73);
      v84 = OUTLINED_FUNCTION_54_6();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v86);
      OUTLINED_FUNCTION_59_8();

      *(v80 + 4) = v75;
      OUTLINED_FUNCTION_74_3(&dword_26686A000, v87, v88, "#Parse.getSiriKitIntentType Getting SiriKit Intent Type for USO Parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      v89 = OUTLINED_FUNCTION_10_33();
      MEMORY[0x26D5E3300](v89);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v83 = v72[1];
      v83(v75, v73);
    }

    USOParse.getSiriKitIntentType()();
    v105 = OUTLINED_FUNCTION_36_12();
    (v83)(v105);
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.siriContacts);
    v91 = v115;
    v34(v115, v111, v26);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      OUTLINED_FUNCTION_5_5();
      v94 = v91;
      v95 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v95 = 136315138;
      v96 = v108;
      v34(v108, v94, v26);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_50();
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(v97, v98);
      OUTLINED_FUNCTION_73();
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_25_12();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v96, v99);
      v100 = *(v28 + 8);
      OUTLINED_FUNCTION_67_4();
      v100(v115, v26);
      v101 = OUTLINED_FUNCTION_60_0();
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v103);

      *(v95 + 4) = v104;
      _os_log_impl(&dword_26686A000, v92, v93, "%s", v95, 0xCu);
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    else
    {

      v100 = *(v28 + 8);
      OUTLINED_FUNCTION_67_4();
      v100(v91, v26);
    }

    v106 = OUTLINED_FUNCTION_47_0();
    (v100)(v106);
  }

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_14();
}

uint64_t specialized RRReferenceResolverProtocol.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v123 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v128 = &v122 - v8;
  MEMORY[0x28223BE20](v7);
  v126 = &v122 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v124 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v122 - v16;
  MEMORY[0x28223BE20](v15);
  v130 = &v122 - v17;
  v136 = type metadata accessor for RRCandidate();
  v131 = *(v136 - 8);
  v18 = MEMORY[0x28223BE20](v136);
  v129 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v122 - v20;
  v21 = type metadata accessor for RRResult();
  v137 = *(v21 - 8);
  v138 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v122 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v135 = (&v122 - v25);
  MEMORY[0x28223BE20](v24);
  v27 = &v122 - v26;
  v28 = type metadata accessor for RRQuery();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (&v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v37 = &v122 - v36;
  v141[1] = v139;
  v133 = type metadata accessor for RREntity();
  v134 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v133);
  *v31 = a1;
  (*(v29 + 104))(v31, *MEMORY[0x277D5FEA8], v28);
  type metadata accessor for ReferenceResolutionClient();

  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v29 + 8))(v31, v28);
  v139 = v37;
  outlined init with copy of Any?(v37, v35, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v35;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriContacts);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v140 = v38;
      v141[0] = v44;
      *v43 = 136315138;
      v45 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v141);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_26686A000, v41, v42, "#ReferenceResolution Received a failure: %s -> nil", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x26D5E3300](v44, -1, -1);
      MEMORY[0x26D5E3300](v43, -1, -1);
    }

    else
    {
    }

    return outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  v49 = v137;
  v50 = v138;
  (*(v137 + 32))(v27, v35, v138);
  v51 = *(v49 + 16);
  v52 = v135;
  v51(v135, v27, v50);
  v53 = (*(v49 + 88))(v52, v50);
  v54 = v27;
  if (v53 == *MEMORY[0x277D5FEC0])
  {
    (*(v49 + 96))(v52, v50);
    v55 = v131;
    v56 = v132;
    v57 = v136;
    (*(v131 + 32))(v132, v52, v136);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v128 = v54;
    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.siriContacts);
    v59 = v129;
    (*(v55 + 16))(v129, v56, v57);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v59;
      v64 = v55;
      v65 = swift_slowAlloc();
      v141[0] = v65;
      *v62 = 136315138;
      _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08]);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = *(v64 + 8);
      v69(v63, v136);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v141);
      v57 = v136;

      *(v62 + 4) = v70;
      _os_log_impl(&dword_26686A000, v60, v61, "#ReferenceResolution Found a candidate %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x26D5E3300](v65, -1, -1);
      v71 = v62;
      v56 = v132;
      MEMORY[0x26D5E3300](v71, -1, -1);
    }

    else
    {

      v69 = *(v55 + 8);
      v69(v59, v57);
    }

    v87 = v130;
    RRCandidate.entity.getter();
    v69(v56, v57);
    (*(v137 + 8))(v128, v138);
    outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v82 = v134;
    outlined destroy of Result<TemplatingResult, Error>(v134, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v133);
    v88 = v87;
    return outlined init with take of RREntity?(v88, v82);
  }

  if (v53 == *MEMORY[0x277D5FED0])
  {
    (*(v49 + 96))(v52, v50);
    v73 = *v52;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.siriContacts);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26686A000, v75, v76, "#ReferenceResolution Found ambiguous entities -> returning the first one", v77, 2u);
      MEMORY[0x26D5E3300](v77, -1, -1);
    }

    v78 = v128;
    specialized Collection.first.getter(v73, v128);

    v79 = v136;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v136);
    v81 = v127;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      (*(v49 + 8))(v27, v50);
      outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v82 = v134;
      outlined destroy of Result<TemplatingResult, Error>(v134, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      v83 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v84 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v85 = v78;
LABEL_20:
      outlined destroy of Result<TemplatingResult, Error>(v85, v83, v84);
      v86 = 1;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v81, v86, 1, v133);
      v88 = v81;
      return outlined init with take of RREntity?(v88, v82);
    }

    goto LABEL_38;
  }

  if (v53 == *MEMORY[0x277D5FEC8])
  {
    (*(v49 + 96))(v52, v50);
    v89 = *v52;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.siriContacts);

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 134217984;
      *(v93 + 4) = *(v89 + 16);

      _os_log_impl(&dword_26686A000, v91, v92, "#ReferenceResolution Found %ld candidates. Using the first one", v93, 0xCu);
      MEMORY[0x26D5E3300](v93, -1, -1);
    }

    else
    {
    }

    v79 = v136;
    v81 = v125;
    v78 = v126;
    specialized Collection.first.getter(v89, v126);

    if (__swift_getEnumTagSinglePayload(v78, 1, v79) == 1)
    {
      goto LABEL_19;
    }

LABEL_38:
    RRCandidate.entity.getter();
    (*(v49 + 8))(v27, v50);
    outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v82 = v134;
    outlined destroy of Result<TemplatingResult, Error>(v134, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    (*(v131 + 8))(v78, v79);
    goto LABEL_39;
  }

  if (v53 == *MEMORY[0x277D5FED8])
  {
    (*(v49 + 96))(v52, v50);
    v94 = *v52;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    __swift_project_value_buffer(v95, static Logger.siriContacts);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v123;
    if (v98)
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_26686A000, v96, v97, "#ReferenceResolution Found ambiguous entities -> returning the first one", v100, 2u);
      MEMORY[0x26D5E3300](v100, -1, -1);
    }

    v101 = v136;
    v81 = v124;
    if (!*(v94 + 16))
    {

      (*(v49 + 8))(v54, v50);
      outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v83 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
      v84 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
      v82 = v134;
      v85 = v134;
      goto LABEL_20;
    }

    v102 = *(v94 + 32);

    specialized Collection.first.getter(v102, v99);

    if (__swift_getEnumTagSinglePayload(v99, 1, v101) == 1)
    {
      (*(v49 + 8))(v54, v50);
      outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v82 = v134;
      outlined destroy of Result<TemplatingResult, Error>(v134, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      v83 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v84 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v85 = v99;
      goto LABEL_20;
    }

    RRCandidate.entity.getter();
    (*(v49 + 8))(v54, v50);
    outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v82 = v134;
    outlined destroy of Result<TemplatingResult, Error>(v134, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    (*(v131 + 8))(v99, v101);
LABEL_39:
    v86 = 0;
    goto LABEL_40;
  }

  if (v53 == *MEMORY[0x277D5FEE0])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    __swift_project_value_buffer(v103, static Logger.siriContacts);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_26686A000, v104, v105, "#ReferenceResolution No matches found", v106, 2u);
      MEMORY[0x26D5E3300](v106, -1, -1);
    }

    (*(v49 + 8))(v27, v50);
    return outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, static Logger.siriContacts);
  v108 = v122;
  v51(v122, v27, v50);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v141[0] = v112;
    *v111 = 136315138;
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, MEMORY[0x277D5FEE8]);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v54;
    v115 = v114;
    v116 = v108;
    v117 = v50;
    v118 = *(v49 + 8);
    v118(v116, v117);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v141);

    *(v111 + 4) = v119;
    _os_log_impl(&dword_26686A000, v109, v110, "#ReferenceResolution Received unknown result type %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v112);
    MEMORY[0x26D5E3300](v112, -1, -1);
    MEMORY[0x26D5E3300](v111, -1, -1);

    v120 = v128;
  }

  else
  {

    v121 = v108;
    v117 = v50;
    v118 = *(v49 + 8);
    v118(v121, v117);
    v120 = v54;
  }

  v118(v120, v117);
  outlined destroy of Result<TemplatingResult, Error>(v139, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  return (v118)(v135, v117);
}

void *specialized RRReferenceResolverProtocol.resolvePersonDisambiguationReference(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for RREntity();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized RRReferenceResolverProtocol.resolvePositionEntity(from:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v3, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v8 = v19;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v8;
      v19 = v13;
      *v12 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonCSgMd, &_s12SiriOntology23UsoEntity_common_PersonCSgMR);
      v14 = Optional.debugDescription.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_26686A000, v10, v11, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_Person: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D5E3300](v13, -1, -1);
      MEMORY[0x26D5E3300](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

uint64_t specialized RRReferenceResolverProtocol.resolvePositionEntity(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  USOParse.preferredUserDialogAct.getter(&v23 - v6);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v10 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v11 = v7;
  }

  else
  {
    v12 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(*(v8 - 8) + 8))(v7, v8);
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE21extractPositionEntity33_41E6F657CD7DFBBA05B1CD3301A231094task0A8Ontology03UsoK0CSgAH0U4TaskC_tFZAA0bC6ClientC_Tt0g5(v12);
    if (!v13)
    {

      goto LABEL_9;
    }

    specialized RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v13, v4);

    v14 = type metadata accessor for RREntity();
    if (__swift_getEnumTagSinglePayload(v4, 1, v14) != 1)
    {
      (*(*(v14 - 8) + 32))(a1, v4, v14);
      v20 = a1;
      v21 = 0;
      v19 = v14;
      return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
    }

    v9 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
    v10 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
    v11 = v4;
  }

  outlined destroy of Result<TemplatingResult, Error>(v11, v9, v10);
LABEL_9:
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriContacts);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26686A000, v16, v17, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v18, 2u);
    MEMORY[0x26D5E3300](v18, -1, -1);
  }

  v19 = type metadata accessor for RREntity();
  v20 = a1;
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
}

uint64_t _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE21extractPositionEntity33_41E6F657CD7DFBBA05B1CD3301A23109LL4task0A8Ontology03UsoK0CSgAH0U4TaskC_tFZAA0bC6ClientC_Tt0g5(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v20)
  {
    goto LABEL_20;
  }

  outlined init with copy of Any?(v19, v18, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v17)
    {

      v1 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      if (v1)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        __swift_project_value_buffer(v2, static Logger.siriContacts);

        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          v6 = swift_slowAlloc();
          v17 = v6;
          *v5 = 136315138;
          CodeGenBase.entity.getter();
          v7 = UsoEntity.debugString.getter();
          v9 = v8;

          v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v17);

          *(v5 + 4) = v10;
          _os_log_impl(&dword_26686A000, v3, v4, "#ReferenceResolution Found positional reference, returning: %s", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v6);
          MEMORY[0x26D5E3300](v6, -1, -1);
          MEMORY[0x26D5E3300](v5, -1, -1);
        }

        v11 = CodeGenBase.entity.getter();

        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  type metadata accessor for UsoTask_request_common_Person();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_15:

    v11 = _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE6helper33_41E6F657CD7DFBBA05B1CD3301A231096person0A8Ontology9UsoEntityCSgAH0sT14_common_PersonCSg_tFZAA0bC6ClientC_Tt0g5(v17);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    outlined destroy of Result<TemplatingResult, Error>(v19, &_sypSgMd, &_sypSgMR);
    return v11;
  }

  type metadata accessor for UsoTask_summarise_common_Person();
  if (swift_dynamicCast() || (type metadata accessor for UsoTask_read_common_Person(), swift_dynamicCast()))
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_15;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
LABEL_20:
  outlined destroy of Result<TemplatingResult, Error>(v19, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriContacts);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26686A000, v13, v14, "#ReferenceResolution Found no positional reference, returning nil", v15, 2u);
    MEMORY[0x26D5E3300](v15, -1, -1);
  }

  return 0;
}

uint64_t _s23SiriReferenceResolution27RRReferenceResolverProtocolP0A15ContactsIntentsE6helper33_41E6F657CD7DFBBA05B1CD3301A23109LL6person0A8Ontology9UsoEntityCSgAH0sT14_common_PersonCSg_tFZAA0bC6ClientC_Tt0g5(uint64_t a1)
{
  if (a1)
  {

    if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.siriContacts);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v16 = v5;
        *v4 = 136315138;
        CodeGenBase.entity.getter();
        v6 = UsoEntity.debugString.getter();
        v8 = v7;

        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v16);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v5);
        MEMORY[0x26D5E3300](v5, -1, -1);
        MEMORY[0x26D5E3300](v4, -1, -1);
      }

      v10 = CodeGenBase.entity.getter();

      return v10;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26686A000, v12, v13, "#ReferenceResolution Found no positional reference, returning nil", v14, 2u);
    MEMORY[0x26D5E3300](v14, -1, -1);
  }

  return 0;
}

void Parse.DirectInvocation.toSiriKitIntent()()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v25 = v2;
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  *(&v30 + 1) = MEMORY[0x277D837D0];
  v31 = lazy protocol witness table accessor for type String and conformance String();
  *&v29 = 0xD000000000000010;
  *(&v29 + 1) = 0x80000002669738B0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v12 = static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266966D90;
  outlined init with copy of DeviceState(&v29, v13 + 32);
  os_signpost(_:dso:log:name:signpostID:_:_:)(v12, &dword_26686A000, v11, "ToSiriKitIntent", 15, 2, v10, "Parse = %s", 0xA);

  v14 = v10 + *(v6 + 20);
  *v14 = "ToSiriKitIntent";
  *(v14 + 8) = 15;
  *(v14 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  v15 = Parse.DirectInvocation.identifier.getter();
  v17 = v16;
  OUTLINED_FUNCTION_21_11();
  v19 = v15 == 0xD000000000000026 && v18 == v17;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for ModifyContactAttributeIntent();
    (*(v25 + 16))(v5, v0, v26);
    ModifyContactAttributeIntent.__allocating_init(_:)(v5);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21_11();
  if (v15 == 0xD000000000000022 && v20 == v17)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v23 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  v24 = Parse.DirectInvocation.userData.getter();
  if (!v24)
  {
    v29 = 0u;
    v30 = 0u;
    goto LABEL_22;
  }

  specialized Dictionary.subscript.getter(0x4E746361746E6F63, 0xEB00000000656D61, v24, &v29);

  if (!*(&v30 + 1))
  {
LABEL_22:
    outlined destroy of Result<TemplatingResult, Error>(&v29, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(v27, v28, v23);
  }

LABEL_9:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v10, type metadata accessor for Signpost.OpenSignpost);
  OUTLINED_FUNCTION_14();
}

void Parse.isContactIntent.getter()
{
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v1);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v2);
  v97 = v96 - v3;
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v98 = v5;
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v96[1] = v7 - v6;
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v101 = v9;
  v102 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v100 = v11 - v10;
  v12 = OUTLINED_FUNCTION_13_8();
  v13 = type metadata accessor for ContactNLv3Intent(v12);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v105 = (v16 - v15);
  OUTLINED_FUNCTION_13_8();
  v106 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v104 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_16();
  v103 = v19;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v22 = v96 - v21;
  v23 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_43();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_18_0(v32);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v33);
  v35 = v96 - v34;
  Parse.confirmationResponse.getter();
  v36 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
  outlined destroy of Result<TemplatingResult, Error>(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_56_6();
    v38(v29, v0, v23);
    v39 = (*(v25 + 88))(v29, v23);
    if (v39 == *MEMORY[0x277D5C128])
    {
      v40 = OUTLINED_FUNCTION_47_7();
      v41(v40);
      v42 = v104;
      v43 = v106;
      (*(v104 + 32))(v22, v29, v106);
      OUTLINED_FUNCTION_56_6();
      v44 = v103;
      v45(v103, v22, v43);
      v46 = v105;
      ContactNLv3Intent.init(intent:)(v44, v105);
      ContactNLv3Intent.isContactDomain.getter();
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(v46, v47);
      (*(v42 + 8))(v22, v43);
      goto LABEL_47;
    }

    if (v39 == *MEMORY[0x277D5C150])
    {
      v48 = OUTLINED_FUNCTION_47_7();
      v49(v48);
      v51 = v100;
      v50 = v101;
      v52 = OUTLINED_FUNCTION_40_8();
      v53 = v102;
      v55 = v54(v52);
      MEMORY[0x28223BE20](v55);
      v96[-2] = v51;
      specialized Sequence.contains(where:)(partial apply for closure #1 in Parse.isContactIntent.getter, &v96[-4], &outlined read-only object #0 of static ContactsDirectInvocations.Identifiers.allCases.getter);
      (*(v50 + 8))(v51, v53);
      goto LABEL_47;
    }

    if (v39 != *MEMORY[0x277D5C160])
    {
      (*(v25 + 8))(v29, v23);
      goto LABEL_47;
    }

    v56 = OUTLINED_FUNCTION_47_7();
    v57(v56);
    v58 = OUTLINED_FUNCTION_40_8();
    v59(v58);
    v60 = v97;
    USOParse.preferredUserDialogAct.getter(v97);
    v61 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    OUTLINED_FUNCTION_57(v60, 1, v61);
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_45_3();
      v64(v63);
      v65 = outlined destroy of Result<TemplatingResult, Error>(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v67 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52();
      (*(v68 + 8))(v60, v61);
      if (v67)
      {
        static UsoTask_CodegenConverter.convert(task:)();

        v69 = OUTLINED_FUNCTION_45_3();
        v65 = v70(v69);
        goto LABEL_15;
      }

      v71 = OUTLINED_FUNCTION_45_3();
      v65 = v72(v71);
    }

    v109 = 0u;
    v110 = 0u;
LABEL_15:
    OUTLINED_FUNCTION_48_7(v65, v66, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v73 = type metadata accessor for UsoTask_summarise_common_Person();
      v74 = OUTLINED_FUNCTION_8_32(v73);
      if (v74)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v74 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v74, v75, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      common_Person = type metadata accessor for UsoTask_read_common_Person();
      v77 = OUTLINED_FUNCTION_8_32(common_Person);
      if (v77)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v77 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v77, v78, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v79 = type metadata accessor for UsoTask_request_common_Person();
      v80 = OUTLINED_FUNCTION_8_32(v79);
      if (v80)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v80 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v80, v81, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v82 = type metadata accessor for UsoTask_noVerb_common_Person();
      v83 = OUTLINED_FUNCTION_8_32(v82);
      if (v83)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v83 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v83, v84, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      updated = type metadata accessor for UsoTask_update_common_Person();
      v86 = OUTLINED_FUNCTION_8_32(updated);
      if (v86)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v86 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v86, v87, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v88 = type metadata accessor for UsoTask_create_common_Person();
      v89 = OUTLINED_FUNCTION_8_32(v88);
      if (v89)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v89 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v89, v90, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v91 = type metadata accessor for UsoTask_delete_common_Person();
      v92 = OUTLINED_FUNCTION_8_32(v91);
      if (v92)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v92 = outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    OUTLINED_FUNCTION_48_7(v92, v93, &_sypSgMd, &_sypSgMR);
    if (*(&v108 + 1))
    {
      v94 = type metadata accessor for UsoTask_checkExistence_common_Person();
      if (OUTLINED_FUNCTION_8_32(v94))
      {
LABEL_45:
        outlined destroy of Result<TemplatingResult, Error>(&v109, &_sypSgMd, &_sypSgMR);
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
    }

    v107 = v109;
    v108 = v110;
    if (!*(&v110 + 1))
    {
      outlined destroy of Result<TemplatingResult, Error>(&v107, &_sypSgMd, &_sypSgMR);
      goto LABEL_47;
    }

    v95 = type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if ((OUTLINED_FUNCTION_8_32(v95) & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_47:
  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in Parse.isContactIntent.getter(char *a1)
{
  v1 = ContactsDirectInvocations.Identifiers.rawValue.getter(*a1);
  v3 = v2;
  if (v1 == Parse.DirectInvocation.identifier.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = OUTLINED_FUNCTION_61_1();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  AnyHashable._rawHashValue(seed:)(*(v0 + 40));
  v1 = OUTLINED_FUNCTION_73();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for ContactsLabelCATContainer.LabelType();
  _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = OUTLINED_FUNCTION_73();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
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
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5E2960](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

{
  v13 = a1;
  v4 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8]);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10_1();
  v5 = OUTLINED_FUNCTION_26_3();
  v6(v5);
  return a2;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_32(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_33_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_37_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_48_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of Any?(v4 - 128, v4 - 160, a3, a4);
}

void OUTLINED_FUNCTION_74_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.phoneNumber.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.phoneNumber.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.phoneNumber.getter(v1);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.emailAddress.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.emailAddress.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.emailAddress.getter(v1);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

void protocol witness for SiriKitGetEntityIntent.siriMatches.setter in conformance GetContactIntent(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for SiriMatch();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSiriMatches_];
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.siriMatches.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.siriMatches.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.siriMatches.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(v1);
  return OUTLINED_FUNCTION_0_53();
}

void GetContactIntent.siriMatches.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for SiriMatch();

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setSiriMatches_];
  }

  else if (v3)
  {
    type metadata accessor for SiriMatch();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1[1] setSiriMatches_];
  }

  else
  {
    isa = 0;
    [a1[1] setSiriMatches_];
  }
}

void protocol witness for SiriKitGetEntityIntent.phoneNumber.setter in conformance GetContactIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v7 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

uint64_t (*protocol witness for SiriKitGetEntityIntent.contactIdentifier.modify in conformance GetContactIntent())()
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.contactIdentifier.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactIntent.contactIdentifier.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_contactIdentifier);
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_53();
}

void GetContactIntent.phoneNumber.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = a1[1];
  if (a2)
  {
    if (v5)
    {
      v6 = *a1;

      v7 = MEMORY[0x26D5E2470](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    [a1[2] *a3];
  }

  else if (v5)
  {
    v7 = MEMORY[0x26D5E2470](*a1, v5);

    [a1[2] *a3];
  }

  else
  {
    v7 = 0;
    [a1[2] *a3];
  }
}

id protocol witness for SiriKitContactIntent.isMe.getter in conformance GetContactIntent()
{
  v1 = [v0 isMe];

  return v1;
}

id GetContactIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id key path getter for GetContactIntent.isMe : GetContactIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMe];
  *a2 = result;
  return result;
}

void key path getter for GetContactIntent.firstName : GetContactIntent(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for GetContactIntent.firstName : GetContactIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = a1[1];
  v8 = *a2;
  if (v7)
  {
    v9 = MEMORY[0x26D5E2470](*a1, v7, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 *a5];
}

void key path getter for GetContactIntent.siriMatches : GetContactIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 siriMatches];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriMatch();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for GetContactIntent.siriMatches : GetContactIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriMatch();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setSiriMatches_];
}

id GetContactIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetContactIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetContactIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetContactIntent.init(coder:)(void *a1)
{
  ContactIntent = type metadata accessor for GetContactIntent();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetContactIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v5 = 0;
  }

  ContactIntent = type metadata accessor for GetContactIntent();
  v12 = OUTLINED_FUNCTION_3_34(ContactIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetContactIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id GetContactIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for GetContactIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t GetContactIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void key path getter for GetContactIntentResponse.contactIdentifiers : GetContactIntentResponse(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contactIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for GetContactIntentResponse.contactIdentifiers : GetContactIntentResponse(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setContactIdentifiers_];
}

uint64_t GetContactIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetContactIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GetContactIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GetContactIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetContactIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetContactIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetContactIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetContactIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetContactIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactIntentResponse_code) = 0;
  ContactIntentResponse = type metadata accessor for GetContactIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetContactIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactIntentResponse_code) = 0;
  ContactIntentResponse = type metadata accessor for GetContactIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetContactIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetContactIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetContactSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id GetContactSiriMatchesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id GetContactSiriMatchesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GetContactSiriMatchesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id GetContactIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactIntentResponseCode and conformance GetContactIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSiriMatchesUnsupportedReason and conformance GetContactSiriMatchesUnsupportedReason);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc GetContactIntentResponse.contactIdentifiers.getter(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void OUTLINED_FUNCTION_4_36()
{

  JUMPOUT(0x26D5E2470);
}

void (*protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactAttributeIntent())(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.phoneNumber.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.phoneNumber.modify in conformance GetContactIntent;
}

void (*protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactAttributeIntent())(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.emailAddress.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

void (*protocol witness for SiriKitGetEntityIntent.siriMatches.modify in conformance GetContactAttributeIntent())(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.siriMatches.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

void (*protocol witness for SiriKitGetEntityIntent.contactIdentifier.modify in conformance GetContactAttributeIntent())(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_51();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_1_50(v2);
  *(v0 + 32) = GetContactIntent.contactIdentifier.modify(v3);
  return protocol witness for SiriKitGetEntityIntent.emailAddress.modify in conformance GetContactIntent;
}

uint64_t GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id GetContactAttributeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id key path getter for GetContactAttributeIntent.contactAttributeToGet : GetContactAttributeIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactAttributeToGet];
  *a2 = result;
  return result;
}

void key path getter for GetContactAttributeIntent.siriMatches : GetContactAttributeIntent(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void key path setter for GetContactAttributeIntent.siriMatches : GetContactAttributeIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  isa = v8.super.isa;
  [v7 *a6];
}

id GetContactAttributeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetContactAttributeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetContactAttributeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetContactAttributeIntent.init(coder:)(void *a1)
{
  ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetContactAttributeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v5 = 0;
  }

  ContactAttributeIntent = type metadata accessor for GetContactAttributeIntent();
  v12 = OUTLINED_FUNCTION_3_34(ContactAttributeIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetContactAttributeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id GetContactAttributeIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for GetContactAttributeIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t GetContactAttributeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t GetContactAttributeIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GetContactAttributeIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetContactAttributeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetContactAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetContactAttributeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactAttributeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetContactAttributeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetContactAttributeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactAttributeIntentResponse_code) = 0;
  ContactAttributeIntentResponse = type metadata accessor for GetContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetContactAttributeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetContactAttributeIntentResponse_code) = 0;
  ContactAttributeIntentResponse = type metadata accessor for GetContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(ContactAttributeIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetContactAttributeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetContactAttributeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetContactAttributeIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetContactAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetContactAttributeSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeContactAttributeToGetUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GetContactAttributeSiriMatchesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id GetContactAttributeSiriMatchesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v8)
  {
  }

  return v8;
}

id GetContactAttributeIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeIntentResponseCode and conformance GetContactAttributeIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSiriMatchesUnsupportedReason and conformance GetContactAttributeSiriMatchesUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason;
  if (!lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeContactAttributeToGetUnsupportedReason and conformance GetContactAttributeContactAttributeToGetUnsupportedReason);
  }

  return result;
}

uint64_t ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id ModifyContactAttributeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void key path getter for ModifyContactAttributeIntent.modifyNickName : ModifyContactAttributeIntent(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_52(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void key path getter for ModifyContactAttributeIntent.relatedSiriMatches : ModifyContactAttributeIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relatedSiriMatches];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriMatch();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for ModifyContactAttributeIntent.relatedSiriMatches : ModifyContactAttributeIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriMatch();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setRelatedSiriMatches_];
}

id key path getter for ModifyContactAttributeIntent.relatedContact : ModifyContactAttributeIntent@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relatedContact];
  *a2 = result;
  return result;
}

id ModifyContactAttributeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ModifyContactAttributeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ModifyContactAttributeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ModifyContactAttributeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for ModifyContactAttributeIntent();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ModifyContactAttributeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for ModifyContactAttributeIntent();
  v12 = OUTLINED_FUNCTION_3_34(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id ModifyContactAttributeIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id ModifyContactAttributeIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for ModifyContactAttributeIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t ModifyContactAttributeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyContactAttributeIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyContactAttributeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id key path getter for ModifyContactAttributeIntentResponse.updatedRelationship : ModifyContactAttributeIntentResponse@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updatedRelationship];
  *a2 = result;
  return result;
}

uint64_t ModifyContactAttributeIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ModifyContactAttributeIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *ModifyContactAttributeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ModifyContactAttributeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ModifyContactAttributeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ModifyContactAttributeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ModifyContactAttributeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___ModifyContactAttributeIntentResponse_code) = 0;
  v13 = type metadata accessor for ModifyContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ModifyContactAttributeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___ModifyContactAttributeIntentResponse_code) = 0;
  v13 = type metadata accessor for ModifyContactAttributeIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ModifyContactAttributeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ModifyContactAttributeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ModifyContactAttributeIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ModifyContactAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

uint64_t ModifyContactAttributeRelatedSiriMatchesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyContactAttributeRelatedSiriMatchesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ModifyContactAttributeModifyNickNameResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v8)
  {
  }

  return v8;
}

id ModifyContactAttributeIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeIntentResponseCode and conformance ModifyContactAttributeIntentResponseCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeModifyNickNameUnsupportedReason and conformance ModifyContactAttributeModifyNickNameUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeModifyRelationshipUnsupportedReason and conformance ModifyContactAttributeModifyRelationshipUnsupportedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeRelatedSiriMatchesUnsupportedReason and conformance ModifyContactAttributeRelatedSiriMatchesUnsupportedReason);
  }

  return result;
}

id LearnPronunciationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LearnPronunciationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnPronunciationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LearnPronunciationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LearnPronunciationIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for LearnPronunciationIntent();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LearnPronunciationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for LearnPronunciationIntent();
  v12 = OUTLINED_FUNCTION_3_34(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id LearnPronunciationIntent.__allocating_init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v0) initWithDomain:v5 verb:v6 parametersByName:v7.super.isa];

  return v8;
}

id LearnPronunciationIntent.init(domain:verb:parametersByName:)()
{
  OUTLINED_FUNCTION_4_36();
  v5 = v4;

  v6 = MEMORY[0x26D5E2470](v1, v3);

  if (v2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for LearnPronunciationIntent();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDomain_verb_parametersByName_, v5, v6, v7.super.isa);

  return v8;
}

unint64_t LearnPronunciationIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LearnPronunciationIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LearnPronunciationIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t LearnPronunciationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LearnPronunciationIntentResponse.code.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *LearnPronunciationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LearnPronunciationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LearnPronunciationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LearnPronunciationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnPronunciationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LearnPronunciationIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___LearnPronunciationIntentResponse_code) = 0;
  v13 = type metadata accessor for LearnPronunciationIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LearnPronunciationIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___LearnPronunciationIntentResponse_code) = 0;
  v13 = type metadata accessor for LearnPronunciationIntentResponse();
  v9 = OUTLINED_FUNCTION_3_34(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LearnPronunciationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LearnPronunciationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LearnPronunciationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LearnPronunciationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id LearnPronunciationIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LearnPronunciationIntentResponseCode and conformance LearnPronunciationIntentResponseCode);
  }

  return result;
}

unint64_t ContactAttributeType.init(rawValue:)(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactAttributeType@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ContactAttributeType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static ContactAttributeTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id ContactAttributeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactAttributeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactAttributeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactAttributeTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAttributeTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ContactAttributeType and conformance ContactAttributeType()
{
  result = lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType;
  if (!lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAttributeType and conformance ContactAttributeType);
  }

  return result;
}

unint64_t ModifyOperation.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyOperation@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ModifyOperation.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ModifyOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ModifyOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ModifyOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ModifyOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifyOperation and conformance ModifyOperation()
{
  result = lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation;
  if (!lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyOperation and conformance ModifyOperation);
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return OUTLINED_FUNCTION_8_33(a1, a1);
}

{
  return OUTLINED_FUNCTION_8_33(a1, a1);
}

{
  return OUTLINED_FUNCTION_8_33(a1, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  OUTLINED_FUNCTION_7_29(a1);
  v1(v4, v2);
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_33(a1, a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1);
}

{
  OUTLINED_FUNCTION_7_29(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_0_55(v3, v4, v5);

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a1 + 1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 5:
      OUTLINED_FUNCTION_1_53();
      break;
    default:
      OUTLINED_FUNCTION_2_52();
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
    case 6:
      OUTLINED_FUNCTION_2_52();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_2_52();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, GetContactAttributeSlots.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Constants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactAttributesValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactReferenceValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLv3Intent.NLContactVerbValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, GetContactSlots.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactNLIntent.NLContactTypeValue.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_1_53();
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
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_5_41(v3, v4);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_5_41(v3, v4);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a2 + 1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0x6E61486C69616D65;
  }

  else
  {
    v5 = 0x62614C6C69616D65;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0x6E6148656E6F6870;
  }

  else
  {
    v5 = 0x62614C656E6F6870;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7961646874726962;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0x4873736572646461;
  }

  else
  {
    v5 = 0x4C73736572646461;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0x5373736572646461;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

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
  v3 = OUTLINED_FUNCTION_4_37(a1, a2);
  if (v2)
  {
    v5 = 0x656C706F6570;
  }

  else
  {
    v5 = 0x746361746E6F63;
  }

  OUTLINED_FUNCTION_6_39(v3, v5, v4);

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
  OUTLINED_FUNCTION_3_35(a1, a2);
  v2(v5, v3);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2);
}

{
  v3 = OUTLINED_FUNCTION_3_35(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_0_55(v4, v5, v6);

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
  OUTLINED_FUNCTION_3_35(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_0_55(v4, v5, v6);

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](a2);
  return Hasher._finalize()();
}

unint64_t Qualifier.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Qualifier@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Qualifier.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id QualifierResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id QualifierResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for QualifierResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id QualifierResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QualifierResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Qualifier and conformance Qualifier()
{
  result = lazy protocol witness table cache variable for type Qualifier and conformance Qualifier;
  if (!lazy protocol witness table cache variable for type Qualifier and conformance Qualifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Qualifier and conformance Qualifier);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void *OUTLINED_FUNCTION_3_35(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_4_37(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t a1, uint64_t a2)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_6_39(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void *OUTLINED_FUNCTION_7_29(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

Swift::Int OUTLINED_FUNCTION_8_33(uint64_t a1, uint64_t a2)
{

  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a2);
}

id static ContactAttributeResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static ContactAttributeResolutionResult.success(with:)(a1);
  return [(ContactAttributeResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static ContactAttributeResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

id static ContactAttributeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id key path getter for ContactAttribute.ageDateTime : ContactAttribute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ageDateTime];
  *a2 = result;
  return result;
}

id key path getter for ContactAttribute.postalAddress : ContactAttribute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 postalAddress];
  *a2 = result;
  return result;
}

id ContactAttribute.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id ContactAttribute.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContactAttribute();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id ContactAttribute.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContactAttribute.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContactAttribute();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void static ContactAttributeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695D2BCLL);
}

void static ContactAttributeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695D46CLL);
}

id ContactAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactAttribute.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id PostalAddress.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id PostalAddress.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for PostalAddress();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id PostalAddress.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PostalAddress.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PostalAddress();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static PostalAddressResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static PostalAddressResolutionResult.success(with:)(a1);
  return [(PostalAddressResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static PostalAddressResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static PostalAddressResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PostalAddressResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static PostalAddressResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695DF20);
}

void static PostalAddressResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695E0D0);
}

id PostalAddressResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id PostalAddressResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PostalAddressResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id PostalAddress.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id static SiriMatchResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static SiriMatchResolutionResult.success(with:)(a1);
  return [(SiriMatchResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static SiriMatchResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static SiriMatchResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriMatchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void key path getter for SiriMatch.fullName : SiriMatch(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 fullName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for SiriMatch.fullName : SiriMatch(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x26D5E2470](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setFullName_];
}

id SiriMatch.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id SiriMatch.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for SiriMatch();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id SiriMatch.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriMatch.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriMatch();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void static SiriMatchResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695EC6CLL);
}

void static SiriMatchResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695EE1CLL);
}

id SiriMatchResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id SiriMatchResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriMatchResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id SiriMatch.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id Contact.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id Contact.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for Contact();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

uint64_t type metadata accessor for Contact()
{
  return objc_opt_self();
}

{
  return MEMORY[0x2821B8E08]();
}

id Contact.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Contact.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Contact();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContactResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static ContactResolutionResult.success(with:)(a1);
  return [(ContactResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static ContactResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static ContactResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static ContactResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695F880);
}

void static ContactResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x26695FA30);
}

id ContactResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id Contact.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ContactRelation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id ContactRelation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContactRelation();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id ContactRelation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContactRelation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContactRelation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContactRelationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static ContactRelationResolutionResult.success(with:)(a1);
  return [(ContactRelationResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static ContactRelationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static ContactRelationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContactRelationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static ContactRelationResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x2669604C4);
}

void static ContactRelationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x266960674);
}

id ContactRelationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id ContactRelationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContactRelationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id ContactRelation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t key path getter for AgeDateTime.dateComponents : AgeDateTime@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateComponents];
  if (v3)
  {
    v4 = v3;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for DateComponents();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path setter for AgeDateTime.dateComponents : AgeDateTime(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of DateComponents?(a1, &v10 - v5);
  v7 = *a2;
  v8 = type metadata accessor for DateComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateComponents_];
}

id AgeDateTime.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v0) initWithIdentifier:v6 displayString:v7 pronunciationHint:v8];

  return v9;
}

id AgeDateTime.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_54();
  if (v5)
  {
    v6 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x26D5E2470](v1, v4);

  if (v2)
  {
    v8 = MEMORY[0x26D5E2470](v3, v2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for AgeDateTime();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_displayString_pronunciationHint_, v6, v7, v8);

  return v9;
}

id AgeDateTime.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AgeDateTime.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AgeDateTime();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static AgeDateTimeResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

{
  static AgeDateTimeResolutionResult.success(with:)(a1);
  return [(AgeDateTimeResolutionResult *)v1 successWithResolvedObject:v2, v3];
}

id static AgeDateTimeResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static AgeDateTimeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AgeDateTimeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void static AgeDateTimeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x266961274);
}

void static AgeDateTimeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = static String.EMPTY.getter();
  v3 = v2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_26686A000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  swift_beginAccess();
  v10 = static FatalError.fatalErrorClosure;

  v11 = static String.EMPTY.getter();
  (v10)(v11);
  JUMPOUT(0x266961424);
}

id AgeDateTimeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id AgeDateTimeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AgeDateTimeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);

  if (v5)
  {
  }

  return v5;
}

id AgeDateTime.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static PhonemeDataParser.parse(from:)()
{
  return MEMORY[0x2821B90F8]();
}

{
  return MEMORY[0x2821B73B8]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}