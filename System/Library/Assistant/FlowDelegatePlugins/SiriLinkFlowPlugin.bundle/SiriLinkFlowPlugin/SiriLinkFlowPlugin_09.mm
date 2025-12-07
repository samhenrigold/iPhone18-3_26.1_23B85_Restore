Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WFInputTextFlowError(uint64_t a1)
{
  Hasher.init(_seed:)();
  WFInputTextFlowError.hash(into:)();
  return Hasher._finalize()();
}

void *WFInputTextFlow.exitValue.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  if (v2 == 2)
  {
    swift_errorRetain();
  }

  else if (v2 == 1)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError();
    return swift_allocError();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError()
{
  result = lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError;
  if (!lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError;
  if (!lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError);
  }

  return result;
}

void WFInputTextFlow.__allocating_init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_40_0();
  swift_allocObject();
  WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)();
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for CATOption();
  v19 = OUTLINED_FUNCTION_14(v18);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 16) = v17;
  *(v1 + 24) = v15;
  *(v1 + 32) = v13;
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  outlined init with copy of DeviceState(v5, v1 + 56);
  if (v7)
  {
    v20 = v13;
  }

  else
  {
    outlined init with copy of DeviceState(v5, v38);
    v21 = one-time initialization token for shared;
    v22 = v13;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = static WFDialogState.shared;
    v24 = type metadata accessor for WorkflowRunnerCATs(0);

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_10_8();
    v37 = CATWrapper.__allocating_init(options:globals:)();
    v25 = type metadata accessor for WorkflowRunnerCATsSimple(0);
    OUTLINED_FUNCTION_35_9(v25);
    OUTLINED_FUNCTION_10_8();
    v36 = CATWrapperSimple.__allocating_init(options:globals:)();
    v26 = type metadata accessor for RunCustomIntentCATs(0);
    OUTLINED_FUNCTION_35_9(v26);
    OUTLINED_FUNCTION_10_8();
    v35 = CATWrapper.__allocating_init(options:globals:)();
    v27 = type metadata accessor for RunCustomIntentCATsSimple(0);
    OUTLINED_FUNCTION_35_9(v27);
    OUTLINED_FUNCTION_10_8();
    v28 = CATWrapperSimple.__allocating_init(options:globals:)();
    v29 = type metadata accessor for RunVoiceCommandCATs(0);
    OUTLINED_FUNCTION_35_9(v29);
    OUTLINED_FUNCTION_10_8();
    v30 = CATWrapper.__allocating_init(options:globals:)();
    v31 = type metadata accessor for RunVoiceCommandCATsSimple(0);
    OUTLINED_FUNCTION_35_9(v31);
    OUTLINED_FUNCTION_10_8();
    v32 = CATWrapperSimple.__allocating_init(options:globals:)();
    v33 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_35_9(v33);
    OUTLINED_FUNCTION_10_8();
    CATWrapper.__allocating_init(options:globals:)();
    OUTLINED_FUNCTION_88_0();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    v7 = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v38, v23, v37, v36, v35, v28, v30, v32, v24);
  }

  *(v1 + 96) = v7;
  type metadata accessor for WorkflowSnippetProvider();
  v34 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  *(v1 + 104) = v34;
  type metadata accessor for WorkflowNLContextProvider();
  *(v1 + 112) = swift_allocObject();
  outlined init with take of Output(v3, v1 + 120);
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 3;
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  (*(v6 + 16))(v10, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_48();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    v16 = Input.description.getter();
    v18 = v17;
    (*(v6 + 8))(v10, v4);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v20);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "#WFInputTextFlow on input: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_15_0(v15);
    OUTLINED_FUNCTION_15_0(v14);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  if (*(v1 + 176) == 3 && !*(v1 + 168) && *(v1 + 160) == 1)
  {
    WFInputTextFlow.processTextResponse(input:)();
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WFInputTextFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

uint64_t WFInputTextFlow.execute()()
{
  v62 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = 0x7974706D65;
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v61 = v7;
    *v6 = 136315394;
    v8 = *(v5 + 32);
    v9 = [v8 message];
    if (v9)
    {
      v10 = v9;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v12, &v61);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    v14 = [v8 prompt];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE500000000000000;
      v16 = 0x7974706D65;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v61);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_0, v2, v3, "#WFInputTextFlow begins execution, message: %s, prompt: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v7);
    OUTLINED_FUNCTION_17();
  }

  v20 = v0[8];
  v21 = *(v20 + 160);
  v22 = *(v20 + 168);
  switch(*(v20 + 176))
  {
    case 1:
      v32 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_30_1(v44))
      {
        goto LABEL_25;
      }

      v45 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v45);
      v37 = "#WFInputTextFlow completed";
      goto LABEL_24;
    case 2:
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_30_1(v33))
      {
        v34 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v34);
        v37 = "#WFInputTextFlow error state";
LABEL_24:
        OUTLINED_FUNCTION_26(&dword_0, v35, v36, v37);
        OUTLINED_FUNCTION_17();
      }

LABEL_25:

      static ExecuteResponse.complete()();
      goto LABEL_35;
    case 3:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      v40 = OUTLINED_FUNCTION_30_1(v39);
      if (v21 | v22)
      {
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v41);
          OUTLINED_FUNCTION_26(&dword_0, v42, v43, "#WFInputTextFlow waiting for response");
          OUTLINED_FUNCTION_17();
        }

        goto LABEL_34;
      }

      if (v40)
      {
        v46 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v46);
        OUTLINED_FUNCTION_26(&dword_0, v47, v48, "#WFInputTextFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[10] = v49;
      *v49 = v50;
      v49[1] = WFInputTextFlow.execute();

      result = WFInputTextFlow.buildOutput()();
      break;
    default:

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_52();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "#WFInputTextFlow responseReceived", v25, 2u);
        OUTLINED_FUNCTION_15_0(v25);
      }

      if (v22)
      {
        v26 = objc_allocWithZone(WFInputTextDialogResponse);
        v27 = @nonobjc WFInputTextDialogResponse.init(inputtedText:cancelled:)(v21, v22, 0);
        v29 = *(v20 + 160);
        v28 = *(v20 + 168);
        *(v20 + 160) = v27;
        *(v20 + 168) = 0;
        v30 = *(v20 + 176);
        *(v20 + 176) = 1;
        v31 = v27;
        outlined consume of WFInputTextFlow.State(v29, v28, v30);
        static ExecuteResponse.ongoing(requireInput:)();
      }

      else
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v53))
        {
          v54 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v54);
          OUTLINED_FUNCTION_26(&dword_0, v55, v56, "#WFInputTextFlow received empty text");
          OUTLINED_FUNCTION_17();
        }

        v57 = *(v20 + 160);
        v58 = *(v20 + 168);
        *(v20 + 160) = 0;
        *(v20 + 168) = 0;
        v59 = *(v20 + 176);
        *(v20 + 176) = 3;
        outlined consume of WFInputTextFlow.State(v57, v58, v59);
LABEL_34:
        static ExecuteResponse.ongoing(requireInput:)();
      }

LABEL_35:
      OUTLINED_FUNCTION_6_0();

      result = v60();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = WFInputTextFlow.execute();
  }

  else
  {
    v7 = WFInputTextFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 64);
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = WFInputTextFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = WFInputTextFlow.execute();
  }

  else
  {
    v7 = WFInputTextFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 64);
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *(v1 + 160) = xmmword_21D190;
  v4 = *(v1 + 176);
  *(v1 + 176) = 3;
  outlined consume of WFInputTextFlow.State(v2, v3, v4);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_38_4(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v4, v5, "#WFInputTextFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v3);
  }

  OUTLINED_FUNCTION_31_6();
  v6 = OUTLINED_FUNCTION_51_4();
  outlined consume of WFInputTextFlow.State(v6, v7, v0);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_38_4(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v5, v6, "#WFInputTextFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v4);
  }

  OUTLINED_FUNCTION_31_6();
  v7 = OUTLINED_FUNCTION_51_4();
  outlined consume of WFInputTextFlow.State(v7, v8, v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t WFInputTextFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFInputTextFlow();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(&lazy protocol witness table cache variable for type WFInputTextFlow and conformance WFInputTextFlow, v2, type metadata accessor for WFInputTextFlow, &protocol conformance descriptor for WFInputTextFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFInputTextFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for DialogPhase();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for NLContextUpdate();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[15] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v7))
    {
      v8 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v8);
      OUTLINED_FUNCTION_26(&dword_0, v9, v10, "#WFInputTextFlow: building rfv2 snippet");
      OUTLINED_FUNCTION_17();
    }

    v11 = v0[3];

    v12 = *(v11 + 32);
    v0[19] = v12;
    OUTLINED_FUNCTION_18_4();
    v24 = (*(v13 + 200) + **(v13 + 200));
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = WFInputTextFlow.buildOutput();

    return v24(v12);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v18))
    {
      v19 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v19);
      OUTLINED_FUNCTION_26(&dword_0, v20, v21, "#WFInputTextFlow: building rfv1 snippet");
      OUTLINED_FUNCTION_17();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[18] = v22;
    *v22 = v23;
    v22[1] = WFInputTextFlow.buildOutput();

    return WFInputTextFlow.buildOutput_rfv1()();
  }
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v9();
  }

  else
  {
    *(v5 + 168) = v3;
    v11 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v11);
  }
}

{
  v1 = v0[21];
  v2 = v0[13];
  v18 = v0[12];
  v20 = v1;
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v16 = v0[14];
  v17 = v0[4];
  OUTLINED_FUNCTION_18_4();
  (*(v7 + 224))();
  static DialogPhase.confirmed.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v3, v5);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 16))(v17, v16, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[22] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[23] = v9;
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = v20;
  v19 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v10 = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[24] = v11;
  *v11 = v12;
  v11[1] = WFInputTextFlow.buildOutput();
  v13 = v0[11];
  v14 = v0[2];

  return v19(v14, v9, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t WFInputTextFlow.buildOutput_rfv1()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[9] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for NLContextUpdate();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  v1 = *(v0[8] + 32);
  v0[16] = v1;
  OUTLINED_FUNCTION_18_4();
  v7 = (*(v2 + 192) + **(v2 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[17] = v3;
  *v3 = v4;
  v3[1] = WFInputTextFlow.buildOutput_rfv1();
  v5 = v0[15];

  return v7(v5, v1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = WFInputTextFlow.buildOutput_rfv1();
  }

  else
  {
    v7 = WFInputTextFlow.buildOutput_rfv1();
  }

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 120);
  v11 = *(v0 + 112);
  v12 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v13 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  OUTLINED_FUNCTION_18_4();
  (*(v7 + 224))();
  __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  (*(v3 + 16))(v4, v2, v13);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v8;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v3 + 8))(v2, v13);
  (*(v11 + 8))(v1, v12);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void WFInputTextFlow.processTextResponse(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  OUTLINED_FUNCTION_88_0();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7_1();
  v58 = v3;
  v60 = v2;
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for VoiceCommandsNLIntent(0);
  v8 = OUTLINED_FUNCTION_14(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  Input.parse.getter();
  v23 = OUTLINED_FUNCTION_20_4();
  v25 = v24(v23);
  if (v25 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v26 = OUTLINED_FUNCTION_20_4();
    v27(v26);
    (*(v14 + 32))(v18, v22, v12);
    (*(v14 + 16))(v11, v18, v12);
    WFInputTextFlow.getTextFromIntent(intent:)();
    v62 = v28;
    v30 = v29;
    v31 = one-time initialization token for voiceCommands;

    v32 = v0;
    if (v31 != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.voiceCommands);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v59 = v12;
      v36 = OUTLINED_FUNCTION_48();
      v37 = swift_slowAlloc();
      v63 = v37;
      *v36 = 136315138;
      v61 = v32;
      if (v30)
      {
        v38 = v62;
      }

      else
      {
        v38 = 0x7974706D65;
      }

      if (v30)
      {
        v39 = v30;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v63);

      *(v36 + 4) = v40;
      v32 = v61;
      _os_log_impl(&dword_0, v34, v35, "#WFInputTextFlow received text: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_15_0(v37);
      OUTLINED_FUNCTION_15_0(v36);

      outlined destroy of VoiceCommandsNLIntent(v11);
      (*(v14 + 8))(v18, v59);
    }

    else
    {

      outlined destroy of VoiceCommandsNLIntent(v11);
      (*(v14 + 8))(v18, v12);
    }

    if (v30)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v25 != enum case for Parse.uso(_:))
    {
      v56 = OUTLINED_FUNCTION_20_4();
      v57(v56);
      goto LABEL_30;
    }

    v41 = OUTLINED_FUNCTION_20_4();
    v42(v41);
    (*(v58 + 32))(v6, v22, v60);
    if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
    {
      (*(v58 + 8))(v6, v60);
      goto LABEL_30;
    }

    v32 = v0;
    v62 = WFInputTextFlow.parseUSOInput(usoParse:)();
    v30 = v43;
    v44 = one-time initialization token for voiceCommands;

    if (v44 != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.voiceCommands);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v46, v47))
    {

      (*(v58 + 8))(v6, v60);
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    v48 = OUTLINED_FUNCTION_48();
    v49 = swift_slowAlloc();
    v63 = v49;
    *v48 = 136315138;
    if (v30)
    {
      v50 = v62;
    }

    else
    {
      v50 = 0x7974706D65;
    }

    if (v30)
    {
      v51 = v30;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v63);

    *(v48 + 4) = v52;
    v32 = v1;
    _os_log_impl(&dword_0, v46, v47, "#WFInputTextFlow received text from usoParse: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_15_0(v49);
    OUTLINED_FUNCTION_15_0(v48);

    (*(v58 + 8))(v6, v60);
    if (v30)
    {
LABEL_27:
      v53 = *(v32 + 160);
      v54 = *(v32 + 168);
      *(v32 + 160) = v62;
      *(v32 + 168) = v30;
      v55 = *(v32 + 176);
      *(v32 + 176) = 0;
      outlined consume of WFInputTextFlow.State(v53, v54, v55);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.getTextFromIntent(intent:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = [*(v0 + 32) textFieldConfiguration];
  v12 = [v11 keyboardType];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v13 == v16 && v15 == v17)
    {
      goto LABEL_14;
    }

    v19 = OUTLINED_FUNCTION_36_6(v16);

    if (v19)
    {
      goto LABEL_15;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v20 == v23 && v22 == v24)
    {
LABEL_14:
    }

    else
    {
      v26 = OUTLINED_FUNCTION_36_6(v23);

      if ((v26 & 1) == 0)
      {
        if (one-time initialization token for voiceCommandTextNode == -1)
        {
LABEL_13:
          type metadata accessor for VoiceCommandsNLIntent(0);
          OUTLINED_FUNCTION_2_30();
          lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v27, 255, v28, &protocol conformance descriptor for VoiceCommandsNLIntent);
          IntentNodeTraversable.value<A>(forNode:)();

          goto LABEL_31;
        }

LABEL_35:
        OUTLINED_FUNCTION_14_15(&one-time initialization token for voiceCommandTextNode);
        goto LABEL_13;
      }
    }

LABEL_15:
    if (one-time initialization token for voiceCommandScalarNode != -1)
    {
      swift_once();
    }

    type metadata accessor for VoiceCommandsNLIntent(0);
    OUTLINED_FUNCTION_2_30();
    lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v29, 255, v30, &protocol conformance descriptor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {

      outlined destroy of String?(v4, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
      goto LABEL_31;
    }

    (*(v7 + 32))(v10, v4, v5);
    Scalar.value.getter();
    if (v38)
    {
      v33 = OUTLINED_FUNCTION_20_4();
      v34(v33);

      goto LABEL_31;
    }

    if (floor(v37) != v37)
    {
      Double.description.getter();
      goto LABEL_30;
    }

    if ((~*&v37 & 0x7FF0000000000000) != 0)
    {
      if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          *&v37 = v37;
          dispatch thunk of CustomStringConvertible.description.getter();
LABEL_30:

          v35 = OUTLINED_FUNCTION_20_4();
          v36(v35);
          goto LABEL_31;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15(&one-time initialization token for voiceCommandTextNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_2_30();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v31, 255, v32, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
LABEL_31:
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_42();
}

uint64_t WFInputTextFlow.parseUSOInput(usoParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = OUTLINED_FUNCTION_14(v0);
  v2 = __chkstk_darwin(v1);
  v80 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v83 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  v8 = &v80 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v84 = v19;
  v85 = v18;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v81 = v21 - v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.voiceCommands);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_52();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "parsing uso input", v25, 2u);
    OUTLINED_FUNCTION_8_15();
  }

  USOParse.userParse.getter();
  v26 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v27 = *(v11 + 8);
  v27(v17, v9);
  specialized Collection.first.getter(v26, v8);

  v28 = v85;
  if (__swift_getEnumTagSinglePayload(v8, 1, v85) != 1)
  {
    (*(v84 + 32))(v81, v8, v28);
    USOParse.userParse.getter();
    v32 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    v27(v15, v9);
    v33 = *(v32 + 16);

    v34 = v83;
    if (v33 >= 2)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v36))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        OUTLINED_FUNCTION_8_15();
      }
    }

    v42 = [*(v82 + 32) textFieldConfiguration];
    v43 = [v42 keyboardType];

    if (v43)
    {
      v45 = WFTextFieldKeyboardType.toInputType()();

      if (v45 - 1 < 2)
      {
        v46 = Siri_Nlu_External_UserDialogAct.intValue.getter();
        if (v47)
        {
          v48 = Siri_Nlu_External_UserDialogAct.doubleValue.getter();
          if (v49)
          {
            v59 = OUTLINED_FUNCTION_40_6();
            v60(v59);
            return OUTLINED_FUNCTION_51_4();
          }

          v50 = v48;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v52))
          {
            v53 = OUTLINED_FUNCTION_48();
            *v53 = 134217984;
            *(v53 + 4) = v50;
            OUTLINED_FUNCTION_4_20();
            _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
            OUTLINED_FUNCTION_8_15();
          }

          Double.description.getter();
        }

        else
        {
          v62 = v46;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v64))
          {
            v65 = OUTLINED_FUNCTION_48();
            *v65 = 134217984;
            *(v65 + 4) = v62;
            OUTLINED_FUNCTION_4_20();
            _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
            OUTLINED_FUNCTION_8_15();
          }

          v86 = v62;
          dispatch thunk of CustomStringConvertible.description.getter();
        }

        goto LABEL_28;
      }

      if (v45)
      {
        Siri_Nlu_External_UserDialogAct.urlValue.getter(v34);
        v73 = v80;
        outlined init with copy of URL?(v34, v80);
        v74 = type metadata accessor for URL();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of String?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v76 = OUTLINED_FUNCTION_40_6();
          v77(v76, v28);
          outlined destroy of String?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          return OUTLINED_FUNCTION_51_4();
        }

        URL.absoluteString.getter();
        outlined destroy of String?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v78 = OUTLINED_FUNCTION_40_6();
        v79(v78, v28);
        v71 = OUTLINED_FUNCTION_20_4();
        goto LABEL_29;
      }
    }

    Siri_Nlu_External_UserDialogAct.stringValue.getter(v44);
LABEL_28:
    v71 = OUTLINED_FUNCTION_40_6();
LABEL_29:
    v72(v71);
    return OUTLINED_FUNCTION_51_4();
  }

  outlined destroy of String?(v8, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v31);
    _os_log_impl(&dword_0, v29, v30, "#WFInputTextFlow: missing UDA", v15, 2u);
    OUTLINED_FUNCTION_17();
  }

  return OUTLINED_FUNCTION_51_4();
}

SiriLinkFlowPlugin::WFInputTextTypes __swiftcall WFTextFieldKeyboardType.toInputType()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 1;
  }

  OUTLINED_FUNCTION_20_4();
  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    return 2;
  }

  OUTLINED_FUNCTION_20_4();
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 2;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 3;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_50_2();
    v20 = OUTLINED_FUNCTION_19_11(v17, v18, v19);

    if (v20)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t WFInputTextFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  outlined consume of WFInputTextFlow.State(*(v0 + 160), *(v0 + 168), *(v0 + 176));

  return v0;
}

uint64_t WFInputTextFlow.__deallocating_deinit()
{
  WFInputTextFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFInputTextFlow(uint64_t a1)
{
  v6 = (*(**v1 + 232) + **(**v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFInputTextFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 208))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

id @nonobjc WFInputTextDialogResponse.init(inputtedText:cancelled:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithInputtedText:v5 cancelled:a3 & 1];

  return v6;
}

void outlined consume of WFInputTextFlow.State(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

unint64_t lazy protocol witness table accessor for type WFInputTextTypes and conformance WFInputTextTypes()
{
  result = lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes;
  if (!lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputTextFlowError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xE3ECCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputTextTypes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xE3FD0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin011WFInputTextC0C5State33_F998A202CF45E799BDA497C0F5296CDBLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for WFInputTextFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WFInputTextFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for WFInputTextFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  *(v1 + 160) = v0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 2;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForMakeChoice(options:)(uint64_t a1)
{
  VoiceCommandNLContextProvider.makeContextForMultiChoice(options:)(a1);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  VoiceCommandNLContextProvider.getDisplayHints(options:)();
  return NLContextUpdate.displayHints.setter();
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForNeedsValue(valueType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLContextUpdate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && a1)
  {
    v9 = a1;
    v10 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v9);
    if (v12)
    {
      if (v12 != 1 && !(v10 ^ 2 | v11))
      {
        type metadata accessor for WorkflowNLContextProvider();
        swift_allocObject();
        VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)();
      }
    }

    else
    {
      outlined consume of VoiceCommandIntentValueType(v10, v11, 0);
    }

    v8 = LNValueType.executeCommonVoiceCommandTaskBuilder.getter();
  }

  VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v8);

  if (a1)
  {
    v14 = a1;
    v15 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v14);
    if (v17 == 2 && v15 <= 0x12 && ((1 << v15) & 0x50401) != 0)
    {
      OUTLINED_FUNCTION_0_24();
      NLContextUpdate.dictationPromptTargetDomain.setter();
      LNValueType.toPromptTargetType()();
      NLContextUpdate.dictationPromptTargetNodes.setter();
    }

    else
    {
      outlined consume of VoiceCommandIntentValueType(v15, v16, v17);
      OUTLINED_FUNCTION_0_24();
      NLContextUpdate.weightedPromptTargetDomain.setter();
      LNValueType.toPromptTargetType()();
      NLContextUpdate.weightedPromptResponseTargets.setter();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    NLContextUpdate.dictationPromptTargetDomain.setter();
    NLContextUpdate.dictationPromptTargetNodes.setter();
  }

  return (*(v5 + 32))(a2, v7, v4);
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForActionConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  result = NLContextUpdate.weightedPromptResponseTargets.setter();
  if (a2 && a4)
  {

    v14 = NLContextUpdate.weightedPromptResponseTargets.modify();
    if (*v13)
    {
      v15 = v13;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(*v15 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
      v17 = *v15;
      *(v17 + 16) = v16 + 1;
      v18 = v17 + 16 * v16;
      *(v18 + 32) = 0xD000000000000022;
      *(v18 + 40) = 0x800000000022D5D0;
    }

    v14(v24, 0);
    v19 = *(a5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = a5;
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(a5 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a5 = v21;
      v24[0] = v21;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a1, a2);
    v22 = *(a6 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || v22 >= *(a6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a6 = v23;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a3, a4);
    ShortcutsLinkNLContextProvider.getDisplayHints(acceptList:denyList:)(a5, a6);

    return NLContextUpdate.displayHints.setter();
  }

  return result;
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForDisambiguation(disambiguationItems:)(uint64_t a1)
{
  v2 = specialized _arrayForceCast<A, B>(_:)(a1);
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v2);

  NLContextUpdate.weightedPromptResponseTargets.setter();
  specialized _arrayForceCast<A, B>(_:)(a1);
  VoiceCommandNLContextProvider.getDisplayHints(items:)();

  return NLContextUpdate.displayHints.setter();
}

void *ShortcutsLinkNLContextProvider.getDisplayHints(acceptList:denyList:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v3 - 8);
  v50 = &v38 - v4;
  v51 = type metadata accessor for DisplayHint();
  v5 = *(v51 - 8);
  v6 = __chkstk_darwin(v51);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for SemanticValue();
  v11 = __chkstk_darwin(v10);
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v49 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v15;
  v18 = *(a1 + 16);
  v39 = v16;
  v48 = v5;
  if (v18)
  {
    v43 = (v16 + 16);
    v44 = "voiceCommandReference";
    v41 = v5 + 32;
    v42 = (v16 + 8);
    v19 = a1 + 40;
    v20 = _swiftEmptyArrayStorage;
    v45 = &v38 - v15;
    do
    {

      SemanticValue.init(string:label:)();
      v21 = *v43;
      v22 = v50;
      (*v43)(v50, v17, v10);
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v10);
      v21(v49, v17, v10);
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
        v20 = v25;
      }

      v24 = v20[2];
      v23 = v20[3];
      v5 = v48;
      if (v24 >= v23 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v20);
        v20 = v26;
      }

      v17 = v45;
      (*v42)(v45, v10);
      v20[2] = v24 + 1;
      (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v9, v51);
      v19 += 16;
      --v18;
    }

    while (v18);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v27 = *(v40 + 16);
  if (v27)
  {
    v44 = (v39 + 16);
    v45 = "voiceCommandReference";
    v42 = (v5 + 32);
    v43 = (v39 + 8);
    v28 = v40 + 40;
    v29 = v46;
    do
    {

      SemanticValue.init(string:label:)();
      v30 = *v44;
      v31 = v50;
      (*v44)(v50, v29, v10);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v10);
      v30(v49, v29, v10);
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
        v20 = v35;
      }

      v33 = v20[2];
      v32 = v20[3];
      v29 = v46;
      v34 = v48;
      if (v33 >= v32 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v20);
        v20 = v36;
      }

      (*v43)(v29, v10);
      v20[2] = v33 + 1;
      (*(v34 + 32))(v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v47, v51);
      v28 += 16;
      --v27;
    }

    while (v27);
  }

  return v20;
}

uint64_t LNValue.localizedEnumCaseName(metadataProvider:enumIdentifier:bundleIdentifier:localeIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v13 = [v7 value];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_48:
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to localize enum case name because value is not a String.";
LABEL_7:
      _os_log_impl(&dword_0, v18, v19, v21, v20, 2u);
    }

LABEL_8:

    return 0;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(a4, a5, v14, v15);
  if (!v6)
  {
    v22 = v16;
    v23 = specialized Array.count.getter(v16);
    for (i = 0; v23 != i; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v27 = [v25 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v28 == a2 && v30 == a3)
      {

LABEL_24:

        v33 = [v26 cases];

        type metadata accessor for LNEnumCaseMetadata();
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = specialized Array.count.getter(v34);
        for (j = 0; v35 != j; ++j)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (j >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_47;
            }

            v37 = *(v34 + 8 * j + 32);
          }

          v38 = v37;
          if (__OFADD__(j, 1))
          {
            goto LABEL_46;
          }

          v39 = [v37 identifier];
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          if (v40 == v52 && v42 == v53)
          {

LABEL_42:

            v46 = v38;
            v47 = [v46 displayRepresentation];
            v48 = [v47 title];

            v49 = String._bridgeToObjectiveC()();
            v50 = [v48 localizedStringForLocaleIdentifier:v49];

            a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            return a4;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {
            goto LABEL_42;
          }
        }

        break;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_24;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to find matching enum case.";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  return a4;
}

unint64_t type metadata accessor for LNEnumCaseMetadata()
{
  result = lazy cache variable for type metadata for LNEnumCaseMetadata;
  if (!lazy cache variable for type metadata for LNEnumCaseMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnumCaseMetadata);
  }

  return result;
}

uint64_t static InputUtils.getText(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getText");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15(&one-time initialization token for voiceCommandTextNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  return v10;
}

uint64_t static InputUtils.getBool(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getBool");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  return 0x2000001u >> (8 * v10);
}

uint64_t static InputUtils.getDouble(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v0);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v6, static Logger.voiceCommands);
  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v8 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_68_3(&dword_0, v10, v11, "#InputUtils getDouble");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for voiceCommandScalarNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  v14 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v12, v13, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_58_2(v14);
  OUTLINED_FUNCTION_35_10(v3, 1, v4);
  if (v15)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    return 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_52_5();
    v17(v16);
    Scalar.value.getter();
    v18 = OUTLINED_FUNCTION_50_3();
    v19(v18, v4);
    return v21;
  }
}

uint64_t static InputUtils.getMeasurement(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_21_2();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
  outlined init with copy of VoiceCommandsNLIntent(a1, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    OUTLINED_FUNCTION_1_35();
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v15, v16, &protocol conformance descriptor for VoiceCommandsNLIntent);
    v17 = NLIntentWrapper.description.getter();
    v19 = v18;
    outlined destroy of VoiceCommandsNLIntent(v9);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

    *(v13 + 4) = v20;
    OUTLINED_FUNCTION_66_2(&dword_0, v21, v22, "#InputUtils getMeasurement %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    outlined destroy of VoiceCommandsNLIntent(v9);
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for voiceCommandScalarNode);
  }

  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v23, v24, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_35_10(v5, 1, v25);
  if (v26)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    Scalar.value.getter();
    v27 = v32;
    v28 = v33;
    OUTLINED_FUNCTION_21_2();
    (*(v29 + 8))(v5, v25);
  }

  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    OUTLINED_FUNCTION_25_8(&one-time initialization token for voiceCommandUnitNode);
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v32 == 88)
  {
    v30 = 0;
    if ((v28 & 1) == 0)
    {
      return v27;
    }
  }

  else
  {
    v30 = VoiceCommandsNLIntent.VoiceCommandUnit.unitType.getter(v32);
    if ((v28 & 1) == 0)
    {
      return v27;
    }
  }

  return 0;
}

NSAttributedString static InputUtils.getAttributedText(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getAttributedText");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15(&one-time initialization token for voiceCommandTextNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  if (!v10._object)
  {
    return 0;
  }

  type metadata accessor for NSAttributedString();
  return NSAttributedString.__allocating_init(string:)(v10);
}

uint64_t static InputUtils.getDate(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v0[22] = v6;
  OUTLINED_FUNCTION_14(v6);
  v0[23] = OUTLINED_FUNCTION_27();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v7 = type metadata accessor for Calendar.Identifier();
  v0[26] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[27] = v8;
  v0[28] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Calendar();
  v0[29] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[30] = v10;
  v0[31] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for DateComponents();
  v0[32] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[33] = v12;
  v0[34] = OUTLINED_FUNCTION_27();
  v0[35] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDate");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[37] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  if (v0[38])
  {
    v1 = v0[35];
    v2 = v0[33];
    v3 = v0[34];
    v4 = v0[32];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    v37 = v0[25];
    v38 = v0[24];

    dispatch thunk of DateTime.dateComponents.getter();

    (*(v2 + 32))(v1, v3, v4);
    (*(v5 + 104))(v6, enum case for Calendar.Identifier.gregorian(_:), v7);
    Calendar.init(identifier:)();
    (*(v5 + 8))(v6, v7);
    Calendar.date(from:)();
    outlined init with copy of LocationProviding?(v37, v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[35];
    v12 = v0[33];
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[29];
    v16 = v0[24];
    if (v10)
    {
      v40 = v0[32];
      v39 = v0[29];
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_12_12();
      outlined init with copy of LocationProviding?(v18, v19, v20, v21);
      String.init<A>(describing:)();
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v22 = OUTLINED_FUNCTION_20_1();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);

      *(v17 + 4) = v25;
      _os_log_impl(&dword_0, v8, v9, "#InputUtils.getDate() returned %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_15_1();

      OUTLINED_FUNCTION_15_1();

      (*(v14 + 8))(v13, v39);
      (*(v12 + 8))(v11, v40);
    }

    else
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v30 = OUTLINED_FUNCTION_50_3();
      v31(v30, v15);
      v32 = OUTLINED_FUNCTION_9_3();
      v34(v32, v33);
    }

    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    outlined init with take of Date?(v0[25], v0[17], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }

  OUTLINED_FUNCTION_6_0();

  return v35();
}

uint64_t static InputUtils.getDateComponents(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v6);
}

uint64_t static InputUtils.getDateComponents(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDateComponents");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  if (*(v0 + 184))
  {

    dispatch thunk of DateTime.dateComponents.getter();
  }

  outlined destroy of InputUtils.DateTimeHydrator(v0 + 16);
  type metadata accessor for DateComponents();
  v1 = OUTLINED_FUNCTION_61_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t static InputUtils.getDateInterval(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v0[22] = OUTLINED_FUNCTION_27();
  v0[23] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v0[24] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_27();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v9 = type metadata accessor for DateComponents();
  v0[32] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[33] = v10;
  v0[34] = OUTLINED_FUNCTION_27();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v11 = type metadata accessor for Calendar.Identifier();
  v0[38] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[39] = v12;
  v0[40] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Calendar();
  v0[41] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[42] = v14;
  v0[43] = OUTLINED_FUNCTION_28();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDateInterval");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v97 = v0;
  if (!v0[46])
  {
    goto LABEL_10;
  }

  (*(v0[39] + 104))(v0[40], enum case for Calendar.Identifier.gregorian(_:), v0[38]);
  Calendar.init(identifier:)();
  v1 = OUTLINED_FUNCTION_20_1();
  v2(v1);
  if (!DateTime.occurringIn.getter() || (v3 = DateTime.DateTimeRange.start.getter(), , !v3))
  {

    v19 = OUTLINED_FUNCTION_12_12();
    v20(v19);
LABEL_10:
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
LABEL_11:
    v26 = 1;
    goto LABEL_12;
  }

  v4 = v0[33];
  dispatch thunk of DateTime.dateComponents.getter();

  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_20_1();
  v5(v6);
  if (!DateTime.occurringIn.getter() || (v7 = DateTime.DateTimeRange.end.getter(), , !v7))
  {
    v21 = v0[32];

    v22 = OUTLINED_FUNCTION_50_3();
    v23(v22, v21);
    v24 = OUTLINED_FUNCTION_12_12();
    v25(v24);
    goto LABEL_10;
  }

  v8 = v0[23];
  v94 = v0[24];
  dispatch thunk of DateTime.dateComponents.getter();

  v9 = OUTLINED_FUNCTION_13_5();
  v5(v9);
  Calendar.date(from:)();
  if (__swift_getEnumTagSinglePayload(v8, 1, v94) == 1)
  {
    v10 = v0[37];
    v11 = v0[32];
    v12 = v0[33];
    v13 = v0[23];

    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_13_5();
    v14(v15);
    (v14)(v10, v11);
    v16 = OUTLINED_FUNCTION_12_12();
    v17(v16);
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    v18 = v13;
LABEL_18:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v31 = v0[24];
  v32 = *(v0[25] + 32);
  v32(v0[31], v0[23], v31);
  Calendar.date(from:)();
  v33 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v33, v34, v31);
  if (v35)
  {
    v36 = v0[42];
    v90 = v0[41];
    v92 = v0[43];
    v37 = v0[37];
    v39 = v0[32];
    v38 = v0[33];
    v40 = v0[31];
    v42 = v0[24];
    v41 = v0[25];
    v95 = v0[22];

    (*(v41 + 8))(v40, v42);
    v43 = *(v38 + 8);
    v44 = OUTLINED_FUNCTION_13_5();
    v43(v44);
    (v43)(v37, v39);
    (*(v36 + 8))(v92, v90);
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    v18 = v95;
    goto LABEL_18;
  }

  v45 = v0[31];
  v46 = v0[29];
  v48 = v0[24];
  v47 = v0[25];
  v32(v0[30], v0[22], v48);
  v49 = *(v47 + 16);
  (v49)(v46, v45, v48);
  v50 = OUTLINED_FUNCTION_51_4();
  v93 = v49;
  (v49)(v50);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v0[28];
  v54 = v0[29];
  v57 = v0[24];
  v56 = v0[25];
  if (v53)
  {
    v87 = v52;
    v83 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v83 = 136315394;
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v58 = v55;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v51;
    v61 = v60;
    v62 = *(v56 + 8);
    v62(v54, v57);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v96);

    *(v83 + 4) = v63;
    *(v83 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v62;
    v62(v58, v57);
    v64 = OUTLINED_FUNCTION_51_4();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v66);

    *(v83 + 14) = v67;
    _os_log_impl(&dword_0, loga, v87, "#InputUtils.getDateInterval() returned %s and %s", v83, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v68 = *(v56 + 8);
    v68(v55, v57);
    v91 = v68;
    v68(v54, v57);
  }

  v69 = v0[42];
  v70 = v0[33];
  v71 = static Date.< infix(_:_:)();
  v84 = (v70 + 8);
  log = v0[41];
  v88 = (v69 + 8);
  v89 = v0[43];
  v80 = v0[35];
  v72 = v0[31];
  v81 = v0[32];
  v82 = v0[37];
  v73 = v0[30];
  v74 = v0[26];
  v75 = v0[24];
  if (v71)
  {
    OUTLINED_FUNCTION_54_4();
    v76 = v93;
    v93();
    v77 = v74;
    v78 = v73;
  }

  else
  {
    v76 = v93;
    (v93)(v0[27], v0[30], v0[24]);
    v77 = v74;
    v78 = v72;
  }

  (v76)(v77, v78, v75);
  OUTLINED_FUNCTION_12_12();
  DateInterval.init(start:end:)();

  v91(v73, v75);
  v91(v72, v75);
  v79 = *v84;
  (*v84)(v80, v81);
  v79(v82, v81);
  (*v88)(v89, log);
  outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
  v26 = 0;
LABEL_12:
  v27 = v0[17];
  v28 = type metadata accessor for DateInterval();
  __swift_storeEnumTagSinglePayload(v27, v26, 1, v28);

  OUTLINED_FUNCTION_6_0();

  return v29();
}

uint64_t static InputUtils.getDuration(from:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_18_1();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#InputUtils getDuration", v6, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for voiceCommandScalarNode);
  }

  v7 = *(v0 + 40);
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v8, v9, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
  v12 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    goto LABEL_10;
  }

  Scalar.value.getter();
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_21_2();
  (*(v15 + 8))(v12, v10);
  if (v14)
  {
LABEL_10:
    v16 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v17 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_18_1();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v19);
      OUTLINED_FUNCTION_26(&dword_0, v20, v21, "#InputUtils.getDuration() unable to extract unit and value from parse");
      OUTLINED_FUNCTION_15_1();
    }

LABEL_13:
    v22 = 0;
    v23 = 0;
    v24 = 1;
    goto LABEL_14;
  }

  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    OUTLINED_FUNCTION_25_8(&one-time initialization token for voiceCommandUnitNode);
  }

  IntentNodeTraversable.value<A>(forNode:)();
  switch(*(v0 + 25))
  {
    case 'Q':
      v27 = static Duration.milliseconds(_:)();
      goto LABEL_32;
    case 'R':
      goto LABEL_25;
    case 'S':
      if ((~*&v13 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_34;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_26_14();
      if (!v30)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 'T':
      if (COERCE_UNSIGNED_INT64(fabs(v13 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0xE77A0);
      }

      if (v13 / 1000.0 <= -9.22337204e18)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_26_14();
      if (v30)
      {
LABEL_30:
        v27 = _ss8DurationV11nanosecondsyABxSzRzlFZSi_Tt0g5(v29);
      }

      else
      {
        __break(1u);
LABEL_25:
        v27 = static Duration.microseconds(_:)();
      }

LABEL_32:
      v22 = v27;
      v23 = v28;
      v24 = 0;
LABEL_14:

      v25 = *(v0 + 8);

      return v25(v22, v23, v24);
    case 'U':
    case 'V':
    case 'W':
      v27 = static Duration.seconds(_:)();
      goto LABEL_32;
    case 'X':
      goto LABEL_10;
    default:
      goto LABEL_13;
  }
}

uint64_t static InputUtils.getRecurrenceRule(dateTimeValue:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for Calendar.MatchingPolicy();
  v0[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Calendar.RecurrenceRule.End();
  OUTLINED_FUNCTION_14(v7);
  v0[10] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for Calendar.Identifier();
  v0[11] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14(v10);
  v0[14] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for OSSignpostError();
  v0[15] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[16] = v12;
  v0[17] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Calendar.RecurrenceRule.Frequency();
  v0[18] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[19] = v14;
  v0[20] = OUTLINED_FUNCTION_27();
  v0[21] = swift_task_alloc();
  v15 = type metadata accessor for OSSignpostID();
  v0[22] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v0[23] = v16;
  v0[24] = OUTLINED_FUNCTION_27();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v17 = type metadata accessor for OSSignposter();
  v0[27] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v0[28] = v18;
  v0[29] = OUTLINED_FUNCTION_28();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0D4UnitOSgMd, &_s13SiriInference8DateTimeC0D4UnitOSgMR);
  OUTLINED_FUNCTION_14(v19);
  v0[30] = OUTLINED_FUNCTION_28();
  v20 = type metadata accessor for DateTime.TimeUnit();
  v0[31] = v20;
  OUTLINED_FUNCTION_5_0(v20);
  v0[32] = v21;
  v0[33] = OUTLINED_FUNCTION_27();
  v0[34] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v22);
  v0[35] = OUTLINED_FUNCTION_28();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV10RecurrenceVSgMd, &_s12SiriOntology15TerminalElementV10RecurrenceVSgMR);
  OUTLINED_FUNCTION_14(v23);
  v0[36] = OUTLINED_FUNCTION_28();
  v24 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v24);
}

void static InputUtils.getRecurrenceRule(dateTimeValue:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getRecurrenceRule");
    OUTLINED_FUNCTION_15_1();
  }

  v8 = v0[35];

  v9 = OUTLINED_FUNCTION_9_3();
  outlined init with copy of LocationProviding?(v9, v10, v11, v12);
  v13 = type metadata accessor for TerminalElement.DateTimeValue();
  OUTLINED_FUNCTION_35_10(v8, 1, v13);
  if (!v14)
  {
    v18 = v0[35];
    v19 = v0[36];
    TerminalElement.DateTimeValue.recurrence.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v20 + 8))(v18, v13);
    v21 = type metadata accessor for TerminalElement.Recurrence();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
    v23 = v0[36];
    if (EnumTagSinglePayload == 1)
    {
      v16 = &_s12SiriOntology15TerminalElementV10RecurrenceVSgMd;
      v17 = &_s12SiriOntology15TerminalElementV10RecurrenceVSgMR;
LABEL_10:
      v15 = v23;
      goto LABEL_11;
    }

    v28 = TerminalElement.Recurrence.toRecurrence()();
    OUTLINED_FUNCTION_21_2();
    v29 = OUTLINED_FUNCTION_12_12();
    v30(v29);
    if (!v28)
    {
      goto LABEL_12;
    }

    if (!DateTime.RecurrencePattern.recurrencePeriod.getter())
    {

      goto LABEL_12;
    }

    v32 = v0[30];
    v31 = v0[31];
    DateTime.Interval.timeUnit.getter();
    OUTLINED_FUNCTION_35_10(v32, 1, v31);
    if (v14)
    {
      v23 = v0[30];

      v16 = &_s13SiriInference8DateTimeC0D4UnitOSgMd;
      v17 = &_s13SiriInference8DateTimeC0D4UnitOSgMR;
      goto LABEL_10;
    }

    (*(v0[32] + 32))(v0[34], v0[30], v0[31]);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v33 = v0[28];
    v34 = v0[29];
    v35 = v0[27];
    v36 = __swift_project_value_buffer(v35, static Signposter.voiceCommands);
    (*(v33 + 16))(v34, v36, v35);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v37 = OSSignposter.logHandle.getter();
    static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      OUTLINED_FUNCTION_18_1();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_7(v38);
      OSSignpostID.rawValue.getter();
      OUTLINED_FUNCTION_47_4();
      _os_signpost_emit_with_name_impl(v39, v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_15_1();
    }

    v47 = v0[26];
    v49 = v0[22];
    v48 = v0[23];

    v50 = OUTLINED_FUNCTION_51_4();
    v51(v50);
    type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_46_9();
    swift_allocObject();
    v52 = 1;
    OUTLINED_FUNCTION_55_2();
    OSSignpostIntervalState.init(id:isOpen:)();
    v53 = *(v48 + 8);
    v53(v47, v49);
    v54 = COERCE_DOUBLE(DateTime.Interval.quantity.getter());
    v113 = v53;
    if (v55)
    {
      goto LABEL_33;
    }

    if ((~*&v54 & 0x7FF0000000000000) != 0)
    {
      if (v54 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_26_14();
        if (!v57)
        {
          goto LABEL_55;
        }

        v52 = v56;
LABEL_33:
        (*(v0[32] + 16))(v0[33], v0[34], v0[31]);
        v58 = OUTLINED_FUNCTION_12_12();
        v60 = v59(v58);
        if (v60 != enum case for DateTime.TimeUnit.day(_:))
        {
          if (v60 == enum case for DateTime.TimeUnit.fortnight(_:))
          {
            (*(v0[19] + 104))(v0[21], enum case for Calendar.RecurrenceRule.Frequency.weekly(_:), v0[18]);
            if (v52 + 0x4000000000000000 < 0)
            {
LABEL_56:
              __break(1u);
              return;
            }

LABEL_37:
            v63 = OSSignposter.logHandle.getter();
            OSSignpostIntervalState.signpostID.getter();
            static os_signpost_type_t.end.getter();
            if (OS_os_log.signpostsEnabled.getter())
            {

              checkForErrorAndConsumeState(state:)();

              v64 = OUTLINED_FUNCTION_51_4();
              if (v65(v64) != enum case for OSSignpostError.doubleEnd(_:))
              {
                (*(v0[16] + 8))(v0[17], v0[15]);
              }

              OUTLINED_FUNCTION_18_1();
              v66 = swift_slowAlloc();
              OUTLINED_FUNCTION_41_7(v66);
              OSSignpostID.rawValue.getter();
              OUTLINED_FUNCTION_47_4();
              _os_signpost_emit_with_name_impl(v67, v68, v69, v70, v71, v72, v73, v74);
              OUTLINED_FUNCTION_15_1();
            }

            v111 = v0[31];
            v112 = v0[34];
            v109 = v0[29];
            v110 = v0[32];
            v107 = v0[28];
            v108 = v0[27];
            v75 = v0[24];
            v76 = v0[22];
            v77 = v0[19];
            v100 = v0[18];
            v101 = v0[21];
            v78 = v0[13];
            v79 = v0[11];
            v80 = v0[12];
            v99 = v0[20];
            v102 = v0[9];
            v81 = v0[8];
            v103 = v0[7];
            v104 = v0[6];
            v82 = v63;
            v83 = v0[5];
            v105 = v0[4];
            v106 = v0[2];

            v113(v75, v76);
            (*(v80 + 104))(v78, enum case for Calendar.Identifier.gregorian(_:), v79);
            Calendar.init(identifier:)();
            (*(v80 + 8))(v78, v79);
            (*(v77 + 16))(v99, v101, v100);
            static Calendar.RecurrenceRule.End.never.getter();
            (*(v81 + 104))(v102, enum case for Calendar.MatchingPolicy.nextTimePreservingSmallerComponents(_:), v103);
            (*(v83 + 104))(v104, enum case for Calendar.RepeatedTimePolicy.first(_:), v105);
            Calendar.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)();

            v84 = OUTLINED_FUNCTION_9_3();
            v85(v84);
            (*(v107 + 8))(v109, v108);
            (*(v110 + 8))(v112, v111);
            v26 = type metadata accessor for Calendar.RecurrenceRule();
            v24 = v106;
            v25 = 0;
            goto LABEL_13;
          }

          if (v60 != enum case for DateTime.TimeUnit.hour(_:) && v60 != enum case for DateTime.TimeUnit.minute(_:) && v60 != enum case for DateTime.TimeUnit.month(_:))
          {
            if (v60 == enum case for DateTime.TimeUnit.quarterOfYear(_:))
            {
              v86 = OUTLINED_FUNCTION_65_2();
              v60 = v87(v86);
              if ((v52 * 3) >> 64 == (3 * v52) >> 63)
              {
                goto LABEL_37;
              }

              __break(1u);
            }

            if (v60 != enum case for DateTime.TimeUnit.week(_:) && v60 != enum case for DateTime.TimeUnit.year(_:))
            {
              v88 = v0[31];
              v89 = v0[32];
              v90 = v0[28];
              v91 = v0[29];
              v92 = v0[27];
              v114 = v0[33];

              (*(v90 + 8))(v91, v92);
              v93 = *(v89 + 8);
              v94 = OUTLINED_FUNCTION_51_4();
              v93(v94);
              type metadata accessor for Calendar.RecurrenceRule();
              OUTLINED_FUNCTION_37_2();
              __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
              (v93)(v114, v88);
              goto LABEL_14;
            }
          }
        }

        v61 = OUTLINED_FUNCTION_65_2();
        v62(v61);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v15 = v0[35];
  v16 = &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd;
  v17 = &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR;
LABEL_11:
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v15, v16, v17);
LABEL_12:
  type metadata accessor for Calendar.RecurrenceRule();
  v24 = OUTLINED_FUNCTION_55_2();
LABEL_13:
  __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
LABEL_14:

  OUTLINED_FUNCTION_6_0();

  v27();
}

uint64_t static InputUtils.getPlacemark(from:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v0[3] = OUTLINED_FUNCTION_28();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getPlacemark");
    OUTLINED_FUNCTION_15_1();
  }

  v0[7] = static InputUtils.getPlacemarkQueryText(_:)();
  v0[8] = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_64_2(v9);

    return static InputUtils.getPlacemarkQueryLatLong()();
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v11(0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 80);
  if (!v1)
  {

    goto LABEL_7;
  }

  v2 = *(v0 + 32);
  [*(v0 + 80) lat];
  [v1 lng];
  OUTLINED_FUNCTION_57_5(v3);

  v4 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v4, v5, v2);
  if (v6)
  {
    v7 = *(v0 + 24);

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
  v8 = static InputUtils.getPlacemark(_:)();

  v9 = OUTLINED_FUNCTION_20_1();
  v10(v9);
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_8:

  OUTLINED_FUNCTION_6_6();

  return v11(v8);
}

uint64_t static InputUtils.getPlaceDescriptor(from:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v0[4] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v4);
  v0[5] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[6] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getPlaceDescriptor");
    OUTLINED_FUNCTION_15_1();
  }

  v0[9] = static InputUtils.getPlacemarkQueryText(_:)();
  v0[10] = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_64_2(v9);

    return static InputUtils.getPlacemarkQueryLatLong()();
  }

  else
  {
    type metadata accessor for PlaceDescriptor();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

    OUTLINED_FUNCTION_6_0();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 96);
  if (!v1)
  {

LABEL_12:
    v14 = type metadata accessor for PlaceDescriptor();
    v17 = 1;
    goto LABEL_13;
  }

  v2 = *(v0 + 48);
  [*(v0 + 96) lat];
  [v1 lng];
  OUTLINED_FUNCTION_57_5(v3);

  v4 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v4, v5, v2);
  if (v6)
  {
    v7 = *(v0 + 40);

    v8 = &_s13SiriInference14RecommendationOyAA8LocationVGSgMd;
    v9 = &_s13SiriInference14RecommendationOyAA8LocationVGSgMR;
    v10 = v7;
LABEL_11:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, v8, v9);
    goto LABEL_12;
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  if (static InputUtils.getPlacemark(_:)())
  {
    PlaceDescriptor.init(placemark:)();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = type metadata accessor for PlaceDescriptor();
  __swift_storeEnumTagSinglePayload(v13, v11, 1, v14);

  v15 = OUTLINED_FUNCTION_50_3();
  v16(v15, v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v8 = &_s10GeoToolbox15PlaceDescriptorVSgMd;
    v9 = &_s10GeoToolbox15PlaceDescriptorVSgMR;
    v10 = *(v0 + 32);
    goto LABEL_11;
  }

  (*(*(v14 - 8) + 32))(*(v0 + 16), *(v0 + 32), v14);
  v17 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(*(v0 + 16), v17, 1, v14);

  OUTLINED_FUNCTION_6_0();

  return v18();
}

Class static InputUtils.getPerson(from:contactResolver:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v212 = a3;
  v218 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v200 = &v197 - v7;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for Contact();
  OUTLINED_FUNCTION_7_1();
  v207 = v8;
  v208 = v9;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_0();
  v201 = v10 - v11;
  __chkstk_darwin(v12);
  v206 = &v197 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_50_0();
  v205 = (v16 - v17);
  __chkstk_darwin(v18);
  v211 = &v197 - v19;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7_1();
  v203 = v21;
  v204 = v20;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v202 = v23 - v22;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for ContactResolverConfig();
  OUTLINED_FUNCTION_7_1();
  v213 = v25;
  v214 = v24;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v215 = v27 - v26;
  OUTLINED_FUNCTION_22_10();
  v222 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7_1();
  v216 = v28;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v30);
  v217 = &v197 - v31;
  OUTLINED_FUNCTION_22_10();
  v221 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v33 = v32;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_50_0();
  v209 = v35 - v36;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_63_4();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_44_8();
  v39 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v41 = v40;
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_3();
  v45 = v44 - v43;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v46 = __swift_project_value_buffer(v39, static Signposter.voiceCommands);
  v219 = v39;
  v220 = v41;
  (*(v41 + 16))(v45, v46, v39);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v223 = v45;
  v47 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_18_1();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v48);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v49, v50, v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_15_1();
  }

  v57 = OUTLINED_FUNCTION_60_3();
  v58 = v221;
  v59(v57);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_46_9();
  swift_allocObject();
  v60 = OSSignpostIntervalState.init(id:isOpen:)();
  v62 = (v33 + 8);
  v61 = *(v33 + 8);
  v210 = v62;
  v61(v3, v58);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  v64 = __swift_project_value_buffer(v63, static Logger.voiceCommands);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v67 = OUTLINED_FUNCTION_17_18();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v222;
  if (v69)
  {
    OUTLINED_FUNCTION_18_1();
    v71 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v71);
    _os_log_impl(&dword_0, v65, v66, "#InputUtils getPerson", v62, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (!VoiceCommandsNLIntent.voiceCommandContact.getter())
  {
    v86 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v87 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v87, v88))
    {
      OUTLINED_FUNCTION_18_1();
      v89 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v89);
      OUTLINED_FUNCTION_24_12(&dword_0, v90, v91, "#InputUtils: Did not receive valid voiceCommandContact from server");
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    (*(v220 + 8))(v223, v219);
    return 0;
  }

  v198 = v61;
  v199 = v64;
  v218 = v60;
  VoiceCommandsNLIntent.VoiceCommandContactIntentNode.toContactQuery()();

  v72 = v216;
  v73 = v217;
  OUTLINED_FUNCTION_54_4();
  v74();
  v75 = a2[3];
  v76 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v75);
  v77 = v215;
  (*(v76 + 8))(v212, v75, v76);
  v78 = a2[3];
  v79 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v80 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_216850;
  (*(v72 + 16))(v81 + v80, v73, v70);
  v82 = v224;
  v83 = (*(v79 + 16))(v81, v77, v78, v79);
  if (v82)
  {

    (*(v213 + 8))(v77, v214);
    v85 = *(v72 + 8);
    isa = (v72 + 8);
    v85(v73, v70);
    (*(v220 + 8))(v223, v219);
    return isa;
  }

  v92 = v83;
  v224 = 0;

  v93 = OSSignposter.logHandle.getter();
  v94 = v209;
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v95 = v202;
    checkForErrorAndConsumeState(state:)();

    v97 = v203;
    v96 = v204;
    if ((*(v203 + 88))(v95, v204) != enum case for OSSignpostError.doubleEnd(_:))
    {
      (*(v97 + 8))(v95, v96);
    }

    OUTLINED_FUNCTION_18_1();
    v98 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v98);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v99, v100, v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_15_1();
  }

  v198(v94, v221);
  v107 = v211;
  specialized Collection.first.getter(v92, v211);

  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v109 = OUTLINED_FUNCTION_48_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, v110, v108);
  if (EnumTagSinglePayload == 1)
  {
LABEL_22:
    v115 = OUTLINED_FUNCTION_69_2(EnumTagSinglePayload, v112, v113, v114);
    static os_log_type_t.info.getter();
    v116 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v116, v117))
    {
      OUTLINED_FUNCTION_18_1();
      v118 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v118);
      OUTLINED_FUNCTION_24_12(&dword_0, v119, v120, "#InputUtils ContactResolver could not recommend a contact");
      OUTLINED_FUNCTION_15_1();
    }

    v121 = OUTLINED_FUNCTION_28_9();
    v122(v121);
    v123 = OUTLINED_FUNCTION_29_12();
    v124(v123);
    v125 = OUTLINED_FUNCTION_15_17();
    v126(v125);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v107, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
    return 0;
  }

  v128 = v205;
  outlined init with copy of LocationProviding?(v107, v205, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v129 = OUTLINED_FUNCTION_22();
  v131 = v130(v129);
  if (v131 == enum case for Recommendation.confident<A>(_:))
  {
    v132 = OUTLINED_FUNCTION_22();
    v133(v132);
    v134 = (*(v208 + 32))(v206, v128, v207);
    v138 = OUTLINED_FUNCTION_69_2(v134, v135, v136, v137);
    static os_log_type_t.debug.getter();
    v139 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v139, v140))
    {
      OUTLINED_FUNCTION_18_1();
      v141 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v141);
      OUTLINED_FUNCTION_24_12(&dword_0, v142, v143, "#InputUtils ContactResolver confidently recommended a contact");
      OUTLINED_FUNCTION_15_1();
    }

LABEL_34:

    isa = Contact.toINPerson()().super.isa;

    v155 = OUTLINED_FUNCTION_62_4();
    v156(v155);
    v157 = OUTLINED_FUNCTION_28_9();
    v158(v157);
    v159 = OUTLINED_FUNCTION_29_12();
    v160(v159);
    v161 = OUTLINED_FUNCTION_15_17();
    v162(v161);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v107, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
    return isa;
  }

  if (v131 == enum case for Recommendation.needsConfirmation<A>(_:))
  {
    v144 = OUTLINED_FUNCTION_22();
    v145(v144);
    v146 = (*(v208 + 32))(v201, v128, v207);
    v138 = OUTLINED_FUNCTION_69_2(v146, v147, v148, v149);
    static os_log_type_t.info.getter();
    v150 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v150, v151))
    {
      OUTLINED_FUNCTION_18_1();
      v152 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v152);
      OUTLINED_FUNCTION_24_12(&dword_0, v153, v154, "#InputUtils ContactResolver call returned needsConfirmation which is unsupported, returning contact");
      OUTLINED_FUNCTION_15_1();
    }

    goto LABEL_34;
  }

  if (v131 != enum case for Recommendation.needsDisambiguation<A>(_:))
  {
    v187 = OUTLINED_FUNCTION_22();
    EnumTagSinglePayload = v188(v187);
    goto LABEL_22;
  }

  v163 = OUTLINED_FUNCTION_22();
  v165 = v164(v163);
  v166 = *v128;
  v170 = OUTLINED_FUNCTION_69_2(v165, v167, v168, v169);
  static os_log_type_t.info.getter();
  v171 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v171, v172))
  {
    OUTLINED_FUNCTION_18_1();
    v173 = swift_slowAlloc();
    *v173 = 0;
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v174, v175, v176, v177, v173, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  v178 = v200;
  specialized Collection.first.getter(v166, v200);

  v179 = OUTLINED_FUNCTION_55_2();
  if (__swift_getEnumTagSinglePayload(v179, v180, v207) == 1)
  {

    v181 = OUTLINED_FUNCTION_28_9();
    v182(v181);
    v183 = OUTLINED_FUNCTION_29_12();
    v184(v183);
    v185 = OUTLINED_FUNCTION_15_17();
    v186(v185);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v178, &_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
    isa = 0;
  }

  else
  {
    isa = Contact.toINPerson()().super.isa;

    v189 = OUTLINED_FUNCTION_28_9();
    v190(v189);
    v191 = OUTLINED_FUNCTION_29_12();
    v192(v191);
    v193 = OUTLINED_FUNCTION_15_17();
    v194(v193);
    v195 = OUTLINED_FUNCTION_62_4();
    v196(v195);
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v107, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  return isa;
}

uint64_t static InputUtils.getPersonNameComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v88 = v83 - v5;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7_1();
  v86 = v7;
  v87 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v85 = v9 - v8;
  OUTLINED_FUNCTION_22_10();
  v10 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_63_4();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_44_8();
  v19 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v26 = __swift_project_value_buffer(v19, static Signposter.voiceCommands);
  v90 = v21;
  v91 = v19;
  (*(v21 + 16))(v25, v26, v19);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_18_1();
    v29 = swift_slowAlloc();
    v84 = v12;
    v30 = v25;
    v31 = v29;
    *v29 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v27, v28, v32, "InputUtilsGetPersonNameComponents", "", v31, 2u);
    v25 = v30;
    v12 = v84;
    OUTLINED_FUNCTION_15_1();
  }

  v33 = OUTLINED_FUNCTION_60_3();
  v34(v33);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_46_9();
  swift_allocObject();
  v35 = OSSignpostIntervalState.init(id:isOpen:)();
  v36 = *(v12 + 8);
  v36(v2, v10);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.voiceCommands);
  v38 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v39 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v39, v40))
  {
    OUTLINED_FUNCTION_18_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v41);
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v42, v43, v44, v45, v27, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (VoiceCommandsNLIntent.voiceCommandContact.getter())
  {
    v89 = v25;
    v46 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v47 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v48 = v85;
      checkForErrorAndConsumeState(state:)();
      v84 = v35;

      v49 = v86;
      if ((*(v86 + 88))(v48, v87) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v49 + 8))(v48, v87);
        v50 = "";
      }

      OUTLINED_FUNCTION_18_1();
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v46, v47, v64, "InputUtilsGetPersonNameComponents", v50, v63, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v36(v16, v10);
    OUTLINED_FUNCTION_38_8();
    v66 = (*(v65 + 216))();
    v86 = v67;
    v87 = v66;
    OUTLINED_FUNCTION_38_8();
    v69 = (*(v68 + 184))();
    v84 = v70;
    v85 = v69;
    OUTLINED_FUNCTION_38_8();
    v72 = (*(v71 + 192))();
    v83[1] = v73;
    v83[2] = v72;
    OUTLINED_FUNCTION_38_8();
    (*(v74 + 200))();
    OUTLINED_FUNCTION_38_8();
    (*(v75 + 232))();
    OUTLINED_FUNCTION_38_8();
    (*(v76 + 224))();
    v77 = type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
    v81 = v92;
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();

    (*(v90 + 8))(v89, v91);
    v59 = v81;
    v60 = 0;
    v61 = 1;
    v62 = v77;
  }

  else
  {
    v51 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v52 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_18_1();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v54);
      OUTLINED_FUNCTION_30_9();
      _os_log_impl(v55, v56, v57, v58, v27, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    (*(v90 + 8))(v25, v91);
    type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
  }

  return __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
}

uint64_t static InputUtils.getURL(from:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_18_1();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v3, v4, "#InputUtils getURL", v7, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15(&one-time initialization token for voiceCommandTextNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v8, v9, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v15)
  {
    String.convertedToURL()(a1);
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

id static InputUtils.getCurrency(from:locale:)(uint64_t a1, uint8_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v6 = &v41[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  v10 = &v41[-v9];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_18_1();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v12, v13, "#InputUtils getCurrency", v16, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for voiceCommandScalarNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v17, v18, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  v20 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v20, v21, v19);
  if (v22)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    goto LABEL_11;
  }

  Scalar.value.getter();
  v23 = v43;
  v24 = v44;
  OUTLINED_FUNCTION_21_2();
  (*(v25 + 8))(v10, v19);
  if (v24)
  {
LABEL_11:
    v26 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v27 = OUTLINED_FUNCTION_6_22();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_13:

      return 0;
    }

LABEL_12:
    OUTLINED_FUNCTION_18_1();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v29);
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v30, v31, v32, v33, a2, 2u);
    OUTLINED_FUNCTION_15_1();

    goto LABEL_13;
  }

  if (one-time initialization token for voiceCommandCurrencyUnitNode != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v42 >= 0xBu)
  {
    if (v42 == 89)
    {
      v26 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v39 = OUTLINED_FUNCTION_6_22();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(v42);
    String.uppercased()();
  }

  else
  {
    Locale.currency.getter();
    v35 = type metadata accessor for Locale.Currency();
    OUTLINED_FUNCTION_35_10(v6, 1, v35);
    if (v22)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
    }

    else
    {
      Locale.Currency.identifier.getter();
      OUTLINED_FUNCTION_21_2();
      (*(v36 + 8))(v6, v35);
    }
  }

  [objc_allocWithZone(NSDecimalNumber) initWithDouble:v23];
  v37 = objc_allocWithZone(INCurrencyAmount);
  v38 = OUTLINED_FUNCTION_22();
  return @nonobjc INCurrencyAmount.init(amount:currencyCode:)(v38);
}

double static InputUtils.convertVoiceCommandReferenceToIndex(reference:lastInd:)(char a1, uint64_t a2)
{
  if (a1 != 35)
  {
    v4 = VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(a1);
    v6 = specialized Collection<>.firstIndex(of:)(v4, v5, &outlined read-only object #0 of one-time initialization function for NUMBERICREFERENCENODEVALUES);
    v8 = v7;

    if (v8)
    {
      switch(a1)
      {
        case 25:
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v11 = OUTLINED_FUNCTION_64(v10);
          *&result = 1;
          *(v11 + 16) = xmmword_216850;
          *(v11 + 32) = a2;
          return result;
        case 26:
          goto LABEL_9;
        case 29:
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v15 = OUTLINED_FUNCTION_64(v14);
          *&result = 1;
          *(v15 + 16) = xmmword_216850;
          v16 = a2 - 1;
          if (!__OFSUB__(a2, 1))
          {
            goto LABEL_12;
          }

          __break(1u);
LABEL_9:
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          if (a2)
          {
            v19 = swift_allocObject();
            *&result = 2;
            *(v19 + 16) = xmmword_216840;
            *(v19 + 32) = a2 / 2;
            *(v19 + 40) = a2 / 2 + 1;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_64(v17);
            *&result = 1;
            *(v15 + 16) = xmmword_216850;
            v16 = a2 >> 1;
LABEL_12:
            *(v15 + 32) = v16;
          }

          break;
        case 30:
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v15 = OUTLINED_FUNCTION_64(v18);
          *&result = 1;
          *(v15 + 16) = xmmword_216850;
          v16 = a2 - 2;
          if (__OFSUB__(a2, 2))
          {
            __break(1u);
            JUMPOUT(0xEAB9CLL);
          }

          goto LABEL_12;
        default:
          return result;
      }
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v13 = OUTLINED_FUNCTION_64(v12);
      *&result = 1;
      *(v13 + 16) = xmmword_216850;
      *(v13 + 32) = v6;
    }
  }

  return result;
}

uint64_t InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for OSSignpostError();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for DateTimeResolver();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = type metadata accessor for DateTimeResolutionSpec();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();
  type metadata accessor for Date();
  v2[36] = swift_task_alloc();
  type metadata accessor for TimeZone();
  v2[37] = swift_task_alloc();
  v8 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v2[38] = v8;
  v2[39] = *(v8 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  v2[43] = v9;
  v2[44] = *(v9 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Identifier();
  v2[49] = v10;
  v2[50] = *(v10 - 8);
  v2[51] = swift_task_alloc();
  v11 = type metadata accessor for Calendar();
  v2[52] = v11;
  v2[53] = *(v11 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v2[56] = v12;
  v2[57] = *(v12 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v13 = type metadata accessor for OSSignposter();
  v2[61] = v13;
  v2[62] = *(v13 - 8);
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v2[64] = swift_task_alloc();
  v14 = type metadata accessor for TerminalElement.DateTimeValue();
  v2[65] = v14;
  v2[66] = *(v14 - 8);
  v2[67] = swift_task_alloc();

  return _swift_task_switch(InputUtils.DateTimeHydrator.hydrate(dateTimeValue:));
}

uint64_t InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  outlined init with copy of LocationProviding?(*(v0 + 136), v2, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_35_10(v2, 1, v1);
  if (v3)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 512), &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);

    OUTLINED_FUNCTION_6_6();
    v5 = 0;
  }

  else
  {
    (*(*(v0 + 528) + 32))(*(v0 + 536), *(v0 + 512), *(v0 + 520));
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v8 = *(v0 + 496);
    v7 = *(v0 + 504);
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = __swift_project_value_buffer(v9, static Signposter.voiceCommands);
    (*(v8 + 16))(v7, v11, v9);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      OUTLINED_FUNCTION_18_1();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v14);
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v15, "InputUtilsGetDateTime", "", v10, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v16 = *(v0 + 480);
    v17 = *(v0 + 448);
    v18 = *(v0 + 456);
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v31 = *(v0 + 392);
    v21 = *(v0 + 312);
    v32 = *(v0 + 336);
    v22 = *(v0 + 144);

    v23 = OUTLINED_FUNCTION_51_4();
    v24(v23);
    type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_46_9();
    swift_allocObject();
    OUTLINED_FUNCTION_55_2();
    *(v0 + 544) = OSSignpostIntervalState.init(id:isOpen:)();
    v25 = *(v18 + 8);
    *(v0 + 552) = v25;
    *(v0 + 560) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v16, v17);
    (*(v19 + 104))(v20, enum case for Calendar.Identifier.gregorian(_:), v31);
    Calendar.init(identifier:)();
    (*(v19 + 8))(v20, v31);
    __swift_project_boxed_opaque_existential_1((v22 + 40), *(v22 + 64));
    OUTLINED_FUNCTION_20_1();
    dispatch thunk of DeviceState.siriLocale.getter();
    *(v0 + 568) = TerminalElement.DateTimeValue.toDateTime()();
    *(v0 + 608) = enum case for DateTimeResolutionContext.Hemisphere.north(_:);
    v26 = *(v21 + 104);
    *(v0 + 576) = v26;
    *(v0 + 584) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v26(v32);
    outlined init with copy of LocationProviding?(v22, v0 + 56, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
    if (*(v0 + 80))
    {
      outlined init with take of AceServiceInvokerAsync((v0 + 56), v0 + 16);
    }

    else
    {
      outlined init with copy of DeviceState(*(v0 + 144) + 80, v0 + 96);
      v27 = type metadata accessor for LocationProvider();
      v28 = swift_allocObject();
      *(v28 + 16) = 0x3FA999999999999ALL;
      outlined init with take of AceServiceInvokerAsync((v0 + 96), v28 + 24);
      *(v0 + 40) = v27;
      *(v0 + 48) = &protocol witness table for LocationProvider;
      *(v0 + 16) = v28;
      if (*(v0 + 80))
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v0 + 56, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
      }
    }

    v29 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v33 = (*(v29 + 8) + **(v29 + 8));
    v30 = swift_task_alloc();
    *(v0 + 592) = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_64_2(v30);
    v5 = OUTLINED_FUNCTION_9_3();
    v4 = v33;
  }

  return v4(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 600);
  if (v1)
  {
    v2 = *(v0 + 576);
    v3 = *(v0 + 608);
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    [*(v0 + 600) lat];
    v9 = v8;

    (*(v7 + 8))(v4, v6);
    if (v9 <= 0.0)
    {
      v10 = enum case for DateTimeResolutionContext.Hemisphere.south(_:);
    }

    else
    {
      v10 = v3;
    }

    v2(v5, v10, v6);
    v11 = OUTLINED_FUNCTION_9_3();
    v12(v11);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v15 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_18_1();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v17);
      OUTLINED_FUNCTION_26(&dword_0, v18, v19, "#InputUtils: Could not get location, setting hemisphere to north");
      OUTLINED_FUNCTION_15_1();
    }
  }

  v20 = *(v0 + 424);
  v69 = *(v0 + 416);
  v71 = *(v0 + 440);
  v67 = *(v0 + 432);
  v21 = *(v0 + 312);
  v59 = *(v0 + 320);
  v61 = *(v0 + 304);
  v63 = *(v0 + 336);
  v77 = *(v0 + 256);
  v79 = *(v0 + 240);
  v81 = *(v0 + 232);
  v73 = *(v0 + 248);
  v75 = *(v0 + 224);
  v83 = *(v0 + 216);
  v22 = *(*(v0 + 352) + 16);
  OUTLINED_FUNCTION_54_4();
  v22();
  OUTLINED_FUNCTION_54_4();
  v22();
  OUTLINED_FUNCTION_54_4();
  v22();
  static TimeZone.current.getter();
  (*(v21 + 16))(v59, v63, v61);
  (*(v20 + 16))(v67, v71, v69);
  static Date.now.getter();
  type metadata accessor for DateTimeResolutionContext();
  OUTLINED_FUNCTION_46_9();
  swift_allocObject();
  DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v73 + 104))(v77, enum case for DateTimeResolutionSpec.ExpandToType.pointInTime(_:), v79);
  (*(v75 + 104))(v81, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:), v83);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  type metadata accessor for DateTime();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_13_5();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  DateTimeResolver.init()();
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v23 = *(v0 + 184);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  v25 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 152);

    checkForErrorAndConsumeState(state:)();

    if ((*(v27 + 88))(v26, v28) != enum case for OSSignpostError.doubleEnd(_:))
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    OUTLINED_FUNCTION_18_1();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v29);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_15_1();
  }

  v65 = *(v0 + 552);
  v85 = *(v0 + 528);
  v86 = *(v0 + 520);
  v87 = *(v0 + 536);
  v38 = *(v0 + 496);
  v82 = *(v0 + 488);
  v84 = *(v0 + 504);
  v58 = *(v0 + 448);
  v60 = *(v0 + 464);
  v39 = *(v0 + 424);
  v74 = *(v0 + 416);
  v76 = *(v0 + 440);
  v40 = *(v0 + 352);
  v70 = *(v0 + 344);
  v72 = *(v0 + 384);
  v41 = *(v0 + 312);
  v66 = *(v0 + 304);
  v68 = *(v0 + 336);
  v42 = v25;
  v43 = *(v0 + 272);
  v62 = *(v0 + 264);
  v64 = *(v0 + 280);
  v44 = *(v0 + 200);
  v45 = *(v0 + 208);
  v46 = *(v0 + 192);
  v78 = *(v0 + 176);
  v80 = *(v0 + 184);

  v65(v60, v58);
  (*(v44 + 8))(v45, v46);
  (*(v43 + 8))(v64, v62);
  (*(v41 + 8))(v68, v66);
  (*(v40 + 8))(v72, v70);
  (*(v39 + 8))(v76, v74);
  (*(v38 + 8))(v84, v82);
  (*(v85 + 8))(v87, v86);
  outlined init with take of Date?(v80, v78, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v47);
  v49 = *(v0 + 176);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v49, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  }

  else
  {
    v50 = (*(*(v47 - 8) + 88))(v49, v47);
    v51 = *(v0 + 176);
    if (v50 == enum case for Recommendation.confident<A>(_:))
    {
      v52 = OUTLINED_FUNCTION_22();
      v53(v52);
      v88 = *v51;
      goto LABEL_21;
    }

    v54 = OUTLINED_FUNCTION_22();
    v55(v54);
  }

  v88 = 0;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_6();

  return v56(v88);
}

void static InputUtils.getInt(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v0);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v6, static Logger.voiceCommands);
  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v8 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_68_3(&dword_0, v10, v11, "#InputUtils getInt");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for voiceCommandScalarNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  v14 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v12, v13, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_58_2(v14);
  OUTLINED_FUNCTION_35_10(v3, 1, v4);
  if (v15)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    return;
  }

  v16 = OUTLINED_FUNCTION_52_5();
  v17(v16);
  Scalar.value.getter();
  v18 = OUTLINED_FUNCTION_50_3();
  v19(v18, v4);
  if (v22)
  {
    return;
  }

  if ((~*&v21 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_14();
  if (!v20)
  {
    goto LABEL_18;
  }
}

uint64_t static InputUtils.getPlacemarkQueryText(_:)()
{
  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6)
  {
    return v5;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#InputUtils: getPlacemarkQueryText - no voiceCommandText from intent", v4, 2u);
  }

  return 0;
}

uint64_t static InputUtils.getPlacemarkQueryLatLong()()
{
  return _swift_task_switch(static InputUtils.getPlacemarkQueryLatLong());
}

{
  OUTLINED_FUNCTION_8_0();
  static AceService.currentAsync.getter();
  type metadata accessor for LocationProvider();
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 80), inited + 24);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_64_2(v2);

  return LocationProvider.getCurrentLocation()();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 120);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 24));
  OUTLINED_FUNCTION_6_6();

  return v4(v1);
}

uint64_t static InputUtils.getPlacemarkRecommendation(queryText:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a1;
  v42 = a3;
  v5 = type metadata accessor for LocationResolutionSpec();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationResolver();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimeZone();
  __chkstk_darwin(v11 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationResolutionContext();
  v50 = *(v13 - 8);
  v51 = v13;
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v37 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v37 - v25;
  __chkstk_darwin(v24);
  v28 = &v37 - v27;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v29 = v38;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v49 = v17;
  v30 = *(v17 + 16);
  v30(v26, v28, v16);
  v30(v23, v28, v16);
  v30(v20, v28, v16);
  v31 = v42;
  static TimeZone.current.getter();
  v32 = v40;
  v33 = v41;
  LocationResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:latitude:longitude:)();
  v34 = v43;

  Location.init(locationLabel:)(v44, v34, v29);
  LocationResolver.init()();
  LocationResolutionSpec.init()();
  LocationResolver.makeRecommendation(value:context:spec:)();
  (*(v47 + 8))(v33, v48);
  (*(v45 + 8))(v32, v46);
  (*(v52 + 8))(v29, v53);
  (*(v50 + 8))(v15, v51);
  (*(v49 + 8))(v28, v16);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  return __swift_storeEnumTagSinglePayload(v31, 0, 1, v35);
}

unint64_t static InputUtils.getPlacemark(_:)()
{
  v1 = OUTLINED_FUNCTION_13_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v7 = v5 - v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_44_8();
  Recommendation<A>.location.getter(v0);
  outlined init with copy of LocationProviding?(v0, v14, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  v15 = type metadata accessor for Location();
  OUTLINED_FUNCTION_35_10(v14, 1, v15);
  if (v16)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v14, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    goto LABEL_6;
  }

  v17 = Location.toCLPlacemark()();
  OUTLINED_FUNCTION_21_2();
  (*(v18 + 8))(v14, v15);
  if (!v17)
  {
LABEL_6:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
    v20 = OUTLINED_FUNCTION_9_3();
    outlined init with copy of LocationProviding?(v20, v21, v22, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
      v28 = OUTLINED_FUNCTION_22();
LABEL_17:
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v28, v29, &_s13SiriInference8LocationVSgMR);
      return 0;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136315138;
    outlined init with copy of LocationProviding?(v11, v7, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    OUTLINED_FUNCTION_35_10(v7, 1, v15);
    if (v16)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    }

    else
    {
      v30 = Location.locationLabel.getter();
      v32 = v31;
      OUTLINED_FUNCTION_21_2();
      (*(v33 + 8))(v7, v15);
      if (v32)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
LABEL_16:
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v39);

        *(v26 + 4) = v34;
        OUTLINED_FUNCTION_66_2(&dword_0, v35, v36, "#InputUtils getPlacemark - failed to convert to CLPlacemark; location-label=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        OUTLINED_FUNCTION_15_1();

        OUTLINED_FUNCTION_15_1();

        v29 = &_s13SiriInference8LocationVSgMd;
        v28 = v0;
        goto LABEL_17;
      }
    }

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);

    v32 = 0xE300000000000000;
    v30 = 7104878;
    goto LABEL_16;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  return v17;
}

uint64_t static InputUtils.getPlaceDescriptor(_:)()
{
  if (static InputUtils.getPlacemark(_:)())
  {
    PlaceDescriptor.init(placemark:)();
  }

  type metadata accessor for PlaceDescriptor();
  v0 = OUTLINED_FUNCTION_61_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Location.init(locationLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = a1;
  v63 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6CountyVSgMd, &_s13SiriInference6CountyVSgMR);
  __chkstk_darwin(v3 - 8);
  v60 = v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12LocationNameVSgMd, &_s13SiriInference12LocationNameVSgMR);
  __chkstk_darwin(v5 - 8);
  v59 = v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference16AddressReferenceVSgMd, &_s13SiriInference16AddressReferenceVSgMR);
  __chkstk_darwin(v7 - 8);
  v58 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContinentNameVSgMd, &_s13SiriInference13ContinentNameVSgMR);
  __chkstk_darwin(v9 - 8);
  v57 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13StreetAddressVSgMd, &_s13SiriInference13StreetAddressVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8LandmarkVSgMd, &_s13SiriInference8LandmarkVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference9ProximityVSgMd, &_s13SiriInference9ProximityVSgMR);
  __chkstk_darwin(v17 - 8);
  v19 = v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5PlaceVSgMd, &_s13SiriInference5PlaceVSgMR);
  __chkstk_darwin(v20 - 8);
  v22 = v56 - v21;
  v56[1] = v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8CentroidVSgMd, &_s13SiriInference8CentroidVSgMR);
  __chkstk_darwin(v23 - 8);
  v25 = v56 - v24;
  v56[2] = v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference4CityVSgMd, &_s13SiriInference4CityVSgMR);
  __chkstk_darwin(v26 - 8);
  v28 = v56 - v27;
  v56[3] = v56 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5StateVSgMd, &_s13SiriInference5StateVSgMR);
  __chkstk_darwin(v29 - 8);
  v31 = v56 - v30;
  v56[4] = v56 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ZipcodeVSgMd, &_s13SiriInference7ZipcodeVSgMR);
  __chkstk_darwin(v32 - 8);
  v34 = v56 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7CountryVSgMd, &_s13SiriInference7CountryVSgMR);
  __chkstk_darwin(v35 - 8);
  v37 = v56 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6RadiusVSgMd, &_s13SiriInference6RadiusVSgMR);
  __chkstk_darwin(v38 - 8);
  v40 = v56 - v39;
  v41 = type metadata accessor for Radius();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
  v42 = type metadata accessor for Country();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v42);
  v43 = type metadata accessor for Zipcode();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v43);
  v44 = type metadata accessor for State();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v44);
  v45 = type metadata accessor for City();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v45);
  v46 = type metadata accessor for Centroid();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v46);
  v47 = type metadata accessor for Place();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v47);
  v48 = type metadata accessor for Proximity();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v48);
  v49 = type metadata accessor for Landmark();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v49);
  v50 = type metadata accessor for StreetAddress();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v50);
  v51 = type metadata accessor for ContinentName();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v51);
  v52 = type metadata accessor for AddressReference();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v52);
  v53 = type metadata accessor for LocationName();
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v53);
  v54 = type metadata accessor for County();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v54);
  return Location.init(radius:country:zipcode:state:city:centroid:place:timezone:proximity:landmark:streetAddress:continentName:addressReference:locationName:locationLabel:county:locationAccuracy:)();
}

uint64_t Recommendation<A>.location.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v42 - v16);
  (*(v15 + 16))(&v42 - v16, v2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for Recommendation.confident<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(a1, v17, v7);
LABEL_9:
    v24 = a1;
    v25 = 0;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v7);
  }

  if (v18 == enum case for Recommendation.needsConfirmation<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    v19 = *(v8 + 32);
    v19(v13, v17, v7);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#InputUtils LocationResolver call returned needsConfirmation which is unsupported, returning location", v23, 2u);
    }

    v19(a1, v13, v7);
    goto LABEL_9;
  }

  if (v18 == enum case for Recommendation.needsDisambiguation<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    specialized Collection.first.getter(*v17, v6);

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v33 = *(v8 + 32);
      v33(v11, v6, v7);
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.voiceCommands);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "#InputUtils LocationResolver call returned needsDisambiguation which is unsupported, picking first location", v37, 2u);
      }

      v33(a1, v11, v7);
      goto LABEL_9;
    }

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_23:

      v24 = a1;
      v25 = 1;
      return __swift_storeEnumTagSinglePayload(v24, v25, 1, v7);
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "#InputUtils getPlacemark - zero recommendations for disambiguation";
LABEL_22:
    _os_log_impl(&dword_0, v28, v29, v31, v30, 2u);

    goto LABEL_23;
  }

  if (v18 == enum case for Recommendation.none<A>(_:))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_23;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "#InputUtils getPlacemark - no recommendations";
    goto LABEL_22;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.voiceCommands);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "#InputUtils getPlacemark - unknown recommendation", v41, 2u);
  }

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  return (*(v15 + 8))(v17, v14);
}

id @nonobjc INCurrencyAmount.init(amount:currencyCode:)(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithAmount:a1 currencyCode:v3];

  return v4;
}

uint64_t outlined init with copy of VoiceCommandsNLIntent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCommandsNLIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t outlined init with copy of LocationProviding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin17LocationProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for InputUtils.DateTimeHydrator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for InputUtils.DateTimeHydrator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_32(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_5(double a1)
{

  return static InputUtils.getPlacemarkRecommendation(queryText:latitude:longitude:)(v2, v1, v3);
}

void *OUTLINED_FUNCTION_58_2(uint64_t a1)
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

void OUTLINED_FUNCTION_66_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_68_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Logger.logObject.getter();
}

uint64_t RunCustomIntentCATs.confirmSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_31_0(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v9);
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_19(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunCustomIntentCATs.confirmSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_66_3(v4);
  v6 = OUTLINED_FUNCTION_58_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_21A520);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v8 = v0[8];
  OUTLINED_FUNCTION_4_33(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v15;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v16;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_38_3(v17);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_70_1();

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunCustomIntentCATs.describeCustomIntentItem(device:item:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v7 = v0[6];
  v8 = v0[4];
  v1[6] = v2;
  v1[9] = v6;
  v1[10] = 1835365481;
  v1[11] = 0xE400000000000000;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v9);
  if (v10)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_19(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunCustomIntentCATs.deviceUnlock(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.deviceUnlock(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.disambiguateSlotValue(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.disambiguateSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.disambiguateSlotValueItems(device:customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3(v2);
  v0[8] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v5);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  v7 = v0[7];
  OUTLINED_FUNCTION_24_6();
  if (v8)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  v10 = v0[5];
  v3[8].n128_u64[0] = 0x736D657469;
  v3[8].n128_u64[1] = 0xE500000000000000;
  v3[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[9].n128_u64[0] = v10;
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_38_3(v11);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.disambiguateSlotValueWithCustomText(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 112) = v1;
  OUTLINED_FUNCTION_51_5(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v8 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_41_3();
  v24 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218720);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v5);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_24_6();
  if (v8)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  v10 = *(v0 + 72);
  OUTLINED_FUNCTION_26_3();
  v3[8].n128_u64[0] = 0xD000000000000015;
  v3[8].n128_u64[1] = v11;
  outlined init with copy of SpeakableString?(v12, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v0 + 64);
  OUTLINED_FUNCTION_26_3();
  v3[11].n128_u64[0] = 0xD000000000000010;
  v3[11].n128_u64[1] = v15;
  outlined init with copy of SpeakableString?(v16, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v0 + 112);
  v3[14].n128_u64[0] = 0xD000000000000018;
  v3[14].n128_u64[1] = 0x8000000000230D40;
  v3[16].n128_u64[1] = &type metadata for Bool;
  v3[15].n128_u8[0] = v18;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v23 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_39_11(v20);
  OUTLINED_FUNCTION_17_19();

  return v23();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.doneButton()()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v7(v2, 0xD00000000000001ALL, 0x800000000022EAA0, _swiftEmptyArrayStorage);
}

uint64_t RunCustomIntentCATs.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  v1[8] = OUTLINED_FUNCTION_71_3(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_58_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v8 = v0[8];
  v9 = v0[4];
  *(v2 + 48) = v3;
  *(v2 + 72) = v7;
  strcpy((v2 + 80), "customDialog");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_38_3(v15);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_70_1();

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunCustomIntentCATs.extensionTimedOut(device:actionName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v7 = v0[6];
  v8 = v0[4];
  v1[6] = v2;
  v1[9] = v6;
  v1[10] = 0x614E6E6F69746361;
  v1[11] = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v9);
  if (v10)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_19(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunCustomIntentCATs.followupNotSupported(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_41_3();
  v19 = v2;
  OUTLINED_FUNCTION_14_0();
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_31_0(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v8 = *(v0 + 48);
  OUTLINED_FUNCTION_5_4(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v10);
  if (v11)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v18 = v13;
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_13_6(v14);
  *v15 = v16;
  v15[1] = RunVoiceCommandCATs.disambiguateSlotValue(device:slotName:);
  OUTLINED_FUNCTION_17_19();

  return v18();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessage(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.handoffNotificationMessageHomePodOnly(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessageHomePodOnly(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.initiateHandoff(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.initiateHandoff(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.intentConfirmationPrompt(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_5(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v7 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3(v3);
  v0[11] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v0[10];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = v0[9];
  v12 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_43_6();
  v14 = v0[8];
  OUTLINED_FUNCTION_26_3();
  v4[11].n128_u64[0] = v1;
  v4[11].n128_u64[1] = v15;
  outlined init with copy of SpeakableString?(v16, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[12] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_39_11(v18);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunCustomIntentCATs.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 128) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v10 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v10);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v1[13] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v1[12];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = v1[11];
  v12 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_43_6();
  v14 = v1[10];
  OUTLINED_FUNCTION_26_3();
  *(v4 + 176) = v2;
  *(v4 + 184) = v15;
  outlined init with copy of SpeakableString?(v16, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = v1[9];
  OUTLINED_FUNCTION_44_9();
  *(v4 + 224) = v19;
  *(v4 + 232) = v20;
  outlined init with copy of SpeakableString?(v21, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
  }

  else
  {
    *(v4 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_26_3();
  *(v4 + 272) = v2 + 8;
  *(v4 + 280) = v23;
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 288) = v24;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[14] = v25;
  *v25 = v26;
  v25[1] = RunCustomIntentCATs.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunCustomIntentCATs.intentHandledResponse(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_5(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v7 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3(v3);
  v0[11] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v0[10];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = v0[9];
  v12 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_43_6();
  v14 = v0[8];
  OUTLINED_FUNCTION_26_3();
  v4[11].n128_u64[0] = v1;
  v4[11].n128_u64[1] = v15;
  outlined init with copy of SpeakableString?(v16, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[12] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_39_11(v18);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t RunCustomIntentCATs.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 128) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v10 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v10);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v1[13] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v1[12];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = v1[11];
  v12 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = v1[10];
  OUTLINED_FUNCTION_44_9();
  *(v4 + 176) = v15;
  *(v4 + 184) = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_43_6();
  v19 = v1[9];
  OUTLINED_FUNCTION_26_3();
  *(v4 + 224) = v2;
  *(v4 + 232) = v20;
  outlined init with copy of SpeakableString?(v21, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
  }

  else
  {
    *(v4 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_26_3();
  *(v4 + 272) = v2 + 8;
  *(v4 + 280) = v23;
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 288) = v24;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[14] = v25;
  *v25 = v26;
  v25[1] = RunCustomIntentCATs.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.introduceDisambiguationList(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 98) = v3;
  *(v1 + 97) = v4;
  *(v1 + 96) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  *(v1 + 64) = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_41_3();
  v24 = v2;
  OUTLINED_FUNCTION_14_0();
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218720);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = *(v0 + 96);
  *(v1 + 48) = v3;
  *(v1 + 72) = v6;
  *(v1 + 80) = 0x6E756F436D657469;
  *(v1 + 88) = 0xE900000000000074;
  if (v7)
  {
    OUTLINED_FUNCTION_68_4();
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 32);
    v8 = &type metadata for Double;
  }

  v10 = *(v0 + 97);
  *(v1 + 96) = v9;
  *(v1 + 120) = v8;
  *(v1 + 128) = 0x657A695365676170;
  *(v1 + 136) = 0xE800000000000000;
  if (v10)
  {
    OUTLINED_FUNCTION_68_4();
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = &type metadata for Double;
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v15 = *(v0 + 98);
  *(v1 + 144) = v12;
  *(v1 + 168) = v11;
  *(v1 + 176) = 0xD000000000000010;
  *(v1 + 184) = 0x8000000000232F10;
  *(v1 + 192) = v15;
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000018;
  *(v1 + 232) = 0x8000000000232ED0;
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v17)
  {

    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
  }

  else
  {
    *(v1 + 264) = v16;
    __swift_allocate_boxed_opaque_existential_1((v1 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v23 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 80) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_39_11(v20);
  OUTLINED_FUNCTION_17_19();

  return v23();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.introduceNextDisambiguationPage(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.introduceNextDisambiguationPage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216850);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v6);
  OUTLINED_FUNCTION_13_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t RunCustomIntentCATs.offerMoreDisambiguationItems(device:remainingPages:customSelectionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_41_3();
  v20 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3(v3);
  *(v0 + 64) = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  v6 = *(v0 + 88);
  v4[3].n128_u64[0] = v2;
  v4[4].n128_u64[1] = v5;
  strcpy(&v4[5], "remainingPages");
  v4[5].n128_u8[15] = -18;
  if (v6)
  {
    OUTLINED_FUNCTION_68_4();
    v4[6].n128_u64[1] = 0;
    v4[7].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v7 = &type metadata for Double;
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v4[6].n128_u64[0] = v8;
  v4[7].n128_u64[1] = v7;
  v4[8].n128_u64[0] = 0xD000000000000015;
  v4[8].n128_u64[1] = 0x8000000000232EF0;
  outlined init with copy of SpeakableString?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v11);
  v12 = *(v0 + 56);
  OUTLINED_FUNCTION_24_6();
  if (v13)
  {

    outlined destroy of String?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v19 = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 72) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_38_3(v16);
  OUTLINED_FUNCTION_17_19();

  return v19();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunCustomIntentCATs.offerMoreItems(device:remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 40) = a5;
  *(v7 + 48) = v6;
  *(v7 + 81) = a6;
  *(v7 + 80) = a4;
  OUTLINED_FUNCTION_54_5(a1, a2, a3);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.offerMoreItems(device:remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3(v2);
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_218630;
  *(v3 + 32) = 0x656369766564;
  *(v3 + 40) = 0xE600000000000000;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
    v5 = v1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v6 = *(v0 + 80);
  *(v3 + 48) = v5;
  *(v3 + 72) = v4;
  strcpy((v3 + 80), "remainingPages");
  *(v3 + 95) = -18;
  if (v6)
  {
    OUTLINED_FUNCTION_68_4();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v7 = &type metadata for Double;
  }

  v9 = *(v0 + 81);
  *(v3 + 96) = v8;
  *(v3 + 120) = v7;
  strcpy((v3 + 128), "nextPageSize");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v10 = *(v0 + 40);
    v11 = &type metadata for Double;
  }

  *(v3 + 144) = v10;
  *(v3 + 168) = v11;
  OUTLINED_FUNCTION_13_8();

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_38_3(v13);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.promptForSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_31_0(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v9);
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_19(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunCustomIntentCATs.promptForSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_66_3(v4);
  v6 = OUTLINED_FUNCTION_58_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_21A520);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v8 = v0[8];
  OUTLINED_FUNCTION_4_33(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v15;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v16;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_38_3(v17);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t RunCustomIntentCATs.readDisambiguationItems(device:items:)()
{
  OUTLINED_FUNCTION_41_3();
  v12 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  v6 = v0[4];
  v4[3].n128_u64[0] = v2;
  v4[4].n128_u64[1] = v5;
  v4[5].n128_u64[0] = 0x736D657469;
  v4[5].n128_u64[1] = 0xE500000000000000;
  v4[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v4[6].n128_u64[0] = v6;
  v11 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[7] = v7;
  *v7 = v8;
  v7[1] = RunCustomIntentCATs.readDisambiguationItems(device:items:);
  v9 = v0[2];

  return v11(v9, 0xD000000000000027, 0x800000000022EDE0, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunCustomIntentCATs.unsupportedSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_31_0(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v9);
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_19(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunCustomIntentCATs.unsupportedSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_66_3(v4);
  v6 = OUTLINED_FUNCTION_58_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_21A520);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v8 = v0[8];
  OUTLINED_FUNCTION_4_33(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v15;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v16;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_38_3(v17);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t RunCustomIntentCATs.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunCustomIntentCATs.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t RunCustomIntentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t type metadata accessor for RunCustomIntentCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunCustomIntentCATs;
  if (!type metadata singleton initialization cache for RunCustomIntentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "intentCategory");
  *(v2 + 95) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "customPrompt");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19()
{
  result = *(v0 + 40);
  strcpy((v1 + 128), "categoryVerb");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "parameterName");
  *(v2 + 94) = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 96) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = result;
  return result;
}

double OUTLINED_FUNCTION_56_2()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_67_4()
{
  *(v1 + 216) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 192));
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 56) = a1;

  return swift_task_alloc();
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.__allocating_init(runner:deviceState:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a1, v4 + 56);
  outlined init with take of AceServiceInvokerAsync(a2, v4 + 16);
  return v4;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.init(runner:deviceState:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 56);
  outlined init with take of AceServiceInvokerAsync(a2, v2 + 16);
  return v2;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[14] = OUTLINED_FUNCTION_28();
  v1[15] = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_16_1();
  v1[16] = v3;
  v1[17] = OUTLINED_FUNCTION_28();
  type metadata accessor for CATOption();
  v1[18] = OUTLINED_FUNCTION_28();
  v1[19] = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_16_1();
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[13];
  type metadata accessor for RunCustomIntentCATs(0);
  static CATOption.defaultMode.getter();
  v0[22] = CATWrapper.__allocating_init(options:globals:)();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = DeviceState.asSiriKitDeviceState()(v2, v3);
  v0[23] = v4;
  OUTLINED_FUNCTION_16_1();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();
  v7 = v0[21];

  return v9(v7, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v2 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();

  return static NotificationTemplates.genericHandoffNotification()(v3);
}

{
  v1 = *(v0 + 104);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  OUTLINED_FUNCTION_16_1();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();

  return v7(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = v3;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v9 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v0[10] = v5;
  v0[11] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v3 + 16))(boxed_opaque_existential_1, v4, v5);
  HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v9);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v7[27] = v2;

  if (!v2)
  {
    v7[28] = a2;
    v7[29] = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t CustomIntentHandleIntentFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  outlined init with copy of DeviceState(a4, v4 + 16);
  outlined init with copy of DeviceState(a4, v46);
  v11 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_35_9(v11);
  OUTLINED_FUNCTION_10_8();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v13 = OUTLINED_FUNCTION_10_23(v12, &v50);
  v14 = type metadata accessor for RunCustomIntentCATsSimple(v13);
  OUTLINED_FUNCTION_35_9(v14);
  OUTLINED_FUNCTION_10_8();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = OUTLINED_FUNCTION_10_23(v15, &v49);
  v17 = type metadata accessor for RunVoiceCommandCATs(v16);
  OUTLINED_FUNCTION_35_9(v17);
  OUTLINED_FUNCTION_10_8();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  v19 = OUTLINED_FUNCTION_10_23(v18, &v48);
  v20 = type metadata accessor for RunVoiceCommandCATsSimple(v19);
  OUTLINED_FUNCTION_35_9(v20);
  OUTLINED_FUNCTION_10_8();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = OUTLINED_FUNCTION_10_23(v21, &v47);
  type metadata accessor for ContinueInAppCATWrapperSimple(v22);
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  swift_allocObject();
  outlined init with copy of DeviceState?(v44, v43);
  v23 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v43);
  outlined destroy of DeviceState?(v44);
  v24 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v25 = ResponseFactory.init()();
  type metadata accessor for CustomIntentHandleIntentResponseGenerator();
  v26 = swift_allocObject();
  outlined init with copy of DeviceState(v46, v44);
  v43[3] = v24;
  v43[4] = &protocol witness table for ResponseFactory;
  v43[0] = v25;
  v27 = a1;
  v26[10] = a1;
  v26[11] = a2;
  outlined init with copy of DeviceState(v44, (v26 + 2));
  v26[9] = a3;
  v26[12] = v23;
  outlined init with copy of DeviceState(v43, (v26 + 13));
  outlined init with copy of DeviceState(v44, v42);
  v28 = one-time initialization token for shared;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  v30 = type metadata accessor for AppNameResolver();
  v31 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v32 = swift_allocObject();
  v40 = v30;
  v41 = &protocol witness table for AppNameResolver;

  *&v39 = v31;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  *(v32 + 56) = v29;
  outlined init with take of AceServiceInvokerAsync(v42, v32 + 16);
  *(v32 + 64) = 0;
  *(v32 + 72) = 1;
  *(v32 + 80) = v38;
  *(v32 + 88) = v37;
  *(v32 + 96) = v36;
  *(v32 + 104) = v35;
  outlined init with take of AceServiceInvokerAsync(&v39, v32 + 112);
  v26[7] = v32;
  v33 = v26[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v26[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v27, a2, v32, v44, v33);
  *(v5 + 56) = v26;

  return v5;
}

uint64_t CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:)()
{
  v1 = *(v0[4] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v2 = IntentResolutionRecord.app.getter();
  v0[6] = OUTLINED_FUNCTION_8_21(v2);
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_3_25(v3);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:));
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CustomIntentHandleIntentFlowStrategy makeIntentHandledResponse", v4, 2u);
  }

  v5 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v6 = IntentResolutionRecord.intent.getter();
  v7 = IntentResolutionRecord.intentResponse.getter();
  v8 = CustomIntentHandleIntentFlowStrategy.isReadRequest(intent:intentResponse:deviceState:)(v6, v7, (v5 + 16));

  if (v8)
  {
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    OUTLINED_FUNCTION_6_7();

    return v9();
  }

  else
  {
    v11 = IntentResolutionRecord.app.getter();
    v0[6] = OUTLINED_FUNCTION_8_21(v11);
    v12 = IntentResolutionRecord.intentResponse.getter();
    OUTLINED_FUNCTION_9_20(v12);
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_3_25(v13);
    OUTLINED_FUNCTION_11_16();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:));
  }

  else
  {
    v7 = *(v3 + 48);

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v1 = IntentResolutionRecord.app.getter();
  *(v0 + 48) = OUTLINED_FUNCTION_8_21(v1);
  v2 = IntentResolutionRecord.intentResponse.getter();
  OUTLINED_FUNCTION_9_20(v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_3_25(v3);
  OUTLINED_FUNCTION_11_16();

  return v4();
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:));
  }

  else
  {
    v7 = *(v3 + 48);

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.isReadRequest(intent:intentResponse:deviceState:)(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for InteractionType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = CustomIntentHandleIntentFlowStrategy.getReadItems(intent:intentResponse:)(a1, a2)[2];

  if (v13)
  {
    OUTLINED_FUNCTION_4_24();
    if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isCarPlay.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isHomePod.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isEyesFree.getter()))
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      dispatch thunk of DeviceState.interactionType.getter();
      (*(v7 + 104))(v10, enum case for InteractionType.dialogDriven(_:), v6);
      LOBYTE(v13) = specialized == infix<A>(_:_:)();
      v15 = *(v7 + 8);
      v15(v10, v6);
      v15(v12, v6);
    }
  }

  return v13 & 1;
}

void *CustomIntentHandleIntentFlowStrategy.getReadItems(intent:intentResponse:)(void *a1, void *a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2;
  v4 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v3);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  v6 = [a1 typeName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v24 = v3;
  v11 = INIntentResponse.localizedResponseTemplate(intentName:)(v10);

  type metadata accessor for CATSpeakableString();
  v25 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v11._countAndFlagsBits, v11._object);

  v13 = 0;
  v14 = 1 << *(v5 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v5 + 64);
  v17 = (v14 + 63) >> 6;
LABEL_6:
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    v18 = v13;
LABEL_12:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v20, v27);
    outlined init with copy of Any(*(v5 + 56) + 32 * v20, v26);
    *__src = v27[0];
    *&__src[16] = v27[1];
    *&__src[32] = v28;
    outlined init with take of Any(v26, &__src[40]);
LABEL_13:
    memcpy(__dst, __src, 0x48uLL);
    if (!*(&__dst[1] + 1))
    {

      return _swiftEmptyArrayStorage;
    }

    outlined init with take of Any((&__dst[2] + 8), v27);
    *__src = __dst[0];
    *&__src[16] = __dst[1];
    *&__src[32] = *&__dst[2];
    v21 = swift_dynamicCast();
    if (v21)
    {
      *__src = v26[0];
      __chkstk_darwin(v21);
      v23[2] = __src;
      v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v23, v25);

      if (v22)
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
        goto LABEL_6;
      }

      outlined init with take of Any(v27, __src);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      result = swift_dynamicCast();
      if (result)
      {

        return *&v26[0];
      }

      goto LABEL_6;
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  while (v16);
LABEL_8:
  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      memset(__src, 0, sizeof(__src));
      goto LABEL_13;
    }

    v16 = *(v5 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InstallShortcutViewFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t InstallShortcutViewFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 104) + **(**v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.execute() in conformance ListShortcutsFlow;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t outlined destroy of DeviceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy()
{
  result = lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy)
  {
    type metadata accessor for CustomIntentHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t a1)
{
  *(v1 + 40) = a1;

  return IntentResolutionRecord.intent.getter();
}

void ShortcutsLinkRCHFlowStrategy.__allocating_init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_21_5(v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = swift_allocObject();
  v31 = a22[3];
  v32 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v31);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  v38 = (*(v37 + 16))(v35 - v34);
  OUTLINED_FUNCTION_25_9(v38, v39, v40, v41, v42, v43, v44, v45, a21, v36, v30, v31, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_21_5(v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = a22[3];
  v32 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v31);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  v38 = (*(v37 + 16))(v35 - v34);
  OUTLINED_FUNCTION_25_9(v38, v39, v40, v41, v42, v43, v44, v45, a21, v36, v22, v31, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:needsValueRequest:actionMetadata:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_3();
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 128, v17);

  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs(0);
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ShortcutsLinkPromptForValueFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(v7, v5, v9, v10, v3, v16, v11, v12, v17);
  outlined init with copy of DeviceState(v1 + 88, v17);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMR);
  OUTLINED_FUNCTION_66(v13);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy, type metadata accessor for ShortcutsLinkPromptForValueFlowStrategy, &protocol conformance descriptor for ShortcutsLinkPromptForValueFlowStrategy);

  v17[0] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  OUTLINED_FUNCTION_10_24();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v14, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMR, v15);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:disambiguatingNeedsValueRequest:actionMetadata:actionParameterMetadata:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v29 = v1;
  v27 = v2;
  v30 = v3;
  v5 = v4;
  v6 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_13_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v14 = v0[2];
  v13 = v0[3];
  v28 = v14;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  OUTLINED_FUNCTION_1_18();
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = Locale.identifier.getter();
  v17 = v16;
  (*(v8 + 8))(v12, v6);
  v18 = type metadata accessor for LinkMetadataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(v14, v13, v27, v29, v15, v17);

  swift_setDeallocating();

  v20 = [v5 dialog];
  outlined init with copy of DeviceState((v0 + 5), v33);
  outlined init with copy of DeviceState((v0 + 16), v32);
  outlined init with copy of DeviceState((v0 + 11), v31);
  v21 = swift_allocObject();
  *(v21 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  type metadata accessor for ShortcutsLinkDisambiguationFlowStrategy();
  v22 = swift_allocObject();
  v22[13] = v18;
  v22[14] = &protocol witness table for LinkMetadataProvider;
  v22[10] = v21;
  v22[20] = v30;
  v22[3] = v28;
  v22[4] = v13;
  v22[2] = v20;
  outlined init with take of AceServiceInvokerAsync(v33, (v22 + 5));
  outlined init with take of AceServiceInvokerAsync(v32, (v22 + 15));
  outlined init with take of AceServiceInvokerAsync(v31, (v22 + 21));
  outlined init with copy of DeviceState((v0 + 11), v33);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMR);
  OUTLINED_FUNCTION_66(v23);
  OUTLINED_FUNCTION_9_21();
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(v24, v25, &protocol conformance descriptor for ShortcutsLinkDisambiguationFlowStrategy);
  v26 = v30;

  *&v33[0] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_11_17(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<ShortcutsLinkDisambiguationItem, [LNValue]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:confirmationRequest:actionMetadata:)()
{
  OUTLINED_FUNCTION_40_0();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_3();
  v5 = *(v0 + 24);
  v20 = *(v0 + 16);
  outlined init with copy of DeviceState(v0 + 40, v26);
  outlined init with copy of DeviceState(v0 + 128, &v25);
  outlined init with copy of DeviceState(v0 + 88, v24);
  type metadata accessor for RunLinkActionCATsSimple(0);
  OUTLINED_FUNCTION_31_8();

  static CATOption.defaultMode.getter();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  v7 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATs(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  v10 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v10);
  v11 = ResponseFactory.init()();
  type metadata accessor for ShortcutsLinkPromptForConfirmationFlowStrategy();
  v12 = swift_allocObject();
  v12[11] = v7;
  v12[12] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v12[8] = v8;
  v12[17] = &type metadata for EnableTCCLabelsProvider;
  v12[18] = &protocol witness table for EnableTCCLabelsProvider;
  v12[22] = v10;
  v12[23] = &protocol witness table for ResponseFactory;
  v12[19] = v11;
  v12[2] = v21;
  v12[3] = v22;
  v12[4] = v23;
  v12[5] = v20;
  v12[6] = v5;
  v12[7] = v6;
  v12[13] = v9;
  outlined init with take of AceServiceInvokerAsync(v26, (v12 + 24));
  outlined init with take of AceServiceInvokerAsync(&v25, (v12 + 29));
  outlined init with take of AceServiceInvokerAsync(v24, (v12 + 34));
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = [v14 value];
  outlined init with copy of DeviceState(v0 + 88, v26);
  *&v25 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v17);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForConfirmationFlowStrategy and conformance ShortcutsLinkPromptForConfirmationFlowStrategy, type metadata accessor for ShortcutsLinkPromptForConfirmationFlowStrategy, &protocol conformance descriptor for ShortcutsLinkPromptForConfirmationFlowStrategy);

  *&v26[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v18, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMR, v19);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void *ShortcutsLinkRCHFlowStrategy.flowFor(action:actionConfirmationRequest:actionMetadata:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = *(v4 + 24);
  outlined init with copy of DeviceState(v4 + 40, v18);
  outlined init with copy of DeviceState(v4 + 128, v17);
  outlined init with copy of DeviceState(v4 + 88, v16);
  type metadata accessor for ShortcutsLinkPromptForActionConfirmationFlowStrategy();
  swift_allocObject();

  v10 = a1;
  ShortcutsLinkPromptForActionConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:deviceState:serviceInvoker:outputPublisher:)(v10, a2, a3, v8, v9, v18, v17, v16);
  outlined init with copy of DeviceState(v4 + 88, v18);
  v17[0] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v11);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForActionConfirmationFlowStrategy and conformance ShortcutsLinkPromptForActionConfirmationFlowStrategy, type metadata accessor for ShortcutsLinkPromptForActionConfirmationFlowStrategy, &protocol conformance descriptor for ShortcutsLinkPromptForActionConfirmationFlowStrategy);
  v12 = v10;

  v18[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v13, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMR, v14);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v18;
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:disambiguationRequest:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  OUTLINED_FUNCTION_31_8();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  (*(v7 + 8))(v11, v5);
  LNDisambiguationRequest.toDisambiguationItems(selectedValues:locale:)(v2);
  OUTLINED_FUNCTION_31_8();

  v13 = v0[2];
  v12 = v0[3];
  v14 = v0[4];

  v15 = v14;
  v16 = [v4 dialog];
  outlined init with copy of DeviceState((v0 + 5), v25);
  outlined init with copy of DeviceState((v0 + 16), v24);
  outlined init with copy of DeviceState((v0 + 11), v23);
  v17 = type metadata accessor for LinkMetadataProvider();
  v18 = swift_allocObject();
  *(v18 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  type metadata accessor for ShortcutsLinkDisambiguationFlowStrategy();
  v19 = swift_allocObject();
  v19[13] = v17;
  v19[14] = &protocol witness table for LinkMetadataProvider;
  v19[10] = v18;
  v19[3] = v13;
  v19[4] = v12;
  v19[20] = v15;
  v19[2] = v16;
  outlined init with take of AceServiceInvokerAsync(v25, (v19 + 5));
  outlined init with take of AceServiceInvokerAsync(v24, (v19 + 15));
  outlined init with take of AceServiceInvokerAsync(v23, (v19 + 21));
  outlined init with copy of DeviceState((v0 + 11), v25);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMR);
  OUTLINED_FUNCTION_66(v20);
  OUTLINED_FUNCTION_9_21();
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(v21, v22, &protocol conformance descriptor for ShortcutsLinkDisambiguationFlowStrategy);

  *&v25[0] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_11_17(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<ShortcutsLinkDisambiguationItem, [LNValue]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

__int128 *ShortcutsLinkRCHFlowStrategy.flowFor(action:choiceRequest:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  outlined init with copy of DeviceState(v3 + 40, v16);
  outlined init with copy of DeviceState(v3 + 128, v15);
  outlined init with copy of DeviceState(v3 + 88, v14);
  type metadata accessor for ShortcutsLinkPromptForMultiChoiceFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(a2, v5, v7, v6, v16, v15, v14);
  outlined init with copy of DeviceState(v3 + 88, v16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMR);
  OUTLINED_FUNCTION_66(v8);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForMultiChoiceFlowStrategy and conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy, type metadata accessor for ShortcutsLinkPromptForMultiChoiceFlowStrategy, &protocol conformance descriptor for ShortcutsLinkPromptForMultiChoiceFlowStrategy);

  v9 = v6;
  v10 = a2;

  *&v16[0] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  OUTLINED_FUNCTION_10_24();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v11, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMR, v12);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v16;
}

__int128 *ShortcutsLinkRCHFlowStrategy.flowFor(action:continueInAppRequest:actionMetadata:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = *(v3 + 24);
  outlined init with copy of DeviceState(v3 + 40, v13);
  outlined init with copy of DeviceState(v3 + 88, v12);
  type metadata accessor for ShortcutsLinkPromptForContinueInAppFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(v5, v6, v13, v12);
  outlined init with copy of DeviceState(v3 + 88, v13);
  *&v12[0] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v7);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForContinueInAppFlowStrategy and conformance ShortcutsLinkPromptForContinueInAppFlowStrategy, type metadata accessor for ShortcutsLinkPromptForContinueInAppFlowStrategy, &protocol conformance descriptor for ShortcutsLinkPromptForContinueInAppFlowStrategy);

  v8 = a2;
  *&v13[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v9, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMR, v10);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v13;
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v57 = *v0;
  type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_13_1();
  v54 = v11;
  v55 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = [v0[4] systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v15) = Array<A>.isAudioStarting.getter(v16);

  v56 = v15;
  if (v15)
  {
    OUTLINED_FUNCTION_32_11();
    if (!v17)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      OUTLINED_FUNCTION_24_12(&dword_0, v22, v23, "#ShortcutsLinkRCHFlowStrategy action is audioStarting intent");
      OUTLINED_FUNCTION_15_0(v21);
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6(&one-time initialization token for shared);
    }

    (*(*static WFDialogState.shared + 264))();
  }

  if ([v9 openAppWhenRun])
  {
    v24 = [v7 output];
    v25 = [v24 showOutputAction];

    if (v25)
    {

      OUTLINED_FUNCTION_32_11();
      if (!v17)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_17_11(v28))
      {
        goto LABEL_29;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "#ShortcutsLinkRCHFlowStrategy skipping dialog because openAppWhenRun = true";
LABEL_28:
      OUTLINED_FUNCTION_24_12(&dword_0, v29, v30, v32);
      OUTLINED_FUNCTION_15_0(v31);
LABEL_29:

      outlined init with copy of DeviceState((v1 + 16), v59);
      type metadata accessor for EmptyOutputAndCloseFlow();
      swift_allocObject();
      *&v59[0] = EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(0, v59, v5, v3);
      lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow, type metadata accessor for EmptyOutputAndCloseFlow, &protocol conformance descriptor for EmptyOutputAndCloseFlow);

      Flow.eraseToAnyFlow()();
      goto LABEL_30;
    }
  }

  v33 = [v7 output];
  v34 = [v33 snippetAction];

  if (!v34 || (v34, v35 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNActionOutput, LNActionOutput_ptr), (static LNActionOutput.shouldSuppressSnippetIntent()(v35) & 1) != 0))
  {
    if (*(v1 + 80) != 1 || (v36 = [v7 output], v37 = LNActionOutput.hasCustomOutput()(), v36, !v37))
    {
      OUTLINED_FUNCTION_32_11();
      if (!v17)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v51, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_17_11(v52))
      {
        goto LABEL_29;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "#ShortcutsLinkRCHFlowStrategy not showing anything for successResult";
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_11();
  if (!v17)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v38 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v38, static Logger.voiceCommands);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_48();
    v42 = swift_slowAlloc();
    *&v59[0] = v42;
    *v41 = 136315138;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();
    v53 = v7;
    v43 = v5;
    v44 = v3;

    CurrentRequest.responseMode.getter();

    v45 = ResponseMode.description.getter();
    v47 = v46;
    (*(v54 + 8))(v14, v55);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v59);
    v3 = v44;
    v5 = v43;
    v7 = v53;

    *(v41 + 4) = v48;
    _os_log_impl(&dword_0, v39, v40, "#ShortcutsLinkRCHFlowStrategy showing success snippet and dialog: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_15_0(v42);
    OUTLINED_FUNCTION_15_0(v41);
  }

  outlined init with copy of DeviceState((v1 + 11), v59);
  outlined init with copy of DeviceState((v1 + 16), v58);
  v49 = swift_allocObject();
  *(v49 + 16) = v1;
  *(v49 + 24) = v7;
  *(v49 + 32) = v5;
  *(v49 + 40) = v3;
  *(v49 + 48) = v56 & 1;
  *(v49 + 56) = v57;
  type metadata accessor for ShowOutputAndCloseFlow();
  swift_allocObject();
  *&v59[0] = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, v59, v58, &async function pointer to partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:), v49);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow, &protocol conformance descriptor for ShowOutputAndCloseFlow);

  v50 = v7;
  Flow.eraseToAnyFlow()();
LABEL_30:

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return _swift_task_switch(closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:));
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = *(v10 + 64);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = [*(v10 + 72) output];
  *(v10 + 104) = v14;
  v15 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v15);
  v16 = ResponseFactory.init()();
  *(v10 + 40) = v15;
  *(v10 + 48) = &protocol witness table for ResponseFactory;
  *(v10 + 16) = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 112) = v17;
  *v17 = v18;
  v17[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:);
  v19 = *(v10 + 88);
  v20 = *(v10 + 128);
  v21 = *(v10 + 80);
  v22 = *(v10 + 56);

  return static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(v22, v12, v13, v14, v21, v19, v20, v11 + 40, a9, a10);
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_6_0();
  return v0();
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  *(v11 + 88) = a10;
  *(v11 + 96) = v10;
  *(v11 + 72) = a9;
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 248) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  *(v11 + 24) = v17;
  *(v11 + 32) = v18;
  *(v11 + 16) = v19;
  v20 = type metadata accessor for Locale();
  *(v11 + 104) = v20;
  OUTLINED_FUNCTION_5_0(v20);
  *(v11 + 112) = v21;
  *(v11 + 120) = OUTLINED_FUNCTION_28();
  type metadata accessor for DialogPhase();
  *(v11 + 128) = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for OutputGenerationManifest();
  *(v11 + 136) = v22;
  OUTLINED_FUNCTION_5_0(v22);
  *(v11 + 144) = v23;
  *(v11 + 152) = OUTLINED_FUNCTION_28();
  v24 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_38_9(v24);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)()
{
  v1 = v0[5];
  v0[20] = [v1 dialog];
  v2 = [v1 viewSnippet];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 viewData];

    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v0[21] = v3;
  v0[22] = v6;
  v8 = v0[6];
  v7 = v0[7];
  static DialogPhase.summary.getter();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);

  return LinkActionDialogTemplating.actionPerformedDialog(customPrompt:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 200) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = [*(v0 + 200) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSnippetEnvironment, LNSnippetEnvironment_ptr);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_31_8();
  dispatch thunk of DeviceState.siriLocale.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  *(v0 + 208) = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);
  v10 = *(v0 + 88);

  return static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(v6, v8, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 224) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  outlined consume of Data?(v0[21], v0[22]);

  (*(v4 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v5();
}