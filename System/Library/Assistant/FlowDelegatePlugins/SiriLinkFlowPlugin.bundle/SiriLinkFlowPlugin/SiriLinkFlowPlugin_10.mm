uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_8_0();
  *(v11 + 232) = [*(v11 + 40) snippetAction];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v11 + 240) = v12;
  *v12 = v13;
  v12[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);
  v14 = *(v11 + 200);
  v15 = *(v11 + 168);
  v16 = *(v11 + 176);
  v17 = *(v11 + 152);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v11 + 248);
  v21 = *(v11 + 16);

  return static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(v21, v19, v20, v18, v14, v17, v15, v16, a9, a10, a11);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 224);
  v14 = *(v12 + 168);
  v15 = *(v12 + 176);
  v16 = *(v12 + 152);
  v17 = *(v12 + 160);
  v18 = *(v12 + 136);
  v19 = *(v12 + 144);

  outlined consume of Data?(v14, v15);
  (*(v19 + 8))(v16, v18);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkRCHFlowStrategy.flowForAppProtectionCheck()()
{
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR, &protocol conformance descriptor for AnyAppResolutionFlow<A>);
  v0 = Flow.eraseToAnyValueFlow()();

  return v0;
}

uint64_t *ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1)
{
  v3 = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_26_15();
    v15[0] = v8;
    *v2 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v15);

    *(v2 + 4) = v11;
    _os_log_impl(&dword_0, v6, v7, "Failed to perform action with error: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0(v8);
    OUTLINED_FUNCTION_15_0(v2);
  }

  outlined init with copy of DeviceState(v3 + 88, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v3;
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_66(v13);
  swift_errorRetain();

  v15[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_1_18();

  return v15;
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for TemplatingResult();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:));
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)()
{
  OUTLINED_FUNCTION_24_1();
  v34 = v0;
  *(v0 + 264) = _convertErrorToNSError(_:)();
  if (NSError.isPreflightError.getter())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v1 = *(v0 + 224);
    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      OUTLINED_FUNCTION_48();
      v5 = OUTLINED_FUNCTION_26_15();
      v33 = v5;
      *v1 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v33);

      *(v1 + 4) = v8;
      OUTLINED_FUNCTION_25_0(&dword_0, v9, v10, "Handling preflight error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      OUTLINED_FUNCTION_15_0(v5);
      OUTLINED_FUNCTION_15_0(v1);
    }

    static Device.current.getter();
    type metadata accessor for WorkflowSnippetProvider();
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    outlined init with take of AceServiceInvokerAsync((v0 + 112), inited + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 280) = v12;
    *v12 = v13;
    v12[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);

    return WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)();
  }

  else if (NSError.isLinkUserCancelledError.getter())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v15 = *(v0 + 224);
    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_48();
      v19 = OUTLINED_FUNCTION_26_15();
      v33 = v19;
      *v15 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v33);

      *(v15 + 4) = v22;
      OUTLINED_FUNCTION_25_0(&dword_0, v23, v24, "Handling user cancelled error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_15_0(v19);
      OUTLINED_FUNCTION_15_0(v15);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 296) = v25;
    *v25 = v26;
    v25[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);
    v27 = *(v0 + 256);

    return static ResponseTemplates.taskAborted()(v27);
  }

  else
  {
    v32 = (*(**(v0 + 232) + 224) + **(**(v0 + 232) + 224));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 312) = v28;
    *v28 = v29;
    v28[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);
    v30 = *(v0 + 224);
    v31 = *(v0 + 216);

    return v32(v31, v30);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v7 = *(v3 + 272);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + 16));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 272);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 256);
  v14 = *(v12 + 264);
  v15 = *(v12 + 240);
  v16 = *(v12 + 248);
  v17 = *(v12 + 216);
  __swift_project_boxed_opaque_existential_1((*(v12 + 232) + 40), *(*(v12 + 232) + 64));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v18 = type metadata accessor for AceOutput();
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0;
  *(v12 + 72) = 0u;
  v17[3] = v18;
  v17[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v17);
  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();

  outlined destroy of String?(v12 + 72, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  (*(v16 + 8))(v13, v15);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for DialogPhase();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:);

  return LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }
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
  v20 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  outlined init with copy of DeviceState(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  if (v5)
  {
    v18 = v0[21];
    v10 = OUTLINED_FUNCTION_48();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    outlined init with copy of DeviceState((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkRCHFlowStrategy flowFor:error; output: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15_0(v11);
    OUTLINED_FUNCTION_15_0(v10);

    (*(v8 + 8))(v18, v9);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_6_7();

  return v16();
}

uint64_t ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[23];
  v15 = v12[17];
  v14 = v12[18];
  v16 = v12[15];
  v17 = v12[16];
  static DialogPhase.error.getter();
  v18 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 16))(v15, v14, v16);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v17 + 8))(v14, v16);
  v19 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v19);
  v12[24] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  v12[25] = v20;
  *(v20 + 16) = xmmword_216010;
  *(v20 + 32) = v13;
  v33 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v21 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[26] = v22;
  *v22 = v23;
  v22[1] = ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:);
  OUTLINED_FUNCTION_27_0();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 288) = a10;
  *(v11 + 296) = a11;
  *(v11 + 272) = a9;
  *(v11 + 256) = a7;
  *(v11 + 264) = a8;
  *(v11 + 240) = a5;
  *(v11 + 248) = a6;
  *(v11 + 224) = a2;
  *(v11 + 232) = a4;
  *(v11 + 336) = a3;
  *(v11 + 216) = a1;
  v12 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_38_9(v12);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }

  v13 = v12[28];
  (*(*static WFDialogState.shared + 224))(*(v12 + 336));
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v14 = v12[29];
    v15 = v12[30];
    v16 = v14[3];
    v17 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    v12[40] = v18;
    *(v18 + 16) = xmmword_216010;
    *(v18 + 32) = v15;
    v19 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[41] = v23;
    *v23 = v24;
    v23[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:);
    v25 = v12[31];
    v26 = v12[27];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v26, v18, v25, v16, v17, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v52 = *(v12 + 18);
    v28 = v12[34];
    v27 = v12[35];
    v29 = v12[32];
    v51 = v12[33];
    v31 = v12[29];
    v30 = v12[30];
    v32 = v12[28];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v33 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v32, 2);
    v35 = v34;

    v36 = DialogExecutionResult.firstDialogFullPrint()();
    v12[2] = v28;
    v12[3] = v27;
    v12[4] = v33;
    v12[5] = v35;
    *(v12 + 3) = v36;
    *&v37 = v29;
    *(&v37 + 1) = v51;
    *(v12 + 4) = v37;
    *(v12 + 5) = v52;
    v38 = v31[3];
    v53 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v38);
    v12[25] = type metadata accessor for WorkflowDataModels(0);
    v12[26] = lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 22);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    v12[38] = v40;
    *(v40 + 16) = xmmword_216010;
    *(v40 + 32) = v30;
    outlined copy of Data?(v29, v51);
    v41 = *(&v52 + 1);
    v42 = v52;
    outlined init with copy of WorkflowDataModels.LinkActionModel((v12 + 2), (v12 + 12));
    v43 = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[39] = v46;
    *v46 = v47;
    v46[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:);
    v48 = v12[31];
    v49 = v12[27];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v49, v12 + 22, v40, v48, v38, v53, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.LinkActionModel(v0 + 16);
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

uint64_t ShortcutsLinkRCHFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  return v0;
}

uint64_t ShortcutsLinkRCHFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a6;
  v35 = a7;
  v31 = a9;
  v32 = a8;
  v33 = a13;
  v18 = type metadata accessor for CATOption();
  __chkstk_darwin(v18 - 8);
  v38[3] = a12;
  v38[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a10, a12);
  *(a11 + 16) = a1;
  *(a11 + 24) = a2;
  *(a11 + 32) = a3;
  outlined init with copy of DeviceState(a5, a11 + 40);
  *(a11 + 80) = a4;
  outlined init with copy of DeviceState(v32, a11 + 88);
  outlined init with copy of DeviceState(v31, a11 + 128);
  outlined init with copy of DeviceState(a5, v37);
  outlined init with copy of DeviceState(v38, v36);
  type metadata accessor for RunVoiceCommandCATs(0);
  v20 = a3;
  static CATOption.defaultMode.getter();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v22 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  type metadata accessor for LinkActionDialogTemplating();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  __chkstk_darwin(v24);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v37, v34, v35, v21, v22, v26, v23, a12, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  *(a11 + 168) = v28;
  return a11;
}

void *specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v9 = &off_2B4000;
  v10 = [a3 valueType];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v77 = v10;
    if (a4)
    {
      v12 = specialized Array.count.getter(a4);
      if (v12)
      {
        v13 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          swift_once();
          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.voiceCommands);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "Could not create [ShortcutsLinkDisambiguationItem] for LNNeedsValueRequest", v35, 2u);
          }
        }

        else
        {
          v14 = 0;
          do
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(a4 + 8 * v14 + 32);
            }

            v16 = v15;
            LNValue.toDisambiguationItem(locale:)(a5, a6, &v80);

            v18 = _swiftEmptyArrayStorage[2];
            v17 = _swiftEmptyArrayStorage[3];
            if (v18 >= v17 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
            }

            ++v14;
            _swiftEmptyArrayStorage[2] = v18 + 1;
            v19 = &_swiftEmptyArrayStorage[7 * v18];
            v20 = v80;
            v21 = v81;
            v22 = v82;
            v19[10] = v83;
            *(v19 + 3) = v21;
            *(v19 + 4) = v22;
            *(v19 + 2) = v20;
          }

          while (v13 != v14);
          v30 = v77;
LABEL_17:
        }
      }

      else
      {
      }
    }

    else
    {
      v31 = v11;
      v8 = LinkMetadataProvider.enums(forBundleIdentifier:)();
      v37 = 0;
      v76 = specialized Array.count.getter(v8);
      while (v76 != v37)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_53;
          }

          v38 = *(v8 + 8 * v37 + 32);
        }

        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v78 = v38;
        v39 = [v38 identifier];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v41;

        v42 = [v31 enumerationIdentifier];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v40 == v43 && v9 == v45)
        {

LABEL_40:

          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNLinkEnumerationValueType, LNLinkEnumerationValueType_ptr);
          v58 = [v31 enumerationIdentifier];
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v60;

          v62 = LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)(v59, v31, v61);
          v63 = [v78 cases];
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnumCaseMetadata, LNEnumCaseMetadata_ptr);
          v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v65 = specialized Array.count.getter(v64);
          if (!v65)
          {

            return _swiftEmptyArrayStorage;
          }

          v66 = v65;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65 & ~(v65 >> 63), 0);
          if ((v66 & 0x8000000000000000) == 0)
          {
            v67 = 0;
            do
            {
              if ((v64 & 0xC000000000000001) != 0)
              {
                v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v68 = *(v64 + 8 * v67 + 32);
              }

              v69 = v68;
              LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)(v62, a5, a6, &v80);

              v71 = _swiftEmptyArrayStorage[2];
              v70 = _swiftEmptyArrayStorage[3];
              if (v71 >= v70 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1);
              }

              ++v67;
              _swiftEmptyArrayStorage[2] = v71 + 1;
              v72 = &_swiftEmptyArrayStorage[7 * v71];
              v73 = v80;
              v74 = v81;
              v75 = v82;
              v72[10] = v83;
              *(v72 + 3) = v74;
              *(v72 + 4) = v75;
              *(v72 + 2) = v73;
            }

            while (v66 != v67);

            v30 = v78;
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_57;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_40;
        }

        ++v37;
      }

      if (one-time initialization token for voiceCommands == -1)
      {
        goto LABEL_37;
      }

LABEL_57:
      swift_once();
LABEL_37:
      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.voiceCommands);
      v25 = v10;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v80.n128_u64[0] = v52;
        *v51 = 136315138;
        v53 = [v31 enumerationIdentifier];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v80);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_0, v49, v50, "Could not find LNEnumMetadata for identifier: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);

        goto LABEL_16;
      }
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_54:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.voiceCommands);
    v24 = v8;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v24 v9[325]];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_0, v25, v26, "Can only create disambiguations for LNLinkEnumerationValueType, not %@", v27, 0xCu);
      outlined destroy of String?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

LABEL_16:
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_FA8B0()
{

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_33_6(v7);

  return closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_FA9C8()
{

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_33_6(v3);

  return closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(v5, v6, v2);
}

uint64_t lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_17(unint64_t *a1)
{

  return lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(a1, v1, v2, &protocol conformance descriptor for PromptForDisambiguationFlowAsync<A, B>);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{

  return _swift_task_switch(a1);
}

void static CustomUnderstandingSystemDialogActsFactory.systemPromptedForSlotValue(intentType:bundleId:resolvedParameters:unresolvedParameter:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v46 = OUTLINED_FUNCTION_10_25(v8, v43);
  OUTLINED_FUNCTION_7_1();
  v45 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v44 = v12 - v11;
  *&v48[0] = 95;
  *(&v48[0] + 1) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_37();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v51 = v5;
  v52 = v3;
  *&v49 = 46;
  *(&v49 + 1) = 0xE100000000000000;
  v14 = StringProtocol.components<A>(separatedBy:)();
  specialized BidirectionalCollection.last.getter(v14);
  v16 = v15;

  if (!v16)
  {
  }

  v17 = type metadata accessor for UsoOpenTaskBuilder();
  OUTLINED_FUNCTION_66(v17);
  v18 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
  v19 = v18;
  if (v1)
  {
    v47 = v18;
    OUTLINED_FUNCTION_5_18();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;

    v25 = 0;
    if (!v22)
    {
      goto LABEL_6;
    }

    do
    {
      v26 = v25;
LABEL_10:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v1 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      outlined init with copy of Any(*(v1 + 56) + 32 * v28, v48);
      *&v49 = v30;
      *(&v49 + 1) = v31;
      outlined init with take of Any(v48, v50);

LABEL_11:
      OUTLINED_FUNCTION_12_19();
      if (!v13)
      {

        v19 = v47;
        goto LABEL_18;
      }

      outlined init with take of Any(v53, &v49);
      if (swift_dynamicCast())
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v33 = OUTLINED_FUNCTION_64(v32);
        v34 = OUTLINED_FUNCTION_14_17(v33, xmmword_216010);
        OUTLINED_FUNCTION_66(v34);
        v33[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
        dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();
      }
    }

    while (v22);
LABEL_6:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v22 = 0;
        memset(v50, 0, sizeof(v50));
        v49 = 0u;
        goto LABEL_11;
      }

      v22 = *(v1 + 64 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = OUTLINED_FUNCTION_64(v35);
    v37 = OUTLINED_FUNCTION_14_17(v36, xmmword_216010);
    OUTLINED_FUNCTION_66(v37);
    v36[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
    dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

    v38 = OUTLINED_FUNCTION_64(v35);
    *(v38 + 16) = xmmword_216010;
    *(v38 + 32) = v19;

    static UsoGraphBuilder.buildGraph(taskBuilders:)();

    OUTLINED_FUNCTION_11_18();
    if (v36)
    {

      OUTLINED_FUNCTION_13_17();
      outlined destroy of String?(v38, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v46);
      (*(v45 + 32))(v44, v38, v46);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
      OUTLINED_FUNCTION_20_14();
      v42 = static USOSerializedGraph.fromProto(protoGraph:)();
      [objc_allocWithZone(SIRINLUSystemPrompted) initWithReference:v42];
      OUTLINED_FUNCTION_31_8();

      (*(v45 + 8))(v44, v46);
    }

    OUTLINED_FUNCTION_42();
  }
}

void static CustomUnderstandingSystemDialogActsFactory.systemOfferedForIntentConfirmation(intent:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v103 - v6;
  v106 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  OUTLINED_FUNCTION_7_1();
  v105 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v104 = v11 - v10;
  v12 = Dictionary.init(dictionaryLiteral:)();
  v13 = outlined bridged method (pb) of @objc INIntent.parametersByName.getter(v3);
  v111 = v7;
  if (!v13)
  {
    v114 = v12;
LABEL_49:
    v70 = [v3 typeName];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v124 = INIntent.bundleId.getter();
    v125 = v74;
    *&v122 = 46;
    *(&v122 + 1) = 0xE100000000000000;
    *&v121[0] = 95;
    *(&v121[0] + 1) = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_15_19();
    v104 = v1;
    v103 = &type metadata for String;
    OUTLINED_FUNCTION_1_37();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v124 = v71;
    v125 = v73;
    *&v122 = 46;
    *(&v122 + 1) = 0xE100000000000000;
    v75 = StringProtocol.components<A>(separatedBy:)();
    specialized BidirectionalCollection.last.getter(v75);
    v77 = v76;

    if (v77)
    {
    }

    v78 = v114;
    v79 = type metadata accessor for UsoOpenTaskBuilder();
    OUTLINED_FUNCTION_66(v79);
    OUTLINED_FUNCTION_20_14();
    v80 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
    v81 = 0;
    v82 = v78 + 64;
    OUTLINED_FUNCTION_5_18();
    v85 = v84 & v83;
    v87 = (v86 + 63) >> 6;
    v113 = xmmword_216010;
    v112 = v88;
    if ((v84 & v83) != 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v89 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_61;
      }

      if (v89 >= v87)
      {
        break;
      }

      v85 = *(v82 + 8 * v89);
      ++v81;
      if (v85)
      {
        v81 = v89;
        do
        {
LABEL_57:
          v85 &= v85 - 1;
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v91 = OUTLINED_FUNCTION_64(v90);
          v92 = OUTLINED_FUNCTION_14_17(v91, v113);
          OUTLINED_FUNCTION_66(v92);

          v91[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
          v80 = v112;
          dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

          v7 = v111;
        }

        while (v85);
        continue;
      }
    }

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v94 = OUTLINED_FUNCTION_64(v93);
    v94[1] = v113;
    v94[2].n128_u64[0] = v80;

    static UsoGraphBuilder.buildGraph(taskBuilders:)();

    Graph.protobufGraphSiriNl(vocabManager:)();
    OUTLINED_FUNCTION_49_3();
    v95 = v106;
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v106);
    v99 = v105;
    v100 = v104;
    (*(v105 + 32))(v104, v7, v95);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
    OUTLINED_FUNCTION_31_8();
    v101 = static USOSerializedGraph.fromProto(protoGraph:)();
    v102 = [objc_allocWithZone(SIRINLUUserWantedToProceed) initWithReference:v101];
    [objc_allocWithZone(SIRINLUSystemOffered) initWithOfferedAct:v102];

    (*(v99 + 8))(v100, v95);
    OUTLINED_FUNCTION_42();
    return;
  }

  v14 = v13;
  v103 = v3;
  v15 = 0;
  v16 = v13 + 64;
  OUTLINED_FUNCTION_5_18();
  v19 = v18 & v17;
  v1 = (v20 + 63) >> 6;
  *&v21 = 136315138;
  v107 = v21;
  v112 = v22;
  v113.n128_u64[0] = v16;
  v108 = v1;
  if ((v18 & v17) == 0)
  {
    goto LABEL_4;
  }

  do
  {
    v23 = v15;
LABEL_8:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v23 << 6);
    v26 = (*(v14 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    outlined init with copy of Any(*(v14 + 56) + 32 * v25, v121);
    *&v122 = v28;
    *(&v122 + 1) = v27;
    outlined init with take of Any(v121, v123);

LABEL_9:
    OUTLINED_FUNCTION_12_19();
    if (!v0)
    {
      v114 = v12;

      v7 = v111;
      v3 = v103;
      goto LABEL_49;
    }

    v114 = v124;
    outlined init with take of Any(v126, &v122);
    outlined init with copy of Any(&v122, v121);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
    if (!swift_dynamicCast())
    {
      outlined init with copy of Any(&v122, v119);
      if (!swift_dynamicCast())
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.voiceCommands);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v119[0] = v49;
          *v48 = v107;
          v50 = OUTLINED_FUNCTION_4_34();
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);

          *(v48 + 4) = v53;
          v14 = v112;
          _os_log_impl(&dword_0, v46, v47, "Tried to unwrap parameter as String when generating SystemDialogAct for: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          v54 = v49;
          v16 = v113.n128_u64[0];
          OUTLINED_FUNCTION_15_0(v54);
          OUTLINED_FUNCTION_15_0(v48);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v122);
        goto LABEL_45;
      }

      v32 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v119[0] = v12;
      v34 = OUTLINED_FUNCTION_4_34();
      specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
      OUTLINED_FUNCTION_22_12();
      if (v37)
      {
        goto LABEL_62;
      }

      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
      {
        v39 = OUTLINED_FUNCTION_4_34();
        specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
        v16 = v113.n128_u64[0];
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_66;
        }

        if ((v38 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v16 = v113.n128_u64[0];
        if ((v38 & 1) == 0)
        {
LABEL_18:
          OUTLINED_FUNCTION_3_26();
          *v42 = v32;
          __swift_destroy_boxed_opaque_existential_1Tm(&v122);
          v43 = *(v12 + 16);
          v37 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v37)
          {
            goto LABEL_64;
          }

          *(v12 + 16) = v44;
          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_19_13();
      *v64 = v32;

      __swift_destroy_boxed_opaque_existential_1Tm(&v122);
LABEL_38:
      v14 = v112;
      v1 = v108;
      goto LABEL_45;
    }

    v29 = v120;
    OUTLINED_FUNCTION_2_32();
    v30 = String._bridgeToObjectiveC()();
    v31 = [v29 valueForKey:v30];

    if (v31)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v117 = 0u;
    }

    v119[1] = v118;
    v119[0] = v117;
    if (*(&v118 + 1))
    {
      if (swift_dynamicCast())
      {
        v110 = v29;
        v109 = v115;
        v55 = v116;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v119[0] = v12;
        v57 = OUTLINED_FUNCTION_4_34();
        specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
        OUTLINED_FUNCTION_22_12();
        if (v37)
        {
          goto LABEL_63;
        }

        v60 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v56, v12))
        {
          v61 = OUTLINED_FUNCTION_4_34();
          specialized __RawDictionaryStorage.find<A>(_:)(v61, v62);
          v14 = v112;
          if ((v60 & 1) != (v63 & 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          v14 = v112;
        }

        v65 = v109;
        if (v60)
        {

          OUTLINED_FUNCTION_19_13();
          *v66 = v65;
          v66[1] = v55;

          __swift_destroy_boxed_opaque_existential_1Tm(&v122);
        }

        else
        {
          OUTLINED_FUNCTION_3_26();
          *v67 = v65;
          v67[1] = v55;

          __swift_destroy_boxed_opaque_existential_1Tm(&v122);
          v68 = *(v12 + 16);
          v37 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v37)
          {
            goto LABEL_65;
          }

          *(v12 + 16) = v69;
        }

        v16 = v113.n128_u64[0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v122);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v122);

      outlined destroy of String?(v119, &_sypSgMd, &_sypSgMR);
    }

LABEL_45:
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
  }

  while (v19);
LABEL_4:
  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v1)
    {
      v19 = 0;
      memset(v123, 0, sizeof(v123));
      v122 = 0u;
      goto LABEL_9;
    }

    v19 = *(v16 + 8 * v23);
    ++v15;
    if (v19)
    {
      v15 = v23;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void static CustomUnderstandingSystemDialogActsFactory.systemOfferedForParameterConfirmation(intent:parameter:resolutionResult:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v45 = OUTLINED_FUNCTION_10_25(v10, v42);
  OUTLINED_FUNCTION_7_1();
  v43 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v15 = [v1 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v52, &v50);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_32();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v49 valueForKey:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v46 = 0u;
      v47 = 0u;
    }

    v48[0] = v46;
    v48[1] = v47;
    if (*(&v47 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      outlined destroy of String?(v48, &_sypSgMd, &_sypSgMR);
    }
  }

  else if (swift_dynamicCast())
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    outlined init with copy of Any(v52, v48);
    if (!swift_dynamicCast())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.voiceCommands);
      OUTLINED_FUNCTION_20_14();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v48[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v3, v48);
        _os_log_impl(&dword_0, v19, v20, "Tried to unwrap parameter as String when generating confirmation SystemDialogAct for: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        OUTLINED_FUNCTION_15_0(v22);
        OUTLINED_FUNCTION_15_0(v21);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  v23 = [v7 typeName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v50 = INIntent.bundleId.getter();
  v51 = v27;
  *&v48[0] = 46;
  *(&v48[0] + 1) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_15_19();
  v44 = v5;
  OUTLINED_FUNCTION_1_37();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v50 = v24;
  v51 = v26;
  *&v48[0] = 46;
  *(&v48[0] + 1) = 0xE100000000000000;
  v28 = StringProtocol.components<A>(separatedBy:)();
  specialized BidirectionalCollection.last.getter(v28);
  v30 = v29;

  if (v30)
  {
  }

  v31 = type metadata accessor for UsoOpenTaskBuilder();
  OUTLINED_FUNCTION_66(v31);
  OUTLINED_FUNCTION_31_8();
  v32 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = OUTLINED_FUNCTION_64(v33);
  v35 = OUTLINED_FUNCTION_14_17(v34, xmmword_216010);
  OUTLINED_FUNCTION_66(v35);
  v34[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
  dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

  v36 = OUTLINED_FUNCTION_64(v33);
  *(v36 + 16) = xmmword_216010;
  *(v36 + 32) = v32;

  static UsoGraphBuilder.buildGraph(taskBuilders:)();

  OUTLINED_FUNCTION_11_18();
  if (v34)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_13_17();
    outlined destroy of String?(v36, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v45);
    (*(v44 + 32))(&type metadata for String, v36, v45);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
    v40 = static USOSerializedGraph.fromProto(protoGraph:)();
    v41 = [objc_allocWithZone(SIRINLUUserWantedToProceed) initWithReference:v40];
    [objc_allocWithZone(SIRINLUSystemOffered) initWithOfferedAct:v41];
    OUTLINED_FUNCTION_31_8();

    (*(v44 + 8))(&type metadata for String, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  OUTLINED_FUNCTION_42();
}

void static CustomUnderstandingSystemDialogActsFactory.systemGaveOptionsForDisambiguation(intent:parameter:options:)()
{
  OUTLINED_FUNCTION_40_0();
  v55.n128_u64[0] = v0;
  v49 = v1;
  v50 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v51 = v44 - v7;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  OUTLINED_FUNCTION_7_1();
  v54 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = [v4 typeName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v60 = INIntent.bundleId.getter();
  v61 = v18;
  v58 = 46;
  v59 = 0xE100000000000000;
  v56 = 95;
  v57 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_37();
  v48 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v52 = v19;

  v60 = v15;
  v61 = v17;
  v58 = 46;
  v59 = 0xE100000000000000;
  v20 = StringProtocol.components<A>(separatedBy:)();
  v21 = specialized BidirectionalCollection.last.getter(v20);
  v23 = v22;

  if (v23)
  {

    v15 = v21;
    v17 = v23;
  }

  v24 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  v25 = *(v55.n128_u64[0] + 16);
  v46 = (v54 + 32);
  v45 = (v54 + 8);
  v26 = v55.n128_u64[0] + 40;
  v55 = xmmword_216010;
  v47 = v17;
  if (v25)
  {
    do
    {
      v44[1] = v24;
      v53 = v26;
      v54 = v25;
      v27 = v13;
      v28 = v8;
      v29 = type metadata accessor for UsoOpenTaskBuilder();
      OUTLINED_FUNCTION_66(v29);

      v30 = v15;
      v31 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v33 = OUTLINED_FUNCTION_64(v32);
      v34 = OUTLINED_FUNCTION_14_17(v33, v55);
      OUTLINED_FUNCTION_66(v34);
      OUTLINED_FUNCTION_20_14();
      v33[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
      dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

      v35 = OUTLINED_FUNCTION_64(v32);
      v35[1] = v55;
      v35[2].n128_u64[0] = v31;

      static UsoGraphBuilder.buildGraph(taskBuilders:)();

      v36 = v51;
      Graph.protobufGraphSiriNl(vocabManager:)();
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
      (*v46)(v27, v36, v28);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
      v40 = static USOSerializedGraph.fromProto(protoGraph:)();
      v41 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v40];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v60 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v45)(v27, v28);
      v24 = v60;
      v26 = v53 + 16;
      v25 = v54 - 1;
      v8 = v28;
      v13 = v27;
      v15 = v30;
    }

    while (v54 != 1);
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SIRINLUSystemGaveOptions, SIRINLUSystemGaveOptions_ptr);
  SIRINLUSystemGaveOptions.__allocating_init(choices:)(v24, v42, v43);
  OUTLINED_FUNCTION_42();
}

id SIRINLUSystemGaveOptions.__allocating_init(choices:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithChoices:isa];

  return v5;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

void OUTLINED_FUNCTION_3_26()
{
  v3 = *(v2 - 272);
  *(v3 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v3 + 48) + 16 * v0);
  *v4 = *(v2 - 328);
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_10_25@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 272) = &a2 - a1;

  return type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return Graph.protobufGraphSiriNl(vocabManager:)();
}

__n128 OUTLINED_FUNCTION_12_19()
{
  v1 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 192);
  *(v0 - 128) = v1;
  result = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v3 = *(v1 - 264);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_14_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for UsoPrimitiveStringBuilder();
}

uint64_t ListShortcutsCATs.launchApp(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(ListShortcutsCATs.launchApp(device:));
}

uint64_t ListShortcutsCATs.launchApp(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_216850;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = ListShortcutsCATs.launchApp(device:);
  v5 = v0[2];

  return v7(v5, 0xD000000000000017, 0x800000000022DE30, v2);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.errorInstallShortcut(device:));
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ListShortcutsCATs.viewShortcutsInApp()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = ListShortcutsCATs.viewShortcutsInApp();

  return (v5)(a1, 0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage);
}

uint64_t ListShortcutsCATs.viewShortcutsInApp()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ListShortcutsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

uint64_t type metadata accessor for ListShortcutsCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for ListShortcutsCATs;
  if (!type metadata singleton initialization cache for ListShortcutsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ExactMatcher.match(term:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = *v3;
  v94 = 0;
  v106 = type metadata accessor for CharacterSet();
  v5 = *(v106 - 8);
  v6 = __chkstk_darwin(v106);
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v97[10];
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v6);
  v92 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v93 = &v88 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v88 - v15;
  v89 = v17;
  __chkstk_darwin(v14);
  v19 = &v88 - v18;
  v101._countAndFlagsBits = String.sanitized.getter();
  v21 = v20;
  OUTLINED_FUNCTION_2_33();
  v22 = Array.startIndex.getter();
  *&v119 = v22;
  v100 = v9 + 16;
  v103 = v9 + 32;
  v105 = v5 + 8;
  v102 = v9;
  v99 = v9 + 8;
  v98 = a3;
  v101._object = v21;
  for (i = v19; ; v19 = i)
  {
    OUTLINED_FUNCTION_2_33();
    if (v22 == Array.endIndex.getter())
    {
      OUTLINED_FUNCTION_2_33();
      v47 = Array.startIndex.getter();
      v109 = v47;
      OUTLINED_FUNCTION_2_33();
      v48 = Array.endIndex.getter();
      v49 = v94;
      v50 = v92;
      if (v47 == v48)
      {
LABEL_19:

        return 0;
      }

      v97 = v97[11];
      i = v97[1];
      v96 = (v97 + 1);
      v55 = &_sSaySSGMd;
      v56 = &_sSaySSGMR;
      v91 = v8;
      while (1)
      {
        OUTLINED_FUNCTION_2_33();
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          OUTLINED_FUNCTION_1_38();
          v61 = v93;
          (*(v60 + 16))(v93, v58 + v59 * v47, v8);
        }

        else
        {
          OUTLINED_FUNCTION_5_19();
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v89 != 8)
          {
            goto LABEL_41;
          }

          v107._countAndFlagsBits = result;
          OUTLINED_FUNCTION_3_27();
          v61 = v93;
          v85(v93, &v107, v8);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_5_19();
        Array.formIndex(after:)(v62);
        OUTLINED_FUNCTION_4_35();
        v90 = *v63;
        (v90)(v50, v61, v8);
        (i)(v114, v8, v97);
        v64 = v50;
        v65 = v116;
        v120 = v116;
        v119 = v114[0];

        outlined destroy of String(&v119);
        v118 = v114[1];
        outlined destroy of String?(&v118, &_sSSSgMd, &_sSSSgMR);
        v117 = v115;
        outlined destroy of String?(&v117, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
        outlined destroy of String?(&v120, v55, v56);
        v66 = v56;
        v67 = v55;
        v68 = *(v65 + 16);
        if (v68)
        {
          v94 = v49;
          v108 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
          v69 = v108;
          v70 = v65 + 40;
          do
          {
            v107 = String.lowercased()();

            v71 = v104;
            static CharacterSet.punctuationCharacters.getter();
            lazy protocol witness table accessor for type String and conformance String();
            v72 = StringProtocol.components(separatedBy:)();
            OUTLINED_FUNCTION_3_27();
            v73(v71, v106);

            v107._countAndFlagsBits = v72;
            __swift_instantiateConcreteTypeFromMangledNameV2(v67, v66);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v74 = BidirectionalCollection<>.joined(separator:)();
            v76 = v75;

            v108 = v69;
            v78 = v69[2];
            v77 = v69[3];
            if (v78 >= v77 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1);
              v69 = v108;
            }

            v69[2] = v78 + 1;
            v79 = &v69[2 * v78];
            v79[4] = v74;
            v79[5] = v76;
            v70 += 16;
            --v68;
          }

          while (v68);
          v55 = v67;
          v80 = v67;
          v56 = v66;
          v81 = outlined destroy of String?(&v120, v80, v66);
          v49 = v94;
          v50 = v92;
        }

        else
        {
          v81 = outlined destroy of String?(&v120, v67, v66);
          v69 = _swiftEmptyArrayStorage;
          v55 = v67;
          v56 = v66;
          v50 = v64;
        }

        v107 = v101;
        __chkstk_darwin(v81);
        *(&v88 - 2) = &v107;
        v82 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v88 - 4), v69);

        if (v82)
        {
          break;
        }

        OUTLINED_FUNCTION_3_27();
        v8 = v91;
        v83(v50, v91);
        OUTLINED_FUNCTION_2_33();
        v84 = Array.endIndex.getter();
        v47 = v109;
        if (v109 == v84)
        {
          goto LABEL_19;
        }
      }

      v86 = getContiguousArrayStorageType<A>(for:)(v91, v91);
      OUTLINED_FUNCTION_0_25(v86);
      v87 = static Array._adoptStorage(_:count:)();
      OUTLINED_FUNCTION_4_35();
      v90();
      type metadata accessor for Array();
      v54._rawValue = v87;
      return CustomIntentDisambiguationItemContainer.init(items:)(v54).items._rawValue;
    }

    OUTLINED_FUNCTION_2_33();
    v23 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!v23)
    {
      break;
    }

    OUTLINED_FUNCTION_1_38();
    (*(v26 + 16))(v19, v24 + v25 * v22, v8);
LABEL_5:
    OUTLINED_FUNCTION_5_19();
    Array.formIndex(after:)(v27);
    OUTLINED_FUNCTION_4_35();
    v96 = *v28;
    (v96)(v16, v19, v8);
    v29 = v97[11];
    (*(v29 + 8))(&v110, v8, v29);
    v123 = v111;
    outlined destroy of String?(&v123, &_sSSSgMd, &_sSSSgMR);
    v122 = v112;
    outlined destroy of String?(&v122, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
    v121 = v113;
    outlined destroy of String?(&v121, &_sSaySSGMd, &_sSaySSGMR);
    v30 = String.lowercased()();

    v114[0] = v30;
    v31 = v104;
    static CharacterSet.punctuationCharacters.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v32 = StringProtocol.components(separatedBy:)();
    OUTLINED_FUNCTION_3_27();
    v33(v31, v106);

    *&v114[0] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    object = v101._object;
    if (v34 == v101._countAndFlagsBits && v36 == v101._object)
    {
      goto LABEL_20;
    }

    countAndFlagsBits = v101._countAndFlagsBits;
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_21;
    }

    if ((*(v29 + 32))(v8, v29) == countAndFlagsBits && v41 == object)
    {
LABEL_20:
      v51 = v96;

      goto LABEL_22;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
LABEL_21:
      v51 = v96;
LABEL_22:

      v52 = getContiguousArrayStorageType<A>(for:)(v8, v8);
      OUTLINED_FUNCTION_0_25(v52);
      v53 = static Array._adoptStorage(_:count:)();
      OUTLINED_FUNCTION_4_35();
      v51();
      type metadata accessor for Array();
      v54._rawValue = v53;
      return CustomIntentDisambiguationItemContainer.init(items:)(v54).items._rawValue;
    }

    OUTLINED_FUNCTION_3_27();
    v44(v16, v8);
    v22 = v119;
  }

  OUTLINED_FUNCTION_5_19();
  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v89 == 8)
  {
    *&v114[0] = result;
    OUTLINED_FUNCTION_3_27();
    v46(v19, v114, v8);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(void *a1)
{
  OUTLINED_FUNCTION_6_23(a1);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    outlined init with copy of DeviceState(a1, v4);
    type metadata accessor for WorkflowCarplaySnippetProvider();
  }

  else
  {
    OUTLINED_FUNCTION_6_23(a1);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      outlined init with copy of DeviceState(a1, v4);
      type metadata accessor for WorkflowWatchSnippetProvider();
    }

    else
    {
      OUTLINED_FUNCTION_6_23(a1);
      if (dispatch thunk of DeviceState.isHomePod.getter())
      {
        outlined init with copy of DeviceState(a1, v4);
        type metadata accessor for WorkflowHomePodSnippetProvider();
      }

      else
      {
        OUTLINED_FUNCTION_6_23(a1);
        if (dispatch thunk of DeviceState.isMac.getter())
        {
          outlined init with copy of DeviceState(a1, v4);
          type metadata accessor for WorkflowMacSnippetProvider();
        }

        else
        {
          outlined init with copy of DeviceState(a1, v4);
          type metadata accessor for WorkflowPhoneSnippetProvider();
        }
      }
    }
  }

  v2 = swift_allocObject();
  outlined init with take of Output(v4, v2 + 16);
  return v2;
}

uint64_t WorkflowSnippetProvider.buildSnippetForChooseFromList(shortcutName:appBundleId:disambiguationItems:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_18_4();
  v16 = (*(v13 + 128) + **(v13 + 128));
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return v16(a5, a1, a2, a3, a4, a6);
}

uint64_t WorkflowSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2);
}

uint64_t WorkflowSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2);
}

uint64_t WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[14] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingText();
  v1[15] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for TemplatingSection();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v11 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v11);
  v1[23] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for TemplatingResult();
  v1[24] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_27();
  v1[27] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[22];
  type metadata accessor for App();

  v0[28] = App.__allocating_init(appIdentifier:)();
  type metadata accessor for AppNameResolver();
  swift_initStackObject();
  v2 = static SAAppInfoFactory.createAppInfo(app:)();
  v0[29] = AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v2);
  v0[30] = v3;

  v0[31] = type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  v0[32] = v4;

  SpeakableString.init(print:speak:)();
  v5 = type metadata accessor for SpeakableString();
  v0[33] = v5;
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  v16 = (*v4 + class metadata base offset for RunVoiceCommandCATs + 24);
  v17 = *v16 + **v16;
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  OUTLINED_FUNCTION_82_2();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *(v2 + 176);
  *v4 = *v1;
  *(v3 + 280) = v0;

  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {

    v6 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  else
  {
    v6 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {

    outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  else
  {
    outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

    v6 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_27_13();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_27_13();

  v4 = v0[1];

  return v4();
}

uint64_t WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[21];
  v4 = v1[13];
  v1[9] = _swiftEmptyArrayStorage;
  static CATOption.defaultMode.getter();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  v1[36] = v5;
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  v8 = DeviceState.asSiriKitDeviceState()(v6, v7);
  v1[37] = v8;
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  v13 = (*(*v5 + class metadata base offset for RunVoiceCommandCATs + 64) + **(*v5 + class metadata base offset for RunVoiceCommandCATs + 64));
  v9 = swift_task_alloc();
  v1[38] = v9;
  *v9 = v1;
  v9[1] = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  v10 = v1[26];
  v11 = v1[21];

  return v13(v10, v8, v11);
}

{
  v6 = TemplatingResult.sections.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v3 + 136);
  v9 = *(v3 + 120);
  v8 = *(v3 + 128);
  v10 = *(v3 + 104);
  v37 = *(v3 + 96);
  v11 = *(v3 + 88);
  (*(*(v3 + 152) + 16))(*(v3 + 160), v6 + ((*(*(v3 + 152) + 80) + 32) & ~*(*(v3 + 152) + 80)), *(v3 + 144));

  TemplatingSection.content.getter();
  v12 = OUTLINED_FUNCTION_56_1();
  v13(v12);
  v14 = TemplatingText.text.getter();
  v16 = v15;
  (*(v8 + 8))(v7, v9);
  v17 = [objc_allocWithZone(SAAppsLaunchApp) init];
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v11, v37, v17);
  __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v36 = v17;
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    type metadata accessor for SiriKitAceViewBuilder();
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    v18 = v17;
    dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

    dispatch thunk of SiriKitAceViewBuilder.build()();

    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1((*(v3 + 104) + 16), *(*(v3 + 104) + 40));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v2 = [objc_allocWithZone(SASTCommandTemplateAction) init];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = OUTLINED_FUNCTION_64(v19);
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v17;
    v21 = v17;
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v20, v2, &selRef_setCommands_);
    v5 = [objc_allocWithZone(SAUIDecoratedText) init];
    outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v14, v16, v5);
    v22 = [objc_allocWithZone(SASTButtonItem) init];
    [v22 setDecoratedLabel:v5];
    [v22 setCentered:1];
    [v22 setAction:v2];
    v23 = [objc_allocWithZone(SASTItemGroup) init];
    v24 = OUTLINED_FUNCTION_64(v19);
    *(v24 + 16) = xmmword_216010;
    *(v24 + 32) = v22;
    v1 = v22;
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v24, v23);
    v4 = v23;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*(v3 + 72) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v3 + 72) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_6:
      OUTLINED_FUNCTION_56_1();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_8;
    }

LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_6;
  }

LABEL_8:
  v25 = *(v3 + 216);
  v26 = *(v3 + 200);
  v27 = *(v3 + 192);
  v28 = *(v3 + 112);
  v29 = *(v3 + 80);
  __swift_project_boxed_opaque_existential_1((*(v3 + 104) + 16), *(*(v3 + 104) + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v30 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v30);
  v31 = type metadata accessor for AceOutput();
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  v29[3] = v31;
  v29[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v29);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v3 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v28, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v32 = *(v26 + 8);
  v33 = OUTLINED_FUNCTION_56_1();
  v32(v33);
  (v32)(v25, v27);

  v34 = *(v3 + 8);

  return v34();
}

id WorkflowSnippetProvider.makeConfirmationOptions(confirmationButtonText:cancelButtonText:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  static Device.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "confirmation");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 7562617;
  *(inited + 56) = 0xE300000000000000;
  v5 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  v6 = OUTLINED_FUNCTION_31_9();
  v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v6, v7, v8);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v11 = v10;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v11, v9);
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v12 = DeviceState.asInvocationContext.getter();
  v13 = SAInputOriginDialogButtonTapValue;
  [v12 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v14 = objc_opt_self();
  v15 = [v14 runSiriKitExecutorCommandWithContext:v12 payload:v9];
  v16 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v17 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBundleId:v18];

  [v16 setRequestedApp:v17];
  [v15 setAppSelectionState:v16];

  v19 = [v14 wrapCommandInStartLocalRequest:v15];
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  static Device.current.getter();
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_216850;
  strcpy((v20 + 32), "confirmation");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  *(v20 + 72) = &type metadata for String;
  *(v20 + 48) = 0x6C65636E6163;
  *(v20 + 56) = 0xE600000000000000;
  v21 = Dictionary.init(dictionaryLiteral:)();
  v22 = OUTLINED_FUNCTION_31_9();
  v25 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v22, v23, v24);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);
  v27 = v26;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v27, v25);
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = DeviceState.asInvocationContext.getter();
  [v28 setInputOrigin:v13];
  v29 = [v14 runSiriKitExecutorCommandWithContext:v28 payload:v25];
  v30 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v31 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v32 = String._bridgeToObjectiveC()();
  [v31 setBundleId:v32];

  [v30 setRequestedApp:v31];
  [v29 setAppSelectionState:v30];

  v33 = [v14 wrapCommandInStartLocalRequest:v29];
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(a1, a2, v39);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = OUTLINED_FUNCTION_64(v34);
  *(v35 + 16) = xmmword_216010;
  *(v35 + 32) = v19;
  v36 = v19;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v35, v39, &selRef_setConfirmCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(a3, a4, v39);
  v37 = OUTLINED_FUNCTION_64(v34);
  *(v37 + 16) = xmmword_216010;
  *(v37 + 32) = v33;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v37, v39, &selRef_setDenyCommands_);

  return v39;
}

Swift::Bool __swiftcall WorkflowSnippetProvider.shouldShowSnippet(intent:)(INIntent intent)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v4 = __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.voiceCommands);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  outlined init with copy of Logger?(v8, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    outlined destroy of String?(v6, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_85();
      v26 = swift_slowAlloc();
      *v14 = 136315650;
      v15 = OUTLINED_FUNCTION_38_10("/Library/Caches/com.apple.xbs/Sources/SiriLinkFlow/SiriLinkFlowPlugin/ShortcutRunner/snippets/WorkflowSnippetProvider.swift");
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);
      OUTLINED_FUNCTION_18_12();
      *(v14 + 4) = v1;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 161;
      *(v14 + 22) = 2080;
      *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x80000000002331B0, &v26);
      _os_log_impl(&dword_0, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0(v14);
    }

    (*(v11 + 8))(v6, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_28_10();
  result = OUTLINED_FUNCTION_11_19(v17, v18, v19, 69, v20, v21, v22, v23, 161, 0);
  __break(1u);
  return result;
}

uint64_t WorkflowSnippetProvider.buildConfirmationButtons(buttonLabels:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5);
}

uint64_t WorkflowSnippetProvider.buildConfirmationButtons(buttonLabels:appBundleId:)()
{
  if (*(*(v0 + 16) + 16) == 2)
  {
    OUTLINED_FUNCTION_18_4();
    v2 = *(v1 + 152);

    v3 = OUTLINED_FUNCTION_56_1();
    v4 = v2(v3);
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_6_6();

  return v5(v4);
}

uint64_t WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  OUTLINED_FUNCTION_18_4();
  v16 = v5 + 120;
  v17 = *(v5 + 120) + **(v5 + 120);
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  OUTLINED_FUNCTION_82_2();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = xmmword_216840;
  v3 = [v1 okButton];
  v4 = [v3 title];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v8 = [v1 cancelButton];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 title];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = v0[3];
  v14 = v0[7];
  *(v2 + 48) = v9;
  *(v2 + 56) = v12;
  v0[10] = v13;
  v25 = (*v14 + 168);
  v26 = *v25 + **v25;
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  OUTLINED_FUNCTION_82_2();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  [v2 setConfirmationOptions:v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_64(v3);
  *(v4 + 16) = xmmword_216010;
  *(v4 + 32) = v2;

  OUTLINED_FUNCTION_6_6();

  return v5(v4);
}

uint64_t WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[5];
  v2 = [v1 interaction];
  v3 = [v2 intent];
  v0[12] = v3;

  v4 = [v1 interaction];
  v5 = [v4 intentResponse];
  v0[13] = v5;

  OUTLINED_FUNCTION_18_4();
  v11 = (*(v6 + 136) + **(v6 + 136));
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v8 = v0[6];
  v9 = v0[7];

  return v11(v3, v5, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    v3 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 128) = v3;
    type metadata accessor for CATButtonLabelTemplating();
    inited = swift_initStackObject();
    *(v0 + 136) = inited;
    *(inited + 16) = v3;
    v5 = [v1 verb];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 144) = v8;
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);

    return CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(v2 + 16, v6, v8);
  }

  else
  {
    v11 = *(v0 + 96);

    OUTLINED_FUNCTION_6_6();

    return v12(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;
  *(v3 + 160) = v2;

  OUTLINED_FUNCTION_18_4();
  v17 = v6 + 168;
  v18 = *(v6 + 168) + **(v6 + 168);
  v7 = swift_task_alloc();
  *(v3 + 168) = v7;
  *v7 = v5;
  v7[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  OUTLINED_FUNCTION_82_2();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 176) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[22];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  [v2 setConfirmationOptions:v1];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_64(v5);
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v2;

  OUTLINED_FUNCTION_6_6();

  return v7(v6);
}

uint64_t WorkflowSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2);
}

void outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLaunchId:v4];
}

void outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setConfirmText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setDenyText:v4];
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return outlined init with copy of Logger?(v1, v2);
}

void OUTLINED_FUNCTION_10_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_16(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_13()
{
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t a1)
{

  return StaticString.description.getter();
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional __swiftcall RunVoiceCommandCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t RunVoiceCommandCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
    case 6:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
    case 10:
    case 13:
      result = 0xD000000000000024;
      break;
    case 7:
      result = 0xD000000000000029;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 11:
    case 12:
      result = 0xD000000000000022;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.confirmSlotValue(device:slotName:slotValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3(v3);
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = v0[7];
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
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

  v12 = OUTLINED_FUNCTION_47_6();
  outlined init with copy of SpeakableString?(v12, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = RunVoiceCommandCATsSimple.confirmSlotValue(device:slotName:slotValue:);
  OUTLINED_FUNCTION_43_7(32);
  OUTLINED_FUNCTION_87();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22);
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
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 27503;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ConfirmSlotValueDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ConfirmSlotValueDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3(v3);
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = v0[7];
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
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

  v12 = OUTLINED_FUNCTION_47_6();
  outlined init with copy of SpeakableString?(v12, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  v0[9] = v14;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  v14[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(32);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
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
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.disambiguateSlotValue(device:slotName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_32_12(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = v0[5];
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_30_3(v12);
  OUTLINED_FUNCTION_43_7(37);
  OUTLINED_FUNCTION_87();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

BOOL RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.disambiguateSlotValueAsLabels(device:slotName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
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

  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_2_34(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v10);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v13);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v14;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(37);
  OUTLINED_FUNCTION_87();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_64_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_34_11(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_26_3();
  v2[16] = 0xD000000000000010;
  v2[17] = v12;
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 72) = v15;
  *v15 = v16;
  v15[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  OUTLINED_FUNCTION_87();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C70784568746977;
  }

  else
  {
    return 0x6E616C7078456F6ELL;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeCustomErrorAsLabels(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_64_3(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_34_11(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_26_3();
  v2[16] = 0xD000000000000010;
  v2[17] = v12;
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  *(v1 + 72) = v15;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v15 = v16;
  v15[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodePreflightRequired(localizedAppName:)()
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_87_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_48_1(v4);
  v2[5] = v5;
  *(v5 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_26_3();
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v8) == 1)
  {
    outlined destroy of String?(v2[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v2[6] = v10;
  *v10 = v11;
  v10[1] = RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:);
  OUTLINED_FUNCTION_87();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

BOOL RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodePreflightRequiredAsLabels(localizedAppName:)()
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_87_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_48_1(v4);
  v2[5] = v5;
  *(v5 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_26_3();
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v8) == 1)
  {
    outlined destroy of String?(v2[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v10 = swift_task_alloc();
  v2[6] = v10;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v10 = v11;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_32_12(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_216840);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_46_10(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_58_4(v23);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656E6F68506E6FLL;
  }

  else
  {
    return 0x65446D6F74737563;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeUnsupportedOnCarPlayDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeUnsupportedOnCarPlayDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlayAsLabels(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlayAsLabels(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_42_2(v14);
  v16 = OUTLINED_FUNCTION_32_12(v15);
  OUTLINED_FUNCTION_1_3(v16, xmmword_216840);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v17);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v19);
  if (v20)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = v22;
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v23);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v24;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupported(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupported(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_32_12(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_216840);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_46_10(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_58_4(v23);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.rawValue.getter(char a1)
{
  result = 0x7070416E69;
  switch(a1)
  {
    case 1:
      result = 0x7375437070416E69;
      break;
    case 2:
      result = 0x7070416E65706FLL;
      break;
    case 3:
      result = 0x437070416E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_42_2(v14);
  v16 = OUTLINED_FUNCTION_32_12(v15);
  OUTLINED_FUNCTION_1_3(v16, xmmword_216840);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v17);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v19);
  if (v20)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = v22;
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v23);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v24;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_78_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[8] = OUTLINED_FUNCTION_27();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_76_4(v13);
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v14);
  v15 = type metadata accessor for SpeakableString();
  v16 = OUTLINED_FUNCTION_24_2(v15);
  v17 = *(v10 + 88);
  if (v16 == 1)
  {

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_40_8();
  outlined init with copy of SpeakableString?(v19, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = OUTLINED_FUNCTION_16_7();
  v21 = *(v10 + 80);
  if (v20 == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 192));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_39_12();
  outlined init with copy of SpeakableString?(v23, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  v25 = *(v10 + 64);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v26;
  *(v12 + 280) = v27;
  outlined init with copy of SpeakableString?(v28, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v29();
  }

  OUTLINED_FUNCTION_68_5(*(v10 + 121));
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v42 = v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 104) = v31;
  *v31 = v32;
  v31[1] = RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v1;
  }
}

uint64_t RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x6E496B63656863;
      break;
    case 2:
      result = 0x657461657263;
      break;
    case 3:
      result = 0x6441657461657263;
      break;
    case 4:
      result = 0x7543657461657263;
      break;
    case 5:
    case 6:
    case 7:
      result = 0x64616F6C6E776F64;
      break;
    case 8:
      result = 0x6B6361626C6C6166;
      break;
    case 9:
      result = 0x726564726FLL;
      break;
    case 10:
      result = 0x6F6F42726564726FLL;
      break;
    case 11:
      result = 0x797542726564726FLL;
      break;
    case 12:
      v3 = 0x43726564726FLL;
      goto LABEL_19;
    case 13:
      result = 0x796150726564726FLL;
      break;
    case 14:
      result = 0x6964654D79616C70;
      break;
    case 15:
      result = 0x74736575716572;
      break;
    case 16:
      result = 7628147;
      break;
    case 17:
      result = 0x6572616873;
      break;
    case 18:
      v3 = 0x436572616873;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7375000000000000;
      break;
    case 19:
      result = 0x736F506572616873;
      break;
    case 20:
      result = 0x6E65536572616873;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x776F6C666B726F77;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_78_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[8] = OUTLINED_FUNCTION_27();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_76_4(v13);
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v14);
  v15 = type metadata accessor for SpeakableString();
  v16 = OUTLINED_FUNCTION_24_2(v15);
  v17 = *(v10 + 88);
  if (v16 == 1)
  {

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_40_8();
  outlined init with copy of SpeakableString?(v19, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = OUTLINED_FUNCTION_16_7();
  v21 = *(v10 + 80);
  if (v20 == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 192));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_39_12();
  outlined init with copy of SpeakableString?(v23, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  v25 = *(v10 + 64);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v26;
  *(v12 + 280) = v27;
  outlined init with copy of SpeakableString?(v28, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v29();
  }

  OUTLINED_FUNCTION_68_5(*(v10 + 121));
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v42 = v30;
  v31 = swift_task_alloc();
  *(v10 + 104) = v31;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v31 = v32;
  v31[1] = RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDone(device:localizedAppName:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDone(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_69_3(v12);
  v14 = OUTLINED_FUNCTION_64_3(v13);
  OUTLINED_FUNCTION_1_3(v14, xmmword_218630);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v10[7] = 0;
    v10[8] = 0;
  }

  OUTLINED_FUNCTION_49_5();
  v15 = v9[7];
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v18);
  if (v19)
  {

    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_34_2();
  v10[16] = v21;
  v10[17] = v22;
  outlined init with copy of SpeakableString?(v23, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v19)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v37 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v26;
  *v26 = v27;
  v26[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

BOOL RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDoneAsLabels(device:localizedAppName:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v5 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v5);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDoneAsLabels(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_69_3(v12);
  v14 = OUTLINED_FUNCTION_64_3(v13);
  OUTLINED_FUNCTION_1_3(v14, xmmword_218630);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v10[7] = 0;
    v10[8] = 0;
  }

  OUTLINED_FUNCTION_49_5();
  v15 = v9[7];
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v18);
  if (v19)
  {

    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_34_2();
  v10[16] = v21;
  v10[17] = v22;
  outlined init with copy of SpeakableString?(v23, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v19)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v37 = v25;
  v26 = swift_task_alloc();
  v9[9] = v26;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v26 = v27;
  v26[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v33(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openApp(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.openApp(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_32_12(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_216840);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_46_10(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_58_4(v23);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

BOOL RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppAsLabels(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.openAppAsLabels(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_42_2(v14);
  v16 = OUTLINED_FUNCTION_32_12(v15);
  OUTLINED_FUNCTION_1_3(v16, xmmword_216840);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v17);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v19);
  if (v20)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = v22;
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v23);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v24;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailed(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailed(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_23_8(29);
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
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

BOOL RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v7 = v8;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(29);
  OUTLINED_FUNCTION_87();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
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

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlay(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlay(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_23_8(36);
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlayAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlayAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v7 = v8;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(36);
  OUTLINED_FUNCTION_87();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatch(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatch(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_32_12(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_216840);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_46_10(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_58_4(v23);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x65446D6F74737563;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::OpenAppFailedWatchDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::OpenAppFailedWatchDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatchAsLabels(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatchAsLabels(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_42_2(v14);
  v16 = OUTLINED_FUNCTION_32_12(v15);
  OUTLINED_FUNCTION_1_3(v16, xmmword_216840);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_5_4(v17);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v19);
  if (v20)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = v22;
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v23);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v24;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValue(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_23_8(34);
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValueAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValueAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_66_4(v4);
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
  OUTLINED_FUNCTION_3_2();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v7 = v8;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(34);
  OUTLINED_FUNCTION_87();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.unsupportedSlotValue(device:slotName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_32_12(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = v0[5];
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_30_3(v12);
  OUTLINED_FUNCTION_43_7(36);
  OUTLINED_FUNCTION_87();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

BOOL RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.unsupportedSlotValueAsLabels(device:slotName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
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

  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_2_34(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v10);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v13);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v14;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(36);
  OUTLINED_FUNCTION_87();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.yesAndCancel(device:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
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

  OUTLINED_FUNCTION_38_11(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  *(v1 + 56) = v12;
  *v12 = v1;
  OUTLINED_FUNCTION_30_3(v12);
  OUTLINED_FUNCTION_43_7(28);
  OUTLINED_FUNCTION_87();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunVoiceCommandCATsSimple.YesAndCancelDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 7562617;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.YesAndCancelDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.yesAndCancelAsLabels(device:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_42_2(v5);
  v7 = OUTLINED_FUNCTION_32_12(v6);
  v8 = OUTLINED_FUNCTION_1_3(v7, xmmword_216840);
  if (v4)
  {
    v8 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_38_11(v8);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v10);
  if (v11)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v13);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v14;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(28);
  OUTLINED_FUNCTION_87();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunVoiceCommandCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t RunVoiceCommandCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  __chkstk_darwin(v13);
  outlined init with copy of SpeakableString?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t RunVoiceCommandCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v2;
}

uint64_t RunVoiceCommandCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for RunVoiceCommandCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunVoiceCommandCATsSimple;
  if (!type metadata singleton initialization cache for RunVoiceCommandCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunVoiceCommandCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x107704);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107860);
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

uint64_t getEnumTagSinglePayload for RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x1079ECLL);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107B30);
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

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x107C14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.YesAndCancelDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107D18);
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

uint64_t OUTLINED_FUNCTION_2_34(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x656D614E746F6C73;
  v2[11] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "customDialog");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x6556746E65746E69;
  v2[11] = 0xEA00000000006272;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_12()
{
  result = *(v0 + 40);
  strcpy((v1 + 224), "intentCategory");
  *(v1 + 239) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8()
{
  result = *(v0 + 32);
  strcpy((v1 + 176), "customResponse");
  *(v1 + 191) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_6()
{
  result = *(v0 + 32);
  *(v1 + 128) = 0x756C6156746F6C73;
  *(v1 + 136) = 0xE900000000000065;
  return result;
}

void OUTLINED_FUNCTION_68_5(char a1@<W8>)
{
  *(v3 + 320) = v4 + 8;
  *(v3 + 328) = (v1 - 32) | 0x8000000000000000;
  *(v3 + 360) = v2;
  *(v3 + 336) = a1;
}

void OUTLINED_FUNCTION_75_3()
{
  *(v3 + 96) = v0;
  *(v3 + 120) = v2;
  *(v3 + 128) = v4;
  *(v3 + 136) = (v1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t result)
{
  v2[9] = result;
  v2[10] = v3 | 6;
  v2[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 121) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 120) = a2;
  *(v8 + 16) = result;
  *(v8 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_83_1()
{
}

uint64_t AppShortcutGeneralizedInvocation.action.getter()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v12 = (*(v3 + 32) + **(v3 + 32));
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = WorkflowDialogTemplating.makeFinalDonePattern();

  return v12(v4, v5, v6, v7, v8, v9, v2, v3);
}

uint64_t AppShortcutGeneralizedInvocation.init(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[5] = a1;
  a9[6] = a2;
  a9[3] = a5;
  a9[4] = a6;
  a9[1] = a3;
  a9[2] = a4;
  *a9 = a8;
  return outlined init with take of AceServiceInvokerAsync(a7, (a9 + 7));
}

uint64_t AppShortcutGeneralizedInvocation.appShortcutIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t AppShortcutGeneralizedInvocation.ExtractionError.description.getter(uint64_t a1, unint64_t a2, char a3)
{
  result = 0x6C616E7265746E49;
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_4_36();
      _StringGuts.grow(_:)(28);

      v6 = 0xD00000000000001ALL;
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_4_36();
      _StringGuts.grow(_:)(59);
      v9._object = 0x80000000002332D0;
      v9._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 0xD000000000000026;
      v11._object = 0x80000000002332F0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v7 = 41;
      v8 = 0xE100000000000000;
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_4_36();
      _StringGuts.grow(_:)(37);

      v6 = 0xD000000000000023;
LABEL_4:
      v13 = v6;
      v7 = a1;
      v8 = a2;
LABEL_6:
      String.append(_:)(*&v7);
      return v13;
  }
}

uint64_t AppShortcutGeneralizedInvocation.autoShortcuts.getter()
{
  *(v1 + 24) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  v1 = [**(v0 + 24) languageCode];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 32) = v6;
    v7 = v3[10];
    v8 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
    v9 = v3[5];
    v10 = v3[6];
    v18 = (*(v8 + 8) + **(v8 + 8));
    v11 = swift_task_alloc();
    *(v0 + 40) = v11;
    *v11 = v0;
    v11[1] = AppShortcutGeneralizedInvocation.autoShortcuts.getter;

    return v18(v9, v10, v4, v6, v7, v8);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#AppShortcutGeneralizedInvocation cannot get Siri language", v16, 2u);
      OUTLINED_FUNCTION_15_0(v16);
    }

    OUTLINED_FUNCTION_6_6();

    return v17(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v5 + 48) = v4;
  *(v5 + 56) = v0;

  if (v0)
  {
    v6 = AppShortcutGeneralizedInvocation.autoShortcuts.getter;
  }

  else
  {
    v6 = AppShortcutGeneralizedInvocation.autoShortcuts.getter;
  }

  return _swift_task_switch(v6);
}

{
  v1 = v0[7];
  v2 = v0[3];
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = specialized Array.count.getter(v0[6]);
  v6 = static AppShortcutGeneralizedInvocation.extractRank(from:maxRank:)(v4, v3, v5);
  if (v1)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.voiceCommands);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      OUTLINED_FUNCTION_15_0(v11);
      OUTLINED_FUNCTION_15_0(v10);
    }

    goto LABEL_15;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v14 = v0[6];
  if (!result || v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v0[6]);
    v14 = result;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (v6 >= v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15 - 1;
  v17 = *(&stru_20.cmd + 8 * v6 + (v14 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 40, v15 - 1 - v6, ((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 32));
  *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) = v16;
  v0[2] = v14;
  specialized Array._checkIndex(_:)(0, v14);
  result = specialized Array.count.getter(v14);
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = specialized Array.count.getter(v14);
  v19 = __OFADD__(v18, 1);
  result = v18 + 1;
  if (v19)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v17);
LABEL_15:
  OUTLINED_FUNCTION_6_6();

  return v20();
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v3, 0xCu);
    outlined destroy of NSObject?(v4);
    OUTLINED_FUNCTION_15_0(v4);
    OUTLINED_FUNCTION_15_0(v3);
  }

  OUTLINED_FUNCTION_6_6();

  return v6(_swiftEmptyArrayStorage);
}

uint64_t static AppShortcutGeneralizedInvocation.extractRank(from:maxRank:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  if (*(v8 + 16) < 2uLL)
  {

    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = 0;
LABEL_9:

LABEL_15:
    swift_willThrow();
    return v4;
  }

  v10 = specialized BidirectionalCollection.last.getter(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (!v16)
  {
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    v22 = 3;
LABEL_14:
    *(v21 + 16) = v22;
    goto LABEL_15;
  }

  if (!((v10 ^ v12) >> 14))
  {

LABEL_8:
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 1;
    goto LABEL_9;
  }

  v24 = a3;
  v17 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v10, v12, v14, v16, 10);
  if ((v18 & 0x100) != 0)
  {
    v17 = specialized _parseInteger<A, B>(ascii:radix:)(v10, v12, v14, v16, 10);
  }

  v4 = v17;
  v19 = v18;

  if (v19)
  {
    goto LABEL_8;
  }

  if (v4 < 0 || v4 >= v24)
  {
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v21 = v4;
    *(v21 + 8) = v24;
    v22 = 2;
    goto LABEL_14;
  }

  return v4;
}

uint64_t protocol witness for AppShortcutInvoking.action.getter in conformance AppShortcutGeneralizedInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation;

  return AppShortcutGeneralizedInvocation.action.getter();
}

uint64_t protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AppShortcutGeneralizedInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return AppShortcutGeneralizedInvocation.autoShortcuts.getter();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t getEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationV15ExtractionErrorO(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError()
{
  result = lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError;
  if (!lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError);
  }

  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.subscript.getter(VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit.hash(into:), 0, a1, a2);
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t LinkRCHFlow.exitValue.getter()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_85();
    v29[0] = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_62_5();
    swift_beginAccess();
    outlined init with copy of LinkRCHFlow.State(v1 + 48, &v22);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v29);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_42_8();
    _os_log_impl(v10, v11, v12, v13, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_15_0(v5);
  }

  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  outlined init with copy of LinkRCHFlow.State(v1 + 48, &v22);
  result = v22;
  switch(v28)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 11:
      outlined destroy of LinkRCHFlow.State(&v22);
      goto LABEL_10;
    case 5:
    case 7:

      v15 = v24;
      goto LABEL_9;
    case 6:
    case 8:
    case 9:

      v15 = &v23;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      goto LABEL_10;
    case 10:
    case 12:
    case 13:
      return result;
    case 14:
      v19 = v24[1] | v24[0] | v23;
      if (!(v26 | v27 | v22 | v25 | v19) || v22 == &dword_0 + 1 && !(v26 | v27 | v25 | v19))
      {
        goto LABEL_10;
      }

      result = 0;
      break;
    default:
LABEL_10:
      v22 = 0;
      v23 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v20 = v22;
      v21 = v23;
      v16._object = 0x8000000000233370;
      v16._countAndFlagsBits = 0xD00000000000002ELL;
      String.append(_:)(v16);
      outlined init with copy of LinkRCHFlow.State(v1 + 48, &v22);
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of LinkRCHFlow.State(&v22);
      v17 = lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
      result = OUTLINED_FUNCTION_16_6(&type metadata for LinkRCHFlowError, v17);
      *v18 = v20;
      v18[1] = v21;
      break;
  }

  return result;
}

uint64_t LinkRCHFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  return outlined init with copy of LinkRCHFlow.State(v1 + 48, a1);
}

void LinkRCHFlow.__allocating_init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_40_0();
  v49 = v28;
  v50 = v29;
  v48 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v47 = v37;
  v40 = *(v38 + 24);
  v39 = *(v38 + 32);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v38, v40);
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_3();
  v44 = v43 - v42;
  (*(v45 + 16))(v43 - v42);
  a27(v36, v34, v32, v47, v48, v44, v49, v50, a21, a22, a23, a24, a25, a26, v27, v40, v39);
  v46 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  OUTLINED_FUNCTION_42();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(*a1);
  *a2 = result;
  return result;
}

uint64_t LinkRCHFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_24_13();
  lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(v2, v3, v4);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t LinkRCHFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[95] = v0;
  v1[94] = v2;
  v1[96] = *v0;
  type metadata accessor for DurationUtil(0);
  v1[97] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[98] = swift_task_alloc();
  v3 = type metadata accessor for ResponseMode();
  v1[99] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[100] = v4;
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  v161 = v0;
  v1 = *(v0 + 760);
  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  v2 = outlined init with copy of LinkRCHFlow.State(v1 + 48, v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  switch(*(v0 + 72))
  {
    case 1:
      v54 = *(v0 + 760);
      outlined init with take of AceServiceInvokerAsync((v0 + 16), v0 + 512);
      __swift_project_boxed_opaque_existential_1((v54 + 208), *(v54 + 232));
      OUTLINED_FUNCTION_20_1();
      if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
      {
        v55 = *(v0 + 808);
        v56 = *(v0 + 800);
        v57 = *(v0 + 792);
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.responseMode.getter();

        static ResponseMode.voiceOnly.getter();
        OUTLINED_FUNCTION_20_1();
        v58 = static ResponseMode.== infix(_:_:)();
        v59 = *(v56 + 8);
        v59(v55, v57);
        if (v58)
        {
          v60 = 1;
        }

        else
        {
          static ResponseMode.voiceForward.getter();
          v60 = static ResponseMode.== infix(_:_:)();
          v118 = OUTLINED_FUNCTION_20_1();
          (v59)(v118);
        }

        v119 = *(*(v0 + 760) + 24);
        v120 = [v119 supportedModes];
        if (![v119 authenticationPolicy] && ((LNActionModes.supportsMultiIntentMode.getter(v120) & v60 & 1) != 0 || LNActionModes.supportsBackgroundOnly.getter(v120)))
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v127 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v127, static Logger.voiceCommands);
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v129))
          {
            v130 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_44_2(v130);
            OUTLINED_FUNCTION_42_8();
            OUTLINED_FUNCTION_81_3(v131, v132, v133, v134);
            OUTLINED_FUNCTION_19_0();
          }

          outlined init with copy of DeviceState(v0 + 512, v0 + 144);
          *(v0 + 200) = 3;
          OUTLINED_FUNCTION_57_0(v1 + 48, v0 + 648);
          outlined assign with take of LinkRCHFlow.State(v0 + 144, v1 + 48);
          swift_endAccess();
          static ExecuteResponse.ongoing(requireInput:)();
        }

        else
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v121 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v121, static Logger.voiceCommands);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_44_2(v124);
            OUTLINED_FUNCTION_81_3(&dword_0, v122, v123, "#LinkRCHFlow device is locked and the action requires authentication or open app.");
            OUTLINED_FUNCTION_19_0();
          }

          LinkRCHFlow.requestDeviceUnlock(_:)(v0 + 512);
        }

        v135 = OUTLINED_FUNCTION_20_1();
        (v59)(v135);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v76 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v76, static Logger.voiceCommands);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_38_4(v78))
        {
          v79 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_44_2(v79);
          OUTLINED_FUNCTION_42_8();
          OUTLINED_FUNCTION_81_3(v80, v81, v82, v83);
          OUTLINED_FUNCTION_19_0();
        }

        outlined init with copy of DeviceState(v0 + 512, v0 + 80);
        *(v0 + 136) = 3;
        OUTLINED_FUNCTION_57_0(v1 + 48, v0 + 624);
        outlined assign with take of LinkRCHFlow.State(v0 + 80, v1 + 48);
        swift_endAccess();
        static ExecuteResponse.ongoing(requireInput:)();
      }

      v35 = (v0 + 512);
      goto LABEL_70;
    case 2:
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_18;
    case 3:
      v39 = *(v0 + 784);
      v40 = *(v0 + 776);
      outlined init with take of AceServiceInvokerAsync((v0 + 16), v0 + 472);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
      UUID.init()();
      v43 = SISchemaUUID.__allocating_init(nsuuid:)(v39, v41, v42);
      *(v0 + 848) = v43;
      static VoiceCmdsInstrumentations.emitWaitForRequestStarted(type:contextId:)(1, v43, v44, v45, v46, v47, v48, v49, v138, v139, v141, log, v145, v146, v148, v150, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
      DurationUtil.init(logMessage:)(0xD000000000000041, 0x80000000002333A0, v40);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 472, *(v0 + 496));
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 856) = v50;
      *v50 = v51;
      v50[1] = LinkRCHFlow.execute();
      OUTLINED_FUNCTION_77_3();

      return dispatch thunk of AsyncIteratorProtocol.next()(v52);
    case 4:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v28))
      {
        v29 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v29);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        OUTLINED_FUNCTION_17();
      }

      static ExecuteResponse.ongoing(requireInput:)();
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_71;
    case 5:
      outlined init with take of AceServiceInvokerAsync((v0 + 32), v0 + 432);
      LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)();

      v35 = (v0 + 432);
      goto LABEL_70;
    case 6:
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 392);
      LinkRCHFlow.createNeedsConfirmationFlow(request:iterator:)();

      v35 = (v0 + 392);
      goto LABEL_70;
    case 7:
      outlined init with take of AceServiceInvokerAsync((v0 + 32), v0 + 352);
      LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)();

      v35 = (v0 + 352);
      goto LABEL_70;
    case 8:
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 312);
      LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)();

      v35 = (v0 + 312);
      goto LABEL_70;
    case 9:
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 272);
      LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)();

      v35 = (v0 + 272);
LABEL_70:
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      goto LABEL_71;
    case 0xA:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v69 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v69, static Logger.voiceCommands);
      swift_errorRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_48();
        v152 = OUTLINED_FUNCTION_85();
        *v72 = 136315138;
        swift_getErrorValue();
        v73 = Error.localizedDescription.getter();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v152);

        *(v72 + 4) = v75;
        _os_log_impl(&dword_0, v70, v71, "Exiting due to previously handled error %s", v72, 0xCu);
        OUTLINED_FUNCTION_28_11();
        OUTLINED_FUNCTION_15_0(v72);
      }

      static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(v11);
      static ExecuteResponse.complete()();

      goto LABEL_71;
    case 0xB:
      v23 = *(v0 + 760);
      static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(*(v0 + 16));
      OUTLINED_FUNCTION_18_4();
      *(v0 + 720) = (*(v24 + 216))(v11);
      OUTLINED_FUNCTION_26_1();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v11;

      swift_errorRetain();
      type metadata accessor for AnyFlow();
      static ExecuteResponse.complete<A>(next:childCompletion:)();

      goto LABEL_71;
    case 0xC:
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_35;
    case 0xD:
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v61 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v61, static Logger.voiceCommands);
      v37 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v62))
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    case 0xE:
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      v22 = *(v0 + 32);
      if (v10 | v11 | v18 | v19 | v21 | v20 | v22)
      {
        if (v11 == 1 && !(v18 | v10 | v19 | v21 | v20 | v22))
        {
LABEL_18:
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v36 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_50(v38))
          {
LABEL_33:
            v63 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_45(v63);
            OUTLINED_FUNCTION_9_8();
            _os_log_impl(v64, v65, v66, v67, v68, 2u);
            OUTLINED_FUNCTION_17();
          }

LABEL_34:
        }

LABEL_35:
        static ExecuteResponse.complete()();
      }

      else
      {
        v84 = [*(*(v0 + 760) + 24) supportedModes];
        OUTLINED_FUNCTION_24_13();
        lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(v85, v86, v87);
        SiriEnvironmentLocating<>.siriEnvironment.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.responseMode.getter();

        v147 = v84;
        v151 = ResponseMode.toLinkInteractionMode(supportedModes:)(v84);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v88 = *(v0 + 832);
        v89 = *(v0 + 824);
        v90 = *(v0 + 800);
        v91 = *(v0 + 792);
        v92 = type metadata accessor for Logger();
        __swift_project_value_buffer(v92, static Logger.voiceCommands);
        (*(v90 + 16))(v89, v88, v91);
        swift_retain_n();
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        v95 = OUTLINED_FUNCTION_50(v94);
        v96 = *(v0 + 824);
        v97 = *(v0 + 800);
        v149 = *(v0 + 792);
        v98 = *(v0 + 760);
        if (v95)
        {
          v140 = *(v0 + 824);
          v99 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          *v99 = 136316162;
          loga = v93;
          v100 = *(v98 + 16);
          v101 = [v100 identifier];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v142 = v94;
          v104 = v103;

          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v152);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2080;
          v106 = LNActionModes.asString.getter(v147);
          v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v152);

          *(v99 + 14) = v108;
          *(v99 + 22) = 1024;
          LODWORD(v104) = [v100 openAppWhenRun];

          *(v99 + 24) = v104;

          *(v99 + 28) = 2080;
          lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, 255, &type metadata accessor for ResponseMode);
          dispatch thunk of CustomStringConvertible.description.getter();
          v109 = *(v97 + 8);
          v109(v140, v149);
          v110 = OUTLINED_FUNCTION_20_1();
          v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v112);

          *(v99 + 30) = v113;
          *(v99 + 38) = 2080;
          v114 = v151;
          v115 = LNInteractionMode.asString.getter(v151);
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v152);

          *(v99 + 40) = v117;
          _os_log_impl(&dword_0, loga, v142, "#LinkRCHFlow execute .initializing - action %s\nsupportedModes: %s\nopenAppWhenRun=%{BOOL}d\nresponseMode=%s\ninteractionMode=%s", v99, 0x30u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_15_0(v99);
        }

        else
        {

          v109 = *(v97 + 8);
          v109(v96, v149);
          v114 = v151;
        }

        v125 = *(v0 + 832);
        v126 = *(v0 + 792);
        *(v0 + 208) = v114;
        *(v0 + 264) = 0;
        OUTLINED_FUNCTION_57_0(v1 + 48, v0 + 672);
        outlined assign with take of LinkRCHFlow.State(v0 + 208, v1 + 48);
        swift_endAccess();
        static ExecuteResponse.ongoing(requireInput:)();
        v109(v125, v126);
      }

LABEL_71:
      OUTLINED_FUNCTION_8_23();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_77_3();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      static InstrumentationUtils.emitActionExecutionStartedInstrumentation()(v2, v3, v4, v5, v6, v7, v8, v9, v138, v139, v141, log, v145, v146, v148, v150, v152, v153, v154, v155, v156, v157);
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 840) = v12;
      *v12 = v13;
      v12[1] = LinkRCHFlow.execute();
      OUTLINED_FUNCTION_77_3();

      return LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)(v14, v15);
  }
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
  static ExecuteResponse.ongoing(requireInput:)();
  OUTLINED_FUNCTION_8_23();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 864) = v0;

  if (v0)
  {
    v5 = LinkRCHFlow.execute();
  }

  else
  {
    v5 = LinkRCHFlow.execute();
  }

  return _swift_task_switch(v5);
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
  outlined consume of LinkConnectionEvent?(*(v0 + 872), *(v0 + 880), *(v0 + 73));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  OUTLINED_FUNCTION_8_23();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy18SiriLinkFlowPlugin0B15ConnectionEventOs5Error_pGMd, &_sScsy18SiriLinkFlowPlugin0B15ConnectionEventOs5Error_pGMR);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(LinkRCHFlow.initializeLinkConnection(connection:interactionMode:));
}

uint64_t LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)()
{
  v45 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  outlined init with copy of DeviceState(v1, (v0 + 10));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [*(v5 + 16) identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v44);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    outlined init with copy of DeviceState((v0 + 10), (v0 + 15));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0B10Connection_pMd, &_s18SiriLinkFlowPlugin0B10Connection_pMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v44);

    *(v6 + 14) = v15;
    OUTLINED_FUNCTION_42_8();
    _os_log_impl(v16, v17, v18, v19, v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_15_0(v6);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v20 = v0[32];
  v21 = v0[24];
  v22 = [objc_allocWithZone(LNActionExecutorOptions) init];
  v0[33] = v22;
  outlined bridged method (mbnn) of @objc LNActionExecutorOptions.clientLabel.setter(1769105747, 0xE400000000000000, v22);
  [v22 setInteractionMode:v21];
  [v22 setSource:3];
  static InstrumentationUtils.createFlowUUID()(v20);
  v23 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v23);
  v25 = v0[32];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0[32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(*(v23 - 8) + 8))(v25, v23);
    v26 = String._bridgeToObjectiveC()();
  }

  v27 = v0[25];
  v28 = OUTLINED_FUNCTION_73_4();
  [v28 v29];

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnvironment, LNEnvironment_ptr);
  __swift_project_boxed_opaque_existential_1((v27 + 208), *(v27 + 232));
  dispatch thunk of DeviceState.siriLocale.getter();
  v30 = Locale.identifier.getter();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_20_1();
  v34(v33);
  v36 = LNEnvironment.__allocating_init(localeIdentifier:)(v30, v32, v35);
  v37 = OUTLINED_FUNCTION_73_4();
  [v37 v38];

  v39 = [*(v27 + 24) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  OUTLINED_FUNCTION_71();
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[34] = v40;

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[35] = v41;
  *v41 = v42;
  v41[1] = LinkRCHFlow.initializeLinkConnection(connection:interactionMode:);

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v27 + 208, v27 + 128, v40);
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
  v1 = *(v0 + 264);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(*(v5 + 16), v1, v7, v8);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  *(v0 + 48) = lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<LinkConnectionEvent, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  AsyncThrowingStream.makeAsyncIterator()();

  (*(v3 + 8))(v2, v4);
  *(v0 + 72) = 1;
  OUTLINED_FUNCTION_57_0(v5 + 48, v0 + 160);
  outlined assign with take of LinkRCHFlow.State(v0 + 16, v5 + 48);
  swift_endAccess();

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t LinkRCHFlow.requestDeviceUnlock(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for CATOption();
  __chkstk_darwin(v5 - 8);
  outlined init with copy of DeviceState(v2 + 208, &v21);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = type metadata accessor for AppNameResolver();
  v12 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v13 = swift_allocObject();
  *(v13 + 136) = v11;
  *(v13 + 144) = &protocol witness table for AppNameResolver;
  *(v13 + 112) = v12;
  *(v13 + 56) = v6;
  outlined init with take of AceServiceInvokerAsync(&v21, v13 + 16);
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 80) = v7;
  *(v13 + 88) = v8;
  *(v13 + 96) = v9;
  *(v13 + 104) = v10;
  outlined init with copy of DeviceState(v3 + 208, &v21);
  type metadata accessor for ShortcutsUnlockDeviceStrategy();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  outlined init with take of AceServiceInvokerAsync(&v21, v14 + 24);
  v15 = *(v3 + 288);

  v16 = v15(v14);
  outlined init with copy of DeviceState(a1, &v21);
  v24 = 2;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v21, v3 + 48);
  swift_endAccess();
  outlined init with copy of SpeakableString?(v3 + 168, &v21, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  v17 = v22;
  if (v22)
  {
    v18 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    (*(v18 + 16))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    outlined destroy of SpeakableString?(&v21, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  }

  *&v21 = v16;
  type metadata accessor for GuardFlow();
  *&v21 = Flow.eraseToAnyValueFlow()();
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #2 in implicit closure #1 in LinkRCHFlow.requestDeviceUnlock(_:);
  *(v19 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  static ExecuteResponse.replan<A>(next:childCompletion:)();
}

uint64_t LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 33) = a4;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7);
}

uint64_t LinkRCHFlow.responseFrom(event:iterator:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    v6 = LinkRCHFlow.responseFrom(event:iterator:);
  }

  else
  {

    v6 = LinkRCHFlow.responseFrom(event:iterator:);
  }

  return _swift_task_switch(v6);
}

{
  v17 = v0;
  v2 = v0[5];
  v1 = v0[6];
  swift_bridgeObjectRetain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v16 = OUTLINED_FUNCTION_85();
    *v5 = 136315138;
    v0[7] = v2;
    v0[8] = v1;
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v16);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_0, v3, v4, "#LinkRCHFlow retrieved session id: %s", v5, 0xCu);
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_15_0(v5);
  }

  else
  {
  }

  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  OUTLINED_FUNCTION_18_4();
  (*(v12 + 200))();
  OUTLINED_FUNCTION_1_18();

  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  outlined copy of LinkConnectionEvent(v11, v10, 7);

  OUTLINED_FUNCTION_22_13();
  static ExecuteResponse.ongoing(next:childCompletion:)();

  OUTLINED_FUNCTION_6_0();

  return v14();
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v3);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_81_3(v4, v5, v6, v7);
    OUTLINED_FUNCTION_19_0();
  }

  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_62_5();
  v11();
  OUTLINED_FUNCTION_88_0();

  OUTLINED_FUNCTION_26_1();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  outlined copy of LinkConnectionEvent(v10, v9, 7);

  OUTLINED_FUNCTION_22_13();
  static ExecuteResponse.ongoing(next:childCompletion:)();

  OUTLINED_FUNCTION_6_0();

  return v13();
}