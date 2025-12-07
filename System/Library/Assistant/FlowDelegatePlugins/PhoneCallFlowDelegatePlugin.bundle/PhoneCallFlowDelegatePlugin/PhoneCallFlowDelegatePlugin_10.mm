uint64_t closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.app.getter();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  v6 = ParameterResolutionRecord.app.getter();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(a3, 0, v6, _swiftEmptyArrayStorage, &static CallStateProvider.instance);

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = type metadata accessor for ParameterIdentifier();
  v1[54] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[55] = v5;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_49_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  v1[58] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[59] = v8;
  v1[60] = OUTLINED_FUNCTION_62_4();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v71 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 416);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = *(v3 + 16);
  v7 = OUTLINED_FUNCTION_53_1();
  v6(v7);
  (v6)(v1, v4, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  v11 = *(v0 + 488);
  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  if (v10)
  {
    v67 = v6;
    v14 = *(v0 + 456);
    v15 = *(v0 + 440);
    v68 = *(v0 + 432);
    v16 = OUTLINED_FUNCTION_36();
    v66 = swift_slowAlloc();
    v70 = v66;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000000004591D0, &v70);
    *(v16 + 12) = 2080;
    log = v8;
    ParameterResolutionRecord.parameter.getter();
    v17 = ParameterIdentifier.name.getter();
    v64 = v1;
    v63 = *(v15 + 8);
    v63(v14, v68);
    v18 = *(v12 + 8);
    v19 = OUTLINED_FUNCTION_36_2();
    v18(v19);
    v20 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v22);
    OUTLINED_FUNCTION_40_0();

    *(v16 + 14) = v17;
    *(v16 + 22) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v23 = ParameterIdentifier.multicardinalIndex.getter();
    v25 = v24;
    v26 = v14;
    v6 = v67;
    v63(v26, v68);
    *(v0 + 392) = v23;
    *(v0 + 400) = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v27 = String.init<A>(describing:)();
    v69 = v18;
    (v18)(v11, v13);
    v28 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v30);
    OUTLINED_FUNCTION_40_0();

    *(v16 + 24) = v27;
    _os_log_impl(&dword_0, log, v64, "#CallingIntentNeedsValueFlowStrategy %s parameter={ %s, %s }", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v66);
    OUTLINED_FUNCTION_26_0(v16);
  }

  else
  {

    v31 = *(v12 + 8);
    v31(v11, v13);
    v32 = OUTLINED_FUNCTION_36_2();
    v69 = v31;
    (v31)(v32);
  }

  v33 = *(v0 + 424);
  v34 = *(v33 + 48);
  __swift_project_boxed_opaque_existential_1((v33 + 24), v34);
  v35 = OUTLINED_FUNCTION_92();
  v36(v35);
  OUTLINED_FUNCTION_40_9();
  (*(v37 + 224))();

  if (*(v0 + 256))
  {
    outlined init with copy of PhoneCallNLIntent?(v0 + 272, v0 + 312, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v0 + 224);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 224, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0;
  }

  outlined init with copy of PhoneCallNLIntent?(v0 + 312, v0 + 352, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!*(v0 + 376))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 352, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    goto LABEL_19;
  }

  if (!*(v0 + 120))
  {
LABEL_19:
    outlined destroy of PhoneCallNLIntent?(v0 + 120, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    goto LABEL_20;
  }

  memcpy((v0 + 16), (v0 + 120), 0x68uLL);
  if (PhoneCallNLv4Intent.isCallLabelOnly()())
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v40);
      _os_log_impl(&dword_0, v38, v39, "#CallingIntentNeedsValueFlowStrategy - redirected here from Needs DisambiguationFlowStrategy missing label loop, so setting startOver to true.", v34, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    OUTLINED_FUNCTION_2_0();
    (*(v41 + 336))(1);
  }

  outlined destroy of PhoneCallNLv4Intent(v0 + 16);
LABEL_20:
  v42 = ParameterResolutionRecord.result.getter();
  v43 = [v42 unsupportedReason];

  if (v43)
  {
    v44 = ParameterResolutionRecord.result.getter();
    v45 = [v44 alternatives];

    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = *(v46 + 16);

    if (!v47)
    {
      (v6)(*(v0 + 480), *(v0 + 416), *(v0 + 464));
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_42();
        *v50 = 134217984;
        v51 = ParameterResolutionRecord.result.getter();
        v52 = [v51 unsupportedReason];

        v53 = OUTLINED_FUNCTION_53_1();
        v69(v53);
        *(v50 + 4) = v52;
        OUTLINED_FUNCTION_26_0(v50);
      }

      else
      {
        v54 = OUTLINED_FUNCTION_53_1();
        v69(v54);
      }

      v55 = *(v0 + 424);

      *(v55 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 1;
    }
  }

  *(v0 + 504) = ParameterResolutionRecord.app.getter();
  *(v0 + 512) = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  *(v0 + 520) = v56;
  v57 = OUTLINED_FUNCTION_33_4();
  v58(v57);
  *(v0 + 528) = ParameterResolutionRecord.result.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 536) = v59;
  *v59 = v60;
  v59[1] = CallingIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  OUTLINED_FUNCTION_42_5();

  return CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 544) = v0;

  v5 = *(v2 + 528);
  v6 = *(v2 + 512);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  outlined destroy of PhoneCallNLIntent?(v0 + 312, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();
  outlined destroy of PhoneCallNLIntent?(v0 + 312, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)()
{
  OUTLINED_FUNCTION_15();
  v1[73] = v0;
  v1[72] = v2;
  v1[71] = v3;
  v1[70] = v4;
  v1[69] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[74] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Locale();
  v1[75] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[76] = v8;
  v1[77] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v1[78] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v10);
  v1[79] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
  OUTLINED_FUNCTION_21(v11);
  v1[80] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for PhoneError(0);
  v1[81] = v12;
  OUTLINED_FUNCTION_21(v12);
  v1[82] = OUTLINED_FUNCTION_62_4();
  v1[83] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 688) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 712) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v140 = v20;
  *(v20 + 544) = *(v20 + 560);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v45 = *(v20 + 640);
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    outlined destroy of PhoneCallNLIntent?(v45, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v50, static Logger.siriPhone);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v52))
    {
      v53 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v53);
      OUTLINED_FUNCTION_14_1(&dword_0, v54, v55, "#CallingIntentNeedsValueFlowStrategy failed to cast error as phoneError. Rethrow error.");
      OUTLINED_FUNCTION_12_3();
    }

    swift_willThrow();
LABEL_28:
    swift_errorRetain();
    OUTLINED_FUNCTION_2_34();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_72_1();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v20 + 664);
  v22 = *(v20 + 648);
  v23 = *(v20 + 640);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
  outlined init with take of PhoneError(v23, v21);
  v27 = OUTLINED_FUNCTION_0();
  outlined init with copy of PhoneError(v27, v28);
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    if (EnumCaseMultiPayload == 17)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v30 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v32))
      {
        v33 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v33);
        OUTLINED_FUNCTION_14_1(&dword_0, v34, v35, "#CallingIntentNeedsValueFlowStrategy Returning unsupported device for Group FaceTime");
        OUTLINED_FUNCTION_12_3();
      }

      v36 = *(v20 + 584);

      outlined init with copy of SignalProviding(v36 + 24, v20 + 456);
      v37 = type metadata accessor for StartCallCATs(0);
      OUTLINED_FUNCTION_81_0(v37);
      OUTLINED_FUNCTION_54_9();
      CATWrapper.__allocating_init(options:globals:)();
      v38 = type metadata accessor for StartCallCATsSimple(0);
      OUTLINED_FUNCTION_81_0(v38);
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      v39 = type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
      OUTLINED_FUNCTION_81_0(v39);
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      v40 = type metadata accessor for UnsupportedFlowCATsSimple(0);
      OUTLINED_FUNCTION_81_0(v40);
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFaceTimeOutputProvider();
      swift_allocObject();
      *(v20 + 672) = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
      OUTLINED_FUNCTION_40_9();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v20 + 680) = v41;
      *v41 = v42;
      v41[1] = CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:);
      OUTLINED_FUNCTION_72_1();

      __asm { BRAA            X1, X16 }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v116 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v116, static Logger.siriPhone);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v118))
    {
      v119 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v119);
      OUTLINED_FUNCTION_14_1(&dword_0, v120, v121, "#CallingIntentNeedsValueFlowStrategy Missing specific error response. Throwing error for platform to provide generic error dialog.");
      OUTLINED_FUNCTION_12_3();
    }

    v122 = *(v20 + 664);
    v123 = *(v20 + 656);

    swift_willThrow();
    outlined destroy of PhoneError(v122);
    outlined destroy of PhoneError(v123);
    goto LABEL_28;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v56 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v56, static Logger.siriPhone);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v58))
  {
    v59 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v59);
    OUTLINED_FUNCTION_14_1(&dword_0, v60, v61, "#CallingIntentNeedsValueFlowStrategy Returning unsupported emergency contact call");
    OUTLINED_FUNCTION_12_3();
  }

  v129 = *(v20 + 616);
  v130 = *(v20 + 608);
  v131 = *(v20 + 600);
  v62 = *(v20 + 584);
  v138 = *(v20 + 576);
  v133 = *(v20 + 568);

  outlined init with copy of SignalProviding(v62 + 24, v20 + 16);
  v63 = type metadata accessor for UnsupportedFlowCATs(0);
  OUTLINED_FUNCTION_57_6(v63);
  OUTLINED_FUNCTION_34_4();
  v137 = CATWrapper.__allocating_init(options:globals:)();
  v64 = type metadata accessor for SearchCallHistoryCATs(0);
  OUTLINED_FUNCTION_57_6(v64);
  OUTLINED_FUNCTION_34_4();
  v135 = CATWrapper.__allocating_init(options:globals:)();
  v65 = type metadata accessor for UnsupportedFlowCATsSimple(0);
  OUTLINED_FUNCTION_57_6(v65);
  OUTLINED_FUNCTION_34_4();
  v136 = CATWrapperSimple.__allocating_init(options:globals:)();
  v66 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v67 = ResponseFactory.init()();
  v127 = type metadata accessor for AppInfoBuilder();
  v68 = OUTLINED_FUNCTION_79(v127);
  v69 = type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  OUTLINED_FUNCTION_57_6(v69);
  OUTLINED_FUNCTION_34_4();
  v132 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedCallFlowOutputFactory(0);
  v70 = swift_allocObject();
  *(v20 + 696) = v70;
  *(v20 + 80) = v66;
  *(v20 + 88) = &protocol witness table for ResponseFactory;
  *(v20 + 56) = v67;
  *(v20 + 120) = &type metadata for LabelTemplatesProvider;
  *(v20 + 128) = &protocol witness table for LabelTemplatesProvider;
  v71 = swift_allocObject();
  *(v20 + 96) = v71;
  *(v71 + 16) = 0u;
  *(v71 + 32) = 0u;
  *(v20 + 160) = v127;
  *(v20 + 168) = &protocol witness table for AppInfoBuilder;
  *(v20 + 136) = v68;
  v72 = v138;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(v70 + 24) = 10;
  *(v70 + 32) = v137;
  *(v70 + 40) = v136;
  *(v70 + 16) = v135;
  outlined init with copy of SignalProviding(v20 + 56, v70 + 48);
  outlined init with copy of SignalProviding(v20 + 16, v70 + 88);
  *(v70 + 128) = v133;
  outlined init with copy of SignalProviding(v20 + 16, v20 + 216);
  outlined init with copy of SignalProviding(v20 + 96, v20 + 256);
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  OUTLINED_FUNCTION_40_0();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_34_4();
  v73 = CATWrapper.__allocating_init(options:globals:)();
  v74 = type metadata accessor for PhoneCallCommonCATs(0);
  OUTLINED_FUNCTION_57_6(v74);
  OUTLINED_FUNCTION_34_4();
  v75 = CATWrapper.__allocating_init(options:globals:)();
  v76 = OUTLINED_FUNCTION_79(v127);
  v77 = type metadata accessor for StartCallCATs(0);
  OUTLINED_FUNCTION_57_6(v77);
  OUTLINED_FUNCTION_34_4();
  v134 = CATWrapper.__allocating_init(options:globals:)();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMR);
  v78 = swift_allocObject();
  *(v20 + 320) = v127;
  *(v20 + 328) = &protocol witness table for AppInfoBuilder;
  *(v20 + 296) = v76;
  v79 = (v78 + *(*v78 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v79 = 0x3D65737561705C1BLL;
  v79[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_40_9();
  v83 = v82 + *(v81 + v80 + 56);
  *v83 = 0u;
  *(v83 + 16) = 0u;
  *(v83 + 32) = 0;
  OUTLINED_FUNCTION_40_9();
  outlined init with copy of SignalProviding(v20 + 216, v78 + *(v85 + v84 + 72));
  v86 = *(v20 + 248);
  __swift_project_boxed_opaque_existential_1((v20 + 216), *(v20 + 240));
  v87 = OUTLINED_FUNCTION_40_0();
  v88(v87, v86);
  OUTLINED_FUNCTION_70_0();
  v90 = *(v89 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation((v20 + 336), v78 + v90);
  OUTLINED_FUNCTION_70_0();
  *(v78 + *(v91 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v73;
  OUTLINED_FUNCTION_70_0();
  *(v78 + *(v93 + v92 + 32)) = v75;
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v20 + 296, v78 + *(v95 + v94 + 48));
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v20 + 256, v78 + *(v96 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_70_0();
  *(v78 + *(v97 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v134;
  outlined init with copy of SignalProviding(v78 + v90, v20 + 376);
  __swift_project_boxed_opaque_existential_1((v20 + 376), *(v20 + 400));

  dispatch thunk of DeviceState.siriLocale.getter();
  *(v20 + 496) = Locale.identifier.getter();
  *(v20 + 504) = v98;
  *(v20 + 512) = 45;
  *(v20 + 520) = 0xE100000000000000;
  *(v20 + 528) = 95;
  *(v20 + 536) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v130 + 8))(v129, v131);

  type metadata accessor for INIntentSlotValueType(0);
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v99 = *(v20 + 240);
  v100 = *(v20 + 248);
  __swift_project_boxed_opaque_existential_1((v20 + 216), v99);
  (*(v100 + 24))(v139, v99, v100);
  outlined init with copy of SignalProviding(v78 + v90, v20 + 416);
  type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  v105 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1((v20 + 256));
  __swift_destroy_boxed_opaque_existential_1((v20 + 296));
  __swift_destroy_boxed_opaque_existential_1((v20 + 376));
  __swift_destroy_boxed_opaque_existential_1((v20 + 216));
  *(v20 + 200) = v128;
  *(v20 + 208) = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  *(v20 + 176) = v105;
  __swift_destroy_boxed_opaque_existential_1((v20 + 16));
  __swift_destroy_boxed_opaque_existential_1((v20 + 96));
  __swift_destroy_boxed_opaque_existential_1((v20 + 56));
  outlined init with take of SPHConversation((v20 + 176), v70 + 136);
  *(v70 + 176) = v138;
  outlined init with take of SPHConversation((v20 + 136), v70 + 192);
  *(v70 + 184) = v132;
  v106 = swift_task_alloc();
  *(v20 + 704) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  *v106 = v20;
  v106[1] = CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_72_1();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 664);
  OUTLINED_FUNCTION_2_34();

  outlined destroy of PhoneError(v11);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 664);
  OUTLINED_FUNCTION_2_34();

  outlined destroy of PhoneError(v11);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 664);

  outlined destroy of PhoneError(v11);
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 664);

  outlined destroy of PhoneError(v11);
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  (*(*a2 + 184))(partial apply for closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:), v10);
}

uint64_t closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1)
{
  outlined init with copy of PhoneCallNLIntent?(a1, v3, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of SPHConversation(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = type metadata accessor for ParameterIdentifier();
  v1[6] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v8 = v0[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  v0[9] = ParameterResolutionRecord.app.getter();
  v0[10] = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v0[11] = v4;
  (*(v2 + 8))(v1, v8);
  v0[12] = ParameterResolutionRecord.result.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v5;
  *v5 = v6;
  v5[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:);

  return CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 112) = v10;

  v15 = *(v12 + 96);
  v16 = *(v12 + 80);
  if (v10)
  {

    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v17, v18, v19);
  }

  else
  {

    OUTLINED_FUNCTION_60();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }
}

id CallingIntentNeedsValueFlowStrategy.mergePreviousIntentIntoCurrentOne(previousIntent:callingIntent:)(void *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = AssociatedConformanceWitness[4];
  v4 = swift_checkMetadataState();
  v5 = (v3)(v4, AssociatedConformanceWitness);
  v6 = OUTLINED_FUNCTION_20_0();
  v7 = &dword_54B000;
  if (v5 != (v3)(v6))
  {
    v8 = OUTLINED_FUNCTION_20_0();
    if (!(v3)(v8))
    {
      v9 = OUTLINED_FUNCTION_20_0();
      v3(v9);
      OUTLINED_FUNCTION_47_10();
      v10();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
      v12 = a1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_42();
        *v15 = 134217984;
        v16 = OUTLINED_FUNCTION_20_0();
        *(v15 + 4) = (v3)(v16);

        _os_log_impl(&dword_0, v13, v14, "#CallingIntentNeedsValueFlowStrategy updated audio route to %ld from previous intent", v15, 0xCu);
        v17 = v15;
        v7 = &dword_54B000;
        OUTLINED_FUNCTION_26_0(v17);
      }

      else
      {

        v13 = v12;
      }
    }
  }

  v18 = AssociatedConformanceWitness[3];
  v19 = OUTLINED_FUNCTION_20_0();
  v20 = v18(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  if (v20 != v18(v21))
  {
    v22 = OUTLINED_FUNCTION_20_0();
    if (!v18(v22))
    {
      v23 = OUTLINED_FUNCTION_20_0();
      v18(v23);
      OUTLINED_FUNCTION_47_10();
      v24();
      v35 = *(*(AssociatedConformanceWitness[1] + 16) + 8);
      v36 = *(AssociatedConformanceWitness[1] + 16);
      v35(v4);
      OUTLINED_FUNCTION_47_10();
      v25();
      if (*(v7 + 369) != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
      v27 = a1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_86_1();
        *v30 = 134218240;
        v31 = OUTLINED_FUNCTION_20_0();
        *(v30 + 4) = v18(v31);
        *(v30 + 12) = 2048;
        *(v30 + 14) = (v35)(v4, v36);

        _os_log_impl(&dword_0, v28, v29, "#CallingIntentNeedsValueFlowStrategy updated callCapability to:%ld and PreferredCallProvider to: %ld from previous intent", v30, 0x16u);
        OUTLINED_FUNCTION_26_0(v30);
      }

      else
      {

        v28 = v27;
      }
    }
  }

  OUTLINED_FUNCTION_49_6();

  return v32;
}

void CallingIntentNeedsValueFlowStrategy.updateContactsInIntent(callingIntent:contacts:multicardinalIndex:)(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  swift_getObjectType();
  v10 = *(*(a2 + 8) + 8);
  v11 = *(v10 + 8);
  v12 = v11();
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  if (!specialized Array.count.getter(v12))
  {
    OUTLINED_FUNCTION_49_6();

    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v14 = *(v13 + 32);
  }

  v41 = v14;

  if (a5)
  {
    a4 = 0;
  }

  v15 = &dword_54B000;
  if (!a3 || !specialized Array.count.getter(a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_426260;
    *(v25 + 32) = v41;
    v26 = *(v10 + 16);
    v27 = v41;
    v28 = OUTLINED_FUNCTION_65_4();
    v26(v28);
    goto LABEL_18;
  }

  v42 = a3;
  v16 = one-time initialization token for siriPhone;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_42();
    *v20 = 134217984;
    *(v20 + 4) = a4;
    _os_log_impl(&dword_0, v18, v19, "#CallingIntentNeedsValueFlowStrategy updating contact at multicardinalValueIndex : %ld", v20, 0xCu);
    v21 = v20;
    v15 = &dword_54B000;
    OUTLINED_FUNCTION_26_0(v21);
  }

  specialized Array._checkIndex(_:)();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (specialized Array.count.getter(a3) < a4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (__OFADD__(specialized Array.count.getter(a3), 1))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v22 = v41;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a4, a4, 1, v22);
  v23 = OUTLINED_FUNCTION_65_4();
  v24(v23);
LABEL_18:

  if (*(v15 + 369) != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_42();
    v34 = OUTLINED_FUNCTION_36();
    v42 = v34;
    *v33 = 136315138;
    v35 = OUTLINED_FUNCTION_55();
    (v11)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v36 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v42);
    OUTLINED_FUNCTION_40_0();

    *(v33 + 4) = v30;
    _os_log_impl(&dword_0, v31, v32, "#CallingIntentNeedsValueFlowStrategy updated contacts: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_26_0(v34);
    OUTLINED_FUNCTION_26_0(v33);

LABEL_22:
    OUTLINED_FUNCTION_49_6();
    return;
  }

  OUTLINED_FUNCTION_49_6();
}

void CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)()
{
  OUTLINED_FUNCTION_66();
  v49 = v1;
  v50 = v0;
  type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_49_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.intent.getter();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = (*(*(v5 + 8) + 8))(AssociatedTypeWitness);

  ParameterResolutionRecord.parameter.getter();
  v7 = ParameterIdentifier.multicardinalIndex.getter();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_63();
  v11(v10);
  CallingIntentNeedsValueFlowStrategy.updateContactsInIntent(callingIntent:contacts:multicardinalIndex:)(v50, v49, v6, v7, v9 & 1);

  v12 = ParameterResolutionRecord.intent.getter();
  v13 = *(v5 + 16);
  v14 = *(v13 + 8);
  v48 = AssociatedTypeWitness;
  v15 = OUTLINED_FUNCTION_33_4();
  v16 = v14(v15);

  if (v16 == 1)
  {
    goto LABEL_31;
  }

  ObjectType = swift_getObjectType();
  v18 = *(*(v49 + 8) + 16);
  v19 = *(v18 + 8);
  if (v19(ObjectType, v18) != 1)
  {
    goto LABEL_31;
  }

  if (!v19(ObjectType, v18))
  {
    v45 = 0x4E574F4E4B4E55;
    v22 = 0xE700000000000000;
    goto LABEL_14;
  }

  v20 = INPreferredCallProviderGetBackingType();
  if (v20 == 4)
  {
    v21 = @"THIRD_PARTY_PROVIDER";
    v24 = @"THIRD_PARTY_PROVIDER";
  }

  else
  {
    if (v20 == 3)
    {
      v21 = @"FACETIME_PROVIDER";
    }

    else
    {
      if (v20 != 2)
      {
        v21 = [NSString stringWithFormat:@"(unknown: %i)", v20];
        goto LABEL_13;
      }

      v21 = @"TELEPHONY_PROVIDER";
    }

    v23 = v21;
  }

LABEL_13:
  v25 = v21;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v26;

LABEL_14:
  v27 = ParameterResolutionRecord.intent.getter();
  v28 = (v14)(v48, v13);

  if (v28)
  {
    v29 = INPreferredCallProviderGetBackingType();
    switch(v29)
    {
      case 4:
        v30 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v30 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v30 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v30 = [NSString stringWithFormat:@"(unknown: %i)", v29];
        goto LABEL_24;
    }

    v32 = v30;
LABEL_24:
    v33 = v30;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v34;

    goto LABEL_25;
  }

  v46 = 0x4E574F4E4B4E55;
  v31 = 0xE700000000000000;
LABEL_25:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v47 = ObjectType;
  v35 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v14;
    v39 = OUTLINED_FUNCTION_86_1();
    v51 = swift_slowAlloc();
    *v39 = 136315394;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v22, &v51);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v31, &v51);

    *(v39 + 14) = v41;
    _os_log_impl(&dword_0, v36, v37, "#CallingIntentNeedsValueFlowStrategy override preferredCallProvider from %s to %s since we don't support change preferredCallProvider from non-default to default", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_3();
    v42 = v39;
    v14 = v38;
    OUTLINED_FUNCTION_26_0(v42);
  }

  else
  {
  }

  v43 = ParameterResolutionRecord.intent.getter();
  v44 = (v14)(v48, v13);

  (*(v49 + 128))(v44, v47, v49);
LABEL_31:
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.executeCRR(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t CallingIntentNeedsValueFlowStrategy.executeCRR(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_2();
  swift_getAssociatedConformanceWitness();
  CallingIntentNeedsValueFlowStrategy.executeCRRDeprecated(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)();
  OUTLINED_FUNCTION_11();
  v6 = v2;
  v3 = v1;
  v4 = *(v0 + 16);

  return v6(v4);
}

void CallingIntentNeedsValueFlowStrategy.executeCRRDeprecated(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v87 = v7;
  v88 = v6;
  v9 = v8;
  v10 = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  v83 = v23;
  v86 = v5;
  if (v3)
  {
    v80 = type metadata accessor for ContactResolution();
    OUTLINED_FUNCTION_43_9();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_89(AssociatedTypeWitness);
    v78 = ParameterResolutionRecord.app.getter();
    v25 = v1;
    v27 = v1[6];
    v26 = v1[7];
    __swift_project_boxed_opaque_existential_1(v25 + 3, v27);
    (*(v26 + 8))(v90, v27, v26);
    __swift_project_boxed_opaque_existential_1(v90, v91);
    OUTLINED_FUNCTION_26_4();
    dispatch thunk of DeviceState.siriLocale.getter();
    ParameterResolutionRecord.parameter.getter();
    v28 = ParameterIdentifier.multicardinalIndex.getter();
    LOBYTE(v26) = v29;
    (*(v12 + 8))(v16, v10);
    ObjectType = swift_getObjectType();
    specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v9, v87, v78, v22, (v25 + 3), v28, v26 & 1, v80, ObjectType, v88, v66, v67, v69, v71, v73, v76, v78, v80, v9, v83, v86, v87);

    (*(v18 + 8))(v22, v84);
LABEL_6:
    v47 = v90;
    goto LABEL_7;
  }

  v72 = v21 - v20;
  v74 = v18;
  v77 = v16;
  v79 = v12;
  v81 = v10;
  v30 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v31 = OUTLINED_FUNCTION_26_4();
  v32(v31);
  OUTLINED_FUNCTION_40_9();
  v34 = (*(v33 + 232))();

  if ((v34 & 1) == 0)
  {
    v70 = type metadata accessor for ContactResolution();
    v68 = swift_getObjectType();
    v48 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v50 = OUTLINED_FUNCTION_26_4();
    v52 = v51(v50);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    OUTLINED_FUNCTION_43_3();
    HIDWORD(v66) = PhoneCallNLIntent.isEmergencyContactCall()();
    OUTLINED_FUNCTION_43_9();
    v53 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_89(v53);
    v54 = ParameterResolutionRecord.app.getter();
    __swift_project_boxed_opaque_existential_1(v30 + 3, v30[6]);
    v55 = OUTLINED_FUNCTION_25_0();
    v56(v55);
    __swift_project_boxed_opaque_existential_1(v90, v91);
    v57 = v72;
    OUTLINED_FUNCTION_25_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    ParameterResolutionRecord.parameter.getter();
    v58 = ParameterIdentifier.multicardinalIndex.getter();
    v60 = v59;
    (*(v79 + 8))(v16, v81);
    static SiriKitEventSender.current.getter();
    v61 = type metadata accessor for EmergencyContactResolution();
    v62 = OUTLINED_FUNCTION_79(v61);
    LOBYTE(v63) = v60 & 1;
    specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v9, v52, BYTE4(v66) & 1, v54, v72, v87, (v30 + 3), v58, v63, v89, v62, v70, v68, *(v88 + 8), v66, v68, v70, v72, v74, v16, v79, v81, v9, v83, v86, v87);

    __swift_destroy_boxed_opaque_existential_1(v89);
    (*(v75 + 8))(v57, v85);
    goto LABEL_6;
  }

  v35 = v9;
  v36 = swift_getObjectType();
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v37 = OUTLINED_FUNCTION_26_4();
  v39 = v38(v37);
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  OUTLINED_FUNCTION_43_3();
  LODWORD(v83) = PhoneCallNLIntent.isEmergencyContactCall()();
  OUTLINED_FUNCTION_43_9();
  v40 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(v40);
  v41 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v42 = ParameterIdentifier.multicardinalIndex.getter();
  v44 = v43;
  (*(v79 + 8))(v77, v81);
  static SiriKitEventSender.current.getter();
  v45 = type metadata accessor for EmergencyContactResolution();
  v46 = OUTLINED_FUNCTION_79(v45);
  v89[3] = type metadata accessor for ContactGroupResolver();
  v89[4] = &protocol witness table for ContactGroupResolver;
  __swift_allocate_boxed_opaque_existential_1(v89);
  ContactGroupResolver.init()();
  specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(v35, v39, v83 & 1, v41, v87, (v30 + 3), v42, v44 & 1, v90, v46, v89, v36, *(v88 + 8), v65, v66, v67, v69, v72, v74, v77, v79, v81, v82, v83, v86);

  __swift_destroy_boxed_opaque_existential_1(v90);
  v47 = v89;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[14] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v8);
  v1[15] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for NLContextUpdate();
  v1[19] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for Locale();
  v1[22] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[23] = v14;
  v1[24] = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v15);
  v1[25] = OUTLINED_FUNCTION_62_4();
  v1[26] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v16, v17, v18);
}

{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55();
  v1 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v2 = *(v1 + 8);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, v1);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  if (!App.isFirstParty()())
  {
    v30 = v5;
    v31 = v4;
    v9 = v0[23];
    v10 = v0[24];
    v29 = v0[22];
    __swift_project_boxed_opaque_existential_1((v0[12] + 304), *(v0[12] + 328));
    OUTLINED_FUNCTION_2_0();
    (*(v11 + 208))();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_40_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    v12 = OUTLINED_FUNCTION_33_4();
    v13(v12);
    v15 = v14;
    (*(v9 + 8))(v10, v29);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v15)
    {
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v18 = v0[25];
    v17 = v0[26];
    outlined destroy of PhoneCallNLIntent?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_storeEnumTagSinglePayload(v18, v16, 1, v30);
    outlined init with take of SpeakableString?(v18, v17);
    v4 = v31;
  }

  v19 = v4 == 2;
  v20 = v0[12];
  v21 = v20[14];
  OUTLINED_FUNCTION_2_0();
  v23 = (*(v22 + 304))();
  v24 = (*(*v20 + 328))();
  v25 = *(v20 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp);
  v32 = (*(*v21 + class metadata base offset for StartCallCATsSimple + 672) + **(*v21 + class metadata base offset for StartCallCATsSimple + 672));
  v26 = swift_task_alloc();
  v0[27] = v26;
  *v26 = v0;
  v26[1] = CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:);
  v27 = v0[26];

  return v32(v27, v19, *&v23, 0, v24 & 1, v25);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 232);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(*(v0 + 80), *(v0 + 88));
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v3 + 16))(v5, v2, v4);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  OutputGenerationManifest.nlContextUpdate.setter();
  __swift_project_boxed_opaque_existential_1((v6 + 184), *(v6 + 208));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v0 + 240) = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v1;
  v11 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 248) = v12;
  *v12 = v13;
  v12[1] = CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:);
  OUTLINED_FUNCTION_69_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = *(v0 + 208);

  v2 = OUTLINED_FUNCTION_36_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_33_4();
  v5(v4);
  outlined destroy of PhoneCallNLIntent?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  outlined destroy of PhoneCallNLIntent?(*(v10 + 208), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[6] = v7;
  v1[13] = *v0;
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[14] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 152) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[19];
  v2 = v0[12];
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
  v3 = OUTLINED_FUNCTION_54_9();
  v4(v3);
  __swift_project_boxed_opaque_existential_1((v2 + 184), *(v2 + 208));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v1;
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v7;
  *v7 = v8;
  v7[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);
  OUTLINED_FUNCTION_69_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_0();
  v2(v1);

  OUTLINED_FUNCTION_8_1();

  return v3();
}

uint64_t (*CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)())(void *, void)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  result = (*(v1 + 320))(v0 + 2);
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[12];
    ++*v3;
    v5 = result(v0 + 2, 0);
    if ((*(*v4 + 304))(v5) > 2)
    {
      OUTLINED_FUNCTION_2_0();
      v10 = (*(v8 + class metadata base offset for StartCallCATsSimple + 464) + **(v8 + class metadata base offset for StartCallCATsSimple + 464));
      v9 = swift_task_alloc();
      v0[18] = v9;
      *v9 = v0;
      v9[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);

      return v10();
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[17] = v6;
      *v6 = v7;
      v6[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);

      return CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)();
    }
  }

  return result;
}

void *CallingIntentNeedsValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount) = 0;
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver) = 0;
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 0;
  outlined init with copy of SignalProviding(a3, v26);
  outlined init with copy of SignalProviding(a7, v25);
  outlined init with copy of SignalProviding(a9, v24);
  outlined init with copy of SignalProviding(a10, v23);
  outlined init with copy of SignalProviding(a11, v22);
  v17 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v26, a4, a5, a6, v25, a8, v24, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 384) + **(**v3 + 384));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 392) + **(**v2 + 392));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentNeedsValueFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 408) + **(**v2 + 408));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for CallingIntentNeedsValueFlowStrategy(0, *(a5 + 264), *(a5 + 272), v14);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 400) + **(**v5 + 400));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4, a5);
}

uint64_t partial apply for closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_13_2(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(a1, v1 + v11, v12, v3, v4);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for INPerson();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)()
{
  OUTLINED_FUNCTION_66();
  v11 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_22;
  }

  v0 = v10;
  v4 = v9;
  v3 = v8;
  v12 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v2 = &v1[v7 + 4];
  type metadata accessor for INPerson();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v6 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v1[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v5[v3], v15 - v3, (v2 + 8 * v4));
  if (v6)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = v1[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v1[2] = v13 + v11;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_65();

    return;
  }

  __chkstk_darwin(v13);
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So8INPersonC_ytTg5075_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So8I7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(v0, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    goto LABEL_17;
  }

  if (*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)) == v4)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    OUTLINED_FUNCTION_65();
    return;
  }

  __break(1u);
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for INPerson();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So8INPersonC_ytTg5075_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So8I7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2((AssociatedObject + 4), v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);

  return closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(a1);
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, int a2, uint64_t a3, void *a4, id a5, uint64_t *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = *a6;
  v15 = [a5 disambiguationItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);

  v18 = &selRef_alternatives;
  if (v17)
  {
    v18 = &selRef_disambiguationItems;
  }

  v19 = [a5 *v18];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  if ((PhoneCallSlotNames.init(rawValue:)(v21).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v26 = v59;
      v25 = a10;
      if (os_log_type_enabled(v23, v24))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v23, v24, "#CallingIntentRCHFlowDelegate Building contacts disambiguation list", v27, 2u);
        OUTLINED_FUNCTION_26_0(v27);
      }

      v28 = specialized _arrayConditionalCast<A, B>(_:)(v20);

      v20 = (v28 ? v28 : _swiftEmptyArrayStorage);
      v29 = *(v59 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = (*(*(*(AssociatedConformanceWitness + 8) + 8) + 8))(v29);
      v57 = a8;
      if (!v31)
      {
        break;
      }

      v33 = v31;
      if (!specialized Array.count.getter(v31))
      {

        break;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v33 & 0xC000000000000001) == 0, v33);
      if ((v33 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v33 + 32);
      }

      v35 = v34;

      v36 = [v35 relationship];

      if (!v36)
      {
        break;
      }

      v37 = specialized Array.count.getter(v20);
      v38 = 0;
      a8 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v37 == v38)
        {

          v26 = v59;
          v25 = a10;
          goto LABEL_32;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_39;
          }

          v39 = *(v20 + 8 * v38 + 32);
        }

        v40 = v39;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        [v39 setRelationship:v36];

        ++v38;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

LABEL_32:
    v72 = type metadata accessor for PhoneCallBaseCatTemplatingService(0, v29, *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 8), v32);
    v73 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v71 = a6;

    v47 = App.appIdentifier.getter();
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0;
    }

    v50 = 0xE000000000000000;
    if (v48)
    {
      v50 = v48;
    }

    v60 = v50;
    v61 = v49;
    v70 = v58;
    v51 = *(*(v25 + 8) + 8);
    v52 = *(v51 + 8);
    v52(v67, a9, v51);
    v53 = v68;
    v54 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v54 + 184))(v78, v53, v54);
    v66 = v58;
    v52(v63, a9, v51);
    v55 = v64;
    v56 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v56 + 8))(v79, v55, v56);
    v74[0] = v20;
    v74[1] = v20;
    outlined init with take of SPHConversation(&v71, &v80);
    v75 = 1;
    v76 = v61;
    v77 = v60;

    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v67);
    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a7, v57);
    return outlined destroy of PhoneContactDisambiguationItemFactory(v74);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v74[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v74);
      _os_log_impl(&dword_0, v42, v43, "#CallingIntentRCHFlowDelegate Disambiguating %s, no disambiguation snippet", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_26_0(v45);
      OUTLINED_FUNCTION_26_0(v44);
    }

    type metadata accessor for SiriKitDisambiguationList();
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a7();
  }
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    outlined init with copy of Any(v3, v5);
    type metadata accessor for INPerson();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &__src[-v6];
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v2, __src);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  memcpy(v9 + 6, __src, 0xA0uLL);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return specialized DisambiguationItemFactory.buildDisambiguationItemList()();
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItemList()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized DisambiguationItemFactory.buildDisambiguationItemList();

  return specialized DisambiguationItemFactory.buildDisambiguationItems()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v17 = v0;
  v1 = *(v0 + 16);
  specialized _arrayForceCast<A, B>(_:)();
  v2 = *(v1 + 8);
  if (specialized Array.count.getter(v2) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v2))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v2);
  }

  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  v3 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;

    SiriKitDisambiguationList.description.getter();
    v10 = v9;
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "Finished building SiriKitDisambiguationList: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0(v8);
    OUTLINED_FUNCTION_26_0(v7);
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItems()()
{
  *(v1 + 40) = v0;
  return _swift_task_switch(specialized DisambiguationItemFactory.buildDisambiguationItems(), 0, 0);
}

{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[5];
  v2 = *v1;
  v0[6] = *v1;
  v3 = specialized Array.count.getter(v2);
  v0[7] = v3;
  if (v3)
  {
    v4 = v0[6];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v3);
      }

      v5 = *(v4 + 32);
    }

    v0[8] = v5;
    v0[9] = 1;
    v6 = v0[5];
    v0[3] = v5;
    v7 = swift_task_alloc();
    v0[10] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v0 + 3;
    v8 = swift_task_alloc();
    v0[11] = v8;
    type metadata accessor for SiriKitDisambiguationItem();
    *v8 = v0;
    v8[1] = specialized DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v3);
  }

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = v0[8];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v2 = v0[2];

  v4 = v0[9];
  if (v4 != v0[7])
  {
    v7 = v0[6];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v3 = *(v7 + 8 * v4 + 32);
    }

    v0[8] = v3;
    v0[9] = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v8 = v0[5];
      v0[3] = v3;
      v9 = swift_task_alloc();
      v0[10] = v9;
      *(v9 + 16) = v8;
      *(v9 + 24) = v0 + 3;
      v10 = swift_task_alloc();
      v0[11] = v10;
      type metadata accessor for SiriKitDisambiguationItem();
      *v10 = v0;
      v10[1] = specialized DisambiguationItemFactory.buildDisambiguationItems();
      OUTLINED_FUNCTION_3_27();

      return withCheckedContinuation<A>(isolation:function:_:)(v3);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v3);
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);

  _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV05buildgH04item_ySo8INPersonC_y07SiriKitC00mngH0CctF04_s11mn9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(a3, a2, _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA, v12);
}

uint64_t partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);

  return _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_(a1);
}

void *CallingIntentRCHFlowStrategy.__allocating_init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with take of SPHConversation(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

uint64_t CallingIntentRCHFlowStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  Input.parse.getter();
  (*(*v7 + 192))(&v38, v4);

  (*(v2 + 8))(v4, v1);
  if (v39)
  {
    outlined init with take of SPHConversation(&v38, v44);
    if ((static ExecutionPath.choosePath(for:sharedGlobals:app:)(v44, v0 + 2, v0[7]) - 3) >= 3u)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v18 = type metadata accessor for Logger();
      v19 = OUTLINED_FUNCTION_12_1(v18, static Logger.siriPhone);
      v20 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v20))
      {
        v21 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v21);
        OUTLINED_FUNCTION_36_0(&dword_0, v22, v23, "#CallingIntentRCHFlowStrategy ignore current request because intent should be handled by the server");
        OUTLINED_FUNCTION_52();
      }

      static ActionForInput.ignore()();
    }

    else
    {
      v8 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
      v10 = (*(v9 + 72))(v8, v9);
      (*(*v10 + 224))(&v38);

      if (v40)
      {
        outlined init with copy of PhoneCallNLIntent?(&v41, v42);
        outlined destroy of TransformationResult(&v38);
      }

      else
      {
        outlined destroy of PhoneCallNLIntent?(&v38, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        memset(v42, 0, sizeof(v42));
        v43 = 0;
      }

      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
      if (v24)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v25 = type metadata accessor for Logger();
        v26 = OUTLINED_FUNCTION_12_1(v25, static Logger.siriPhone);
        v27 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v27))
        {
          v28 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_103(v28);
          OUTLINED_FUNCTION_36_0(&dword_0, v29, v30, "#CallingIntentRCHFlowStrategy ignore current request because shouldResetRequest from nlIntent is true");
          OUTLINED_FUNCTION_52();
        }

        static ActionForInput.ignore()();
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v31 = type metadata accessor for Logger();
        v32 = OUTLINED_FUNCTION_12_1(v31, static Logger.siriPhone);
        v33 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v33))
        {
          v34 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_103(v34);
          OUTLINED_FUNCTION_36_0(&dword_0, v35, v36, "#CallingIntentRCHFlowStrategy Received a recognized Input");
          OUTLINED_FUNCTION_52();
        }

        static ActionForInput.handle()();
      }

      outlined destroy of PhoneCallNLIntent?(v42, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v38, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    v12 = OUTLINED_FUNCTION_12_1(v11, static Logger.siriPhone);
    v13 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v13))
    {
      v14 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v14);
      OUTLINED_FUNCTION_36_0(&dword_0, v15, v16, "#CallingIntentRCHFlowStrategy Input not a recognized PhoneCallNLIntent.");
      OUTLINED_FUNCTION_52();
    }

    return static ActionForInput.ignore()();
  }
}

uint64_t CallingIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[11] = *v0;
  v1[12] = type metadata accessor for PhoneError(0);
  v1[13] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t CallingIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = v4;
  v5 = *(v4 + 80);
  v7 = *(v4 + 64);
  v6 = *(v4 + 72);
  type metadata accessor for IntentFromParseFlowStrategyHelper(0, *(*(v4 + 88) + 80), *(*(v4 + 88) + 96), a4);
  outlined init with copy of SignalProviding(v5 + 16, v4 + 16);
  v8 = *(*IntentFromParseFlowStrategyHelper.__allocating_init(sharedGlobals:appResolved:)((v4 + 16), *(v5 + 56)) + 120);

  v9 = v8(v7, v6);
  if (v9)
  {
    v10 = v9;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      *(v4 + 56) = v12;
      v17 = v12;
      swift_getWitnessTable();
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v13, v14, "#CallingIntentRCHFlowStrategy Generated a siriKitIntent from Parse: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_26_0(v16);
      OUTLINED_FUNCTION_26_0(v15);
    }

    v21 = *(v4 + 8);

    return v21(v12);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v23 = type metadata accessor for Logger();
    v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#CallingIntentRCHFlowStrategy Could not generate a skIntent from Parse.", v26, 2u);
      OUTLINED_FUNCTION_26_0(v26);
    }

    v27 = *(v4 + 104);

    swift_storeEnumTagMultiPayload();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v28);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(v27, type metadata accessor for PhoneError);
    swift_willThrow();

    OUTLINED_FUNCTION_11();

    return v29();
  }
}

uint64_t CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_24_5();
  v1[21] = v5;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v1[26] = v6;
  v1[27] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 240) = v6;
  *(v7 + 248) = v0;

  if (v0)
  {
    v8 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v8 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(v5, type metadata accessor for ButtonConfigurationModel);
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 304) = v0;

  if (v0)
  {
    v9 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    *(v5 + 312) = v3;
    v9 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[39];
  v2 = v0[20];
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  (*(v4 + 136))(v3, v4);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[40] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v1;
  v8 = *(v6 + 8);
  v9 = v1;
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v14 = v0[27];
  v15 = v0[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v7, v14, v5, v8, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 152);

  v2 = OUTLINED_FUNCTION_2_35();
  v3(v2);

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);

  v3 = OUTLINED_FUNCTION_2_35();
  v4(v3);

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_23_0();

  v0 = OUTLINED_FUNCTION_2_35();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  static DialogPhase.error.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for SirikitDeviceState();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
  (*(v5 + 8))(v33, v4, v5);
  v6 = SirikitDeviceState.__allocating_init(from:)();
  *(v1 + 224) = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v3 = v7;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = *(v1 + 152);
      v11 = *(v1 + 144);
      v12 = v10;
      if ([v9 code] == &dword_8)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v13 = type metadata accessor for Logger();
        v14 = OUTLINED_FUNCTION_12_1(v13, static Logger.siriPhone);
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = OUTLINED_FUNCTION_65_0();
          *v16 = 0;
          _os_log_impl(&dword_0, v14, v15, "#CallingIntentRCHFlowStrategy airplane mode is enabled for emergency countdown request", v16, 2u);
          OUTLINED_FUNCTION_26_0(v16);
        }

        v17 = *(v1 + 152);

        v18 = v17;

        v19 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v3, v9);

        OUTLINED_FUNCTION_24_5();
        v32 = (v20 + *v20);
        v21 = swift_task_alloc();
        *(v1 + 232) = v21;
        *v21 = v1;
        v21[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

        return (v32)(v6, v19 & 1);
      }

      v23 = *(v1 + 144);
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v26))
  {
    v27 = OUTLINED_FUNCTION_65_0();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v3, "#CallingIntentRCHFlowStrategy makeFailureConfirmingIntentResponse returning default dialog", v27, 2u);
    OUTLINED_FUNCTION_26_0(v27);
  }

  v28 = *(v1 + 160);

  v29 = *(**(v28 + 72) + class metadata base offset for StartCallCATsSimple + 288);

  v31 = (v29 + *v29);
  v30 = swift_task_alloc();
  *(v1 + 296) = v30;
  *v30 = v1;
  v30[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

  return v31(v6);
}

{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 264) = v1;

  if (v1)
  {
    v9 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    *(v5 + 272) = a1;
    v9 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v2 = v1[30];
  v4 = v1[22];
  v3 = v1[23];
  v5 = v1[20];
  v6 = v1[21];
  v7 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v9 = v8;

  ButtonConfigurationModel.init(label:url:)(v7, v9, v3);
  outlined init with copy of ButtonConfigurationModel(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v4, v11 + v10);
  OutputGenerationManifest.responseViewId.setter();
  v12 = v5[5];
  v13 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v12);
  (*(v13 + 136))(v12, v13);
  v14 = v1[10];
  v15 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v14);
  v1[15] = type metadata accessor for PhoneSnippetDataModels(0);
  v1[16] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 12);
  *boxed_opaque_existential_1 = v11;
  *(boxed_opaque_existential_1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  v1[35] = v17;
  *(v17 + 16) = xmmword_426260;
  *(v17 + 32) = v2;
  v18 = *(v15 + 8);
  v19 = v2;
  v20 = swift_task_alloc();
  v1[36] = v20;
  *v20 = v1;
  v20[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v21 = v1[27];
  v22 = v1[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v22, v1 + 12, v17, v21, v14, v18);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 152) + **(**v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance CallingIntentRCHFlowStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CallingIntentRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CallingIntentRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CallingIntentRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CallingIntentRCHFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 168) + **(**v4 + 168));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t outlined init with copy of PhoneCallNLIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v13 = *v9;
  *(v9 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = a6;
  outlined init with copy of SignalProviding(a3, v27);
  outlined init with copy of SignalProviding(a5, v26);
  outlined init with copy of SignalProviding(a8, v25);
  outlined init with copy of SignalProviding(a9, v24);
  v14 = *(v13 + 264);
  v15 = *(v13 + 272);

  v16 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v14, v15);
  v17 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v14, v15);
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v27, v16, a4, v17, v26, a7, v23, v25, v24);
  OUTLINED_FUNCTION_11_0();

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = type metadata accessor for PhoneError(0);
  v1[7] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[8] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for ParameterIdentifier();
  v1[9] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  ParameterResolutionRecord.parameter.getter();
  v2 = ParameterIdentifier.name.getter();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_55();
  v6(v5);
  v7 = ParameterResolutionRecord.result.getter();
  v8 = CallingIntentUnsupportedValueFlowStrategy.shouldEnableFeatureOnResponseFramework(parameterName:intentResolutionResult:)(v2, v4);

  if (v8)
  {
    v9 = *(**(v0 + 40) + 312);
    v16 = (v9 + *v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 96) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_52_6(v10);

    return v16(v12);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 112) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_52_6(v14);

    return CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_72_2();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  v0[2] = v0[13];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[8];
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v1, v2);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[15] = v3;
      *v3 = v4;
      OUTLINED_FUNCTION_52_6(v3);

      return CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)();
    }

    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v1, type metadata accessor for PhoneError);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_8_1();

  return v0();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v1[21] = *v0;
  v4 = type metadata accessor for TemplatingResult();
  v1[22] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for UUID();
  v1[25] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v1[28] = OUTLINED_FUNCTION_62_4();
  v1[29] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[30] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = v4[6];
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v7);
  (*(v6 + 8))(v7, v6);
  v8 = v4[6];
  v9 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v8);
  (*(v9 + 8))(v8, v9);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v2, v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = type metadata accessor for AceOutput();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v5[3] = v10;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v3 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v11();
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_87_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_80();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_87_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_80();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_42();
    v27 = OUTLINED_FUNCTION_36();
    a9 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x8000000000459590, &a9);
    OUTLINED_FUNCTION_6_7(&dword_0, v28, v29, "#CallingIntentUnsupportedFlowStrategy %s");
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_26_0(v27);
    OUTLINED_FUNCTION_26_0(v26);
  }

  v30 = v20[29];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  ParameterResolutionRecord.parameter.getter();
  v32 = ParameterIdentifier.name.getter();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_92();
  v36(v35);
  v37._countAndFlagsBits = v32;
  v37._object = v34;
  v38.value = PhoneCallSlotNames.init(rawValue:)(v37).value;
  v39 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v39);
  if (v38.value - 4 >= 2)
  {
    if (v38.value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider)
    {
      v44 = swift_task_alloc();
      v20[33] = v44;
      OUTLINED_FUNCTION_71_1(v44);
      v45 = swift_task_alloc();
      v20[34] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
      *v45 = v20;
      v45[1] = CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:);
      goto LABEL_13;
    }
  }

  else
  {
    v41 = v20[28];
    v40 = v20[29];
    NLContextUpdate.init()();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
    outlined assign with take of NLContextUpdate?(v41, v40);
    if (!__swift_getEnumTagSinglePayload(v40, 1, v39))
    {
      type metadata accessor for MachineUtteranceBuilder();
      swift_allocObject();
      MachineUtteranceBuilder.init()();
      if (one-time initialization token for callId != -1)
      {
        swift_once();
      }

      TerminalOntologyNode.name.getter();
      UUID.init()();
      UUID.uuidString.getter();
      v42 = OUTLINED_FUNCTION_33_4();
      v43(v42);
      dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

      dispatch thunk of MachineUtteranceBuilder.build()();

      OUTLINED_FUNCTION_92();
      NLContextUpdate.nlInput.setter();
    }
  }

  v20[36] = _swiftEmptyArrayStorage;
  v46 = swift_task_alloc();
  v20[37] = v46;
  OUTLINED_FUNCTION_71_1(v46);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v20[38] = v47;
  *v47 = v48;
  OUTLINED_FUNCTION_29_14(v47);
LABEL_13:
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  v20[36] = v20[17];
  v21 = swift_task_alloc();
  v20[37] = v21;
  OUTLINED_FUNCTION_71_1(v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v20[38] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_29_14(v22);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, 0xD00000000000003ALL, v27, v28, v21, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v15 = &v14 - v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v14 - v4;
  dispatch thunk of RCHFlowDelegate.makeAceViewProvider()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v14 = ParameterResolutionRecord.app.getter();
  v6 = ParameterResolutionRecord.intent.getter();
  v7 = ParameterResolutionRecord.result.getter();
  v8 = v15;
  v9 = v17;
  (*(v2 + 16))(v15, v18, v17);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  (*(v2 + 32))(v11 + v10, v8, v9);
  v12 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AceViewProviding.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)();

  return (*(v19 + 8))(v5, v12);
}

uint64_t closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v2 = *(v36 - 8);
  v35 = *(v2 + 64);
  __chkstk_darwin(v36);
  v34 = &v25 - v3;
  v31 = type metadata accessor for ParameterIdentifier();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = &v25 - v10;
  dispatch thunk of RCHFlowDelegate.makeDialogTemplating()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v30 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v11 = ParameterIdentifier.name.getter();
  v28 = v12;
  v29 = v11;
  v13 = *(v4 + 8);
  v14 = v9;
  v15 = v31;
  v13(v14, v31);
  v27 = ParameterResolutionRecord.result.getter();
  v26 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.multicardinalIndex.getter();
  v13(v6, v15);
  v16 = v34;
  v17 = v36;
  (*(v2 + 16))(v34, v37, v36);
  v18 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v18, v16, v17);
  v24 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v20 = v27;
  v21 = v26;
  v22 = v33;
  dispatch thunk of DialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)();

  return (*(v38 + 8))(v22, v24);
}

uint64_t closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v6);
  v8 = (v10 - v7);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v10 - v7, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_49_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  v1[7] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ParameterIdentifier();
  v1[10] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_62_4();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_72_2();
  OUTLINED_FUNCTION_80();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = v3[23];
    v11 = v3[22];

    OUTLINED_FUNCTION_88_1();

    OUTLINED_FUNCTION_8_1();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 216);

    OUTLINED_FUNCTION_88_1();

    OUTLINED_FUNCTION_8_1();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_3();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_86_2();
  a24 = v26;
  v29 = v26[11];
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v30 = *(v29 + 8);
  v31 = OUTLINED_FUNCTION_55();
  v30(v31);
  v32._countAndFlagsBits = OUTLINED_FUNCTION_53_1();
  switch(PhoneCallSlotNames.init(rawValue:)(v32).value)
  {
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[21] = v56;
      *v56 = v57;
      v56[1] = CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contact:
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts:
      v34 = v26[12];
      v33 = v26[13];
      v35 = v30;
      v36 = v26[10];
      v26[15] = ParameterResolutionRecord.app.getter();
      v26[16] = ParameterResolutionRecord.intent.getter();
      ParameterResolutionRecord.parameter.getter();
      ParameterIdentifier.name.getter();
      v26[17] = v37;
      (v35)(v33, v36);
      ParameterResolutionRecord.parameter.getter();
      ParameterIdentifier.multicardinalIndex.getter();
      (v35)(v34, v36);
      v26[18] = ParameterResolutionRecord.result.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[19] = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_51_1(v38);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_callCapability:
      v26[22] = ParameterResolutionRecord.intent.getter();
      v26[23] = ParameterResolutionRecord.result.getter();
      v26[24] = ParameterResolutionRecord.app.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[25] = v59;
      *v59 = v60;
      OUTLINED_FUNCTION_51_1(v59);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_callRecordToCallBack:
      v26[27] = ParameterResolutionRecord.intent.getter();
      v26[28] = ParameterResolutionRecord.result.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[29] = v62;
      *v62 = v63;
      OUTLINED_FUNCTION_51_1(v62);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:)();
      break;
    default:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v43 = OUTLINED_FUNCTION_43_3();
      v44(v43);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      v87 = v30;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v26[14];
        v48 = v26[9];
        v49 = v26[8];
        a9 = v26[7];
        a10 = v26[10];
        v50 = OUTLINED_FUNCTION_42();
        a12 = OUTLINED_FUNCTION_36();
        a13 = a12;
        *v50 = 136315138;
        v51 = v48;
        ParameterResolutionRecord.parameter.getter();
        v52 = ParameterIdentifier.name.getter();
        v54 = v53;
        (v87)(v47, a10);
        (*(v49 + 8))(v51, a9);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &a13);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_0, v45, v46, "#CallingIntentUnsupportedValueFlowStrategy makeUnsupportedValueOutput: the corresponding dialog for Slot %s hasn't been migrated to Response Framework.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(a12);
        OUTLINED_FUNCTION_26_0(a12);
        OUTLINED_FUNCTION_26_0(v50);
      }

      else
      {

        v65 = OUTLINED_FUNCTION_43_3();
        v66(v65);
      }

      v67 = v26[6];
      a13 = 0;
      a14 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      a13 = 0xD000000000000012;
      a14 = 0x80000000004592E0;
      ParameterResolutionRecord.parameter.getter();
      v68 = ParameterIdentifier.name.getter();
      v70 = v69;
      v71 = OUTLINED_FUNCTION_33_4();
      v87(v71);
      v72._countAndFlagsBits = v68;
      v72._object = v70;
      String.append(_:)(v72);

      v73 = a14;
      *v67 = a13;
      v67[1] = v73;
      v67[2] = 0xD00000000000004BLL;
      v67[3] = 0x8000000000459300;
      v67[4] = 0xD00000000000002CLL;
      v67[5] = 0x8000000000459350;
      v67[6] = 124;
      OUTLINED_FUNCTION_55();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_48();
      v76 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v74, v75, &protocol conformance descriptor for PhoneError);
      OUTLINED_FUNCTION_147(v76);
      PhoneError.logged()(v77);
      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v67, v78);
      swift_willThrow();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_46_6();

      result = v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, v87, a12, a13, a14, a15, a16, a17, a18);
      break;
  }

  return result;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 160) = v10;

  v15 = *(v12 + 144);
  v16 = *(v12 + 128);
  if (v10)
  {

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v17, v18, v19);
  }

  else
  {

    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_60();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[89] = v0;
  v1[88] = v2;
  v1[87] = v3;
  v1[86] = v4;
  v1[85] = v5;
  v1[84] = v6;
  v1[90] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[91] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v1[92] = OUTLINED_FUNCTION_62_4();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v9 = type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_13_2(v9);
  v1[95] = v10;
  v1[96] = OUTLINED_FUNCTION_62_4();
  v1[97] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v1[98] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[99] = v12;
  v1[100] = OUTLINED_FUNCTION_62_4();
  v1[101] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[102] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[103] = v14;
  v1[104] = OUTLINED_FUNCTION_62_4();
  v1[105] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 904) = v4;
  *(v2 + 912) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 920) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_12_4(v2);

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 928) = v0;

  if (!v0)
  {
    *(v4 + 936) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 544));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 968) = v0;

  if (!v0)
  {
    *(v4 + 976) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[122];
  OUTLINED_FUNCTION_6_24(v0[89]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 58);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[123] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[124] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_24(v7);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 1008) = v0;

  if (!v0)
  {
    *(v4 + 1016) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[127];
  OUTLINED_FUNCTION_6_24(v0[89]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 53);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[128] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[129] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_24(v7);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 1080) = v0;

  v7 = *(v4 + 744);
  if (!v0)
  {
    *(v5 + 1088) = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[136];
  OUTLINED_FUNCTION_6_24(v0[89]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[137] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[138] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_24(v7);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 1120) = v0;

  if (!v0)
  {
    *(v4 + 1128) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[141];
  OUTLINED_FUNCTION_6_24(v0[89]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 38);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[142] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[143] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_24(v7);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 1160) = v0;

  if (!v0)
  {
    *(v4 + 1168) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[146];
  OUTLINED_FUNCTION_6_24(v0[89]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 33);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[147] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[148] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_24(v7);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[78] = v1;
  v2[79] = v4;
  v2[80] = v0;
  OUTLINED_FUNCTION_69_3();
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 1200) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v3 = v1[79];
  OUTLINED_FUNCTION_62_8();
  v4 = v3;
  OUTLINED_FUNCTION_14_20();
  v2();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v5 = OUTLINED_FUNCTION_92();
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_48_0(v7);
  v1[155] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[156] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_41_9(v9);
  OUTLINED_FUNCTION_60();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[81] = v1;
  v2[82] = v4;
  v2[83] = v0;
  OUTLINED_FUNCTION_69_3();
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 1224) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v2 = v0[92];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = v0[82];
  OUTLINED_FUNCTION_62_8();
  v4 = v3;
  OUTLINED_FUNCTION_14_20();
  v1();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v5 = OUTLINED_FUNCTION_92();
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_48_0(v7);
  v0[155] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[156] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_41_9(v9);
  OUTLINED_FUNCTION_60();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

void CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)()
{
  v1 = v0[90];
  v2 = *(v1 + 272);
  v0[106] = v2;
  v0[107] = *(v1 + 264);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55();
  v192 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = v192[1];
  v4 = *(v3 + 8);
  v5 = swift_checkMetadataState();
  v6 = v4(v5, v3);
  v198 = v3;
  v190 = v4;
  if (v6)
  {
    v2 = specialized Array.count.getter(v6);

    if (v2)
    {
      v7 = OUTLINED_FUNCTION_81_1();
      v8 = v4(v7, v3);
      if (v8)
      {
        v9 = v8;
        v2 = v0[87];
        v10 = specialized Array.count.getter(v8);
        if ((v2 & 0x8000000000000000) == 0 && v10 > v2)
        {
          v2 = v9 & 0xC000000000000001;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v0[87], (v9 & 0xC000000000000001) == 0, v9);
          if ((v9 & 0xC000000000000001) == 0)
          {
            v11 = *(v9 + 8 * v0[87] + 32);
LABEL_13:
            v18 = v11;
LABEL_14:
            v19 = v18;

LABEL_17:
            v0[108] = v19;
            v20 = v0[88];
            OUTLINED_FUNCTION_2_0();
            v21 += 256;
            v0[109] = *v21;
            v0[110] = v21 & 0xFFFFFFFFFFFFLL | 0xF4C9000000000000;
            OUTLINED_FUNCTION_14_20();
            v22();
            v23 = [v20 unsupportedReason];
            if (one-time initialization token for siriPhone != -1)
            {
LABEL_112:
              OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
            }

            v24 = v0[88];
            v25 = type metadata accessor for Logger();
            __swift_project_value_buffer(v25, static Logger.siriPhone);
            v26 = v24;
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v2 = v5;
              v29 = v19;
              v30 = v0[88];
              v31 = OUTLINED_FUNCTION_42();
              *v31 = 134217984;
              *(v31 + 4) = [v30 unsupportedReason];

              v19 = v29;
              v5 = v2;
              _os_log_impl(&dword_0, v27, v28, "#CallingIntentUnsupportedValueFlowStrategy making contact unsupported value output for unsupported reason %ld", v31, 0xCu);
              OUTLINED_FUNCTION_26_0(v31);
            }

            else
            {

              v27 = v0[88];
            }

            if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v23)
            {
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                *v34 = 0;
                _os_log_impl(&dword_0, v32, v33, "#CallingIntentUnsupportedValueFlowStrategy: contact unsupported value output for foreign emergency disambiguation", v34, 2u);
                OUTLINED_FUNCTION_26_0(v34);
              }

              type metadata accessor for EmptyOutput();
              static EmptyOutput.instance.getter();

              v35 = OUTLINED_FUNCTION_92();
              v36(v35);
              OUTLINED_FUNCTION_1_43();

              OUTLINED_FUNCTION_8_1();
              OUTLINED_FUNCTION_21_7();

              __asm { BRAA            X1, X16 }
            }

            switch(v23)
            {
              case 2uLL:
                OUTLINED_FUNCTION_31_6();
                v193 = v39 + class metadata base offset for StartCallCATsSimple + 848;
                OUTLINED_FUNCTION_24_5();
                v199 = v40 + *v40;
                v41 = swift_task_alloc();
                v0[120] = v41;
                *v41 = v0;
                OUTLINED_FUNCTION_42_7(v41, v42, v43, v44, v45, v46, v47, v48, v184, v185, v186, v188, v189, v190, v193, v199);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 3uLL:
                v82 = v0[86];
                v83 = type metadata accessor for PhoneStartCallIntent(0);
                v84 = specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(v82, 0, v83, v5, v192);
                v0[130] = v84;
                if (v19 && (v85 = [v19 personHandle]) != 0 && (v86 = v85, v87 = objc_msgSend(v85, "label"), v86, v87) && (v88 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v90 = v89, v87, v90))
                {
                  OUTLINED_FUNCTION_94(v88, v90);
                  v91 = 0;
                }

                else
                {
                  v91 = 1;
                }

                v118 = v0[94];
                v119 = type metadata accessor for SpeakableString();
                __swift_storeEnumTagSinglePayload(v118, v91, 1, v119);
                v120 = *&v84[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts];
                v187 = v119;
                if (v120 && specialized Array.count.getter(*(v120 + 24)))
                {
                  v121 = OUTLINED_FUNCTION_57_7();
                  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v121, v122, v123);
                  if (v2)
                  {

                    specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                  }

                  v124 = DialogPerson.personHandle.getter();
                }

                else
                {
                  v124 = 0;
                }

                v0[131] = v124;
                v125 = OUTLINED_FUNCTION_81_1();
                if (INPersonContainingIntent.hasSiriMatches.getter(v125, v198))
                {
                  if (v19)
                  {
                    v126 = [v19 siriMatches];
                    if (v126)
                    {
                      v127 = v126;
                      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      if (specialized Array.count.getter(v128))
                      {
                        v129 = OUTLINED_FUNCTION_57_7();
                        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v129, v130, v131);
                        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v132 = v5;

                        goto LABEL_95;
                      }

                      v132 = v5;
                    }

                    else
                    {
                      v132 = v5;
                    }

                    v19 = 0;
                  }

                  else
                  {
                    v132 = v5;
                  }
                }

                else
                {
                  v132 = v5;
                  v137 = v19;
                }

LABEL_95:
                v0[132] = v19;
                v163 = *(v192[2] + 8);

                v164 = OUTLINED_FUNCTION_33_4();
                v191 = v19;
                if (!v163(v164))
                {
                  v170 = 0xE700000000000000;
                  v171 = 0x4E574F4E4B4E55;
                  v166 = v132;
                  v167 = v187;
                  goto LABEL_106;
                }

                v165 = INPreferredCallProviderGetBackingType();
                if (v165 == 4)
                {
                  v168 = @"THIRD_PARTY_PROVIDER";
                  v173 = @"THIRD_PARTY_PROVIDER";
                  v166 = v132;
                }

                else
                {
                  v166 = v132;
                  if (v165 != 3)
                  {
                    v167 = v187;
                    if (v165 == 2)
                    {
                      v168 = @"TELEPHONY_PROVIDER";
                      v169 = @"TELEPHONY_PROVIDER";
                    }

                    else
                    {
                      v168 = [NSString stringWithFormat:@"(unknown: %i)", v165];
                    }

                    goto LABEL_105;
                  }

                  v168 = @"FACETIME_PROVIDER";
                  v172 = @"FACETIME_PROVIDER";
                }

                v167 = v187;
LABEL_105:
                v174 = v168;
                v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v170 = v175;

LABEL_106:
                v176 = v0[100];
                v177 = v0[99];
                v178 = v0[98];
                v179 = v0[93];
                OUTLINED_FUNCTION_94(v171, v170);
                __swift_storeEnumTagSinglePayload(v179, 0, 1, v167);
                type metadata accessor for PhonePerson(0);
                ContactRelatedOr = INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v166, v198);
                static Device.current.getter();
                __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
                OUTLINED_FUNCTION_11_0();
                dispatch thunk of DeviceState.siriLocale.getter();
                __swift_destroy_boxed_opaque_existential_1(v0 + 43);
                v0[133] = static PhonePerson.make(phonePerson:options:locale:)(v191, ContactRelatedOr & 1, v176);
                (*(v177 + 8))(v176, v178);
                OUTLINED_FUNCTION_24_5();
                v181 = swift_task_alloc();
                v0[134] = v181;
                *v181 = v0;
                v181[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X5, X16 }

                return;
              case 4uLL:
                v63 = OUTLINED_FUNCTION_81_1();
                v64 = v190(v63, v198);
                if (!v64)
                {
                  goto LABEL_74;
                }

                v2 = v64;
                v192 = v0;
                v65 = v0[99];
                v185 = _swiftEmptyArrayStorage;
                v198 = specialized Array.count.getter(v64);
                v66 = 0;
                v189 = v2 & 0xFFFFFFFFFFFFFF8;
                v190 = (v2 & 0xC000000000000001);
                v188 = (v65 + 8);
                while (1)
                {
                  if (v198 == v66)
                  {

                    v0 = v192;
LABEL_74:
                    type metadata accessor for PhonePersonList();
                    v133 = OUTLINED_FUNCTION_11_0();
                    v0[111] = PhonePersonList.__allocating_init(list:)(v133);
                    OUTLINED_FUNCTION_24_5();
                    v134 = swift_task_alloc();
                    v0[112] = v134;
                    *v134 = v0;
                    OUTLINED_FUNCTION_12_4(v134);
                    OUTLINED_FUNCTION_21_7();

                    __asm { BRAA            X1, X16 }
                  }

                  if (v190)
                  {
                    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v66 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_111;
                    }

                    v67 = *(v2 + 8 * v66 + 32);
                  }

                  v23 = v67;
                  if (__OFADD__(v66, 1))
                  {
                    break;
                  }

                  v186 = v66 + 1;
                  v0 = v192;
                  v68 = v192[101];
                  v19 = v192[98];
                  type metadata accessor for PhonePerson(0);
                  static Device.current.getter();
                  v5 = v192[77];
                  __swift_project_boxed_opaque_existential_1(v0 + 73, v0[76]);
                  OUTLINED_FUNCTION_11_0();
                  dispatch thunk of DeviceState.siriLocale.getter();
                  __swift_destroy_boxed_opaque_existential_1(v192 + 73);
                  v69 = static PhonePerson.make(phonePerson:options:locale:)(v23, 0, v68);

                  (*v188)(v68, v19);
                  ++v66;
                  if (v69)
                  {
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v185 = _swiftEmptyArrayStorage;
                    v66 = v186;
                  }
                }

                __break(1u);
LABEL_111:
                __break(1u);
                goto LABEL_112;
              case 5uLL:
                OUTLINED_FUNCTION_31_6();
                v195 = v70 + class metadata base offset for StartCallCATsSimple + 944;
                OUTLINED_FUNCTION_24_5();
                v201 = v71 + *v71;
                v72 = swift_task_alloc();
                v0[144] = v72;
                *v72 = v0;
                OUTLINED_FUNCTION_42_7(v72, v73, v74, v75, v76, v77, v78, v79, v184, v185, v186, v188, v189, v190, v195, v201);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 6uLL:
                OUTLINED_FUNCTION_31_6();
                v194 = v51 + class metadata base offset for StartCallCATsSimple + 864;
                OUTLINED_FUNCTION_24_5();
                v200 = v52 + *v52;
                v53 = swift_task_alloc();
                v0[125] = v53;
                *v53 = v0;
                OUTLINED_FUNCTION_42_7(v53, v54, v55, v56, v57, v58, v59, v60, v184, v185, v186, v188, v189, v190, v194, v200);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 7uLL:
                OUTLINED_FUNCTION_31_6();
                v196 = v92 + class metadata base offset for StartCallCATsSimple + 928;
                OUTLINED_FUNCTION_24_5();
                v202 = v93 + *v93;
                v94 = swift_task_alloc();
                v0[139] = v94;
                *v94 = v0;
                OUTLINED_FUNCTION_42_7(v94, v95, v96, v97, v98, v99, v100, v101, v184, v185, v186, v188, v189, v190, v196, v202);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              default:
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
                OUTLINED_FUNCTION_43_3();
                static ContactsSlotTemplating.isMissingMeCardCase(intent:)();
                v104 = v0[89];
                if (v105)
                {
                  OUTLINED_FUNCTION_2_0();
                  v197 = v106 + class metadata base offset for StartCallCATsSimple + 896;
                  OUTLINED_FUNCTION_24_5();
                  v203 = v107 + *v107;
                  v108 = swift_task_alloc();
                  v0[149] = v108;
                  *v108 = v0;
                  OUTLINED_FUNCTION_42_7(v108, v109, v110, v111, v112, v113, v114, v115, v184, v185, v186, v188, v189, v190, v197, v203);
                  OUTLINED_FUNCTION_21_7();

                  __asm { BRAA            X0, X16 }
                }

                App.isFirstParty()();
                __swift_project_boxed_opaque_existential_1((v104 + 24), *(v104 + 48));
                v138 = OUTLINED_FUNCTION_33_4();
                v140 = v139(v138);
                (*(*v140 + 152))(v140);

                if (v0[6])
                {
                  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>((v0 + 8), (v0 + 13), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
                  outlined destroy of TransformationResult((v0 + 2));
                  if (v0[16])
                  {
                    v141 = v0[91];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
                    v142 = type metadata accessor for PhoneCallNLv3Intent(0);
                    v143 = swift_dynamicCast();
                    __swift_storeEnumTagSinglePayload(v141, v143 ^ 1u, 1, v142);
                    if (__swift_getEnumTagSinglePayload(v141, 1, v142) != 1)
                    {
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[91], &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
                      if (v19)
                      {
                        v144 = INPerson.nameLowercasedWithFirstUppercased.getter();
                      }

                      else
                      {
                        v144 = 0;
                      }

LABEL_87:
                      v148 = v0[101];
                      v149 = v0[99];
                      v150 = v0[98];
                      v151 = v0[89];
                      v204 = v0[85];
                      type metadata accessor for PhonePerson(0);
                      static Device.current.getter();
                      __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
                      v0[151] = static PhonePerson.make(phonePerson:options:locale:)(v144, 0, v148);

                      v152 = *(v149 + 8);
                      v152(v148, v150);
                      v153 = v151[41];
                      v154 = v151[42];
                      __swift_project_boxed_opaque_existential_1(v151 + 38, v153);
                      (*(*v151 + 208))();
                      __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      (*(v154 + 16))(v204, v148, v153, v154);
                      v156 = v155;
                      v152(v148, v150);
                      __swift_destroy_boxed_opaque_existential_1(v0 + 23);
                      if (v156)
                      {
                        v157 = OUTLINED_FUNCTION_0();
                        OUTLINED_FUNCTION_94(v157, v158);
                      }

                      v159 = type metadata accessor for SpeakableString();
                      OUTLINED_FUNCTION_91_2(v159);

                      v160 = swift_task_alloc();
                      v0[152] = v160;
                      *v160 = v0;
                      v160[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
                      OUTLINED_FUNCTION_21_7();

                      __asm { BRAA            X3, X16 }
                    }

LABEL_86:
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[91], &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
                    v147 = v19;
                    v144 = v19;
                    goto LABEL_87;
                  }
                }

                else
                {
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 2), &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
                  *(v0 + 13) = 0u;
                  *(v0 + 15) = 0u;
                  v0[17] = 0;
                }

                v145 = v0[91];
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 13), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
                v146 = type metadata accessor for PhoneCallNLv3Intent(0);
                __swift_storeEnumTagSinglePayload(v145, 1, 1, v146);
                goto LABEL_86;
            }
          }

          goto LABEL_113;
        }
      }
    }
  }

  v12 = OUTLINED_FUNCTION_81_1();
  v13 = v4(v12, v3);
  if (v13)
  {
    v14 = v13;
    if (specialized Array.count.getter(v13))
    {
      v15 = OUTLINED_FUNCTION_57_7();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v15, v16, v17);
      if (!v2)
      {
        v11 = *(v14 + 32);
        goto LABEL_13;
      }

LABEL_113:
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }
  }

  v19 = 0;
  goto LABEL_17;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)(uint64_t a1)
{
  v31 = v1[113];
  v30 = v1[109];
  v2 = v1[97];
  v3 = v1[96];
  v4 = v1[95];
  v5 = v1[89];
  v6 = v1[86];
  v7 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v9 = v8;

  ButtonConfigurationModel.init(label:url:)(v7, v9, v2);
  outlined init with copy of ButtonConfigurationModel(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v3, v11 + v10);
  v30(v6, 0, 0, 0xD000000000000020, 0x80000000004592A0, 1);
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v12 = OUTLINED_FUNCTION_33_4();
  v13(v12);
  OUTLINED_FUNCTION_7_0(v1 + 63);
  v1[71] = type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_12_24();
  v1[72] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v14, v15, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 68);
  *boxed_opaque_existential_1 = v11;
  *(boxed_opaque_existential_1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = OUTLINED_FUNCTION_48_0(v17);
  v1[118] = v18;
  *(v18 + 16) = xmmword_426260;
  *(v18 + 32) = v31;
  v19 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[119] = v20;
  *v20 = v21;
  v20[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v22, v23, v24, v25, v26, v27);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 864);
  v14 = *(v12 + 840);
  v15 = *(v12 + 824);
  v16 = *(v12 + 816);
  v17 = *(v12 + 776);

  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_92();
  v18(v19);
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v17, v20);
  (v18)(v14, v16);
  __swift_destroy_boxed_opaque_existential_1((v12 + 504));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_17();

  v15 = OUTLINED_FUNCTION_41_6();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1((v13 + 464));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_17();

  v15 = OUTLINED_FUNCTION_41_6();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1((v13 + 424));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 1056);
  v14 = *(v12 + 864);
  v15 = *(v12 + 752);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_92();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v12 + 384));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_17();

  v15 = OUTLINED_FUNCTION_41_6();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1((v13 + 304));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_17();

  v15 = OUTLINED_FUNCTION_41_6();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1((v13 + 264));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 864);
  v14 = *(v12 + 824);

  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_55();
  v15(v16);
  v17 = OUTLINED_FUNCTION_43_3();
  v15(v17);
  __swift_destroy_boxed_opaque_existential_1((v12 + 224));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_17();

  v13 = OUTLINED_FUNCTION_41_6();
  v14(v13);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 864);

  v14 = OUTLINED_FUNCTION_55();
  v15(v14);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v12 = OUTLINED_FUNCTION_15_18();
  v13(v12);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v12 = OUTLINED_FUNCTION_15_18();
  v13(v12);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[132];
  v14 = v12[108];
  v15 = v12[94];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_55();
  v17(v16);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v12 = OUTLINED_FUNCTION_15_18();
  v13(v12);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v12 = OUTLINED_FUNCTION_15_18();
  v13(v12);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v12 = OUTLINED_FUNCTION_15_18();
  v13(v12);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 864);
  v14 = *(v12 + 736);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_0();
  v16(v15);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v1[25] = *v0;
  v4 = type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_13_2(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_62_4();
  v1[28] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v1[29] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v1[32] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[33] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 328) = v0;

  if (!v0)
  {
    *(v4 + 336) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 376) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 384) = v3;
  }

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[48];
  OUTLINED_FUNCTION_6_24(v0[24]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 12);
  v0[20] = type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_12_24();
  v0[21] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v4, v5, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  OUTLINED_FUNCTION_77_5(boxed_opaque_existential_1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_48_0(v7);
  v0[49] = v8;
  OUTLINED_FUNCTION_20_16(v8, xmmword_426260);
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[50] = v10;
  *v10 = v11;
  v10[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v2, v3);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_0();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_65_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[55];
  OUTLINED_FUNCTION_6_24(v0[24]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[56] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[57] = v7;
  *v7 = v8;
  v7[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 256), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v2, v3);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_41_6();
  v5(v4);
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  (*(v0[34] + 8))(v0[35], v0[33]);
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v27 = v26[25];
  v26[36] = *(v27 + 272);
  v26[37] = *(v27 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[38] = AssociatedTypeWitness;
  v26[39] = type metadata accessor for ParameterResolutionRecord();
  v29 = ParameterResolutionRecord.intent.getter();
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
  OUTLINED_FUNCTION_14_20();
  v30();

  v31 = ParameterResolutionRecord.intent.getter();
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();

  if (v32 && (v33 = ParameterResolutionRecord.result.getter(), v34 = [v33 unsupportedReason], v33, v34 == &dword_4 + 1))
  {
    v36 = v26[30];
    v35 = v26[31];
    v78 = v26[29];
    v37 = v26[24];
    v38 = v37[41];
    v39 = v37[42];
    __swift_project_boxed_opaque_existential_1(v37 + 38, v38);
    v40 = ParameterResolutionRecord.app.getter();
    __swift_project_boxed_opaque_existential_1(v37 + 3, v37[6]);
    v41 = OUTLINED_FUNCTION_2();
    v42(v41);
    __swift_project_boxed_opaque_existential_1(v26 + 7, v26[10]);
    OUTLINED_FUNCTION_2();
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v39 + 16))(v40, v35, v38, v39);
    v44 = v43;

    (*(v36 + 8))(v35, v78);
    __swift_destroy_boxed_opaque_existential_1(v26 + 7);
    if (v44)
    {
      String.toSpeakableString.getter();
    }

    v64 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_91_2(v64);
    OUTLINED_FUNCTION_2_0();
    v77 = v65 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 24;
    OUTLINED_FUNCTION_24_5();
    v80 = v66 + *v66;
    v67 = swift_task_alloc();
    v26[40] = v67;
    *v67 = v26;
    v67[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_46_6();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, v77, v80, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v45 = v26[24];
    v46 = *(v45 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
    v47 = type metadata accessor for PhoneStartCallIntent(0);
    v48 = ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_55();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v48, 0, v47, AssociatedTypeWitness, AssociatedConformanceWitness);
    v26[51] = v50;
    type metadata accessor for SirikitDeviceState();
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    v51 = OUTLINED_FUNCTION_33_4();
    v52(v51);
    v26[52] = SirikitDeviceState.__allocating_init(from:)();
    v76 = *v46 + class metadata base offset for StartCallCATsSimple + 1008;
    OUTLINED_FUNCTION_24_5();
    v79 = v53 + *v53;
    v54 = swift_task_alloc();
    v26[53] = v54;
    *v54 = v26;
    OUTLINED_FUNCTION_12_4(v54);
    OUTLINED_FUNCTION_46_6();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, v76, v79, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[26];
  v6 = v1[24];
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v7 = OUTLINED_FUNCTION_33_4();
  ButtonConfigurationModel.init(label:url:)(v7, v8, v9);
  outlined init with copy of ButtonConfigurationModel(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v1[43] = v11;
  *(v11 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v3, v11 + v10);
  OutputGenerationManifest.responseViewId.setter();
  v12 = type metadata accessor for PhoneStartCallIntent(0);
  v13 = ParameterResolutionRecord.intent.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v13, 0, v12, v2, AssociatedConformanceWitness);
  v1[44] = v15;
  type metadata accessor for SirikitDeviceState();
  v16 = v6[6];
  v17 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v16);
  (*(v17 + 8))(v21, v16, v17);
  v1[45] = SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_24_5();
  v18 = swift_task_alloc();
  v1[46] = v18;
  *v18 = v1;
  OUTLINED_FUNCTION_12_4(v18);
  OUTLINED_FUNCTION_21_7();

  __asm { BRAA            X2, X16 }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 432) = v1;

  if (!v1)
  {
    *(v5 + 440) = v2;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:)()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v1[18] = *v0;
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
  OUTLINED_FUNCTION_14_20();
  v1();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_10;
  }

  v2 = [*(v0 + 120) unsupportedReason];
  if ((v2 - 2) >= 2)
  {
    if (v2 == &dword_0 + 1)
    {
      OUTLINED_FUNCTION_31_6();
      OUTLINED_FUNCTION_24_5();
      v11 = (v6 + *v6);
      v7 = swift_task_alloc();
      *(v0 + 192) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_12_4(v7);
      v8 = v11;

      return v8();
    }

LABEL_10:
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_24_5();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_12_4(v10);
    v8 = v12;

    return v8();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 176) = v3;
  *v3 = v4;
  v3[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);

  return CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  OUTLINED_FUNCTION_69_3();
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  v2 = v0[17];
  v0[28] = v1;
  v3 = *(v2 + 56);
  OUTLINED_FUNCTION_7_0((v2 + 24));
  v4 = *(v3 + 136);
  v5 = v1;
  v6 = OUTLINED_FUNCTION_55();
  v4(v6);
  OUTLINED_FUNCTION_7_0(v0 + 2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_48_0(v7);
  v0[29] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[30] = v9;
  *v9 = v10;
  v9[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  OUTLINED_FUNCTION_69_3();
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 216) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[11];
  v2 = v0[17];
  v0[28] = v1;
  v3 = *(v2 + 56);
  OUTLINED_FUNCTION_7_0((v2 + 24));
  v4 = *(v3 + 136);
  v5 = v1;
  v6 = OUTLINED_FUNCTION_55();
  v4(v6);
  OUTLINED_FUNCTION_7_0(v0 + 2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_48_0(v7);
  v0[29] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[30] = v9;
  *v9 = v10;
  v9[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_55_8();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_55_8();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_55_8();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[11] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
  OUTLINED_FUNCTION_14_20();
  v1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_12_4(v3);

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  OUTLINED_FUNCTION_6_24(v0[9]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v0[17] = v5;
  OUTLINED_FUNCTION_20_16(v5, xmmword_426260);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[18] = v7;
  *v7 = v8;
  v7[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.shouldEnableFeatureOnResponseFramework(parameterName:intentResolutionResult:)(uint64_t a1, uint64_t a2)
{

  v2._countAndFlagsBits = OUTLINED_FUNCTION_0();
  if (PhoneCallSlotNames.init(rawValue:)(v2).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider)
  {
    if ([objc_opt_self() supportsDisplayingFaceTimeVideoCalls])
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "#CallingIntentUnsupportedValueFlowStrategy shouldEnableFeatureOnResponseFramework: this device has more likely FaceTime restriction based on region. Returning unsupported call capability RF dialog..", v7, 2u);
      OUTLINED_FUNCTION_26_0(v7);
    }
  }

  return 1;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  *(v1 + 208) = v3;
  *(v1 + 216) = v4;
  *(v1 + 424) = v5;
  *(v1 + 200) = v6;
  v7 = type metadata accessor for PhoneError(0);
  *(v1 + 240) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 248) = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 256) = v8;
  OUTLINED_FUNCTION_13_2(v8);
  *(v1 + 264) = v9;
  *(v1 + 272) = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_13_2(v10);
  *(v1 + 280) = v11;
  *(v1 + 288) = OUTLINED_FUNCTION_62_4();
  *(v1 + 296) = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  *(v1 + 304) = v12;
  OUTLINED_FUNCTION_13_2(v12);
  *(v1 + 312) = v13;
  *(v1 + 320) = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v14);
  *(v1 + 328) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  v3[44] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v0[47] = v0[18];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_32_9(v2);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  v3[46] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v0[47] = v0[21];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_32_9(v2);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

void CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)()
{
  v2 = v0[39];
  v1 = v0[40];
  v24 = v0[38];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v3[41];
  v6 = v3[42];
  __swift_project_boxed_opaque_existential_1(v3 + 38, v5);
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v7 = OUTLINED_FUNCTION_2();
  v8(v7);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v6 + 16))(v4, v1, v5, v6);
  v10 = v9;
  (*(v2 + 8))(v1, v24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_94(v11, v12);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v0[41];
  v15 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, v13, 1, v15);
  v0[23] = App.settingsUrl.getter();
  v0[24] = v16;
  v0[42] = v16;
  OUTLINED_FUNCTION_2_0();
  if ((v17 & 1) == 0 && v0[26] == 3)
  {
    OUTLINED_FUNCTION_24_5();
    v18 = swift_task_alloc();
    v0[43] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_32_9(v18);
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24_5();
  v21 = swift_task_alloc();
  v0[45] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_32_9(v21);
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v19 = [*(v18 + 392) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v20))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v20 & 0xC000000000000001) == 0, v20);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v20 + 32);
    }

    v22 = v21;
    v23 = *(v18 + 288);
    v24 = *(v18 + 296);
    v25 = *(v18 + 280);
    v73 = *(v18 + 272);
    v26 = *(v18 + 264);
    v74 = *(v18 + 256);
    v75 = *(v18 + 376);
    v27 = *(v18 + 232);
    v72 = *(v18 + 224);

    v28 = [v22 fullPrint];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    ButtonConfigurationModel.init(label:url:)(v29, v31, v24);
    outlined init with copy of ButtonConfigurationModel(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
    v32 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_424FD0;
    outlined init with take of ButtonConfigurationModel(v23, v33 + v32);
    (*(v26 + 16))(v73, v72, v74);
    OutputGenerationManifest.responseViewId.setter();
    __swift_project_boxed_opaque_existential_1((v27 + 24), *(v27 + 48));
    v34 = OUTLINED_FUNCTION_4_3();
    v35(v34);
    OUTLINED_FUNCTION_7_0((v18 + 56));
    *(v18 + 120) = type metadata accessor for PhoneSnippetDataModels(0);
    OUTLINED_FUNCTION_12_24();
    *(v18 + 128) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v36, v37, &protocol conformance descriptor for PhoneSnippetDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 96));
    OUTLINED_FUNCTION_77_5(boxed_opaque_existential_1);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = OUTLINED_FUNCTION_48_0(v39);
    *(v18 + 408) = v40;
    *(v40 + 16) = xmmword_426260;
    *(v40 + 32) = v75;
    v41 = v75;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v18 + 416) = v42;
    *v42 = v43;
    v42[1] = CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:);
    OUTLINED_FUNCTION_50_8();
    OUTLINED_FUNCTION_46_6();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v44, v45, v46, v47, v48, v49);
  }

  else
  {
    v51 = *(v18 + 392);
    v52 = *(v18 + 376);
    v53 = *(v18 + 248);

    v54 = [v51 catId];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *v53 = v55;
    v53[1] = v57;
    v53[2] = 0xD00000000000004BLL;
    v53[3] = 0x8000000000459300;
    v53[4] = 0xD000000000000043;
    v53[5] = 0x8000000000459520;
    v53[6] = 278;
    OUTLINED_FUNCTION_43_3();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48();
    v60 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v58, v59, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_147(v60);
    PhoneError.logged()(v61);
    OUTLINED_FUNCTION_5_23();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v53, v62);
    swift_willThrow();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v18 + 328), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_46_6();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 376);
  v14 = *(v12 + 328);
  v15 = *(v12 + 296);
  v17 = *(v12 + 264);
  v16 = *(v12 + 272);
  v18 = *(v12 + 256);

  (*(v17 + 8))(v16, v18);
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v15, v19);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v12 + 56));

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();

  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1[6] = v2;
  v1[7] = v0;
  v3 = type metadata accessor for ParameterIdentifier();
  v1[8] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[9] = v4;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v1[12] = *(v5 + 272);
  OUTLINED_FUNCTION_49_1();
  v1[13] = *(v6 + 264);
  v1[14] = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for ParameterResolutionRecord();
  v1[15] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_62_4();
  v1[18] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

BOOL CallingIntentUnsupportedValueFlowStrategy.shouldClearContactsSlot(resolveRecord:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  v1 = ParameterResolutionRecord.result.getter();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 unsupportedReason];

    return v3 == &dword_0 + 2;
  }

  else
  {

    return 0;
  }
}

void CallingIntentUnsupportedValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)()
{
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

char *CallingIntentUnsupportedValueFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();

  return v0;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.__deallocating_deinit()
{
  CallingIntentUnsupportedValueFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 296) + **(**v2 + 296));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1)
{
  v6 = (*(**v1 + 368) + **(**v1 + 368));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v6(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentUnsupportedValueFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t outlined assign with take of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);

  return closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(a1);
}

uint64_t OUTLINED_FUNCTION_64_3()
{
}

unint64_t OUTLINED_FUNCTION_65_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, a1 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_77_5(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_78_4()
{
}

uint64_t OUTLINED_FUNCTION_88_1()
{
}

uint64_t OUTLINED_FUNCTION_91_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a3;
  v6[10] = v5;
  v6[8] = a2;
  v7 = swift_task_alloc();
  v6[11] = v7;
  *v7 = v6;
  v7[1] = CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:);

  return CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)();
}

uint64_t CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:)()
{
  OUTLINED_FUNCTION_15();
  *(*v0 + 96) = v1;

  return _swift_task_switch(CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:), 0, 0);
}

{
  v1 = specialized BidirectionalCollection.last.getter(v0[12]);
  if (v1)
  {
    v2 = v0[9];
    v3 = *(v0[10] + 16);
    v0[6] = v0[8];
    v0[7] = v2;
    v4 = v1;

    result = outlined bridged method (ob) of @objc SANotificationObject.applicationId.getter(v4);
    if (v6)
    {
      v7 = result;
      v8 = v6;
      result = outlined bridged method (ob) of @objc SANotificationObject.notificationId.getter(v4);
      if (v9)
      {
        v10 = result;
        v11 = v9;

        v0[2] = v7;
        v0[3] = v8;
        v0[4] = v10;
        v0[5] = v11;
        (*(*v3 + 184))(v0 + 6, v0 + 2);

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:

  v12 = v0[1];

  return v12();
}

Swift::Bool __swiftcall CallNotificationContextProvider.hasCallNotification(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(&v6, &v5);

  v3 = v7;
  if (v7)
  {
    outlined consume of CallNotificationContextProvider.CallNotification?(v6, v7, v8, v9);
  }

  return v3 != 0;
}

Swift::String __swiftcall CallNotificationContextProvider.getCallNotificationApplicationId(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(v22, &v21);

  if (v22[1])
  {
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_86_1();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315394;
    v8 = OUTLINED_FUNCTION_20_0();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    *(v6 + 14) = OUTLINED_FUNCTION_6_25(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_4_17(&dword_0, v16, v17, "#CallNotificationContextProvider returned applicationId %s for refId %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_5_7();
  }

  v18 = OUTLINED_FUNCTION_20_0();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall CallNotificationContextProvider.getCallNotificationCallId(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(v22, &v21);

  if (v22[1])
  {
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_86_1();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315394;
    v8 = OUTLINED_FUNCTION_20_0();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    *(v6 + 14) = OUTLINED_FUNCTION_6_25(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_4_17(&dword_0, v16, v17, "#CallNotificationContextProvider returned callId %s for refId %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_5_7();
  }

  v18 = OUTLINED_FUNCTION_20_0();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = type metadata accessor for Date();
  v0[6] = v4;
  v0[7] = *(v4 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:), 0, 0);
}

{
  v1 = v0[5];
  v2 = [objc_allocWithZone(SANotificationsSearch) init];
  v0[10] = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v2 setIsOnDeviceSearch:isa];

  v4 = v2;
  if (v1)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[3];
  [v2 setAppId:v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SANotificationsSearch.notificationType.setter(v7, v8, v2);
  v9 = v6[3];
  v10 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v9);
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAOnDeviceNotificationsSearchCompleted, SAOnDeviceNotificationsSearchCompleted_ptr);
  *v11 = v0;
  v11[1] = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v9, v12, v10);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  *(v2 + 96) = v3;
  *(v2 + 104) = v0;

  if (v0)
  {
    v4 = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);
  }

  else
  {
    v4 = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);
  }

  return _swift_task_switch(v4, 0, 0);
}

id CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)()
{
  v35 = v0;
  v1 = v0;
  result = outlined bridged method (pb) of @objc SAOnDeviceNotificationsSearchCompleted.notifications.getter(*(v0 + 96));
  if (result)
  {
    v3 = result;

    v31 = *(v1 + 104);
    v4 = *(v1 + 56);
    v34 = _swiftEmptyArrayStorage;
    v5 = specialized Array.count.getter(v3);
    v6 = 0;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v32 = (v4 + 8);
    v33 = v1;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(v8);
      if (v10 && (, (v11 = [v9 notificationId]) != 0))
      {

        static Date.now.getter();
        result = [v9 date];
        if (!result)
        {
          __break(1u);
          goto LABEL_33;
        }

        v12 = result;
        v14 = *(v1 + 64);
        v13 = *(v1 + 72);
        v15 = *(v1 + 48);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince(_:)();
        v17 = v16;
        v18 = *v32;
        (*v32)(v13, v15);
        v18(v14, v15);
        if (v17 <= 30.0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          OUTLINED_FUNCTION_8_27();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_8_27();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v1 = v33;
        v7 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v6;
    }

    v5 = v34;
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_19;
    }

LABEL_31:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_19:
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    OUTLINED_FUNCTION_10_24();
    swift_retain_n();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_86_1();
      *v22 = 134218240;
      v23 = specialized Array.count.getter(v3);

      *(v22 + 4) = v23;

      *(v22 + 12) = 2048;
      v24 = specialized Array.count.getter(v5);

      *(v22 + 14) = v24;

      OUTLINED_FUNCTION_4_17(&dword_0, v25, v26, "#CallNotificationContextProvider search returned %ld notifications, and %ld after filtering");
      OUTLINED_FUNCTION_5_7();
    }

    else
    {
      OUTLINED_FUNCTION_10_24();

      swift_bridgeObjectRelease_n();
    }

    v34 = specialized Array._copyToContiguousArray()();
    specialized MutableCollection<>.sort(by:)(&v34);
    if (!v31)
    {
      v28 = *(v1 + 80);

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_3_28();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_3_28();
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  return result;
}

{
  v40 = v0;
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39[0] = v8;
    *v7 = 136315138;
    v1[2] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v39);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "#CallNotificationContextProvider encountered error submitting SANotificationsSearch: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_26_0(v7);
  }

  else
  {
  }

  v12 = v1[7];
  v39[0] = _swiftEmptyArrayStorage;
  v13 = specialized Array.count.getter(_swiftEmptyArrayStorage);
  v14 = 0;
  v37 = v1;
  v38 = (v12 + 8);
  v15 = _swiftEmptyArrayStorage >> 62;
  while (1)
  {
    if (v13 == v14)
    {
      v28 = v39[0];
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      __swift_project_value_buffer(v2, static Logger.siriPhone);
      OUTLINED_FUNCTION_10_24();
      swift_retain_n();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_86_1();
        *v31 = 134218240;
        v32 = specialized Array.count.getter(_swiftEmptyArrayStorage);

        *(v31 + 4) = v32;

        *(v31 + 12) = 2048;
        v33 = specialized Array.count.getter(v28);

        *(v31 + 14) = v33;

        _os_log_impl(&dword_0, v29, v30, "#CallNotificationContextProvider search returned %ld notifications, and %ld after filtering", v31, 0x16u);
        OUTLINED_FUNCTION_26_0(v31);
      }

      else
      {
        OUTLINED_FUNCTION_10_24();

        swift_bridgeObjectRelease_n();
      }

      v39[0] = specialized Array._copyToContiguousArray()();
      specialized MutableCollection<>.sort(by:)(v39);
      v34 = v1[10];

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_3_28();

      __asm { BRAA            X2, X16 }
    }

    if (v15)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_30;
      }

      v16 = _swiftEmptyArrayStorage[v14 + 4];
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(v16);
    if (!v18 || (, (v19 = [v17 notificationId]) == 0))
    {

      goto LABEL_19;
    }

    static Date.now.getter();
    result = [v17 date];
    if (!result)
    {
      break;
    }

    v21 = result;
    v23 = v1[8];
    v22 = v1[9];
    v24 = v1[6];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v26 = v25;
    v27 = *v38;
    (*v38)(v22, v24);
    v27(v23, v24);
    if (v26 <= 30.0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_8_27();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_8_27();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v15 = _swiftEmptyArrayStorage >> 62;
    v1 = v37;
LABEL_19:
    ++v14;
  }

  __break(1u);
  return result;
}

uint64_t CallNotificationContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  swift_allocObject();
  *(v0 + 16) = OUTLINED_FUNCTION_1_44();
  return v0;
}

uint64_t CallNotificationContextProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  swift_allocObject();
  *(v0 + 16) = OUTLINED_FUNCTION_1_44();
  return v0;
}

uint64_t protocol witness for CallNotificationContextProviding.update(aceServiceInvoker:refId:applicationId:) in conformance CallNotificationContextProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 112) + **(**v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow;

  return v14(a1, a2, a3, a4, a5);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v133 = a1;
  v147 = type metadata accessor for Date();
  __chkstk_darwin(v147);
  v144 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v130 - v8;
  __chkstk_darwin(v10);
  v137 = &v130 - v11;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v132 = &v130 - v14;
  __chkstk_darwin(v15);
  v141 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v130 = a4;
    v131 = &v130 - v17;
    v136 = v18;
    v20 = 0;
    v146 = (v16 + 8);
    v21 = _swiftEmptyArrayStorage;
    v22 = &unk_548000;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v134 = v23;
      if (v24 < v19)
      {
        v145 = v19;
        v25 = *v141;
        v143 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[246]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v148 = v27;
        v32 = v131;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v28 v22[246]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v132;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v140) = static Date.< infix(_:_:)();
        v36 = *v146;
        v37 = v35;
        v38 = v147;
        (*v146)(v37, v147);
        v138 = v36;
        (v36)(v32, v38);

        v135 = 8 * v31;
        a4 = (v25 + 8 * v31 + 16);
        v39 = (v31 + 2);
        v24 = v143;
        v22 = &unk_548000;
        v40 = v145;
        v139 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v143 = v24;
          v42 = *(a4 - 1);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[246]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v148 = v41;
          v47 = v136;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = [v44 v22[246]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v137;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LODWORD(v49) = static Date.< infix(_:_:)() & 1;
          v51 = v50;
          v52 = v147;
          v53 = v138;
          (v138)(v51, v147);
          v53(v47, v52);

          a4 += 8;
          v24 = v143 + 1;
          v41 = v148;
          v39 = v148 + 1;
          v22 = &unk_548000;
          v21 = v139;
          v40 = v145;
          if ((v140 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v140)
        {
          v54 = v134;
          if (v24 < v134)
          {
            goto LABEL_127;
          }

          if (v134 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v135;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v141;
                if (!*v141)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v141[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v134))
        {
          goto LABEL_126;
        }

        if (v24 - v134 < v130)
        {
          v62 = &v130[v134];
          if (__OFADD__(v134, v130))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v141[1];
          }

          if (v62 >= v134)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v139 = v21;
            v145 = *v141;
            v63 = v145 + 8 * v24 - 8;
            v64 = (v134 - v24);
            v135 = v62;
LABEL_33:
            v143 = v24;
            v65 = *(v145 + 8 * v24);
            v138 = v64;
            v66 = v64;
            v140 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[246]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v72 = [v69 v22[246]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v148 = v68;
              a4 = v66;
              v74 = v144;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v73) = static Date.< infix(_:_:)();
              v75 = *v146;
              v76 = v74;
              v77 = v147;
              (*v146)(v76, v147);
              v75(v9, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &unk_548000;
LABEL_41:
                v24 = v143 + 1;
                v63 = v140 + 8;
                v64 = v138 - 1;
                if (v143 + 1 == v135)
                {
                  v24 = v135;
                  v21 = v139;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v145)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              ++v66;
              v22 = &unk_548000;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v134)
      {
        goto LABEL_125;
      }

      v143 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v120;
      }

      v79 = *(v21 + 16);
      a4 = (v79 + 1);
      v80 = v143;
      if (v79 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v80 = v143;
        v21 = v121;
      }

      *(v21 + 16) = a4;
      v81 = v21 + 32;
      v82 = (v21 + 32 + 16 * v79);
      *v82 = v134;
      v82[1] = v80;
      v148 = *v133;
      if (!v148)
      {
        goto LABEL_139;
      }

      if (v79)
      {
        break;
      }

LABEL_92:
      v19 = v141[1];
      v20 = v143;
      if (v143 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v83 = a4 - 1;
      v84 = (v81 + 16 * (a4 - 1));
      v85 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == &dword_0 + 3)
      {
        v86 = *(v21 + 32);
        v87 = *(v21 + 40);
        v96 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        v89 = v96;
LABEL_63:
        if (v89)
        {
          goto LABEL_112;
        }

        v101 = *v85;
        v100 = v85[1];
        v102 = __OFSUB__(v100, v101);
        v103 = v100 - v101;
        v104 = v102;
        if (v102)
        {
          goto LABEL_115;
        }

        v105 = v84[1];
        v106 = v105 - *v84;
        if (__OFSUB__(v105, *v84))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v103, v106))
        {
          goto LABEL_120;
        }

        if (v103 + v106 >= v88)
        {
          if (v88 < v106)
          {
            v83 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v108 = *v85;
      v107 = v85[1];
      v96 = __OFSUB__(v107, v108);
      v103 = v107 - v108;
      v104 = v96;
LABEL_78:
      if (v104)
      {
        goto LABEL_117;
      }

      v110 = *v84;
      v109 = v84[1];
      v96 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v96)
      {
        goto LABEL_119;
      }

      if (v111 < v103)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v83 - 1 >= a4)
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v141)
      {
        goto LABEL_136;
      }

      v115 = v21;
      a4 = (v81 + 16 * (v83 - 1));
      v116 = *a4;
      v117 = v81 + 16 * v83;
      v21 = *(v117 + 8);
      v118 = v142;
      specialized _merge<A>(low:mid:high:buffer:by:)((*v141 + 8 * *a4), (*v141 + 8 * *v117), (*v141 + 8 * v21), v148);
      v142 = v118;
      if (v118)
      {
        goto LABEL_105;
      }

      if (v21 < v116)
      {
        goto LABEL_107;
      }

      v119 = *(v115 + 16);
      if (v83 > v119)
      {
        goto LABEL_108;
      }

      *a4 = v116;
      *(a4 + 1) = v21;
      if (v83 >= v119)
      {
        goto LABEL_109;
      }

      a4 = (v119 - 1);
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v117 + 16), v119 - 1 - v83, (v81 + 16 * v83));
      v21 = v115;
      *(v115 + 16) = v119 - 1;
      v22 = &unk_548000;
      if (v119 <= 2)
      {
        goto LABEL_92;
      }
    }

    v90 = v81 + 16 * a4;
    v91 = *(v90 - 64);
    v92 = *(v90 - 56);
    v96 = __OFSUB__(v92, v91);
    v93 = v92 - v91;
    if (v96)
    {
      goto LABEL_110;
    }

    v95 = *(v90 - 48);
    v94 = *(v90 - 40);
    v96 = __OFSUB__(v94, v95);
    v88 = v94 - v95;
    v89 = v96;
    if (v96)
    {
      goto LABEL_111;
    }

    v97 = v85[1];
    v98 = v97 - *v85;
    if (__OFSUB__(v97, *v85))
    {
      goto LABEL_113;
    }

    v96 = __OFADD__(v88, v98);
    v99 = v88 + v98;
    if (v96)
    {
      goto LABEL_116;
    }

    if (v99 >= v93)
    {
      v113 = *v84;
      v112 = v84[1];
      v96 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v96)
      {
        goto LABEL_124;
      }

      if (v88 < v114)
      {
        v83 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v133;
  if (!*v133)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v123 = (v21 + 16);
  v122 = *(v21 + 16);
  while (v122 >= 2)
  {
    if (!*v141)
    {
      goto LABEL_137;
    }

    v124 = v21;
    v21 += 16 * v122;
    v125 = *v21;
    v126 = &v123[2 * v122];
    v127 = *(v126 + 1);
    v128 = v142;
    specialized _merge<A>(low:mid:high:buffer:by:)((*v141 + 8 * *v21), (*v141 + 8 * *v126), (*v141 + 8 * v127), a4);
    v142 = v128;
    if (v128)
    {
      break;
    }

    if (v127 < v125)
    {
      goto LABEL_121;
    }

    if (v122 - 2 >= *v123)
    {
      goto LABEL_122;
    }

    *v21 = v125;
    *(v21 + 8) = v127;
    v129 = *v123 - v122;
    if (*v123 < v122)
    {
      goto LABEL_123;
    }

    v122 = *v123 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v126 + 16, v129, v126);
    *v123 = v122;
    v21 = v124;
  }

LABEL_105:
}

id specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v63 = type metadata accessor for Date();
  __chkstk_darwin(v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v59 = &v56 - v13;
  __chkstk_darwin(v14);
  i = &v56 - v15;
  v16 = (a2 - a1) / 8;
  v62 = (v17 + 8);
  v18 = (a3 - a2) / 8;
  if (v16 < v18)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v19 = &a4[8 * v16];
    v20 = &unk_548000;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[246]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v26 v20[246]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v31) = static Date.< infix(_:_:)();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 8;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 8;
      v19 = v64;
      a3 = v65;
      v20 = &unk_548000;
    }

    v36 = a4;
    a4 += 8;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
  v19 = &a4[8 * v18];
  v38 = &unk_548000;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = (a2 - 8);
  v40 = a3 - 8;
  v66 = a2;
  for (i = a2 - 8; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 8;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[246]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v45 v38[246]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v47) = static Date.< infix(_:_:)();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v11, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &unk_548000;
      if (v65 + 8 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 8)
    {
      *v65 = *v42;
    }

    v40 = v52 - 8;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &unk_548000;
  }

LABEL_31:
  v54 = (v19 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return &dword_0 + 1;
}

uint64_t outlined bridged method (pb) of @objc SAOnDeviceNotificationsSearchCompleted.notifications.getter(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SANotificationOnDeviceObject, SANotificationOnDeviceObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SANotificationsSearch.notificationType.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setNotificationType:v4];
}

uint64_t outlined bridged method (ob) of @objc SANotificationObject.applicationId.getter(void *a1)
{
  v2 = [a1 applicationId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined consume of CallNotificationContextProvider.CallNotification?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(void *a1)
{
  v1 = [a1 applicationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t CallRecordDisplayTextComponents.init(callRecord:deviceState:phoneCallDisplayTextCats:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = outlined init with take of PhoneCallFeatureFlagProviding(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

uint64_t CallRecordDisplayTextComponents.callerNameText.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v1);
  v3 = (v17 - v2);
  v4 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = [*v0 caller];
  if (!v11)
  {
    (*(**(v0 + 48) + class metadata base offset for PhoneCallDisplayTextCATs + 632))();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17[1] = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
    }

    else
    {
      (*(v6 + 32))(v10, v3, v4);
      v15 = TemplatingResult.print.getter();
      (*(v6 + 8))(v10, v4);
      if (*(v15 + 16))
      {
        v14 = *(v15 + 32);

        return v14;
      }
    }

    return 0;
  }

  v12 = v11;
  v13 = [v11 displayName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v14;
}

uint64_t CallRecordDisplayTextComponents.callerHandleLabelText.getter()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = [*v0 caller];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 personHandle];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 label];

  if (!v11)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v3 + 8))(v7, v1);

  v12 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  return v12;
}

uint64_t CallRecordDisplayTextComponents.callDateText.getter()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = [*v0 dateCreated];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [objc_allocWithZone(NSDateFormatter) init];
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of DeviceState.siriLocale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v7, v1);
  [v17 setLocale:isa];

  [v17 setDateStyle:1];
  v19 = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v17 stringFromDate:v19];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v30);
    _os_log_impl(&dword_0, v25, v26, "formattedDate: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  (*(v10 + 8))(v14, v8);
  return v21;
}

uint64_t CallRecordDisplayTextComponents.callDurationText.getter()
{
  v0 = INCallRecord.callDuration.getter();
  if (v1)
  {
    return 0;
  }

  v2 = *&v0;
  v3 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v3 setUnitsStyle:0];
  [v3 setAllowedUnits:192];
  [v3 setZeroFormattingBehavior:0x10000];
  v4 = [v3 stringFromTimeInterval:ceil(v2)];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 48;
  v7._object = 0xE100000000000000;
  LOBYTE(v5) = String.hasPrefix(_:)(v7);

  if (v5)
  {
    specialized Collection.dropFirst(_:)(1uLL);
    v6 = static String._fromSubstring(_:)();
  }

  return v6;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CallRecordDisplayTextComponents(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CallRecordDisplayTextComponents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *CallRecordTableSnippetBuilder.makeItemGroup()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = [v2 callRecords];
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter(v5);

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [v2 callRecords];
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [objc_allocWithZone(SASTApplicationBannerItem) init];
  App.appIdentifier.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setBundleId:v12];

  __chkstk_darwin(v14);
  v22[2] = v1;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo19_HKEmergencyContactCG_So8INPersonCs5NeverOTg5(partial apply for closure #1 in CallRecordTableSnippetBuilder.makeItemGroup(), v22, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  v23 = xmmword_426260;
  *(v16 + 16) = xmmword_426260;
  *(v16 + 32) = v10;
  v17 = v10;

  if (v15 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v18 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v18 = v15;
  }

  v24 = v16;
  specialized Array.append<A>(contentsOf:)(v18);
  v19 = v24;
  v20 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v19, v20);
  v13 = swift_allocObject();
  *(v13 + 16) = v23;
  *(v13 + 32) = v20;

  return v13;
}

uint64_t CallRecordTableSnippetBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a4(a1);
  a2(v5, 0);
}

void *CallRecordTableSnippetBuilder.makeCardSnippet()()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v4 = v0[2];
  v5 = [v4 callRecords];
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Array.count.getter(v7);

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = [v4 callRecords];
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *v0;
  if (App.isFirstParty()())
  {

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_426260;
    *(v13 + 32) = static CasinoFactory.makePlaceholderCardSection()();
    v14 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  }

  else
  {
    v16 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    v17 = OUTLINED_FUNCTION_0_35();
    v18(v17, v16);
    type metadata accessor for PhoneCallDisplayTextCATs(0);
    type metadata accessor for CATGlobals();
    v19 = v0[6];
    v20 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v19);
    (*(v20 + 8))(v35, v19, v20);
    CATGlobals.__allocating_init(device:)();
    static CATOption.defaultMode.getter();
    v36[5] = CATWrapper.__allocating_init(options:globals:)();
    SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(v11);
    v22 = v21;

    outlined destroy of SCHRowCardSectionComponentsFactory(v36);
    v14 = Array<A>.toCardSnippet()(v22);
  }

  v23 = v14;

  v24 = v1[1];
  v25 = v1[6];
  v26 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v25);
  v27 = *(v26 + 8);
  v28 = v23;
  v27(v36, v25, v26);
  v29 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v12, [v24 preferredCallProvider], v36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v30 = SAUISash.init(app:)(v29);
  __swift_destroy_boxed_opaque_existential_1(v36);
  [v28 setSash:v30];

  type metadata accessor for SiriKitAceViewBuilder();
  v31 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v32 = OUTLINED_FUNCTION_0_35();
  v33(v32, v31);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v36);
  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v15 = dispatch thunk of SiriKitAceViewBuilder.build()();

  return v15;
}

uint64_t closure #1 in CallRecordTableSnippetBuilder.makeItemGroup()@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for CATOption();
  __chkstk_darwin(v5 - 8);
  v6 = *a1;
  v7 = a2[6];
  v8 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v7);
  v9 = *(v8 + 8);
  v10 = v6;
  v9(v20, v7, v8);
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  type metadata accessor for CATGlobals();
  v12 = a2[6];
  v11 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v12);
  (*(v11 + 8))(v18, v12, v11);
  CATGlobals.__allocating_init(device:)();
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v19[0] = v10;
  v19[1] = v10;
  v20[5] = v13;
  v14 = v10;
  v15 = SCHCardItemComponents.toCardItem()();
  result = outlined destroy of SCHCardItemComponents(v19);
  *a3 = v15;
  return result;
}

uint64_t CallRecordTableSnippetBuilder.init(app:intent:intentResponse:sharedGlobals:appInfoBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  outlined init with take of SPHConversation(a4, (a6 + 3));

  return outlined init with take of SPHConversation(a5, (a6 + 8));
}

uint64_t getEnumTagSinglePayload for CallRecordTableSnippetBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CallRecordTableSnippetBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v13);
  v14 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18(v14);
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v7);
  outlined destroy of PhoneError(v11);
  OUTLINED_FUNCTION_5_25();
  a5(v5);
  return outlined destroy of Result<TemplatingResult, Error>(v5);
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v9 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v15);
  v16 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18(v16);
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v9);
  outlined destroy of PhoneError(v13);
  OUTLINED_FUNCTION_5_25();
  a7(v7);
  return outlined destroy of Result<TemplatingResult, Error>(v7);
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v10 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v16);
  v17 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18(v17);
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v10);
  outlined destroy of PhoneError(v14);
  OUTLINED_FUNCTION_5_25();
  a8(v8);
  return outlined destroy of Result<TemplatingResult, Error>(v8);
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;
  v13 = *(*v11 + class metadata base offset for StartCallCATs + 1728);

  v13(partial apply for closure #1 in CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:), v12);
}

uint64_t closure #1 in CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for TemplatingResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (v19 - v16);
  outlined init with copy of Result<TemplatingResult, Error>(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v17 = *v14;
  }

  else
  {
    (*(v8 + 32))(v11, v14, v7);
    v19[1] = a3;
    TemplatingResult.speak.getter();
    TemplatingResult.print.getter();
    TemplatingResult.behaviorAfterSpeaking.getter();
    TemplatingResult.dialogIdentifier.getter();
    TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:)();
    (*(v8 + 8))(v11, v7);
  }

  swift_storeEnumTagMultiPayload();
  a2(v17);
  return outlined destroy of Result<TemplatingResult, Error>(v17);
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_16_22(a1);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_9_24();
  v6 = OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_6_27();
  (*(*v1 + class metadata base offset for SearchCallHistoryCATs + 56))(v4);
  OUTLINED_FUNCTION_15_22();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_17_13(v11);
    OUTLINED_FUNCTION_27_2();
    *v3 = 0xD00000000000002CLL;
    v3[1] = v13;
    v3[2] = 0xD000000000000035;
    v3[3] = 0x8000000000459670;
    OUTLINED_FUNCTION_27_2();
    v3[4] = v14 + 11;
    v3[5] = v15;
    OUTLINED_FUNCTION_12_26(22);
    v16 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_14_21(v16);
    PhoneError.logged()(v17);
    outlined destroy of PhoneError(v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_17_13(v2);
  }

  else
  {
    Result<>.firstPrint.getter();
    if (v19)
    {
      String.toSpeakableString.getter();
    }

    v20 = OUTLINED_FUNCTION_5_26();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, v21, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v22 = type metadata accessor for SpeakableString();
    return OUTLINED_FUNCTION_10_25(v22);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(void *a1, uint64_t a2)
{
  v6 = (*(*a1 + class metadata base offset for SearchCallHistoryCATsSimple + 16) + **(*a1 + class metadata base offset for SearchCallHistoryCATsSimple + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:);

  return v6(a2);
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:), 0, 0);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)()
{
  v1 = [*(v0 + 24) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 24);

    v6 = [v4 fullPrint];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v10 = *(v0 + 24);

    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v7, v9);
}

uint64_t static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_16_22(a1);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_9_24();
  v6 = OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_6_27();
  (*(*v1 + class metadata base offset for SearchCallHistoryCATs + 24))(v4);
  OUTLINED_FUNCTION_15_22();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_17_13(v11);
    OUTLINED_FUNCTION_27_2();
    *v3 = 0xD000000000000027;
    v3[1] = v13;
    v3[2] = 0xD000000000000035;
    v3[3] = 0x8000000000459670;
    OUTLINED_FUNCTION_27_2();
    v3[4] = v14 + 22;
    v3[5] = v15;
    OUTLINED_FUNCTION_12_26(37);
    v16 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_14_21(v16);
    PhoneError.logged()(v17);
    outlined destroy of PhoneError(v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_17_13(v2);
  }

  else
  {
    Result<>.firstPrint.getter();
    if (v19)
    {
      String.toSpeakableString.getter();
    }

    v20 = OUTLINED_FUNCTION_5_26();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, v21, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v22 = type metadata accessor for SpeakableString();
    return OUTLINED_FUNCTION_10_25(v22);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x474E494F4754554FLL || a2 != 0xE800000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x44455353494DLL || a2 != 0xE600000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(a1);
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
      v35 = &type metadata for PhoneCallFeatureFlags;
      v36 = &protocol witness table for PhoneCallFeatureFlags;
      *&v34 = swift_allocObject();
      memcpy((v34 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
      outlined init with take of PhoneCallFeatureFlagProviding(&v34, v37);
      outlined init with copy of PhoneCallFeatureFlags(__dst, v30);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_2_37();
      if (dispatch thunk of DeviceState.isMac.getter())
      {
        if (one-time initialization token for siriFaceTimeMacExtension == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        if (dispatch thunk of DeviceState.isWatch.getter())
        {
          if (one-time initialization token for siriPhoneWatchExtension == -1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_37();
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriPhoneFaceTimeExtension == -1)
            {
              goto LABEL_18;
            }
          }

          else if (one-time initialization token for siriPhoneExtension == -1)
          {
LABEL_18:

            v8 = App.appIdentifier.getter();
            v10 = v9;

            OUTLINED_FUNCTION_27_2();
            if (v10)
            {
              v12 = v8;
            }

            else
            {
              v12 = 0xD000000000000017;
            }

            if (!v10)
            {
              v10 = v11;
            }

            v13 = [a1 callCapability];
            v14 = objc_allocWithZone(INStartCallIntent);
            v15 = @nonobjc INStartCallIntent.init(destinationType:contacts:callCapability:)(1, v4, v13);
            if (one-time initialization token for emptyStartCallIntent != -1)
            {
              swift_once();
            }

            v16 = [static PhoneCallIntentClassNames.emptyStartCallIntent typeName];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = outlined bridged method (ob) of @objc PBCodable.data.getter([v15 backingStore]);
            v30[0] = v12;
            v30[1] = v10;
            v30[2] = v17;
            v30[3] = v19;
            v30[4] = v20;
            v30[5] = v21;
            v31 = xmmword_42D7D0;
            v32 = 0;
            v33 = 1;
            static Device.current.getter();
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
            v22 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD000000000000034, 0x8000000000452770);
            v23 = StartAudioCallDirectAction.toDictionary()();
            v24 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

            outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v24, v22);
            v25 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(&v34);

            __swift_destroy_boxed_opaque_existential_1(&v34);
            object = AceObject.serializeToBase64()().value._object;

            if (object)
            {
              String.toSpeakableString.getter();

              outlined destroy of StartAudioCallDirectAction(v30);

              type metadata accessor for SpeakableString();
              v27 = OUTLINED_FUNCTION_4_19();
              v29 = 0;
            }

            else
            {

              outlined destroy of StartAudioCallDirectAction(v30);
              type metadata accessor for SpeakableString();
              v27 = OUTLINED_FUNCTION_4_19();
              v29 = 1;
            }

            return __swift_storeEnumTagSinglePayload(v27, v29, 1, v28);
          }
        }
      }

      swift_once();
      goto LABEL_18;
    }
  }

  type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
}

void static CallRecordViewUtils.buildPunchOutForVoicemail(callRecord:)(void *a1)
{
  v108 = type metadata accessor for URL();
  v104 = *(v108 - 8);
  __chkstk_darwin(v108);
  v110 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v107 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v102 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v105 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v102 - v11;
  __chkstk_darwin(v12);
  v102 = &v102 - v13;
  __chkstk_darwin(v14);
  v16 = &v102 - v15;
  __chkstk_darwin(v17);
  v109 = &v102 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  v26 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(v26);
  v106 = v26;
  if (v27)
  {
  }

  else
  {
    UUID.init()();
    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v20 + 8))(v25, v19);
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v28, v30, v26);
  }

  v31 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v19) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v32 = [a1 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = HIBYTE(v35) & 0xF;
    v37 = v33 & 0xFFFFFFFFFFFFLL;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v35) & 0xF;
    }

    else
    {
      v38 = v33 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v110;
    if (!v38)
    {

      v40 = &dword_54B000;
      goto LABEL_72;
    }

    v40 = &dword_54B000;
    if ((v35 & 0x1000000000000000) != 0)
    {
      v112 = 0;
      v43 = specialized _parseInteger<A, B>(ascii:radix:)(v33, v35, 10);
      v68 = v101;
LABEL_71:

      if ((v68 & 1) == 0)
      {
        v77 = [objc_opt_self() phoneAppVoicemailURLForRecordID:v43];
        if (!v77)
        {
          v76 = 1;
          v55 = v108;
          v54 = v109;
          v56 = v105;
          v16 = v102;
          goto LABEL_83;
        }

        v78 = v77;
        v16 = v102;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v76 = 0;
        v55 = v108;
        v54 = v109;
        goto LABEL_80;
      }

LABEL_72:
      if (*(v40 + 369) != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static Logger.siriPhone);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v70, v71);
      v55 = v108;
      v54 = v109;
      if (v72)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v70, v71, "#CallRecordViewUtils Unrecognized voicemail identifier, just opening voicemail tab", v73, 2u);
      }

      v74 = [objc_opt_self() phoneAppVoicemailURLForRecordID:-1];
      if (!v74)
      {
        v76 = 1;
        v56 = v105;
        v16 = v103;
        goto LABEL_83;
      }

      v75 = v74;
      v16 = v103;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = 0;
LABEL_80:
      v56 = v105;
LABEL_83:
      __swift_storeEnumTagSinglePayload(v16, v76, 1, v55);
      goto LABEL_84;
    }

    if ((v35 & 0x2000000000000000) != 0)
    {
      v111[0] = v33;
      v111[1] = v35 & 0xFFFFFFFFFFFFFFLL;
      if (v33 == 43)
      {
        if (v36)
        {
          if (--v36)
          {
            v43 = 0;
            v60 = v111 + 1;
            while (1)
            {
              v61 = *v60 - 48;
              if (v61 > 9)
              {
                break;
              }

              v62 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                break;
              }

              v43 = v62 + v61;
              if (__OFADD__(v62, v61))
              {
                break;
              }

              ++v60;
              if (!--v36)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_103:
        __break(1u);
        return;
      }

      if (v33 != 45)
      {
        if (v36)
        {
          v43 = 0;
          v65 = v111;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              break;
            }

            v67 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              break;
            }

            v65 = (v65 + 1);
            if (!--v36)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v36)
      {
        if (--v36)
        {
          v43 = 0;
          v51 = v111 + 1;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v53 - v52;
            if (__OFSUB__(v53, v52))
            {
              break;
            }

            ++v51;
            if (!--v36)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v41 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v41 = _StringObject.sharedUTF8.getter();
      }

      v42 = *v41;
      if (v42 == 43)
      {
        if (v37 >= 1)
        {
          v36 = v37 - 1;
          if (v37 != 1)
          {
            v43 = 0;
            if (v41)
            {
              v57 = v41 + 1;
              while (1)
              {
                v58 = *v57 - 48;
                if (v58 > 9)
                {
                  goto LABEL_69;
                }

                v59 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  goto LABEL_69;
                }

                v43 = v59 + v58;
                if (__OFADD__(v59, v58))
                {
                  goto LABEL_69;
                }

                ++v57;
                if (!--v36)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_102;
      }

      if (v42 != 45)
      {
        if (v37)
        {
          v43 = 0;
          if (v41)
          {
            while (1)
            {
              v63 = *v41 - 48;
              if (v63 > 9)
              {
                goto LABEL_69;
              }

              v64 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_69;
              }

              v43 = v64 + v63;
              if (__OFADD__(v64, v63))
              {
                goto LABEL_69;
              }

              ++v41;
              if (!--v37)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v43 = 0;
        LOBYTE(v36) = 1;
        goto LABEL_70;
      }

      if (v37 >= 1)
      {
        v36 = v37 - 1;
        if (v37 != 1)
        {
          v43 = 0;
          if (v41)
          {
            v44 = v41 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_69;
              }

              v46 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_69;
              }

              v43 = v46 - v45;
              if (__OFSUB__(v46, v45))
              {
                goto LABEL_69;
              }

              ++v44;
              if (!--v36)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v36) = 0;
LABEL_70:
          v112 = v36;
          v68 = v36;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  (*(v20 + 32))(v22, v7, v19);
  v47 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v49 = [v47 phoneAppVoicemailURLForMessageUUID:isa];

  if (v49)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v55 = v108;
  v54 = v109;
  v39 = v110;
  v40 = &dword_54B000;
  (*(v20 + 8))(v22, v19);
  __swift_storeEnumTagSinglePayload(v16, v50, 1, v55);
  v56 = v105;
LABEL_84:
  outlined init with take of URL?(v16, v54);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v54, v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v56, 1, v55) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (*(v40 + 369) != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.siriPhone);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
    }

    else
    {
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v83 = v104;
    v84 = v107;
    (*(v104 + 32))(v107, v56, v55);
    if (*(v40 + 369) != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.siriPhone);
    (*(v83 + 16))(v39, v84, v55);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v111[0] = v89;
      *v88 = 136315138;
      v90 = URL.absoluteString.getter();
      v91 = v39;
      v93 = v92;
      v94 = *(v83 + 8);
      v94(v91, v55);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v93, v111);

      *(v88 + 4) = v95;
      _os_log_impl(&dword_0, v86, v87, "#CallRecordViewUtils VM punchout: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
    }

    else
    {

      v94 = *(v83 + 8);
      v94(v39, v55);
    }

    v98 = v106;
    v97 = v107;
    URL._bridgeToObjectiveC()(v96);
    v100 = v99;
    [v98 setPunchOutUri:v99];

    v94(v97, v55);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}