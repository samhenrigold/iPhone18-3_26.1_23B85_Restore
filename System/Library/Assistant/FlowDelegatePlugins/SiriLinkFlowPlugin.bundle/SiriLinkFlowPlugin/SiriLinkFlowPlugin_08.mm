uint64_t WFRunVoiceShortcutFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[142];
  v14 = v12[140];
  v15 = v12[124];
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
  OUTLINED_FUNCTION_22_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v15 + v13, (v12 + 104));
  outlined assign with take of WFRunVoiceShortcutFlow.State(v14, v15 + v13);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 76);
  OUTLINED_FUNCTION_1_32();
  v26 = v16;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v16 = OUTLINED_FUNCTION_39_9();
  v17 = OUTLINED_FUNCTION_16_6(&type metadata for WFRunVoiceShortcutFlowError, v16);
  *v18 = 1;
  *v12 = v17;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v15 + v14, v13 + 856);
  outlined assign with take of WFRunVoiceShortcutFlow.State(v12, v15 + v14);
  swift_endAccess();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_1_32();
  v29 = v19;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  __swift_destroy_boxed_opaque_existential_1Tm((v13 + 608));
  __swift_destroy_boxed_opaque_existential_1Tm((v13 + 168));
  v16 = OUTLINED_FUNCTION_39_9();
  v17 = OUTLINED_FUNCTION_16_6(&type metadata for WFRunVoiceShortcutFlowError, v16);
  *v18 = 1;
  *v12 = v17;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v15 + v14, v13 + 856);
  outlined assign with take of WFRunVoiceShortcutFlow.State(v12, v15 + v14);
  swift_endAccess();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_1_32();
  v29 = v19;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t WFRunVoiceShortcutFlow.makeGuardFlows()()
{
  outlined init with copy of DeviceState(v0 + 72, &v6);
  static Device.current.getter();
  v1 = type metadata accessor for WFScreentimeCheckFlowStrategy();
  swift_allocObject();
  v2 = WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(&v6, 0xD000000000000013, 0x800000000022F740, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  type metadata accessor for CommonFlowGuard();
  *(swift_allocObject() + 16) = xmmword_216840;
  static CommonFlowGuard.disallowInSharingMode.getter();
  v7 = v1;
  v8 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WFScreentimeCheckFlowStrategy and conformance WFScreentimeCheckFlowStrategy, type metadata accessor for WFScreentimeCheckFlowStrategy, &protocol conformance descriptor for WFScreentimeCheckFlowStrategy);
  *&v6 = v2;

  static CommonFlowGuard.ensuringAppIsPermittedByScreentime(using:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v6);
  v3 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  return v3;
}

uint64_t WFRunVoiceShortcutFlow.onGuardFlowsFinished(exitValue:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = type metadata accessor for ShortcutIdentification(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  swift_beginAccess();
  outlined init with copy of WFRunVoiceShortcutFlow.State(v2 + v13, v9, type metadata accessor for WFRunVoiceShortcutFlow.State);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of VoiceCommandsNLIntent(v9, type metadata accessor for WFRunVoiceShortcutFlow.State);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#WFRunVoiceShortcutFlow onGuardFlowsFinished unexpected state", v17, 2u);
    }

    lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v18 = swift_allocError();
    *v19 = 2;
    *v7 = v18;
  }

  else
  {
    _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v9, v12, type metadata accessor for ShortcutIdentification);
    if (a1)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.voiceCommands);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "#WFRunVoiceShortcutFlow guard flow check failed", v23, 2u);
      }

      lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
      v24 = swift_allocError();
      *v25 = 3;
      outlined destroy of VoiceCommandsNLIntent(v12, type metadata accessor for ShortcutIdentification);
      *v7 = v24;
    }

    else
    {
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v12, v7, type metadata accessor for ShortcutIdentification);
    }
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of WFRunVoiceShortcutFlow.State(v7, v2 + v13);
  return swift_endAccess();
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()()
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
  v8 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for NLContextUpdate();
  v1[15] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  OUTLINED_FUNCTION_18_4();
  (*(v4 + 248))();
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v5 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v6 = OUTLINED_FUNCTION_9_3();
  v7(v6);
  if (v5)
  {
    OUTLINED_FUNCTION_18_4();
    v16 = (*(v8 + 288) + **(v8 + 288));
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();

    return v16();
  }

  else
  {
    v11 = v0[2];
    v11[3] = type metadata accessor for AceOutput();
    v11[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[24] = v13;
    *v13 = v14;
    v13[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();
    v15 = v0[17];

    return WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)(boxed_opaque_existential_1, v15);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
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
  v1 = *(v0 + 128);

  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  v4 = *(v0 + 136);
  OUTLINED_FUNCTION_16_17();
  (*(v1 + 8))(v4);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_16_17();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_16_17();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_15_2();
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_16_17();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

void WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()()
{
  v1 = v0[20];
  v2 = v0[16];
  v19 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v17 = v0[5];
  v18 = v0[15];
  v6 = v0[4];
  static DialogPhase.confirmed.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v4, v3, v17);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v3, v17);
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v2 + 16))(v6, v19, v18);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v18);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[21] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[22] = v11;
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v1;
  v12 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[23] = v13;
  *v13 = v14;
  v13[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();
  OUTLINED_FUNCTION_58();

  __asm { BR              X3 }
}

uint64_t WFRunVoiceShortcutFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_4();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow, type metadata accessor for WFRunVoiceShortcutFlow, &protocol conformance descriptor for WFRunVoiceShortcutFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:));
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  v6 = (*(v1 + 296) + **(v1 + 296));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:);
  v4 = *(v0 + 104);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v12 = *(v0 + 88);
  v4 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 32), *(*(v0 + 72) + 56));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v5 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(v3, v4, v5);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v12);

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void *WFRunVoiceShortcutFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  outlined destroy of VoiceCommandsNLIntent(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state, type metadata accessor for WFRunVoiceShortcutFlow.State);
  return v0;
}

uint64_t WFRunVoiceShortcutFlow.__deallocating_deinit()
{
  WFRunVoiceShortcutFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFRunVoiceShortcutFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return WFRunVoiceShortcutFlow.execute()();
}

uint64_t specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  v23 = a4;
  v24 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a1, a3 + 32);
  outlined init with copy of DeviceState(a1, v21);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs(0);
  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(a3 + 16) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v21, v12, v20, v13, v14, v15, v16, v17, v18);
  type metadata accessor for WorkflowNLContextProvider();
  *(a3 + 24) = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(&v22, a3 + 72);
  return a3;
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for ShortcutIdentification(0);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(specialized ShortcutIdentification.getIdentifyingName(vcClient:));
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_15_15(v0[3]);
  OUTLINED_FUNCTION_22_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[5] + 32))(v0[6], v0[8], v0[4]);
    v1 = UUID.uuidString.getter();
    v3 = v2;
    v0[9] = v2;
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = specialized ShortcutIdentification.getIdentifyingName(vcClient:);

    return VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(v1, v3);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_22_4();

    return v7(v6);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v7 + 88) = v5;
  *(v7 + 96) = v6;

  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_15_15(v0[2]);
  OUTLINED_FUNCTION_22_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v0[4];
    v1 = OUTLINED_FUNCTION_22();
    v2(v1);
    v3 = UUID.uuidString.getter();
    v5 = v4;
    v0[12] = v4;
    v13 = (*(v14 + 32) + **(v14 + 32));
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = specialized ShortcutIdentification.getIdentifyingName(vcClient:);
    v7 = v0[3];
    v8 = v0[4];

    return v13(v3, v5, v7, v8);
  }

  else
  {
    v10 = *(v0[9] + 8);
    (*(v0[10] + 8))(v0[11], v0[3]);

    v11 = OUTLINED_FUNCTION_18_16();

    return v12(v11, v10);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v7 + 112) = v5;
  *(v7 + 120) = v6;

  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = type metadata accessor for UUID();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for ShortcutIdentification(0);
  v4[9] = swift_task_alloc();
  v7 = *(a3 - 8);
  v4[10] = v7;
  v4[11] = swift_task_alloc();
  (*(v7 + 16))();

  return _swift_task_switch(specialized ShortcutIdentification.getIdentifyingName(vcClient:));
}

unint64_t lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError()
{
  result = lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError;
  if (!lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError;
  if (!lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError);
  }

  return result;
}

uint64_t outlined assign with take of WFRunVoiceShortcutFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceCommandsNLIntent(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Siri_Nlu_External_UserDialogAct?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CA4BC()
{

  return _swift_deallocObject(v0);
}

unint64_t lazy protocol witness table accessor for type EnablementMode and conformance EnablementMode()
{
  result = lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode;
  if (!lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFRunVoiceShortcutFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFRunVoiceShortcutFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0xCA718);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for VoiceCommandTask(uint64_t a1)
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (shortcutId: ShortcutIdentification), type metadata accessor for ShortcutIdentification);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (EnablementMode, appId: String)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (EnablementMode, appId: String)()
{
  if (!lazy cache variable for type metadata for (EnablementMode, appId: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EnablementMode, appId: String));
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EnablementMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xCA910);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for ShortcutIdentification(uint64_t a1)
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (uuid: UUID), &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (shortcutId: ShortcutIdentification)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for WFRunVoiceShortcutFlow(uint64_t a1)
{
  result = type metadata accessor for WFRunVoiceShortcutFlow.State(319);
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

void type metadata completion function for WFRunVoiceShortcutFlow.State(uint64_t a1)
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (shortcutId: ShortcutIdentification), type metadata accessor for ShortcutIdentification);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t outlined init with copy of WFRunVoiceShortcutFlow.State(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_15(uint64_t a1)
{

  return outlined init with copy of WFRunVoiceShortcutFlow.State(a1, v1, type metadata accessor for ShortcutIdentification);
}

unint64_t OUTLINED_FUNCTION_27_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 + 14) = a1;
  *(v6 + 22) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, v5, va);
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

unint64_t OUTLINED_FUNCTION_39_9()
{

  return lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(v1, v4, v0, v2, v3);
}

unint64_t OUTLINED_FUNCTION_46_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t LNConnection.perform(action:options:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_8_20();
  (*(v4 + 104))(v2, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:));
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in LNConnection.perform(action:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  __chkstk_darwin(v8);
  v10 = &v18[-1] - v9;
  (*(v11 + 16))(&v18[-1] - v9, a1, v8);
  static AceService.currentAsync.getter();
  v12 = objc_allocWithZone(type metadata accessor for AnonymousConnectionDelegate(0));
  v13 = AnonymousConnectionDelegate.init(continuation:aceService:)(v10, v18);
  v14 = [a2 executorForAction:a3 options:a4 delegate:v13];
  [v14 perform];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

void closure #1 in closure #1 in LNConnection.perform(action:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Stopping executor %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, oslog, v16, "AsyncStream terminated", v17, 2u);
  }
}

uint64_t AnonymousConnectionDelegate.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id AnonymousConnectionDelegate.init(continuation:aceService:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of DeviceState(a2, &v2[OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_aceService]);
  v6 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

void AnonymousConnectionDelegate.executor(_:needsConfirmationWith:)(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_40_0();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_8_20();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v13 = v7;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_0, v14, v15, v5, v16, 0xCu);
    outlined destroy of Any?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v17);
    OUTLINED_FUNCTION_15_0(v16);
  }

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v10 + 8))(v3, v8);
  OUTLINED_FUNCTION_42();
}

void AnonymousConnectionDelegate.executor(_:needsValueWith:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v8, static Logger.voiceCommands);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_48();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "AnonymousConnectionDelegate got LNNeedsValueRequest: %@", v12, 0xCu);
    outlined destroy of Any?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v13);
    OUTLINED_FUNCTION_15_0(v12);
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = v9;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_50(v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      *v20 = 0;
      OUTLINED_FUNCTION_18_17(&dword_0, v21, v22, "AnonymousConnectionDelegate#executor(_:needsValueWith:) got called erroneously with an LNSuccessResult");
      OUTLINED_FUNCTION_15_0(v20);
    }

    v26 = v16;
    v27 = 0;
    v28 = 7;
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v7, v2);
    v26 = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v26 = v9;
    v27 = 0;
    v28 = 0;
    v24 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
    OUTLINED_FUNCTION_7_16();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v7, v2);
  }

  OUTLINED_FUNCTION_42();
}

void AnonymousConnectionDelegate.executor(_:didFinishWith:error:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  if (v3)
  {
    swift_errorRetain();
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v17, static Logger.voiceCommands);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_48();
      v21 = swift_slowAlloc();
      v39 = v3;
      v40[0] = v21;
      *v20 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v40);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "AnonymousConnectionDelegate finished with error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_15_0(v21);
      OUTLINED_FUNCTION_15_0(v20);
    }

    v40[0] = v3;
    swift_errorRetain();
    AsyncThrowingStream.Continuation.finish(throwing:)();

    goto LABEL_14;
  }

  v37 = v14;
  v38 = v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
  v26 = v5;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v36 = v1;
    v29 = OUTLINED_FUNCTION_48();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    if (!v5)
    {
      goto LABEL_16;
    }

    v31 = v30;
    *(v29 + 4) = v26;
    *v30 = v5;
    v32 = v26;
    _os_log_impl(&dword_0, v27, v28, "AnonymousConnectionDelegate finished with result: %@", v29, 0xCu);
    outlined destroy of Any?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v31);
    OUTLINED_FUNCTION_15_0(v29);
    v1 = v36;
  }

  v33 = v38;
  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation, v38);
  if (v5)
  {
    v40[0] = v5;
    v40[1] = 0;
    v41 = 7;
    v34 = v26;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v8 + 8))(v11, v33);
    (*(v37 + 8))(v16, v12);
    v40[0] = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
LABEL_14:
    OUTLINED_FUNCTION_42();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:));
}

uint64_t AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AnonymousConnectionDelegate executorEnvironmentForViewSnippet", v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v5)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_50(v7))
    {
      v8 = OUTLINED_FUNCTION_52();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Executing on HomePod. Returning nil for view snippet environment.", v8, 2u);
      OUTLINED_FUNCTION_15_0(v8);
    }

    v9 = v0[1];

    return v9(0);
  }

  else
  {
    v11 = v0[7];
    v12 = v0[8];
    v0[10] = type metadata accessor for LNSnippetEnvironment();
    v13 = [v11 options];
    v14 = [v13 environment];

    v15 = [v14 localeIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v0[11] = v18;
    v19 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_aceService;
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:);

    return static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(v16, v18, v12 + v19);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *(v4 + 104) = v3;

  return _swift_task_switch(AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:));
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 104);
  if (!v1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_52();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "SnippetDisplayConfigurationRequest got unexpected response, going with default snippet size", v4, 2u);
      OUTLINED_FUNCTION_15_0(v4);
    }

    v1 = static LNSnippetEnvironment.make(size:)(360.0, 9.22337204e18);
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:);

  return AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(v6);
}

uint64_t @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &_sIeghH_IeAgH_TRTATu;
  v9[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v6, &_sIeAgH_ytIeAgHr_TRTATu, v9);
}

uint64_t AnonymousConnectionDelegate.executor(_:shouldRunShowOutputAction:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AnonymousConnectionDelegate shouldRunShowOutputAction return false", v3, 2u);
    OUTLINED_FUNCTION_15_0(v3);
  }

  return 0;
}

uint64_t AnonymousConnectionDelegate.executorWillLaunchApplication(inForeground:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  v2 = v1;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = v11 - v4;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v6, static Logger.voiceCommands);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v8))
  {
    v9 = OUTLINED_FUNCTION_52();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AnonymousConnectionDelegate willLaunchApplicationInForeground", v9, 2u);
    OUTLINED_FUNCTION_15_0(v9);
  }

  v11[1] = 0;
  v11[2] = 0;
  v12 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v2 + 8))(v5, v0);
}

void AnonymousConnectionDelegate.executor(_:needsContinueInAppWith:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v14))
  {
    v15 = OUTLINED_FUNCTION_52();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, v3, v15, 2u);
    OUTLINED_FUNCTION_15_0(v15);
  }

  v17[1] = v5;
  v17[2] = 0;
  v18 = v1;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_16();
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_42();
}

void AnonymousConnectionDelegate.executor(_:needsAppProtectionUnlockWithCompletionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1();
  v3 = v2;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_8_20();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v7))
  {
    v8 = OUTLINED_FUNCTION_52();
    *v8 = 0;
    OUTLINED_FUNCTION_18_17(&dword_0, v9, v10, "AnonymousConnectionDelegate needsAppProtectionUnlock");
    OUTLINED_FUNCTION_15_0(v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_16();
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_42();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of TaskPriority?(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t type metadata accessor for LNSnippetEnvironment()
{
  result = lazy cache variable for type metadata for LNSnippetEnvironment;
  if (!lazy cache variable for type metadata for LNSnippetEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSnippetEnvironment);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B15ConnectionEventO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t getEnumTagSinglePayload for LinkConnectionEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t storeEnumTagSinglePayload for LinkConnectionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t destructiveInjectEnumTag for LinkConnectionEvent(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for AnonymousConnectionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnonymousConnectionDelegate;
  if (!type metadata singleton initialization cache for AnonymousConnectionDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnonymousConnectionDelegate(uint64_t a1)
{
  type metadata accessor for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation);
    }
  }
}

uint64_t sub_CD718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_CD768()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t partial apply for @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_2(v6);
  *v7 = v8;
  v7[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v5);
}

uint64_t sub_CDA28()
{

  return _swift_deallocObject(v0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_12_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_25()
{
  OUTLINED_FUNCTION_12_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t sub_CDB88()
{

  return _swift_deallocObject(v0);
}

void OUTLINED_FUNCTION_18_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)()
{
  OUTLINED_FUNCTION_40_0();
  v25 = v1;
  v23 = v2;
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  VoiceCommandNLContextProvider.buildSDAForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(v9, v7, v5, v23, v24, v25, v15, v16, v23, v24, v25, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_25_7();
  v19 = v18 & ~v17;
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_14_14(v20, xmmword_216850);
  v22(v21 + v19, v14, v10);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v11 + 8))(v14, v10);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  a2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_25_7();
  v11 = v10 & ~v9;
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_14_14(v12, xmmword_216850);
  v14(v13 + v11, v8, v4);
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v5 + 8))(v8, v4);
}

void VoiceCommandNLContextProvider.getDisplayHints(items:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  __chkstk_darwin(v3);
  v49 = v39 - v4;
  OUTLINED_FUNCTION_22_10();
  v48 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_50_0();
  v47 = (v15 - v16);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v50 = _swiftEmptyArrayStorage;
  v46 = *(v1 + 16);
  if (v46)
  {
    v20 = type metadata accessor for INIntentResolutionResult();
    v21 = 0;
    v41 = "voiceCommandReference";
    v42 = v20;
    v22 = (v1 + 32);
    v39[1] = v6 + 32;
    v40 = (v13 + 16);
    v39[0] = v13 + 8;
    v44 = v11;
    v45 = v6;
    v43 = v19;
    do
    {
      v23 = v22[3];
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v24 + 32))(v23, v24);
      SemanticValue.init(string:label:)();
      v25 = *v40;
      v26 = v19;
      v27 = v49;
      (*v40)(v49, v26, v11);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v11);
      v25(v47, v26, v11);
      DisplayHint.init(idValue:displayValue:)();
      v28 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
        v28 = v37;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v28);
        v28 = v38;
      }

      v31 = v21 + 1;
      *(v28 + 16) = v30 + 1;
      (*(v45 + 32))(v28 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, v10, v48);
      v50 = v28;
      v32 = v46;
      v33 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v21, v46);
      __chkstk_darwin(v33);
      v34 = v43;
      v39[-2] = v43;
      v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in VoiceCommandNLContextProvider.getDisplayHints(items:), &v39[-4], v33);

      v19 = v34;
      specialized Array.append<A>(contentsOf:)(v35);
      v36 = v34;
      v11 = v44;
      (*v39[0])(v36, v44);
      v22 += 5;
      v21 = v31;
    }

    while (v32 != v31);
  }

  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.getDisplayHints(options:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  v48 = &v39 - v5;
  OUTLINED_FUNCTION_22_10();
  v47 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v49 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v50 = v9 - v8;
  OUTLINED_FUNCTION_22_10();
  v10 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v46 = (v14 - v15);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_16();
  v51 = _swiftEmptyArrayStorage;
  if (!(v2 >> 62))
  {
    v17 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (v37 < 0)
  {
    __break(1u);
  }

  v17 = v37;
  if (v37)
  {
LABEL_3:
    v18 = type metadata accessor for INIntentResolutionResult();
    v19 = 0;
    v42 = "voiceCommandReference";
    v43 = v18;
    v20 = (v12 + 16);
    v40 = v49 + 32;
    v41 = v2 & 0xC000000000000001;
    v39 = (v12 + 8);
    v44 = v17;
    v45 = v2;
    do
    {
      if (v41)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v2 + 8 * v19 + 32);
      }

      v22 = v21;
      outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v21 title]);
      if (!v23)
      {
        v24 = [v22 title];
        v25 = [v24 key];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      SemanticValue.init(string:label:)();
      v26 = *v20;
      v27 = v48;
      (*v20)(v48, v0, v10);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v10);
      v26(v46, v0, v10);
      DisplayHint.init(idValue:displayValue:)();
      v28 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
        v28 = v35;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v28);
        v28 = v36;
      }

      v31 = v19 + 1;
      *(v28 + 16) = v30 + 1;
      (*(v49 + 32))(v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v30, v50, v47);
      v51 = v28;
      v32 = v44;
      v33 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v19, v44);
      __chkstk_darwin(v33);
      v38[2] = v0;
      v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in VoiceCommandNLContextProvider.getDisplayHints(options:), v38, v33);

      specialized Array.append<A>(contentsOf:)(v34);

      (*v39)(v0, v10);
      v19 = v31;
      v2 = v45;
    }

    while (v32 != v31);
  }

LABEL_18:
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_40_0();
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v16 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v17 = OUTLINED_FUNCTION_14(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
    Siri_Nlu_External_SystemDialogAct.init()();
    Siri_Nlu_External_SystemOffered.init()();
    Siri_Nlu_External_SystemDialogAct.offered.setter();
LABEL_9:
    OUTLINED_FUNCTION_42();
    return;
  }

  if (!v15 || !v13)
  {
    VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithYesNo()();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_42();

  VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
}

void VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithYesNo()()
{
  OUTLINED_FUNCTION_40_0();
  v36 = v2;
  v37 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7_1();
  v35 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v34 = v5 - v6;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v7);
  v32 = &v30 - v8;
  OUTLINED_FUNCTION_22_10();
  v33 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  v30 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v16 = OUTLINED_FUNCTION_27_12();
  v17 = OUTLINED_FUNCTION_14(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v18 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v31 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_50_0();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_16();
  v24 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v24);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  Siri_Nlu_External_UserWantedToProceed.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v19 + 16))(v22, v1, v18);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v25 = v32;
  Siri_Nlu_External_SystemOffered.init()();
  v26 = *(v10 + 16);
  v27 = v33;
  v26(v14, v0, v33);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v28 = v35;
  v29 = v37;
  (*(v35 + 16))(v34, v25, v37);
  Siri_Nlu_External_SystemDialogAct.offered.setter();

  (*(v28 + 8))(v25, v29);
  (*(v30 + 8))(v0, v27);
  (*(v19 + 8))(v1, v31);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)()
{
  OUTLINED_FUNCTION_40_0();
  v10[1] = v1;
  v2 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v6);
  v8 = v10 - v7;
  VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)();
  VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)();
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  *(swift_allocObject() + 16) = xmmword_216840;
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_21_12();
  v9(v0, v8, v2);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v2 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v3 = OUTLINED_FUNCTION_14(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v4 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptStrict.setter();
  OUTLINED_FUNCTION_3_22();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    OUTLINED_FUNCTION_25_7();
    *(swift_allocObject() + 16) = xmmword_216850;

    VoiceCommandNLContextProvider.buildSDAForNeedsValue(taskBuilder:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  else
  {
    Siri_Nlu_External_SystemDialogAct.init()();
    Siri_Nlu_External_SystemPrompted.init()();
    Siri_Nlu_External_SystemDialogAct.prompted.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    OUTLINED_FUNCTION_25_7();
    v14 = v13 & ~v12;
    v15 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_14_14(v15, xmmword_216850);
    v17(v16 + v14, v10, v4);
    NLContextUpdate.nluSystemDialogActs.setter();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t VoiceCommandNLContextProvider.buildSDAForNeedsValue(taskBuilder:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v3 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_18();
  Siri_Nlu_External_SystemPrompted.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_SystemPrompted.target.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v8 = OUTLINED_FUNCTION_16_18();
  v9(v8);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  return (*(v5 + 8))(v0, v3);
}

void VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v34 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v19 = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (!v5 || !v3)
  {
    goto LABEL_6;
  }

  v20 = v5;
  v21 = INIntent.BOOLeanAttributeMetadata(parameterName:)();
  if (!v21)
  {

LABEL_6:
    (*(*v0 + 168))(v19);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v30 = OUTLINED_FUNCTION_15_16(v29);
    v31 = OUTLINED_FUNCTION_9_17(v30, xmmword_216850);
    v32(v31);
    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_7;
  }

  v22 = v21;
  v23 = [v21 localizedTrueDisplayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v20;

  v24 = [v22 localizedFalseDisplayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v26 = OUTLINED_FUNCTION_15_16(v25);
  v27 = OUTLINED_FUNCTION_9_17(v26, xmmword_216850);
  v28(v27);
  NLContextUpdate.nluSystemDialogActs.setter();

LABEL_7:
  (*(v8 + 8))(v12, v1);
  (*(v14 + 32))(v35, v18, v34);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForBoolNeedsValuePrompt()()
{
  OUTLINED_FUNCTION_40_0();
  v28 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7_1();
  v27 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v26 = v5 - v6;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_18();
  v25 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v15 = OUTLINED_FUNCTION_27_12();
  v16 = OUTLINED_FUNCTION_14(v15);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v24 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v17 = *(v24 - 8);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_50_0();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_13_16();
  Siri_Nlu_External_UserStatedTask.init()();
  v22 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v22);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  UsoTaskBuilder.asUsoGraph()();

  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v17 + 16))(v20, v2, v24);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v9 + 16))(v13, v1, v25);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_21_12();
  v23(v26, v0, v28);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  (*(v27 + 8))(v0, v28);
  (*(v9 + 8))(v1, v25);
  (*(v17 + 8))(v2, v24);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForDisambiguation(items:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v64 = v4;
  v65 = v5;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  Siri_Nlu_External_SystemGaveOptions.init()();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_48:
    Siri_Nlu_External_SystemDialogAct.init()();
    OUTLINED_FUNCTION_21_12();
    v50(v15, v18, v9);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    (*(v11 + 8))(v18, v9);
    OUTLINED_FUNCTION_42();
    return;
  }

  v52 = v18;
  v53 = v15;
  v54 = v11;
  v55 = v9;
  v56 = v3;
  v19 = _swiftEmptyArrayStorage;
  v63 = *(v1 + 16);
  if (!v63)
  {
LABEL_38:
    v42 = specialized Array.count.getter(v19);
    if (v42)
    {
      v43 = v42;
      OUTLINED_FUNCTION_17_16(v42, _swiftEmptyArrayStorage);
      if (v43 < 0)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_20_11();
      do
      {
        if (v9)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()();

        v68[0] = v18;
        v44 = v8;
        v46 = *(v18 + 2);
        v45 = *(v18 + 3);
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_18_18(v45);
          v18 = v68[0];
        }

        OUTLINED_FUNCTION_6_20();
        (*(v49 + 32))(v47 + v48 * v46, v44);
        v8 = v44;
      }

      while (v43 != v11);
    }

    v9 = v55;
    v18 = v52;
    Siri_Nlu_External_SystemGaveOptions.choices.setter();
    v11 = v54;
    v15 = v53;
    goto LABEL_48;
  }

  v20 = 0;
  v62 = v1 + 32;
  v57 = v8;
  while (1)
  {
    outlined init with copy of DeviceState(v62 + 40 * v20, v68);
    v21 = v69;
    v22 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v23 = (*(v22 + 40))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v11 = v23 >> 62;
    v24 = v23 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    v25 = v19 >> 62;
    v26 = v19 >> 62 ? OUTLINED_FUNCTION_28_7() : *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    v27 = v26 + v24;
    if (__OFADD__(v26, v24))
    {
      break;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v66 = v24;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v25)
      {
        v29 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      OUTLINED_FUNCTION_28_7();
      goto LABEL_15;
    }

    if (v25)
    {
      goto LABEL_14;
    }

LABEL_15:
    v19 = OUTLINED_FUNCTION_26_13();
    v29 = v19 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v30 = *(v29 + 16);
    v31 = (*(v29 + 24) >> 1) - v30;
    v9 = v29 + 8 * v30;
    if (v11)
    {
      if (v23 < 0)
      {
        v18 = v23;
      }

      else
      {
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
      }

      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        v33 = v32;
        v34 = _CocoaArrayWrapper.endIndex.getter();
        if (v31 < v34)
        {
          goto LABEL_52;
        }

        if (v33 < 1)
        {
          goto LABEL_54;
        }

        v58 = v34;
        v59 = v29;
        v60 = v20;
        v61 = v19;
        v35 = v9 + 32;
        v9 = lazy protocol witness table accessor for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]();
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMd, &_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMR);
          v37 = specialized protocol witness for Collection.subscript.read in conformance [A](v67, i, v23);
          v11 = *v38;

          v37(v67, 0);
          *(v35 + 8 * i) = v11;
        }

        v8 = v57;
        v18 = v58;
        v20 = v60;
        v19 = v61;
        v29 = v59;
        goto LABEL_29;
      }
    }

    else
    {
      v11 = v23 & 0xFFFFFFFFFFFFFF8;
      v18 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      if (v18)
      {
        if (v31 < v18)
        {
          goto LABEL_53;
        }

        type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
        swift_arrayInitWithCopy();
LABEL_29:

        if (v18 < v66)
        {
          goto LABEL_50;
        }

        if (v18 > 0)
        {
          v39 = *(v29 + 16);
          v40 = __OFADD__(v39, v18);
          v41 = &v18[v39];
          if (v40)
          {
            goto LABEL_51;
          }

          *(v29 + 16) = v41;
        }

        goto LABEL_34;
      }
    }

    if (v66 > 0)
    {
      goto LABEL_50;
    }

LABEL_34:
    if (++v20 == v63)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void VoiceCommandNLContextProvider.buildSDAForMultiChoice(options:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v53 = v5;
  v54 = v6;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  Siri_Nlu_External_SystemGaveOptions.init()();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_34:
    Siri_Nlu_External_SystemDialogAct.init()();
    OUTLINED_FUNCTION_21_12();
    v47(v16, v19, v10);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    (*(v12 + 8))(v19, v10);
    OUTLINED_FUNCTION_42();
    return;
  }

  v48 = v19;
  v49 = v16;
  v50 = v12;
  v51 = v10;
  v52 = v4;
  v20 = specialized Array.count.getter(v2);
  v21 = 0;
  v57 = v2 & 0xFFFFFFFFFFFFFF8;
  v58 = v2 & 0xC000000000000001;
  v22 = _swiftEmptyArrayStorage;
  v23 = &off_2B4000;
  v56 = xmmword_216010;
  while (1)
  {
    if (v20 == v21)
    {
      v39 = specialized Array.count.getter(v22);
      if (v39)
      {
        v40 = v39;
        OUTLINED_FUNCTION_17_16(v39, _swiftEmptyArrayStorage);
        if (v40 < 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_20_11();
        do
        {
          if (v0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()();

          v59 = v16;
          v41 = v9;
          v43 = *(v16 + 16);
          v42 = *(v16 + 24);
          if (v43 >= v42 >> 1)
          {
            OUTLINED_FUNCTION_18_18(v42);
            v16 = v59;
          }

          OUTLINED_FUNCTION_6_20();
          (*(v46 + 32))(v44 + v45 * v43, v41);
          v9 = v41;
        }

        while (v40 != v21);
      }

      v19 = v48;
      Siri_Nlu_External_SystemGaveOptions.choices.setter();
      v10 = v51;
      v16 = v49;
      v12 = v50;
      goto LABEL_34;
    }

    if (v58)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v57 + 16))
      {
        goto LABEL_36;
      }

      v24 = *(v2 + 8 * v21 + 32);
    }

    v25 = v24;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
    OUTLINED_FUNCTION_66(v0);
    v26 = UsoEntityBuilder_common_VoiceCommandPayload.init()();
    outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v25 v23[307]]);
    if (!v27)
    {
      v28 = [v25 v23[307]];
      v29 = [v28 key];
      v55 = v21;
      v30 = v22;
      v31 = v20;
      v32 = v2;
      v33 = v9;
      v34 = v29;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v33;
      v2 = v32;
      v20 = v31;
      v22 = v30;
      v21 = v55;
    }

    dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v56;
    *(inited + 32) = v26;

    v36 = v22 >> 62;
    if (v22 >> 62)
    {
      v37 = OUTLINED_FUNCTION_28_7();
    }

    else
    {
      v37 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    }

    v23 = &off_2B4000;
    v16 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_37;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v36)
      {
        v38 = v22 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      OUTLINED_FUNCTION_28_7();
      goto LABEL_19;
    }

    if (v36)
    {
      goto LABEL_18;
    }

LABEL_19:
    v22 = OUTLINED_FUNCTION_26_13();
    v38 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    if (*(v38 + 16) >= *(v38 + 24) >> 1)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    ++*(v38 + 16);
    ++v21;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t type metadata accessor for INIntentResolutionResult()
{
  result = lazy cache variable for type metadata for INIntentResolutionResult;
  if (!lazy cache variable for type metadata for INIntentResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResolutionResult);
  }

  return result;
}

void VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v7 = type metadata accessor for UsoEntityBuilder_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v7);
  UsoEntityBuilder_common_VoiceCommand.init()();
  dispatch thunk of UsoEntityBuilder_common_VoiceCommand.setName(value:)();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  v8 = *(v5 + 8);
  v8(v0, v3);
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = v2 + 40;
    do
    {

      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      v8(v0, v3);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  v11 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v11);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setReference(value:)();

  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in VoiceCommandNLContextProvider.getDisplayHints(items:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v19 - v15;

  SemanticValue.init(string:label:)();
  v17 = *(v9 + 16);
  v17(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v17(v13, v16, v7);
  DisplayHint.init(idValue:displayValue:)();
  return (*(v9 + 8))(v16, v7);
}

uint64_t UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v3 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_18();
  Siri_Nlu_External_UserStatedTask.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v8 = OUTLINED_FUNCTION_16_18();
  v9(v8);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v5 + 8))(v0, v3);
}

uint64_t UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()()
{
  v0 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v0);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
}

unint64_t lazy protocol witness table accessor for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMd, &_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return NLContextUpdate.currentDomainName.setter();
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_17_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a2;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_18_18(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return type metadata accessor for Siri_Nlu_External_UsoGraph();
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t UserDefaultsWrapper.__allocating_init()()
{
  v0 = swift_allocObject();
  UserDefaultsWrapper.init()();
  return v0;
}

void *UserDefaultsWrapper.init()()
{
  v0[2] = 0x75616665444D4143;
  v0[3] = 0xEB0000000073746CLL;
  v0[4] = 0xD000000000000021;
  v0[5] = 0x800000000022F7D0;
  v0[6] = [objc_allocWithZone(NSUserDefaults) init];
  return v0;
}

Swift::Void __swiftcall UserDefaultsWrapper.recordFirstRunShown(bundleId:)(Swift::String bundleId)
{
  v2 = v1;
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v26);
    _os_log_impl(&dword_0, v6, v7, "Storing ambiguous first run shown for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = v2[6];
  v11 = String._bridgeToObjectiveC()();
  v24 = v10;
  v12 = [v10 dictionaryForKey:v11];

  if (v12)
  {
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = Dictionary.init(dictionaryLiteral:)();
  }

  v15 = v2[4];
  v14 = v2[5];
  specialized Dictionary.subscript.getter(v13, v26, v15, v14);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v16 = *&v25[0];
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of Any?(v26);
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_13:

  v17 = countAndFlagsBits;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v22;
  }

  v18 = v16[2];
  if (v18 >= v16[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v23;
  }

  v16[2] = v18 + 1;
  v19 = &v16[2 * v18];
  v19[4] = v17;
  v19[5] = object;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v26[0] = v16;
  outlined init with take of Any(v26, v25);

  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v15, v14);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = String._bridgeToObjectiveC()();
  [v24 setObject:isa forKey:v21];
}

uint64_t UserDefaultsWrapper.deinit()
{

  return v0;
}

uint64_t UserDefaultsWrapper.__deallocating_deinit()
{
  UserDefaultsWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t RunCustomIntentReadingDelegate.__allocating_init(templater:deviceState:outputPublisher:)(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(a1, a2, a3);
  return v6;
}

void *RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(uint64_t a1, void *a2, __int128 *a3)
{
  v3[2] = 5;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_66(v7);
  v3[3] = ViewFactory.init(ttsEnabled:)();
  outlined init with copy of UUID?(a1, v9, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
  if (v9[3])
  {
    outlined destroy of Any?(a1, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    memcpy(__dst, v9, sizeof(__dst));
  }

  else
  {
    static RunCustomIntentReadingDelegate.Templating.default(pageSize:)(5, __dst);
    outlined destroy of Any?(a1, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    if (v9[3])
    {
      outlined destroy of Any?(v9, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    }
  }

  memcpy(v3 + 4, __dst, 0x78uLL);
  outlined init with take of AceServiceInvokerAsync(a3, (v3 + 19));
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v3;
}

uint64_t static RunCustomIntentReadingDelegate.Templating.default(pageSize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for IntroduceCustomIntentCatTemplater();
  v5 = OUTLINED_FUNCTION_7_17(v4);
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for IntroduceCustomIntentCatTemplater;
  *a2 = v5;
  v6 = type metadata accessor for DescribeCustomIntentItemCatTemplater();
  v7 = OUTLINED_FUNCTION_6_21(v6);
  a2[8] = v6;
  a2[9] = &protocol witness table for DescribeCustomIntentItemCatTemplater;
  a2[5] = v7;
  v8 = type metadata accessor for OfferMoreItemsCatTemplater();
  result = OUTLINED_FUNCTION_6_21(v8);
  a2[13] = v8;
  a2[14] = &protocol witness table for OfferMoreItemsCatTemplater;
  a2[10] = result;
  return result;
}

uint64_t RunCustomIntentReadingDelegate.makeAction(introducingItems:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = type metadata accessor for IntroduceCustomIntentViewBuilder();
  v5 = OUTLINED_FUNCTION_7_17(v4);
  *(v5 + 16) = v3;
  outlined init with copy of DeviceState(v1 + 32, v21);
  type metadata accessor for IntroduceCustomIntentOutputProvider();
  v6 = swift_allocObject();
  v6[6] = v4;
  v6[7] = &protocol witness table for IntroduceCustomIntentViewBuilder;
  v6[2] = a1;
  v6[3] = v5;
  outlined init with take of AceServiceInvokerAsync(v21, (v6 + 8));
  outlined init with copy of DeviceState(v1 + 152, v21);
  v7 = type metadata accessor for OutputAction();
  OUTLINED_FUNCTION_66(v7);

  OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21[0]);
  v16 = OutputAction.init(publisher:nextAction:producer:)();
  OUTLINED_FUNCTION_1_33();
  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(v17, 255, v18, &protocol conformance descriptor for OutputAction);
  return v16;
}

uint64_t RunCustomIntentReadingDelegate.makeAction(forItem:)()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for DescribeCustomIntentItemViewBuilder();
  v3 = OUTLINED_FUNCTION_7_17(v2);
  *(v3 + 16) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySSGMd, &_s11SiriKitFlow13PaginatedItemVySSGMR);
  PaginatedItem.item.getter();
  v4 = v21;
  v5 = v22;
  outlined init with copy of DeviceState(v0 + 72, v20);
  type metadata accessor for DescribeCustomIntentItemOutputProvider();
  v6 = swift_allocObject();
  v6[7] = v2;
  v6[8] = &protocol witness table for DescribeCustomIntentItemViewBuilder;
  v6[3] = v5;
  v6[4] = v3;
  v6[2] = v4;
  outlined init with take of AceServiceInvokerAsync(v20, (v6 + 9));
  outlined init with copy of DeviceState(v0 + 152, v20);
  v7 = type metadata accessor for OutputAction();
  v8 = OUTLINED_FUNCTION_66(v7);
  OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v8, v13, v14, v19, v20[0]);
  v15 = OutputAction.init(publisher:nextAction:producer:)();
  OUTLINED_FUNCTION_1_33();
  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(v16, 255, v17, &protocol conformance descriptor for OutputAction);
  return v15;
}

uint64_t RunCustomIntentReadingDelegate.makeGroup(withActions:nextPage:)(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21ActionGroupTransitionOSgMd, &_s11SiriKitFlow21ActionGroupTransitionOSgMR);
  __chkstk_darwin(v3 - 8);
  v73 = (&v63 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV_AA14ActionGrouping_ptMd, &_s11SiriKitFlow4PageV_AA14ActionGrouping_ptMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v12 = type metadata accessor for Page();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  outlined init with copy of UUID?(a2, v7, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v21) == 1)
  {
    outlined destroy of Any?(v7, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
    v22 = type metadata accessor for ActionGroupTransition();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v22);
    v23 = type metadata accessor for StaticActionGroup();
    OUTLINED_FUNCTION_66(v23);

    v24 = StaticActionGroup.init(actions:transition:debugDescription:)();
  }

  else
  {
    v25 = *(v21 + 48);
    v26 = *(v8 + 48);
    v70 = v14;
    v27 = *(v14 + 32);
    v67 = *&v7[v25];
    v28 = v7;
    v29 = v12;
    v27(v11, v28, v12);
    *&v11[v26] = v67;
    v30 = &v11[*(v8 + 48)];
    v32 = *v30;
    v31 = *(v30 + 1);
    v65 = v32;
    v66 = v31;
    v33 = v20;
    v69 = v20;
    v34 = v11;
    v35 = v29;
    v27(v20, v34, v29);
    v36 = type metadata accessor for OfferMoreItemsCatTemplater();
    v37 = OUTLINED_FUNCTION_6_21(v36);
    v64 = *(v71 + 24);
    v38 = v64;
    v39 = type metadata accessor for OfferMoreItemsViewBuilder();
    v40 = OUTLINED_FUNCTION_7_17(v39);
    *(v40 + 16) = v38;
    v41 = v40;
    v42 = *(v14 + 16);
    v68 = v35;
    v42(v18, v33, v35);
    v43 = type metadata accessor for OfferMoreItemsOutputProvider(0);
    v44 = OUTLINED_FUNCTION_66(v43);
    v45 = (v44 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating);
    v45[3] = v36;
    v45[4] = &protocol witness table for OfferMoreItemsCatTemplater;
    *&v67 = v37;
    *v45 = v37;
    v46 = (v44 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder);
    v46[3] = v39;
    v46[4] = &protocol witness table for OfferMoreItemsViewBuilder;
    *v46 = v41;
    v27((v44 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_nextPage), v18, v35);
    type metadata accessor for ContinueReadingConfirmationFlowStrategy();
    v47 = type metadata accessor for RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser();
    v48 = OUTLINED_FUNCTION_6_21(v47);
    v76 = v47;
    v77 = lazy protocol witness table accessor for type OutputAction and conformance OutputAction(&lazy protocol witness table cache variable for type RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser and conformance RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser, v49, type metadata accessor for RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser, &protocol conformance descriptor for RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser);
    v75 = v48;

    ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:confirmationResponseParser:)();
    v50 = type metadata accessor for ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning();
    OUTLINED_FUNCTION_66(v50);
    swift_unknownObjectRetain();
    v51 = ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.init(yesGroup:noGroup:cancelGroup:)();
    v52 = dispatch thunk of ContinueReadingConfirmationFlowStrategy.makeFlow(outputPublisher:)();
    v74 = v51;
    v75 = v52;
    v53 = type metadata accessor for AnyFlowAndActionGroupReturning();
    OUTLINED_FUNCTION_66(v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMd, &_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMR);
    lazy protocol witness table accessor for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>();
    v54 = AnyFlowAndActionGroupReturning.init<A, B>(flow:groupReturning:)();
    v55 = v73;
    *v73 = v54;
    v56 = enum case for FlowTransition.flow(_:);
    type metadata accessor for FlowTransition();
    OUTLINED_FUNCTION_7();
    (*(v57 + 104))(v55, v56);
    v58 = enum case for ActionGroupTransition.following(_:);
    v59 = type metadata accessor for ActionGroupTransition();
    OUTLINED_FUNCTION_7();
    (*(v60 + 104))(v55, v58, v59);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v59);
    v61 = type metadata accessor for StaticActionGroup();
    OUTLINED_FUNCTION_66(v61);

    v24 = StaticActionGroup.init(actions:transition:debugDescription:)();

    swift_unknownObjectRelease();

    (*(v70 + 8))(v69, v68);
  }

  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(&lazy protocol witness table cache variable for type StaticActionGroup and conformance StaticActionGroup, 255, &type metadata accessor for StaticActionGroup, &protocol conformance descriptor for StaticActionGroup);
  return v24;
}

uint64_t RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser.parseConfirmationResponse(input:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  static VoiceCommandConfirmationUtils.getSiriKitConfirmationState(parse:)(v16, v10);
  (*(v13 + 8))(v16, v11);
  (*(v4 + 32))(v8, v10, v2);
  v17 = (*(v4 + 88))(v8, v2);
  if (v17 != enum case for SiriKitConfirmationState.unset(_:))
  {
    if (v17 != enum case for SiriKitConfirmationState.cancelled(_:))
    {
      if (v17 == enum case for SiriKitConfirmationState.confirmed(_:))
      {
        v22 = &enum case for ConfirmationResponse.confirmed(_:);
        goto LABEL_7;
      }

      if (v17 != enum case for SiriKitConfirmationState.rejected(_:))
      {
        type metadata accessor for ConfirmationResponse();
        v27 = OUTLINED_FUNCTION_4_29();
        __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
        return (*(v4 + 8))(v8, v2);
      }
    }

    v22 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_7:
    v23 = *v22;
    v24 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_7();
    (*(v25 + 104))(a1, v23, v24);
    v18 = a1;
    v19 = 0;
    v20 = 1;
    v21 = v24;
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  type metadata accessor for ConfirmationResponse();
  v18 = OUTLINED_FUNCTION_4_29();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t RunCustomIntentReadingDelegate.Templating.init(intro:itemDescription:offerMore:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of AceServiceInvokerAsync(a1, a4);
  outlined init with take of AceServiceInvokerAsync(a2, a4 + 40);

  return outlined init with take of AceServiceInvokerAsync(a3, a4 + 80);
}

uint64_t RunCustomIntentReadingDelegate.deinit()
{

  outlined destroy of RunCustomIntentReadingDelegate.Templating(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  return v0;
}

uint64_t RunCustomIntentReadingDelegate.__deallocating_deinit()
{
  RunCustomIntentReadingDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type OutputAction and conformance OutputAction(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMd, &_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentReadingDelegate.Templating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for RunCustomIntentReadingDelegate.Templating(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.__allocating_init(appBundleId:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined init with take of AceServiceInvokerAsync(a3, v4 + 32);
  outlined init with take of AceServiceInvokerAsync(a4, v4 + 72);
  return v4;
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  OUTLINED_FUNCTION_27_6();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.voiceCommands);
  (*(v11 + 16))(v14, a1, v9);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v4;
    v26 = v25;
    v40 = v25;
    *v24 = 136315138;
    v27 = Input.description.getter();
    v29 = v28;
    (*(v11 + 8))(v14, v9);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_0, v22, v23, "#ShortcutsLinkPromptForContinueInAppFlowStrategy on input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v31 = v26;
    v4 = v37;
    OUTLINED_FUNCTION_15_0(v31);
    OUTLINED_FUNCTION_15_0(v24);
  }

  else
  {

    (*(v11 + 8))(v14, v9);
  }

  v32 = v38;
  Input.parse.getter();
  v33 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v32);
  (*(v6 + 8))(v32, v4);
  switch(v33)
  {
    case 2:
      goto LABEL_9;
    case 3:
      return static ActionForInput.ignore()();
    default:
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        return static ActionForInput.cancel()();
      }

      if (v33)
      {
LABEL_9:

        return static ActionForInput.cancel()();
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        return static ActionForInput.cancel()();
      }

      return static ActionForInput.handle()();
  }
}

uint64_t closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  v9 = v0[12];

  outlined init with copy of DeviceState(v9 + 72, (v0 + 2));
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v10, v11);
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
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#ShortcutsLinkPromptForContinueInAppFlowStrategy failed to submit empty output to clear screen", v3, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_14(v3);
  v0[4] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for Parse();
  v0[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 56);
  Input.parse.getter();
  v3 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v2);
  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  if (v3 == 3)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.voiceCommands);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_30_1(v8))
    {
      goto LABEL_26;
    }

    v9 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy failed to receive confirmation";
    goto LABEL_25;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    if (v3)
    {
      if (v3 == 1)
      {
        v15 = 28526;
      }

      else
      {
        v15 = 0x6C65636E6163;
      }

      if (v3 == 1)
      {
        v16 = 0xE200000000000000;
      }

      else
      {
        v16 = 0xE600000000000000;
      }
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7562617;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "#ShortcutsLinkPromptForContinueInAppFlowStrategy received confirmation: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_15_0(v14);
    OUTLINED_FUNCTION_19_0();
  }

  if (!v3)
  {
    v19 = *(v1 + 32);
    v20 = enum case for ConfirmationResponse.confirmed(_:);
    v21 = type metadata accessor for ConfirmationResponse();
    (*(*(v21 - 8) + 104))(v19, v20, v21);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
    SimpleConfirmationResponseProvider.init(_:)();

    OUTLINED_FUNCTION_6_0();
    goto LABEL_27;
  }

  if (v3 == 1)
  {
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v18))
    {
      v9 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy shouldn't receive no in parse";
LABEL_25:
      v24 = OUTLINED_FUNCTION_52();
      *v24 = 0;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v25, v26, v27, v9, v24, 2u);
      OUTLINED_FUNCTION_19_0();
    }
  }

  else
  {
    v7 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v23))
    {
      v9 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy shouldn't receive cancel in parse";
      goto LABEL_25;
    }
  }

LABEL_26:

  lazy protocol witness table accessor for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
LABEL_27:

  return v22();
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v1[33] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[34] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v5);
  v1[35] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[36] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[37] = v7;
  v1[38] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for NLContextUpdate();
  v1[39] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[40] = v9;
  v1[41] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v10);
  v1[42] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  type metadata accessor for ShortcutsLinkNLContextProvider();
  *(v1 + 344) = swift_initStackObject();
  static Device.current.getter();
  v2 = type metadata accessor for RunLinkActionCATs(0);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_10();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  v4 = type metadata accessor for RunLinkActionCATsSimple(0);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_10();
  v5 = CATWrapperSimple.__allocating_init(options:globals:)();
  v6 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_10();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_10();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  v10 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_10();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v1 + 352) = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v11;
  outlined init with take of AceServiceInvokerAsync((v1 + 144), (inited + 2));
  inited[7] = v3;
  inited[8] = v5;
  inited[9] = v7;
  inited[10] = v9;
  v13 = swift_task_alloc();
  *(v1 + 360) = v13;
  *v13 = v1;
  v13[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[46] = v6;
  v3[47] = v7;
  v3[48] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[49] = v9;
    *v9 = v5;
    v9[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);

    return static LabelTemplates.cancel()();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3[50] = v1;
  v3[51] = v2;
  v3[52] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[40];
  v6 = v0[41];
  v11 = v0[39];
  v7 = v0[34];
  v12 = v0[31];

  ShortcutsLinkNLContextProvider.makeContextForActionConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(v4, v3, v2, v1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v5 + 16))(v7, v6, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  OutputGenerationManifest.nlContextUpdate.setter();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v0[53] = [v12 dialog];
  v8 = swift_task_alloc();
  v0[54] = v8;
  *v8 = v0;
  v8[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  OUTLINED_FUNCTION_6_1();

  return LinkActionDialogTemplating.actionConfirmationHeader(customDialog:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  *(v3 + 440) = v7;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 256);
  v2 = [*(v0 + 440) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v6 = ResponseFactory.init()();
  *(v0 + 208) = v5;
  *(v0 + 216) = &protocol witness table for ResponseFactory;
  *(v0 + 184) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 456) = v7;
  *v7 = v8;
  v7[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v9 = *(v0 + 440);
  v10 = *(v0 + 368);
  v11 = *(v0 + 376);
  v12 = *(v0 + 304);
  v13 = *(v0 + 240);

  return static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(v13, v1 + 32, v9, v12, v3, v4, v10, v11);
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
  *(v3 + 464) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 184));

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();
  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v12;
  *(v8 + 328) = v11;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 280) = a3;
  *(v8 + 288) = a4;
  *(v8 + 264) = a1;
  *(v8 + 272) = a2;
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v9);
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = v12;
  __swift_project_boxed_opaque_existential_1(v12[34], *(v12[34] + 24));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = v12[35];
    __swift_project_boxed_opaque_existential_1(v12[43], *(v12[43] + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v14 = swift_allocObject();
    v12[46] = v14;
    *(v14 + 16) = xmmword_216010;
    *(v14 + 32) = v13;
    v15 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[47] = v16;
    *v16 = v17;
    v16[1] = static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:);
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v26 = v12[34];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v27 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v26, 2);
    v29 = v28;

    if (v29)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.voiceCommands);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v37 = v12[37];
        v36 = v12[38];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v67 = v39;
        *v38 = 136315138;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v67);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v40, v41, v42, v43, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        OUTLINED_FUNCTION_15_0(v39);
        OUTLINED_FUNCTION_15_0(v38);
      }
    }

    v44 = v12[42];
    v45 = v12[43];
    v46 = v12[40];
    v47 = v12[38];
    v65 = v12[39];
    v66 = v12[41];
    v48 = v12[37];
    v49 = v12[35];

    v50 = DialogExecutionResult.firstDialogFullPrint()();
    v12[2] = v48;
    v12[3] = v47;
    v12[4] = v30;
    v12[5] = v31;
    v12[6] = v65;
    v12[7] = v46;
    v12[8] = v66;
    v12[9] = v44;
    *(v12 + 5) = xmmword_21CC10;
    *(v12 + 96) = 0;
    *(v12 + 13) = v50;
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v12[31] = type metadata accessor for WorkflowDataModels(0);
    v12[32] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 28);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x68uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v52 = swift_allocObject();
    v12[44] = v52;
    *(v52 + 16) = xmmword_216010;
    *(v52 + 32) = v49;
    outlined init with copy of WorkflowDataModels.ConfirmActionModel((v12 + 2), (v12 + 15));
    v53 = v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[45] = v54;
    *v54 = v55;
    v54[1] = static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:);
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 224));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.ConfirmActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t DescribeCustomIntentItemOutputProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t DescribeCustomIntentItemOutputProvider.__deallocating_deinit()
{
  DescribeCustomIntentItemOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShortcutsLinkPromptForContinueInAppFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForContinueInAppFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShortcutsLinkPromptForContinueInAppFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t sub_D4574()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)(v3, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError()
{
  result = lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError;
  if (!lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError;
  if (!lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
}

void *SiriStateObserver.init(runnerClient:)(void *a1)
{
  v1[OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner] = 1;
  outlined init with copy of DeviceState(a1, &v1[OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_runnerClient]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriStateObserver();
  v3 = objc_msgSendSuper2(&v5, "init");
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

void SiriStateObserver.notifyObserver(_:didChangeStateFrom:to:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v7 = a3 & 2;
  v8 = a2 & 2;
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = v8 >> 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v7 >> 1;
    _os_log_impl(&dword_0, v10, v11, "#SiriStateObserver.notifyObserver has fromState: %{BOOL}d, toState: %{BOOL}d", v12, 0xEu);
  }

  if ((v8 == 0) != (v7 != 0))
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      *v14 = 0;
      v15 = "#SiriStateObserver.notifyObserver active session state didn't change, returning...";
LABEL_11:
      _os_log_impl(&dword_0, oslog, v13, v15, v14, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v7)
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      *v14 = 0;
      v15 = "#SiriStateObserver.notifyObserver still has active session, returning...";
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  v16 = OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner;
  v17 = *(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  if (v17 == 1)
  {
    if (v20)
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v21, v22, "#SiriStateObserver stopping runner client");
      OUTLINED_FUNCTION_8_15();
    }

    outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_runnerClient, v28);
    v23 = v29;
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    if (v20)
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v25, v26, "#SiriStateObserver not canceling the runner because shouldCancelRunner = false, flipping the switch...");
      OUTLINED_FUNCTION_8_15();
    }

    *(v4 + v16) = 1;
  }
}

Swift::Void __swiftcall SiriStateObserver.doNotCancelRunner()()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#SiriStateObserver resetContinuationOnAppLaunch");
    OUTLINED_FUNCTION_8_15();
  }

  *(v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner) = 0;
}

id SiriStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriStateObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ContactResolving.makeRecommendations(queries:config:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContactResolver();
  swift_allocObject();
  ContactResolver.init()();
  v2 = dispatch thunk of ContactResolver.makeRecommendations(queries:config:)();

  return v2;
}

uint64_t ContactResolving.contactResolverConfig(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7_1();
  v28 = v3;
  v29 = v2;
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v27 = v5 - v4;
  v25 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v12 - 8);
  OUTLINED_FUNCTION_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowTask.getter();

  dispatch thunk of FlowTaskProvider.id.getter();

  (*(v18 + 16))(v22, v26, v16);
  v23 = type metadata accessor for ContactHandleTypePreference();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
  static ContactResolverDomain.all.getter();
  (*(v7 + 104))(v11, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v25);
  (*(v28 + 104))(v27, enum case for RecommenderType.mlRecommender(_:), v29);
  return ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:)();
}

void *WorkflowDialogTemplating.__allocating_init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_35_8();
  v17 = v16;
  v18 = swift_allocObject();
  outlined init with take of Output(v17, (v18 + 2));
  v18[7] = v15;
  v18[8] = v14;
  v18[9] = v13;
  v18[10] = v12;
  v18[11] = v11;
  v18[12] = v10;
  v18[13] = v9;
  v18[14] = a9;
  return v18;
}

void *WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_35_8();
  outlined init with take of Output(v17, (v10 + 2));
  v10[7] = v16;
  v10[8] = v15;
  v10[9] = v14;
  v10[10] = v13;
  v10[11] = v12;
  v10[12] = v11;
  v10[13] = v9;
  v10[14] = a9;
  return v10;
}

uint64_t WorkflowDialogTemplating.makeShowAlertPattern(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makeShowAlertPattern(request:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38_7(v4);
  *v5 = v6;
  v5[1] = WorkflowDialogTemplating.makeShowAlertPattern(request:);

  return (v8)(0, partial apply for closure #1 in WorkflowDialogTemplating.makeShowAlertPattern(request:), v2);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t closure #1 in WorkflowDialogTemplating.makeShowAlertPattern(request:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(a2, &selRef_message);
  if (v7)
  {
    SpeakableString.init(print:speak:)();
    v8 = type metadata accessor for SpeakableString();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for SpeakableString();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v9, 1, v8);
  v10 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  return outlined assign with take of SpeakableString?(v6, a1 + *(v10 + 20));
}

uint64_t WorkflowDialogTemplating.makeShowAlertDialog(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_message);
  v5 = v4;
  v6 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_prompt);
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v3, v5, v6, v7, v1);

  OUTLINED_FUNCTION_2_26();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_38_7(v9);
  *v10 = v11;
  v10[1] = WorkflowDialogTemplating.makeShowAlertDialog(request:);
  v12 = *(v0 + 32);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 56);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 112) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_27();
  v5 = swift_task_alloc();
  *(v1 + 48) = OUTLINED_FUNCTION_59_2(v5);
  *(v1 + 56) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_40_5();
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *v5 = *v2;
  v4[12] = v1;

  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[5];
  v9 = v3[4];
  if (!v1)
  {
    v4[13] = v0;
  }

  OUTLINED_FUNCTION_55_1(v9);
  OUTLINED_FUNCTION_55_1(v8);
  OUTLINED_FUNCTION_55_1(v7);
  OUTLINED_FUNCTION_55_1(v6);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_30();
  v1 = [*(v0 + 16) interaction];
  v2 = [v1 intentResponse];
  *(v0 + 64) = v2;

  if (v2)
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [v4 interaction];
    v6 = [v5 intent];
    *(v0 + 72) = v6;

    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v4, &selRef_prompt);
    v8 = v7;
    OUTLINED_FUNCTION_61_0();
    v11 = (*(v9 + 360))(v2, v10, v8);
    v13 = v12;

    v14 = *(v3 + 48);
    v15 = OUTLINED_FUNCTION_17_17((v3 + 16));
    *(v0 + 80) = DeviceState.asSiriKitDeviceState()(v15, v14);
    v16 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    v18 = WorkflowDialogTemplating.getAppName(bundleId:)(v16, v17);
    v20 = v19;

    if (v20)
    {
      OUTLINED_FUNCTION_74_1(v18, v20);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v25 = *(v0 + 56);
    v26 = type metadata accessor for SpeakableString();
    v27 = 1;
    OUTLINED_FUNCTION_51_3(v25, v21);
    if (v13)
    {
      OUTLINED_FUNCTION_74_1(v11, v13);
      v27 = 0;
    }

    v28 = *(v0 + 40);
    v29 = *(v0 + 32);
    OUTLINED_FUNCTION_51_3(*(v0 + 48), v27);
    [v6 _intentCategory];
    v30 = INIntentCategory.asINPBString()();
    OUTLINED_FUNCTION_74_1(v30._countAndFlagsBits, v30._object);
    OUTLINED_FUNCTION_34_10(v28);
    v31 = [v6 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_39_10();

    v32 = OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_74_1(v32, v33);
    OUTLINED_FUNCTION_24_11(v29, 0, 1, v26);
    OUTLINED_FUNCTION_6_17();
    v34 = swift_task_alloc();
    *(v0 + 88) = v34;
    *v34 = v0;
    v34[1] = WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_6_1();

    __asm { BRAA            X7, X16 }
  }

  lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X2, X16 }
}

uint64_t WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v6 = OUTLINED_FUNCTION_27();
  *(v1 + 48) = OUTLINED_FUNCTION_59_2(v6);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 104) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v14);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_30();
  v1 = [*(v0 + 24) interaction];
  v2 = [v1 intentResponse];
  *(v0 + 72) = v2;

  if (v2)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = [v4 interaction];
    v6 = [v5 intent];
    *(v0 + 80) = v6;

    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v4, &selRef_prompt);
    v8 = v7;
    OUTLINED_FUNCTION_61_0();
    v11 = (*(v9 + 360))(v2, v10, v8);
    v13 = v12;

    v14 = *(v3 + 48);
    v15 = OUTLINED_FUNCTION_17_17((v3 + 16));
    *(v0 + 88) = DeviceState.asSiriKitDeviceState()(v15, v14);
    v16 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    v18 = WorkflowDialogTemplating.getAppName(bundleId:)(v16, v17);
    v20 = v19;

    if (v20)
    {
      OUTLINED_FUNCTION_74_1(v18, v20);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v25 = *(v0 + 64);
    v26 = type metadata accessor for SpeakableString();
    v27 = 1;
    OUTLINED_FUNCTION_51_3(v25, v21);
    if (v13)
    {
      OUTLINED_FUNCTION_74_1(v11, v13);
      v27 = 0;
    }

    v28 = *(v0 + 48);
    v29 = *(v0 + 40);
    OUTLINED_FUNCTION_51_3(*(v0 + 56), v27);
    [v6 _intentCategory];
    v30 = INIntentCategory.asINPBString()();
    OUTLINED_FUNCTION_74_1(v30._countAndFlagsBits, v30._object);
    OUTLINED_FUNCTION_34_10(v28);
    v31 = [v6 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_39_10();

    v32 = OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_74_1(v32, v33);
    OUTLINED_FUNCTION_24_11(v29, 0, 1, v26);
    OUTLINED_FUNCTION_6_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 96) = v34;
    *v34 = v35;
    v34[1] = WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_6_1();

    __asm { BRAA            X8, X16 }
  }

  lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X1, X16 }
}

uint64_t WorkflowDialogTemplating.inputTextDialog_rfv1(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WorkflowDialogTemplating.inputTextDialog_rfv1(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 24) textFieldConfiguration];
  v18 = [v17 keyboardType];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v31, v32, "#WorkflowDialogTemplating.inputTextDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v33 = *(v15 + 24);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v33, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v33, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v34 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v34, v35, v36, v33, v37);

  *(v15 + 56) = OUTLINED_FUNCTION_77_2();
  if (v14)
  {
    v38 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1(v38, v39);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_76_3();
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_26();
  v55 = v43 + *v43;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v15 + 64) = v44;
  *v44 = v45;
  v44[1] = WorkflowDialogTemplating.inputTextDialog_rfv1(request:);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_57_4();

  return v50(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v55, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputTextDialog(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 64) = v0;

  v7 = *(v4 + 32);
  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WorkflowDialogTemplating.inputTextDialog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 16) textFieldConfiguration];
  v18 = [v17 keyboardType];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v31, v32, "#WorkflowDialogTemplating.inputTextDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v33 = *(v15 + 16);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v33, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v33, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v34 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v34, v35, v36, v33, v37);

  *(v15 + 48) = OUTLINED_FUNCTION_77_2();
  if (v14)
  {
    v38 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1(v38, v39);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_76_3();
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_26();
  v54 = v43 + *v43;
  v44 = swift_task_alloc();
  *(v15 + 56) = v44;
  *v44 = v15;
  v44[1] = WorkflowDialogTemplating.inputTextDialog(request:);
  OUTLINED_FUNCTION_57_4();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, v54, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputDateDialog(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_68_2();
  v6 = *(v5 + 40);
  OUTLINED_FUNCTION_82_3(*(v2 + 32));
  OUTLINED_FUNCTION_82_3(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_72_3();
    OUTLINED_FUNCTION_57();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.inputDateDialog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 16) configuration];
  v18 = [v17 datePickerMode];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v31, v32, "#WorkflowDialogTemplating.inputDateDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v33 = *(v15 + 24);
  v34 = *(v33 + 48);
  v35 = OUTLINED_FUNCTION_2_29(v33);
  *(v15 + 48) = DeviceState.asSiriKitDeviceState()(v35, v34);
  if (v14)
  {
    v36 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1(v36, v37);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = *(v15 + 16);
  type metadata accessor for SpeakableString();
  v40 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v40, v38, 1, v41);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v39, &selRef_message);
  v42 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v39, &selRef_prompt);
  OUTLINED_FUNCTION_52_4(v42, v43);

  OUTLINED_FUNCTION_75_2();
  v56 = v44 + class metadata base offset for WorkflowRunnerCATsSimple;
  OUTLINED_FUNCTION_16_1();
  v57 = v45 + *v45;
  v46 = swift_task_alloc();
  *(v15 + 56) = v46;
  *v46 = v15;
  v46[1] = WorkflowDialogTemplating.inputDateDialog(request:);
  OUTLINED_FUNCTION_57_4();

  return v50(v47, v48, v49, v50, v51, v52, v53, v54, a9, v56, v57, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputDateDialog_prerfv2(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_71_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v11);
  }

  else
  {

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_57();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.inputDateDialog_prerfv2(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 24) configuration];
  v18 = [v17 datePickerMode];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v31, v32, "#WorkflowDialogTemplating.inputDateDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v33 = *(v15 + 32);
  v34 = *(v33 + 48);
  v35 = OUTLINED_FUNCTION_2_29(v33);
  *(v15 + 56) = DeviceState.asSiriKitDeviceState()(v35, v34);
  if (v14)
  {
    v36 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1(v36, v37);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = *(v15 + 24);
  type metadata accessor for SpeakableString();
  v40 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v40, v38, 1, v41);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v39, &selRef_message);
  v42 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v39, &selRef_prompt);
  OUTLINED_FUNCTION_52_4(v42, v43);

  OUTLINED_FUNCTION_75_2();
  v57 = v44 + class metadata base offset for WorkflowRunnerCATs;
  OUTLINED_FUNCTION_16_1();
  v58 = v45 + *v45;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v15 + 64) = v46;
  *v46 = v47;
  v46[1] = WorkflowDialogTemplating.inputDateDialog_prerfv2(request:);
  OUTLINED_FUNCTION_57_4();

  return v52(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.chooseFromListDialog(request:disambiguationItems:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[6] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  v1 = v0[5];
  v2 = v0[2];
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v3 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v3, v4, v5, v2, v6);

  OUTLINED_FUNCTION_61_0();
  v7 = OUTLINED_FUNCTION_73_3();
  v9 = v8(v7);
  v0[7] = v9;
  v10 = *(v1 + 48);
  v11 = OUTLINED_FUNCTION_17_17((v1 + 16));
  v12 = DeviceState.asSiriKitDeviceState()(v11, v10);
  v0[8] = v12;
  OUTLINED_FUNCTION_2_26();
  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = WorkflowDialogTemplating.chooseFromListDialog(request:disambiguationItems:siriEnvironment:);
  v15 = v0[6];

  return v17(v12, v15, v9);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {
  }

  else
  {

    *(v4 + 88) = v3;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WorkflowDialogTemplating.chooseFromListDialog_preRFv2(request:disambiguationItems:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  v1 = v0[6];
  v2 = v0[3];
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v2, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v3 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v3, v4, v5, v2, v6);

  OUTLINED_FUNCTION_61_0();
  v7 = OUTLINED_FUNCTION_73_3();
  v0[8] = v8(v7);
  v9 = *(v1 + 48);
  v10 = OUTLINED_FUNCTION_17_17((v1 + 16));
  v0[9] = DeviceState.asSiriKitDeviceState()(v10, v9);
  OUTLINED_FUNCTION_2_26();
  v16 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v12;
  *v12 = v13;
  v12[1] = WorkflowDialogTemplating.chooseFromListDialog_preRFv2(request:disambiguationItems:siriEnvironment:);
  v14 = OUTLINED_FUNCTION_9_18();

  return v16(v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WorkflowDialogTemplating.makeContinueInAppDialog(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[20] = v2;
  v1[21] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[22] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[21];
  OUTLINED_FUNCTION_7_19();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v2 = *(*v0[21] + 272);
    v27 = *v0[21] + 272;
    v29 = v2 + *v2;
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = WorkflowDialogTemplating.makeContinueInAppDialog(app:);
    OUTLINED_FUNCTION_82_2();

    return v4(v4, v5, v6, v7, v8, v9, v10, v11, v27, v29);
  }

  else
  {
    v13 = v0[22];
    outlined init with copy of DeviceState(v1 + 16, (v0 + 2));
    type metadata accessor for ContinueInAppCATWrapperSimple(0);
    swift_allocObject();
    outlined init with copy of DeviceState?((v0 + 2), (v0 + 7));
    v14 = SiriKitFlowCATWrapperSimple.init(deviceState:)((v0 + 7));
    v0[24] = v14;
    outlined destroy of String?((v0 + 2), &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
    v15 = *(v1 + 48);
    v16 = OUTLINED_FUNCTION_3_11((v1 + 16));
    v0[25] = DeviceState.asSiriKitDeviceState()(v16, v15);
    v0[15] = &type metadata for AppInfoResolver;
    v0[16] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v1 + 16, v0 + 12, 2, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v28 = *v14 + class metadata base offset for ContinueInAppCATWrapperSimple;
    OUTLINED_FUNCTION_16_1();
    v30 = v17 + *v17;
    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = WorkflowDialogTemplating.makeContinueInAppDialog(app:);
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_40_5();
  v3 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 216) = v0;

  outlined destroy of String?(v6, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[15] = OUTLINED_FUNCTION_28();
  v1[16] = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_16_1();
  v1[17] = v5;
  v1[18] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[14];
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v2 = *(*v0[14] + 280);
    v12 = (v2 + *v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[19] = v3;
    *v3 = v4;
    v3[1] = WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:);
    v5 = v0[12];

    return v12(v5);
  }

  else
  {
    v7 = v0[15];
    v0[5] = &type metadata for AppInfoResolver;
    v0[6] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v1 + 16, v0 + 2, 2, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    outlined init with copy of DeviceState(v1 + 16, (v0 + 7));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[20] = v8;
    *v8 = v9;
    v8[1] = WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:);
    v10 = v0[18];
    v11 = v0[15];

    return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)(v10, v11, v0 + 7);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_22_11();

  return v3();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 168) = v0;

  outlined destroy of String?(v3 + 56, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  outlined destroy of String?(v6, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  (*(v0[17] + 32))(v0[12], v0[18], v0[16]);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *(v2 + 24);
  *v4 = *v1;
  *(v3 + 72) = v0;

  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v6);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[2];
  OUTLINED_FUNCTION_7_19();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v11 = OUTLINED_FUNCTION_3_11((v10 + 16));
    OUTLINED_FUNCTION_48_6(v11);
    OUTLINED_FUNCTION_45_5();
    v9[4] = v12;
    OUTLINED_FUNCTION_6_17();
    v45 = v13 + *v13;
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_38_7(v14);
    *v15 = v16;
    v15[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_82_2();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v45);
  }

  OUTLINED_FUNCTION_7_19();
  v26 = dispatch thunk of DeviceState.isWatch.getter();
  v27 = OUTLINED_FUNCTION_3_11((v10 + 16));
  v9[7] = OUTLINED_FUNCTION_48_6(v27);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_17();
    v45 = v31 + *v31;
    v32 = swift_task_alloc();
    v9[10] = v32;
    *v32 = v9;
    v32[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
    OUTLINED_FUNCTION_82_2();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v45);
  }

  OUTLINED_FUNCTION_17_17((v10 + 16));
  v28 = dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (v29)
  {
    OUTLINED_FUNCTION_74_1(v28, v29);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v33 = v9[3];
  v34 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v33, v30, 1, v34);
  OUTLINED_FUNCTION_6_17();
  v46 = v35 + *v35;
  v36 = swift_task_alloc();
  v9[8] = v36;
  *v36 = v9;
  v36[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_82_2();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46);
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
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
  *(v3 + 56) = v0;

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
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *(v2 + 32);
  *v4 = *v1;
  *(v3 + 80) = v0;

  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (!v0)
  {

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v6);
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
  *(v3 + 96) = v0;

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

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  OUTLINED_FUNCTION_7_19();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v11 = OUTLINED_FUNCTION_3_11((v10 + 16));
    OUTLINED_FUNCTION_48_6(v11);
    OUTLINED_FUNCTION_45_5();
    v9[5] = v12;
    OUTLINED_FUNCTION_6_17();
    v46 = v13 + *v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[6] = v14;
    *v14 = v15;
    v14[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, v46);
  }

  OUTLINED_FUNCTION_7_19();
  v25 = dispatch thunk of DeviceState.isWatch.getter();
  v26 = OUTLINED_FUNCTION_3_11((v10 + 16));
  v9[8] = OUTLINED_FUNCTION_48_6(v26);
  if ((v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_17();
    v46 = v30 + *v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[11] = v31;
    *v31 = v32;
    v31[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, v46);
  }

  OUTLINED_FUNCTION_17_17((v10 + 16));
  v27 = dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (v28)
  {
    OUTLINED_FUNCTION_74_1(v27, v28);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v33 = v9[4];
  v34 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v33, v29, 1, v34);
  OUTLINED_FUNCTION_6_17();
  v47 = v35 + *v35;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v36;
  *v36 = v37;
  v36[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
  OUTLINED_FUNCTION_82_2();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47);
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_2_29(v0[2]);
  OUTLINED_FUNCTION_48_6(v1);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v2;
  OUTLINED_FUNCTION_2_26();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = WorkflowDialogTemplating.makeHandoffDialog();
  v5 = OUTLINED_FUNCTION_21_13();

  return v7(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog_preRFv2()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_2_29(v0[3]);
  OUTLINED_FUNCTION_48_6(v1);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v2;
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = WorkflowDialogTemplating.makeHandoffDialog_preRFv2();
  v6 = OUTLINED_FUNCTION_9_18();

  return v8(v6);
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
  *(v3 + 48) = v0;

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

uint64_t WorkflowDialogTemplating.makePromptForShortcutName()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_2_29(v0[2]);
  OUTLINED_FUNCTION_48_6(v1);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v2;
  OUTLINED_FUNCTION_2_26();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = WorkflowDialogTemplating.makePromptForShortcutName();
  v5 = OUTLINED_FUNCTION_21_13();

  return v7(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

uint64_t WorkflowDialogTemplating.makePromptForShortcutName_prerfv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makePromptForShortcutName_prerfv2()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_2_29(v0[3]);
  OUTLINED_FUNCTION_48_6(v1);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v2;
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = WorkflowDialogTemplating.makePromptForShortcutName_prerfv2();
  v6 = OUTLINED_FUNCTION_9_18();

  return v8(v6);
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
  *(v3 + 48) = v0;

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

uint64_t WorkflowDialogTemplating.makeFinalDonePattern()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_16_1();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = WorkflowDialogTemplating.makeFinalDonePattern();

  return (v4)(0, CustomIntentDisambiguationItemContainer.init(items:), 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_6();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_2_29(v1);
  *(v0 + 32) = DeviceState.asSiriKitDeviceState()(v3, v2);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v4, v5, v6, v7);
  OUTLINED_FUNCTION_6_17();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_38_7(v9);
  *v10 = v11;
  v10[1] = WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog();
  v12 = OUTLINED_FUNCTION_21_13();

  return v14(v12);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_68_2();
  outlined destroy of String?(*(v2 + 24), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (!v0)
  {

    OUTLINED_FUNCTION_87();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog_prerfv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_2_29(v1);
  v0[5] = DeviceState.asSiriKitDeviceState()(v3, v2);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v4, v5, v6, v7);
  OUTLINED_FUNCTION_6_17();
  v13 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v9;
  *v9 = v10;
  v9[1] = WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog_prerfv2();
  v11 = OUTLINED_FUNCTION_9_18();

  return v13(v11);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (!v0)
  {

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeErrorDialog(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_68_2();
  v6 = *(v5 + 48);
  OUTLINED_FUNCTION_82_3(*(v2 + 40));
  OUTLINED_FUNCTION_82_3(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_72_3();
    OUTLINED_FUNCTION_57();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t WorkflowDialogTemplating.makeErrorDialog(customDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  v11 = OUTLINED_FUNCTION_2_29(v9[4]);
  v9[7] = OUTLINED_FUNCTION_48_6(v11);
  if (v10)
  {
    v13 = v9[2];
    v12 = v9[3];

    OUTLINED_FUNCTION_74_1(v13, v12);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v9[6];
  v16 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v17, v18, v19, v16);
  OUTLINED_FUNCTION_6_17();
  v31 = v20 + *v20;
  v21 = swift_task_alloc();
  v9[8] = v21;
  *v21 = v9;
  v21[1] = WorkflowDialogTemplating.makeErrorDialog(customDialog:);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_82_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31);
}

uint64_t WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[6] = OUTLINED_FUNCTION_27();
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_71_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v11);
  }

  else
  {

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_57();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[4];
  v11 = OUTLINED_FUNCTION_2_29(v9[5]);
  v9[8] = OUTLINED_FUNCTION_48_6(v11);
  if (v10)
  {
    v13 = v9[3];
    v12 = v9[4];

    OUTLINED_FUNCTION_74_1(v13, v12);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v9[7];
  v16 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v17, v18, v19, v16);
  OUTLINED_FUNCTION_6_17();
  v32 = v20 + *v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v21;
  *v21 = v22;
  v21[1] = WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_82_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

void *WorkflowDialogTemplating.mapDisambiguationItemList(disambiguationList:siriEnvironment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_1();
  v51 = v4;
  v6 = __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  if ((static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  v50 = v3;
  v46 = v13;
  if (v15)
  {
    v45 = v8;
    v55 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v17 = type metadata accessor for CATSpeakableString();
    v16 = v55;
    v47 = (v51 + 32);
    v48 = v17;
    v18 = (a1 + 80);
    do
    {
      v49 = v16;
      v19 = *(v18 - 3);
      v20 = *v18;
      v21 = *(v18 - 2);

      v22 = v20;
      OUTLINED_FUNCTION_62_3();

      v53 = static CATSpeakableString.applyTTSHint(speak:)();
      v54 = v23;
      if (v19)
      {
        v24 = static CATSpeakableString.applyTTSHint(speak:)();
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          v52._countAndFlagsBits = 0x209480E220;
          v52._object = 0xA500000000000000;
          String.append(_:)(*&v24);

          String.append(_:)(v52);
        }
      }

      OUTLINED_FUNCTION_74_1(v53, v54);

      v16 = v49;
      v55 = v49;
      v28 = v49[2];
      v27 = v49[3];
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v16 = v55;
      }

      v18 += 7;
      v16[2] = v28 + 1;
      v3 = v50;
      (*(v51 + 32))(v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v28, v11, v50);
      --v15;
    }

    while (v15);
    v8 = v45;
    v13 = v46;
  }

  v29 = v16[2];
  if (v29)
  {
    v30 = *(v51 + 16);
    v31 = v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v32 = *(v51 + 72);
    v48 = (v51 + 32);
    v49 = v32;
    v51 += 16;
    v47 = (v51 - 8);
    *&v14 = 136315138;
    v44 = v14;
    v45 = v30;
    do
    {
      (v30)(v13, v31, v3);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.voiceCommands);
      (*v48)(v8, v13, v3);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_48();
        v37 = swift_slowAlloc();
        v53 = v37;
        *v36 = v44;
        v38 = SpeakableString.speak.getter();
        v39 = v8;
        v41 = v40;
        (*v47)(v39, v50);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, &v53);
        v8 = v39;
        v30 = v45;

        *(v36 + 4) = v42;
        _os_log_impl(&dword_0, v34, v35, "itemAsString: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        v3 = v50;

        v13 = v46;
      }

      else
      {

        (*v47)(v8, v3);
      }

      v31 = v49 + v31;
      --v29;
    }

    while (v29);
  }

  return v16;
}

uint64_t WorkflowDialogTemplating.getAppName(bundleId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for App();

    OUTLINED_FUNCTION_22();
    App.__allocating_init(appIdentifier:)();
    type metadata accessor for AppNameResolver();
    swift_initStackObject();
    OUTLINED_FUNCTION_3_21();
    v2 = static SAAppInfoFactory.createAppInfo(app:)();
    AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v2);
  }

  return OUTLINED_FUNCTION_22();
}

Swift::String_optional __swiftcall WorkflowDialogTemplating.getCustomDialog(intentResponse:defaultPrompt:)(INIntentResponse intentResponse, Swift::String_optional defaultPrompt)
{
  object = defaultPrompt.value._object;
  countAndFlagsBits = defaultPrompt.value._countAndFlagsBits;
  v5 = [objc_opt_self() siriLocalizer];
  v6 = [(objc_class *)intentResponse.super.isa _renderedResponseWithLocalizer:v5 requiresSiriCompatibility:1];
  if (v6)
  {
    v7 = v6;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v8;
  }

  else if (object)
  {
    type metadata accessor for CATSpeakableString();

    v11 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(countAndFlagsBits, object);

    v12 = v11[2];

    if (v12)
    {

      countAndFlagsBits = 0;
      object = 0;
    }
  }

  else
  {

    countAndFlagsBits = 0;
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t WorkflowDialogTemplating.getCustomPrompt(message:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  WorkflowDialogTemplating.processText(text:)(a1, a2);
  v14 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    WorkflowDialogTemplating.processText(text:)(a3, a4);
    result = __swift_getEnumTagSinglePayload(v13, 1, v14);
    if (result != 1)
    {
      return outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_22();
    v17(v16);
    return OUTLINED_FUNCTION_34_10(a5);
  }

  return result;
}

Swift::String __swiftcall String.trimSpaces()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v3;
  v13[1] = v2;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  (*(v6 + 8))(v9, v4);
  v10 = OUTLINED_FUNCTION_22();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void *WorkflowDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t WorkflowDialogTemplating.__deallocating_deinit()
{
  WorkflowDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError()
{
  result = lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDialogTemplatingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0xDD078);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_19()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_34_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return DeviceState.asSiriKitDeviceState()(a1, v1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2)
{

  return WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v2, v4, a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  return DeviceState.asSiriKitDeviceState()(v1, v2);
}

uint64_t OUTLINED_FUNCTION_80_2()
{
}

void OUTLINED_FUNCTION_81_2()
{
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

uint64_t WorkflowHomePodSnippetProvider.__allocating_init(deviceState:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of Output(a1, v2 + 16);
  return v2;
}

uint64_t static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OUTLINED_FUNCTION_0_23();
  v12 = static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(v10, v11, a3, a4);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = Dictionary.init(dictionaryLiteral:)();
  v15 = outlined bridged method (ob) of @objc PBCodable.data.getter([v13 backingStore]);
  if (v16 >> 60 == 15)
  {
  }

  else
  {
    outlined copy of Data._Representation(v15, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v14;
    v17 = OUTLINED_FUNCTION_0_23();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v18, v19, v20, v21);
    v38 = v36;
    v22 = [v13 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v23 = String.data(using:allowLossyConversion:)();
    v25 = v24;

    (*(v7 + 8))(v9, v6);
    if (v25 >> 60 == 15)
    {
      v26 = OUTLINED_FUNCTION_1_34();
      specialized Dictionary._Variant.removeValue(forKey:)(v26 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v27);
      outlined consume of Data?(v36, v37);
      v28 = OUTLINED_FUNCTION_0_23();
      outlined consume of Data?(v28, v29);

      return v38;
    }

    else
    {
      v30 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v30;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v25, 0x614E746E65746E69, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
      v32 = OUTLINED_FUNCTION_0_23();
      outlined consume of Data?(v32, v33);

      return v36;
    }
  }

  return v14;
}

void *static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v30);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "SLFDisambiguationItemConverter intent: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v18 = [v8 _intentInstanceDescription];
  v19 = static SLFDisambiguationItemConverter.slotNameToSlotDescription(intentDescription:parameterNameToResolve:)(v18, a3, a4);
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  if ([v19 valueStyle] != &dword_0 + 3)
  {
    CustomIntentDisambiguationItem.getRawValue()(v30);
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v26 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(v20);
    if (v27)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    [v8 setValue:v26 forProperty:v28];
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_216850;
  CustomIntentDisambiguationItem.getRawValue()(v21 + 32);
  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  result = outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(v20);
  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();

    [v8 setValue:v22.super.isa forKey:v25];

LABEL_14:
    v29 = v8;
    return v8;
  }

  __break(1u);
  return result;
}

void *static SLFDisambiguationItemConverter.toDirectInvocationPayload(intent:chosenItem:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  type metadata accessor for SKIDirectInvocationPayload();
  v7 = OUTLINED_FUNCTION_3_23(v6, "com.apple.siri.directInvocation.RunVoiceShortcut.disambiguationItem");
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v9 = v8;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v9, v7);
  return v7;
}

id static SLFDisambiguationItemConverter.slotNameToSlotDescription(intentDescription:parameterNameToResolve:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    _os_log_impl(&dword_0, v7, v8, "SLFDisambiguationItemConverter.slotNameToSlotDescription parameter: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v11 = outlined bridged method (mbgnn) of @objc INIntentDescription.slot(byName:)(a2, a3, a1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    if (v11)
    {
      v14 = "SLFDisambiguationItemConverter.slotNameToSlotDescription retrieved slot name";
    }

    else
    {
      v14 = "SLFDisambiguationItemConverter.slotNameToSlotDescription cannot find slot name";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v12, v13, v14, v15, 2u);
  }

  return v11;
}

void *static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  v7 = OUTLINED_FUNCTION_3_23(v6, "com.apple.siri.directInvocation.RunVoiceShortcut.disambiguationItem");
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v9 = v8;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v9, v7);
  return v7;
}

id static SLFDisambiguationItemConverter.toIntent(userData:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_1_34();
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, v4 + 1017);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = outlined init with copy of Any(*(a1 + 56) + 32 * v5, &v29);
  if ((OUTLINED_FUNCTION_4_30(v7, v8, v9, &type metadata for Data) & 1) == 0)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_48_2();
  String.init(data:encoding:)();
  if (!v10)
  {
    v20 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v20, v21);
    return 0;
  }

  v11 = OUTLINED_FUNCTION_1_34();
  specialized Dictionary.subscript.getter(a1, &v29, v11 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEA00000000006174);
  if (!v30)
  {
    v22 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v22, v23);

    outlined destroy of Any?(&v29);
    return 0;
  }

  if ((OUTLINED_FUNCTION_4_30(v12, v13, v14, &type metadata for Data) & 1) == 0)
  {
    v24 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v24, v25);

    return 0;
  }

  OUTLINED_FUNCTION_0_23();
  v15 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  OUTLINED_FUNCTION_0_23();
  v17 = INIntentCreate();
  v18 = OUTLINED_FUNCTION_48_2();
  outlined consume of Data._Representation(v18, v19);
  outlined consume of Data._Representation(v27, v28);

  if (!v17)
  {
    return 0;
  }

  return v17;
}

uint64_t static SLFDisambiguationItemConverter.toTitle(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000);
  if (v3 & 1) != 0 && (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v6), (swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v9 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    *a3 = *(*(v11 + 56) + 16 * v7);
    _NativeDictionary._delete(at:)();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_21CC10;
  }

  return result;
}

id outlined bridged method (mbgnn) of @objc INIntentDescription.slot(byName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 slotByName:v4];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(void *a1)
{
  v1 = [a1 facadePropertyName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  result = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
  }

  return result;
}

id OUTLINED_FUNCTION_3_23@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  return SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD000000000000043, (a2 - 32) | 0x8000000000000000, a1);
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t String.sanitized.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String.lowercased()();
  static CharacterSet.punctuationCharacters.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components(separatedBy:)();
  (*(v1 + 8))(v3, v0);

  v7._countAndFlagsBits = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t type metadata instantiation function for MatchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized == infix<A>(_:_:)()
{
  OUTLINED_FUNCTION_48_7();
  if (v7)
  {
    v0 = 0xEC00000065636976;
  }

  else
  {
    v0 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v7)
  {
    v0 = 0xEC00000065636976;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x656761507473616CLL;
    }

    else
    {
      v5 = 0x726F4D726566666FLL;
    }

    if (v4 == 1)
    {
      v0 = 0xE800000000000000;
    }

    else
    {
      v0 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44_7(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x656761507473616CLL;
    }

    else
    {
      v3 = 0x726F4D726566666FLL;
    }

    if (v2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v5, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v7)
  {
    v0 = 0xEB000000006D6172;
  }

  else
  {
    v0 = 0xEC0000006D617261;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v2)
  {
    case 1:
      v0 = 0xEB00000000656D61;
      break;
    case 2:
      v0 = 0x800000000022EEA0;
      break;
    case 3:
      v0 = 0xE90000000000006FLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v7)
  {
    case 1:
      v5 = 0x4E707041776F6873;
      v1 = 0xEB00000000656D61;
      break;
    case 2:
      v5 = 0xD000000000000013;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 3:
      v5 = 0x72746E49776F6873;
      v1 = 0xE90000000000006FLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v3, v4, v5);
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v7)
  {
    v0 = 0xE600000000000000;
  }

  else
  {
    v0 = 0xEB00000000656D61;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v7)
  {
    v0 = 0xEC0000006E6F6974;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  v0 = 0xE900000000000065;
  OUTLINED_FUNCTION_41_6();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x66664F7470656BLL;
    }

    else
    {
      v5 = 0x6E4F7470656BLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = v3;
    v6 = 0xE900000000000065;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x66664F7470656BLL;
    }

    else
    {
      v3 = 0x6E4F7470656BLL;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_11(v5, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v7)
  {
    v0 = 0xEC0000006E6F6974;
  }

  else
  {
    v0 = 0xEE0073656C706D61;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v7)
  {
    v0 = 0xED00007070416E49;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v1, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_88_0();
  type metadata accessor for InteractionType();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(&lazy protocol witness table cache variable for type InteractionType and conformance InteractionType, 255, &type metadata accessor for InteractionType, &protocol conformance descriptor for InteractionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_19_11(v6, v0, v4);
  }

  return v2 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7070416E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7070416E69;
  switch(v4)
  {
    case 1:
      v5 = 0x7375437070416E69;
      v3 = 0xEB000000006D6F74;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x7070416E65706FLL;
      break;
    case 3:
      v5 = 0x437070416E65706FLL;
      v3 = 0xED00006D6F747375;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7375437070416E69;
      v6 = 0xEB000000006D6F74;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x7070416E65706FLL;
      break;
    case 3:
      v2 = 0x437070416E65706FLL;
      v6 = 0xED00006D6F747375;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0x6E756F436D657469;
  v3 = 0xE900000000000074;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656C7069746C756DLL;
    }

    else
    {
      v5 = 0x72746E49776F6873;
    }

    if (v4 == 1)
    {
      v6 = 0xED00007365676150;
    }

    else
    {
      v6 = 0xE90000000000006FLL;
    }
  }

  else
  {
    v5 = 0x6E756F436D657469;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C7069746C756DLL;
    }

    else
    {
      v2 = 0x72746E49776F6873;
    }

    if (a2 == 1)
    {
      v3 = 0xED00007365676150;
    }

    else
    {
      v3 = 0xE90000000000006FLL;
    }
  }

  if (v5 == v2 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_11(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xED00007070416E49;
  v3 = 0x65756E69746E6F63;
  v4 = a1;
  v5 = 0x65756E69746E6F63;
  v6 = 0xED00007070416E49;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6D6F74737563;
      break;
    case 2:
      v5 = 0x43746C7561666564;
      v6 = 0xEF65756E69746E6FLL;
      break;
    case 3:
      v5 = 0x45746C7561666564;
      v6 = 0xEC000000726F7272;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      OUTLINED_FUNCTION_4_31();
      break;
    case 2:
      v3 = 0x43746C7561666564;
      v2 = 0xEF65756E69746E6FLL;
      break;
    case 3:
      v3 = 0x45746C7561666564;
      v2 = 0xEC000000726F7272;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_11(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v5 = 0x6D69547473726966;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x6C62616E45736177;
      v3 = 0xEA00000000006465;
      break;
    case 3:
      v5 = 0x7361576863746177;
      v3 = 0xEF64656C62616E45;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_41_6();
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x6C62616E45736177;
      v6 = 0xEA00000000006465;
      break;
    case 3:
      v2 = 0x7361576863746177;
      v6 = 0xEF64656C62616E45;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0x64656C62616E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C62616E45736177;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x64656C62616E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C62616E45736177;
    }

    else
    {
      v2 = 0x6863746177;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 27503;
  }

  else
  {
    v3 = 0x6D7269666E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 27503;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v3, a2, v5);
  }

  return v8 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x4E707041776F6873;
  }

  if (v2)
  {
    v4 = 0xEB00000000656D61;
  }

  else
  {
    v4 = 0x800000000022F170;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x4E707041776F6873;
  }

  if (a2)
  {
    v6 = 0x800000000022F170;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v3, a2, v5);
  }

  return v8 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6974736567677573;
  }

  else
  {
    v3 = 0x7470697263736564;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x6974736567677573;
  }

  else
  {
    v5 = 0x7470697263736564;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xEF6E6F6974616E61;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  OUTLINED_FUNCTION_10_22();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xEC0000007473614CLL;
  }

  OUTLINED_FUNCTION_10_22();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656D61;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_10_22();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_10_22();
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
  OUTLINED_FUNCTION_10_22();
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

uint64_t specialized == infix<A>(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v3)
  {
    case 2:
      OUTLINED_FUNCTION_29_11();
      break;
    case 3:
      v1 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v7)
  {
    case 1:
      v6 = 0x7265626D756ELL;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v6 = 1954047348;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v6 = 7107189;
      break;
    default:
      break;
  }

  if (v4 == v6 && v1 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v4, v5, v6);
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v3)
  {
    case 1:
      v1 = 0xE400000000000000;
      break;
    case 2:
      v1 = 0xEB00000000656D69;
      break;
    case 3:
      OUTLINED_FUNCTION_29_11();
      break;
    case 4:
      v1 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v7)
  {
    case 1:
      v2 = 0xE400000000000000;
      v6 = 1702125924;
      break;
    case 2:
      v6 = 0x54646E4165746164;
      v2 = 0xEB00000000656D69;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v6 = 1954047348;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v6 = 1701669236;
      break;
    default:
      break;
  }

  if (v4 == v6 && v1 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v4, v5, v6);
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_45_6();
  switch(v3)
  {
    case 2:
      v1 = 0xE300000000000000;
      break;
    case 3:
      v1 = 0xE400000000000000;
      break;
    case 6:
      v1 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v7)
  {
    case 1:
      v6 = 0x6C65636E6163;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v6 = 7239026;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v6 = 1684957542;
      break;
    case 4:
      v8 = 1634038371;
      goto LABEL_11;
    case 5:
      v8 = 1701602660;
LABEL_11:
      v6 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v2 = 0xE300000000000000;
      v6 = 7827304;
      break;
    default:
      break;
  }

  if (v4 == v6 && v1 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_20(v4, v5, v6);
  }

  return v10 & 1;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v2)
    {
      v6 = 0x7265626D756ELL;
    }

    else
    {
      v6 = 7107189;
    }

    if (v2)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_29_11();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_28_8();
    if (v7)
    {
      v4 = 0x7265626D756ELL;
    }

    else
    {
      v4 = 7107189;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v4 && v1 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20(v6, v3, v4);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  if (v2)
  {
    OUTLINED_FUNCTION_28_8();
    if (v5)
    {
      v9 = 0x74706D6F7270;
    }

    else
    {
      v9 = 0x6341686372616573;
    }

    if (v5)
    {
      v1 = v8;
    }

    else
    {
      v1 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_7(v2, v3, v4);
  }

  if (v6)
  {
    OUTLINED_FUNCTION_28_8();
    if (v10)
    {
      v7 = 0x74706D6F7270;
    }

    else
    {
      v7 = 0x6341686372616573;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 == v7 && v1 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_20(v9, v6, v7);
  }

  return v14 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  v5 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v6 = 0x726F727265;
    }

    else
    {
      v6 = 0x6D617261506C696ELL;
    }

    if (v5 == 1)
    {
      v1 = 0xE500000000000000;
    }

    else
    {
      v1 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_44_7(v2, v3, v4);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0x726F727265;
    }

    else
    {
      v4 = 0x6D617261506C696ELL;
    }

    if (v3 == 1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v6 == v4 && v1 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_20(v6, v3, v4);
  }

  return v9 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2, uint64_t (*a3)(void))
{
  v5 = a3(a1 & 1);
  v7 = v6;
  if (v5 == a3(a2 & 1) && v7 == v8)
  {
    v13 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_2();
    v13 = OUTLINED_FUNCTION_7_20(v10, v11, v12);
  }

  return v13 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v13 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_2();
    v13 = OUTLINED_FUNCTION_7_20(v10, v11, v12);
  }

  return v13 & 1;
}