uint64_t AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 192);
  OUTLINED_FUNCTION_47((v15 + 16));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    [*(v14 + 168) setVisual:0];
    OUTLINED_FUNCTION_9_27(*(v14 + 232), *(v14 + 208));
    OUTLINED_FUNCTION_6_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v25 = *(v14 + 232);
    v27 = *(v14 + 208);
    v26 = *(v14 + 216);
    v28 = *(v14 + 184);
    v38 = *(v14 + 176);
    v39 = *(v14 + 224);
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    OUTLINED_FUNCTION_13_5();
    v29 = dispatch thunk of DeviceState.isWatch.getter();
    if (v29)
    {
      v30 = 0xD000000000000019;
    }

    else
    {
      v30 = 0xD000000000000013;
    }

    if (v29)
    {
      v31 = "CHFlowStrategy.swift";
    }

    else
    {
      v31 = "rCodeUnsupportedInCarPlay";
    }

    v32 = v31 | 0x8000000000000000;
    outlined init with copy of DeviceState(v15 + 16, v14 + 120);
    type metadata accessor for App();

    OUTLINED_FUNCTION_13_5();
    App.__allocating_init(appIdentifier:)();
    v33 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v14 + 120, 2);
    v35 = v34;

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 120));
    *(v14 + 16) = v30;
    *(v14 + 24) = v32;
    *(v14 + 32) = v33;
    *(v14 + 40) = v35;
    *(v14 + 48) = v27;
    *(v14 + 56) = v26;
    *(v14 + 64) = v39;
    *(v14 + 72) = v25;
    *(v14 + 80) = 0;
    *(v14 + 88) = v38;
    *(v14 + 96) = v28;
    *(v14 + 104) = xmmword_21CC10;
    v36 = swift_task_alloc();
    *(v14 + 248) = v36;
    *v36 = v14;
    v36[1] = AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:);
    OUTLINED_FUNCTION_6_1();

    return ActionConfirmationVisual.data.getter();
  }
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 528) = v9;
  *(v10 + 520) = a9;
  *(v10 + 504) = a7;
  *(v10 + 512) = a8;
  *(v10 + 488) = a5;
  *(v10 + 496) = a6;
  *(v10 + 472) = a3;
  *(v10 + 480) = a4;
  *(v10 + 81) = a2;
  *(v10 + 464) = a1;
  *(v10 + 536) = *v9;
  return OUTLINED_FUNCTION_11_30(AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 81) == 1)
  {
    v1 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v1);
    v2 = ResponseFactory.init()();
    *(v0 + 376) = v1;
    *(v0 + 384) = &protocol witness table for ResponseFactory;
    *(v0 + 352) = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 544) = v3;
    *v3 = v4;
    v3[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    OUTLINED_FUNCTION_87();

    return static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 552) = v7;
    *v7 = v8;
    v7[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);

    return AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with copy of SpeakableString?(v0 + 232, v0 + 312, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  if (*(v0 + 336))
  {
    v1 = *(v0 + 528);
    outlined init with take of AceServiceInvokerAsync((v0 + 312), v0 + 272);
    OUTLINED_FUNCTION_47((v1 + 56));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 560) = v2;
    *v2 = v3;
    v2[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    OUTLINED_FUNCTION_27_4();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v4, v5, v6);
  }

  else
  {
    outlined destroy of String?(v0 + 312, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v9))
    {
      v10 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v10);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_17();
    }

    v16 = OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6(v16, v0 + 392);
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 16);
    static ExecuteResponse.complete()();
    outlined destroy of String?(v0 + 232, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    OUTLINED_FUNCTION_6_0();

    return v17();
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
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[66];
  OUTLINED_FUNCTION_53_6(v1 + 288, (v0 + 55));
  memcpy(v0 + 20, (v1 + 288), 0x41uLL);
  *(v1 + 288) = 1;
  OUTLINED_FUNCTION_66_8((v1 + 296));
  *(v1 + 344) = 0;
  *(v1 + 352) = 0x80;
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v0 + 20));
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  outlined destroy of String?((v0 + 29), &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_26_22(&dword_0, v6, v0, "#AutoShortcutsSetEnablementFlow error publishing changeNotNeeded; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v7 = OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_53_6(v7, v1 + 416);
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_35_16();
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v1 + 88);
  static ExecuteResponse.complete()();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 272));
  outlined destroy of String?(v1 + 232, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 128) = v16;
  *(v0 + 136) = v17;
  *(v0 + 112) = v15;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  *(v0 + 256) = v7;
  *(v0 + 56) = v8;
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v9);
  *(v0 + 144) = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for OutputGenerationManifest();
  *(v0 + 152) = v10;
  OUTLINED_FUNCTION_5_0(v10);
  *(v0 + 160) = v11;
  *(v0 + 168) = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[15];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v5 = (*(*v1 + 176) + **(*v1 + 176));
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
  v3 = OUTLINED_FUNCTION_73(v0[10]);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 120);
  v2 = [*(v0 + 184) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v5 = (*(*v1 + 208) + **(*v1 + 208));
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);

  return v5();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 184);

  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);

  OUTLINED_FUNCTION_6_0();

  return v4();
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 192);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow making appEnabledOutput; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_78_4();
  v9(v8);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  if (!v3)
  {
  }

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 216);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow making appEnabledOutput; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_78_4();
  v9(v8);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  if (!v3)
  {
  }

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_47(*(v12 + 128));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v12 + 184);
    OUTLINED_FUNCTION_47(*(v12 + 136));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = OUTLINED_FUNCTION_64(v14);
    *(v12 + 240) = v15;
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v13;
    v16 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 248) = v17;
    *v17 = v18;
    v17[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v27 = *(v12 + 136);
    v28 = *(v12 + 112);
    v52 = *(v12 + 72);
    v53 = *(v12 + 104);
    v50 = *(v12 + 96);
    v51 = *(v12 + 64);
    v29 = *(v12 + 184);
    v30 = DialogExecutionResult.firstDialogFullPrint()();
    if (v30.value._object)
    {
      countAndFlagsBits = v30.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v30.value._object)
    {
      object = v30.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v33 = DialogExecutionResult.firstDialogFullPrint()();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    *(v12 + 40) = type metadata accessor for WorkflowDataModels(0);
    OUTLINED_FUNCTION_39_16();
    *(v12 + 48) = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(v34, 255, v35, &protocol conformance descriptor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    boxed_opaque_existential_1->value._countAndFlagsBits = v50;
    boxed_opaque_existential_1->value._object = &dword_0 + 3;
    boxed_opaque_existential_1[1].value._countAndFlagsBits = v51;
    boxed_opaque_existential_1[1].value._object = v52;
    boxed_opaque_existential_1[2].value._countAndFlagsBits = countAndFlagsBits;
    boxed_opaque_existential_1[2].value._object = object;
    boxed_opaque_existential_1[3].value._countAndFlagsBits = v53;
    boxed_opaque_existential_1[3].value._object = v28;
    boxed_opaque_existential_1[4] = v33;
    swift_storeEnumTagMultiPayload();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v38 = OUTLINED_FUNCTION_64(v37);
    *(v12 + 224) = v38;
    *(v38 + 16) = xmmword_216010;
    *(v38 + 32) = v29;

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 232) = v39;
    *v39 = v40;
    v39[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53);
  }
}

uint64_t AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 272) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  *(v1 + 88) = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  *(v1 + 96) = v7;
  OUTLINED_FUNCTION_5_0(v7);
  *(v1 + 104) = v8;
  *(v1 + 112) = OUTLINED_FUNCTION_27();
  *(v1 + 120) = swift_task_alloc();
  v9 = type metadata accessor for DialogPhase();
  *(v1 + 128) = v9;
  OUTLINED_FUNCTION_5_0(v9);
  *(v1 + 136) = v10;
  *(v1 + 144) = OUTLINED_FUNCTION_27();
  *(v1 + 152) = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 160) = v11;
  OUTLINED_FUNCTION_5_0(v11);
  *(v1 + 168) = v12;
  *(v1 + 176) = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  *(v1 + 184) = v13;
  OUTLINED_FUNCTION_5_0(v13);
  *(v1 + 192) = v14;
  *(v1 + 200) = OUTLINED_FUNCTION_28();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_14_0();
  (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for RFFeatureFlags.ResponseFramework._SMART(_:), *(v0 + 184));
  v1 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    v14 = (*(v4 + 192) + **(v4 + 192));
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
    v6 = OUTLINED_FUNCTION_73(*(v0 + 64));

    return v14(v6);
  }

  else
  {
    v15 = (*(v4 + 200) + **(v4 + 200));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 256) = v8;
    *v8 = v9;
    v8[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
    v10 = *(v0 + 112);
    v11 = *(v0 + 272);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);

    return v15(v10, v12, v13, v11);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
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

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(*(v0 + 104) + 32))(*(v0 + 120), *(v0 + 112), *(v0 + 96));
  v3 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2[3] = v4;
  v2[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v3 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v4);
    OUTLINED_FUNCTION_5_7(&dword_0, v5, v6, "#AutoShortcutsSetEnablementFlow making appDisabledOutput; %@");
    outlined destroy of String?(v3, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v7 = *(v0 + 56);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v3 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v4);
    OUTLINED_FUNCTION_5_7(&dword_0, v5, v6, "#AutoShortcutsSetEnablementFlow making appDisabledOutput; %@");
    outlined destroy of String?(v3, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v7 = *(v0 + 56);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 144);
  v13 = *(v12 + 152);
  v15 = *(v12 + 128);
  v16 = *(v12 + 136);
  v17 = *(v12 + 224);
  static DialogPhase.confirmation.getter();
  v18 = [v17 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 16))(v14, v13, v15);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v19 = OUTLINED_FUNCTION_20_1();
  v20(v19);
  v21 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v21);
  *(v12 + 232) = ResponseFactory.init()();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_64(v22);
  *(v12 + 240) = v23;
  *(v23 + 16) = xmmword_216010;
  *(v23 + 32) = v17;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v36 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 248) = v25;
  *v25 = v26;
  v25[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_27_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 224) = a8;
  *(v9 + 232) = v8;
  *(v9 + 208) = a6;
  *(v9 + 216) = a7;
  *(v9 + 192) = a4;
  *(v9 + 200) = a5;
  *(v9 + 176) = a2;
  *(v9 + 184) = a3;
  *(v9 + 280) = a1;
  *(v9 + 240) = *v8;
  return OUTLINED_FUNCTION_0_16(AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 280) == 1)
  {
    v1 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v1);
    v2 = ResponseFactory.init()();
    *(v0 + 160) = v1;
    *(v0 + 168) = &protocol witness table for ResponseFactory;
    *(v0 + 136) = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 248) = v3;
    *v3 = v4;
    v3[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);

    return static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 256) = v6;
    *v6 = v7;
    v6[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);

    return AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with copy of SpeakableString?(v0 + 16, v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 232);
    outlined init with take of AceServiceInvokerAsync((v0 + 96), v0 + 56);
    OUTLINED_FUNCTION_47((v1 + 56));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 264) = v2;
    *v2 = v3;
    v2[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    OUTLINED_FUNCTION_27_4();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v4, v5, v6);
  }

  else
  {
    outlined destroy of String?(v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v9))
    {
      v10 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v10);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_17();
    }

    outlined destroy of String?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    OUTLINED_FUNCTION_6_6();

    return v16(1);
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
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_6();

  return v1(7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_26_22(&dword_0, v6, v0, "#AutoShortcutsSetEnablementFlow error publishing enablementUpdated; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  outlined destroy of String?(v1 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_87();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 81) = v2;
  *(v1 + 360) = v3;
  *(v1 + 368) = v0;
  *(v1 + 344) = v4;
  *(v1 + 352) = v5;
  v6 = type metadata accessor for DialogPhase();
  *(v1 + 376) = v6;
  OUTLINED_FUNCTION_5_0(v6);
  *(v1 + 384) = v7;
  *(v1 + 392) = OUTLINED_FUNCTION_27();
  *(v1 + 400) = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 408) = v8;
  OUTLINED_FUNCTION_5_0(v8);
  *(v1 + 416) = v9;
  *(v1 + 424) = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  v5 = (*(v1 + 160) + **(v1 + 160));
  v2 = swift_task_alloc();
  *(v0 + 432) = v2;
  *v2 = v0;
  v2[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
  v3 = OUTLINED_FUNCTION_73(*(v0 + 352));

  return v5(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
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
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47((*(v0 + 368) + 56));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 472) = v1;
  *v1 = v2;
  v1[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 480) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[55];
  v2 = v0[46];
  OUTLINED_FUNCTION_53_6(v2 + 288, (v0 + 40));
  memcpy(v0 + 20, (v2 + 288), 0x41uLL);
  *(v2 + 288) = 1;
  OUTLINED_FUNCTION_66_8((v2 + 296));
  *(v2 + 344) = 0;
  *(v2 + 352) = 0x80;
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v0 + 20));
  static ExecuteResponse.complete()();

  v3 = OUTLINED_FUNCTION_22_4();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[55];
  if (v13)
  {
    v15 = v12[49];
    v14 = v12[50];
    v16 = v12[47];
    v17 = v12[48];
    static DialogPhase.completion.getter();
    v18 = [v13 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 16))(v15, v14, v16);
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OutputGenerationManifest.responseViewId.setter();
    (*(v17 + 8))(v14, v16);
    v19 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v19);
    v12[56] = ResponseFactory.init()();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = OUTLINED_FUNCTION_64(v20);
    v12[57] = v21;
    *(v21 + 16) = xmmword_216010;
    *(v21 + 32) = v13;
    v52 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    v22 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[58] = v23;
    *v23 = v24;
    v23[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_27_0();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, v52, a10, a11, a12);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v34, static Logger.voiceCommands);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v36))
    {
      v37 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v37);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_17();
    }

    v43 = OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6(v43, (v12 + 34));
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State((v12 + 2));
    static ExecuteResponse.complete()();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_27_0();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }
}

void AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)()
{
  OUTLINED_FUNCTION_14_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_26_22(&dword_0, v6, v0, "#AutoShortcutsSetEnablementFlow error publishing changeDeclinedAck; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v7 = v1[55];
  v8 = v1[46];

  OUTLINED_FUNCTION_53_6(v8 + 288, (v1 + 37));
  OUTLINED_FUNCTION_108_0(v1 + 11);
  OUTLINED_FUNCTION_43_10();
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v1 + 11));
  static ExecuteResponse.complete()();

  v9 = OUTLINED_FUNCTION_20_1();
  v10(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 29);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  __asm { BRAA            X1, X16 }
}

uint64_t AutoShortcutsSetEnablementFlow.execute(completion:)(uint64_t a1)
{
  type metadata accessor for AutoShortcutsSetEnablementFlow();
  _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(&lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow and conformance AutoShortcutsSetEnablementFlow, v1, type metadata accessor for AutoShortcutsSetEnablementFlow, &protocol conformance descriptor for AutoShortcutsSetEnablementFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

Swift::Bool __swiftcall DeviceState.canOutputAppShortcutPhrases()()
{
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isWatch.getter()) || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isMac.getter()))
  {
    OUTLINED_FUNCTION_48_2();
    v0 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t AutoShortcutsSetEnablementFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));

  outlined consume of AutoShortcutsSetEnablementFlow.State(*(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352));
  return v0;
}

uint64_t AutoShortcutsSetEnablementFlow.__deallocating_deinit()
{
  AutoShortcutsSetEnablementFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AutoShortcutsSetEnablementFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AutoShortcutsSetEnablementFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoShortcutsSetEnablementFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void outlined bridged method (mbnn) of @objc PatternExecutionResult.visual.setter(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  [a3 setVisual:isa];
}

uint64_t specialized AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v46 = a7;
  v45 = a6;
  v44 = a4;
  v42 = a3;
  v48 = a2;
  v47 = a9;
  v18 = type metadata accessor for CATOption();
  __chkstk_darwin(v18 - 8);
  v57 = a13;
  v58 = a15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a8, a13);
  v54 = a12;
  v55 = a14;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(*(a12 - 8) + 32))(v20, a10, a12);
  type metadata accessor for WorkflowNLContextProvider();
  *(a11 + 280) = swift_allocObject();
  outlined init with copy of DeviceState(a1, a11 + 16);
  outlined init with copy of DeviceState(v48, a11 + 56);
  outlined init with copy of DeviceState(a1, v52);
  v21 = v42;
  outlined init with copy of DeviceState(v42, v49);
  type metadata accessor for AutoShortcutDialogTemplating();
  v22 = swift_allocObject();
  v24 = v50;
  v23 = v51;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  __chkstk_darwin(v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(v52, v44, a5, v27, v22, v24, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  *(a11 + 96) = v29;
  outlined init with copy of DeviceState(a1, v52);
  outlined init with copy of DeviceState(v21, v49);
  type metadata accessor for RunLinkActionCATs(0);
  static CATOption.defaultMode.getter();
  v43 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple(0);
  static CATOption.defaultMode.getter();
  v30 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for LinkActionDialogTemplating();
  v33 = swift_allocObject();
  v34 = v50;
  v35 = v51;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  __chkstk_darwin(v36);
  v38 = &v42 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v38);
  v40 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v52, v43, v30, v31, v32, v38, v33, v34, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  *(a11 + 104) = v40;
  outlined init with take of AceServiceInvokerAsync(v45, a11 + 112);
  outlined init with take of AceServiceInvokerAsync(v46, a11 + 152);
  outlined init with take of AceServiceInvokerAsync(&v56, a11 + 192);
  *(a11 + 232) = v47;
  outlined init with take of AceServiceInvokerAsync(&v53, a11 + 240);
  *(a11 + 288) = 0u;
  *(a11 + 304) = 0u;
  *(a11 + 320) = 0u;
  *(a11 + 336) = 0u;
  *(a11 + 352) = 0x80;
  return a11;
}

uint64_t outlined destroy of VoiceCommandTask(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined consume of AutoShortcutsSetEnablementFlow.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a3;
  v10 = a9 >> 5;
  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      return result;
    }
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin026AutoShortcutsSetEnablementC0C5StateO(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 4;
  }
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.State(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 8 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 49) = 0u;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AutoShortcutsSetEnablementFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 64) & 1 | (32 * a2);
    *result &= 7uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = (a2 - 4) & 7;
    *(result + 8) = (a2 - 4) >> 3;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.EnablementFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.EnablementFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1A03BCLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return v1 + 8;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
}

uint64_t OUTLINED_FUNCTION_9_27@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  v3[1].n128_u64[0] = v2;
  v3[1].n128_u64[1] = a1;
  v3[2].n128_u8[0] = 0;
  return v4 + 8;
}

void OUTLINED_FUNCTION_26_22(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_14()
{
}

uint64_t OUTLINED_FUNCTION_29_19()
{
}

uint64_t OUTLINED_FUNCTION_36_13(uint64_t a1)
{

  return _swift_task_switch(a1);
}

uint64_t OUTLINED_FUNCTION_42_12(uint64_t a1)
{

  return static DialogPhase.confirmation.getter();
}

void OUTLINED_FUNCTION_49_11()
{
}

void *OUTLINED_FUNCTION_52_9()
{

  return memcpy((v1 + 16), (v0 + 288), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_66_8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void OUTLINED_FUNCTION_68_10()
{
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 304);
  *(v3 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v3 + 304);
  *(v4 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *OUTLINED_FUNCTION_82_8()
{

  return memcpy((v1 - 232), (v0 + 288), 0x41uLL);
}

void *OUTLINED_FUNCTION_83_4()
{

  return memcpy((v0 + 88), (v1 + 288), 0x41uLL);
}

BOOL OUTLINED_FUNCTION_86_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t OUTLINED_FUNCTION_105_1(uint64_t a1)
{

  return Input.parse.getter();
}

void *OUTLINED_FUNCTION_108_0(void *a1)
{

  return memcpy(a1, (v1 + 288), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_109_1(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

void *OUTLINED_FUNCTION_110_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x41uLL);
}

uint64_t InputToDisambiguationItemsConverter.__allocating_init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2);
  return v4;
}

void *InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  v2[4] = &outlined read-only object #0 of InputToDisambiguationItemsConverter.init(disambiguationItems:page:);
  v2[2] = a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
  }

  v2[3] = v3;
  return v2;
}

void InputToDisambiguationItemsConverter.inputToChosenItems(input:)()
{
  OUTLINED_FUNCTION_38_8();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7_1();
  v41 = v1;
  v42 = v0;
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v40 = v3 - v2;
  v4 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v43 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  Input.parse.getter();
  v24 = (*(v19 + 88))(v23, v17);
  if (v24 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v25 = OUTLINED_FUNCTION_4_50();
    v26(v25);
LABEL_5:
    v29 = OUTLINED_FUNCTION_16_31();
    v30(v29);
    OUTLINED_FUNCTION_38_8();
    (*(v31 + 160))(v10);
    goto LABEL_6;
  }

  if (v24 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v27 = OUTLINED_FUNCTION_4_50();
    v28(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    goto LABEL_5;
  }

  if (v24 == enum case for Parse.directInvocation(_:))
  {
    v32 = OUTLINED_FUNCTION_4_50();
    v33(v32);
    (*(v43 + 32))(v16, v23, v11);
    OUTLINED_FUNCTION_38_8();
    (*(v34 + 152))(v16);
    (*(v43 + 8))(v16, v11);
    goto LABEL_7;
  }

  if (v24 != enum case for Parse.uso(_:))
  {
    static Array._allocateUninitialized(_:)();
    (*(v19 + 8))(v23, v17);
    goto LABEL_7;
  }

  v35 = OUTLINED_FUNCTION_4_50();
  v36(v35);
  v10 = v40;
  v6 = v41;
  v37 = OUTLINED_FUNCTION_16_31();
  v4 = v42;
  v38(v37);
  OUTLINED_FUNCTION_38_8();
  (*(v39 + 136))(v40);
LABEL_6:
  (*(v6 + 8))(v10, v4);
LABEL_7:
  OUTLINED_FUNCTION_42();
}

void InputToDisambiguationItemsConverter.usoToChosenItems(usoParse:)()
{
  OUTLINED_FUNCTION_38_8();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = v37 - v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  USOParse.userParse.getter();
  v17 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v5 + 8))(v9, v3);
  specialized Collection.first.getter(v17, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v20))
    {
      v21 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v21);
      OUTLINED_FUNCTION_24_12(&dword_0, v22, v23, "#InputToDisambiguationItemsConverter: could not get userDialogAct from parse");
      OUTLINED_FUNCTION_15_0(v10);
    }

    static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v12 + 32))(v16, v2, v10);
    v24 = Array.count.getter();
    Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:)(v24);
    v25 = InputToDisambiguationItemsConverter.getItemsFromReferences(references:)();

    v37[0] = v25;
    OUTLINED_FUNCTION_17_28();
    type metadata accessor for Array();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      v26 = InputToDisambiguationItemsConverter.getStringFromUSOParse(uda:)(v16);
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v30 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v30, static Logger.voiceCommands);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_48();
          v34 = OUTLINED_FUNCTION_85();
          v37[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v37);
          _os_log_impl(&dword_0, v31, v32, "#InputToDisambiguationItemsConverter: usoToChosenItems retrieving disambiguation item with title: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          OUTLINED_FUNCTION_15_0(v34);
          OUTLINED_FUNCTION_15_0(v33);
        }

        InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v28, v29, 0);
      }

      else
      {
        OUTLINED_FUNCTION_17_28();
        static Array._allocateUninitialized(_:)();
      }
    }

    v35 = OUTLINED_FUNCTION_0_23();
    v36(v35);
  }

  OUTLINED_FUNCTION_42();
}

void InputToDisambiguationItemsConverter.stringToChosenItems(option:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_85();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v9);
    _os_log_impl(&dword_0, v5, v6, "#InputToDisambiguationItemsConverter: smartPromptToChosenItems retrieving smart prompt item with title %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0(v8);
    OUTLINED_FUNCTION_15_0(v7);
  }

  InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(a1, a2, 0);
}

uint64_t InputToDisambiguationItemsConverter.directInvocationToChosenItems(directInvocation:)(uint64_t a1)
{
  v2 = Parse.DirectInvocation.userData.getter();
  if (v2 && (static SLFDisambiguationItemConverter.toTitle(userData:)(v2), v1 = v3, , v1))
  {
    v4 = OUTLINED_FUNCTION_0_23();
    InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v4, v5, 1);
    v7 = v6;

    return v7;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_50(v11))
    {
      v12 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v12);
      OUTLINED_FUNCTION_29_7(&dword_0, v13, v14, "#InputToDisambiguationItemsConverter: received unknown directInvocation");
      OUTLINED_FUNCTION_15_0(v1);
    }

    return static Array._allocateUninitialized(_:)();
  }
}

uint64_t InputToDisambiguationItemsConverter.nlv3IntentToChosenItems(nlIntent:)(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandsNLIntent(0);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for NLIntent();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  if (one-time initialization token for voiceCommandReferenceNode != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent();
  IntentNodeTraversable.value<A>(forNode:)();
  v7 = Array.count.getter();
  static InputUtils.convertVoiceCommandReferenceToIndex(reference:lastInd:)(v20, v7);
  v8 = InputToDisambiguationItemsConverter.getItemsFromReferences(references:)();

  OUTLINED_FUNCTION_17_28();
  type metadata accessor for Array();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    if (one-time initialization token for voiceCommandTextNode != -1)
    {
      swift_once();
    }

    IntentNodeTraversable.value<A>(forNode:)();
    if (v22)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v9, static Logger.voiceCommands);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_48();
        v21 = OUTLINED_FUNCTION_85();
        *v12 = 136315138;
        v13 = OUTLINED_FUNCTION_0_23();
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
        _os_log_impl(&dword_0, v10, v11, "#InputToDisambiguationItemsConverter nlv3IntentToChosenItems: retrieving disambiguation item with title: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_15_0(v21);
        OUTLINED_FUNCTION_15_0(v12);
      }

      v16 = OUTLINED_FUNCTION_0_23();
      InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v16, v17, 0);
      v8 = v18;
    }

    else
    {
      OUTLINED_FUNCTION_17_28();
      v8 = static Array._allocateUninitialized(_:)();
    }
  }

  outlined destroy of VoiceCommandsNLIntent(v5);
  return v8;
}

void InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v9))
  {
    v10 = OUTLINED_FUNCTION_48();
    *v10 = 134217984;
    v11 = *(v6 + 80);
    *(v10 + 4) = Array.count.getter();

    _os_log_impl(&dword_0, v8, v9, "#InputToDisambiguationItemsConverter: Searching %ld disambiguation items for query.", v10, 0xCu);
    OUTLINED_FUNCTION_15_0(v10);
  }

  else
  {

    v11 = *(v6 + 80);
  }

  v12 = OUTLINED_FUNCTION_7_32();
  type metadata accessor for ExactMatcher(v12, v13, v14, v15);
  DescribeCustomIntentItemCatTemplater.__allocating_init()();
  v16 = OUTLINED_FUNCTION_0_23();
  v18 = v17(v16);

  if (!v18)
  {
    if (a3)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v23))
      {
        v24 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v24);
        v27 = "#InputToDisambiguationItemsConverter: only exact matches requested, none found.";
LABEL_21:
        OUTLINED_FUNCTION_29_7(&dword_0, v25, v26, v27);
        OUTLINED_FUNCTION_15_0(a2);
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_7_32();
      type metadata accessor for PartialMatcher(v28, v29, v30, v31);
      DescribeCustomIntentItemCatTemplater.__allocating_init()();
      v32 = OUTLINED_FUNCTION_0_23();
      v34 = v33(v32);

      if (v34)
      {
        goto LABEL_23;
      }

      v54 = static LocaleUtils.siriLanguageCode()();
      v55 = v35;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v37))
      {
        v38 = OUTLINED_FUNCTION_48();
        v53 = v36;
        v39 = OUTLINED_FUNCTION_85();
        v56[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);
        _os_log_impl(&dword_0, v53, v37, "#InputToDisambiguationItemsConverter: Current siri language: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        OUTLINED_FUNCTION_15_0(v39);
        OUTLINED_FUNCTION_15_0(v38);
      }

      else
      {
      }

      v56[0] = v54;
      v56[1] = v55;
      __chkstk_darwin(v40);
      v52[2] = v56;
      v42 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v52, v41);

      if (v42)
      {
        v43 = OUTLINED_FUNCTION_7_32();
        type metadata accessor for TfIdfFuzzyMatcher(v43, v44, v45, v46);
        TfIdfFuzzyMatcher.__allocating_init()();
        v47 = OUTLINED_FUNCTION_0_23();
        v49 = v48(v47);

        if (v49)
        {
          goto LABEL_23;
        }
      }

      v22 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_50(v50))
      {
        v51 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v51);
        v27 = "#InputToDisambiguationItemsConverter: No items matched the input query.";
        goto LABEL_21;
      }
    }

    static Array._allocateUninitialized(_:)();
LABEL_23:
    OUTLINED_FUNCTION_42();
    return;
  }

  getContiguousArrayStorageType<A>(for:)(v11, v11);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  Array.subscript.getter();

  OUTLINED_FUNCTION_42();

  _finalizeUninitializedArray<A>(_:)(v19, v20);
}

uint64_t InputToDisambiguationItemsConverter.getItemsFromReferences(references:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in InputToDisambiguationItemsConverter.getItemsFromReferences(references:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a1 < 0)
  {
    v6 = *(v4 + 80);
    goto LABEL_5;
  }

  v6 = *(v4 + 80);
  v5 = *a1;
  if (v5 >= Array.count.getter())
  {
LABEL_5:
    v7 = a3;
    v8 = 1;
    return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
  }

  Array.subscript.getter();
  v7 = a3;
  v8 = 0;
  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t InputToDisambiguationItemsConverter.getStringFromUSOParse(uda:)(uint64_t a1)
{
  v1 = a1;
  v2 = Siri_Nlu_External_UserDialogAct.stringValue.getter(a1);
  v5 = v3;
  if (v3)
  {
    v4 = v2;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v6, static Logger.voiceCommands);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_85();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v16);
      _os_log_impl(&dword_0, v7, v8, "#InputToDisambiguationItemsConverter: got stringValue: %s from USO parse", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_15_0(v10);
      OUTLINED_FUNCTION_15_0(v9);
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v14))
    {
      v15 = OUTLINED_FUNCTION_52();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v1, "#InputToDisambiguationItemsConverter: could not get string value from payload", v15, 2u);
      OUTLINED_FUNCTION_15_0(v15);
    }

    return 0;
  }

  return v4;
}

uint64_t InputToDisambiguationItemsConverter.deinit()
{

  return v0;
}

uint64_t InputToDisambiguationItemsConverter.__deallocating_deinit()
{
  InputToDisambiguationItemsConverter.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t LNDialog.asSpeakableString.getter(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for ResponseMode();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(LNDialog.asSpeakableString.getter);
}

{
  swift_willThrow();

  v2 = *(v1 + 176);
  v3 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t LNDialog.asSpeakableString.getter()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LNDialog.asSpeakableString.getter;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo14LNDialogResult_ps5Error_pGMd, &_sSccySo14LNDialogResult_ps5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDialogResult?, @unowned NSError?) -> () with result type LNDialogResult;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 getResultWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = LNDialog.asSpeakableString.getter;
  }

  else
  {
    v2 = LNDialog.asSpeakableString.getter;
  }

  return _swift_task_switch(v2);
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[18];
  v5 = [v4 captionPrint];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v0[19] = v6;
  v7 = v0 + 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.responseMode.getter();

  static ResponseMode.voiceForward.getter();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = v0[27];
  if (v5)
  {
    v8(v0[27], v0[24]);
    v10 = &selRef_speak;
  }

  else
  {
    v11 = v0[26];
    v12 = v0[24];
    static ResponseMode.voiceOnly.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v8(v11, v12);
    v8(v9, v12);
    v10 = &selRef_captionSpeak;
    if (v13)
    {
      v10 = &selRef_speak;
    }

    else
    {
      v7 = v0 + 20;
    }
  }

  v14 = [v4 *v10];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v7 = v15;
  BidirectionalCollection<>.joined(separator:)();

  SpeakableString.init(print:speak:)();
  swift_unknownObjectRelease();
  v16 = v0[22];
  v17 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDialogResult?, @unowned NSError?) -> () with result type LNDialogResult(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional __swiftcall WorkflowRunnerCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATPatternsIdentifiers@<X0>(void *a1@<X8>)
{
  result = WorkflowRunnerCATPatternsIdentifiers.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t WorkflowRunnerFinalDoneParameters.device.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerFinalDoneParameters(v0);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerFinalDoneParameters(v0);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.asKeyValuePairs()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_15_26();
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_12_28(v8, xmmword_21A520);
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v9 = v2;
  }

  else
  {
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v9;
  OUTLINED_FUNCTION_26_3();
  *(v8 + 72) = v10;
  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = v11;
  *(v8 + 96) = *(v1 + 8);
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 128) = 0x6556746E65746E69;
  *(v8 + 136) = 0xEA00000000006272;
  done = type metadata accessor for WorkflowRunnerFinalDoneParameters(0);
  outlined init with copy of AppDisplayInfo?(v1 + *(done + 24), v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_32(v7);
  if (v14)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_1((v8 + 144));
    OUTLINED_FUNCTION_8_32();
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_26_3();
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = v16;
  v17 = OUTLINED_FUNCTION_18_28(*(done + 28));
  outlined init with copy of AppDisplayInfo?(v17, v18, v19, v20);
  OUTLINED_FUNCTION_16_32(v0);
  if (v14)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v13;
    __swift_allocate_boxed_opaque_existential_1((v8 + 192));
    OUTLINED_FUNCTION_8_32();
    (*(v21 + 32))();
  }

  return v8;
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.getter(void (*a1)(void))
{
  v1 = (a1)(0);
  v2 = OUTLINED_FUNCTION_18_28(*(v1 + 24));
  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t WorkflowRunnerInputTextParameters.inputType.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerInputTextParameters(v0);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.getter(void (*a1)(void))
{
  v1 = (a1)(0);
  v2 = OUTLINED_FUNCTION_18_28(*(v1 + 28));
  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t WorkflowRunnerInputTextParameters.message.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerInputTextParameters(v0);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerInputTextParameters.asKeyValuePairs()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_15_26();
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_12_28(v8, xmmword_21A520);
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v9 = v2;
  }

  else
  {
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v9;
  OUTLINED_FUNCTION_26_3();
  *(v8 + 72) = v10;
  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = v11;
  *(v8 + 96) = *(v1 + 8);
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 128) = 0x7079547475706E69;
  *(v8 + 136) = 0xE900000000000065;
  v12 = type metadata accessor for WorkflowRunnerInputTextParameters(0);
  outlined init with copy of AppDisplayInfo?(v1 + *(v12 + 24), v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_32(v7);
  if (v14)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_1((v8 + 144));
    OUTLINED_FUNCTION_8_32();
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_26_23();
  *(v8 + 176) = v16;
  *(v8 + 184) = 0xE700000000000000;
  v17 = OUTLINED_FUNCTION_18_28(*(v12 + 28));
  outlined init with copy of AppDisplayInfo?(v17, v18, v19, v20);
  OUTLINED_FUNCTION_16_32(v0);
  if (v14)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v13;
    __swift_allocate_boxed_opaque_existential_1((v8 + 192));
    OUTLINED_FUNCTION_8_32();
    (*(v21 + 32))();
  }

  return v8;
}

uint64_t WorkflowRunnerFinalDoneParameters.init(device:executeSashGroupOnWatch:intentVerb:localizedAppName:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = a5(0);
  outlined init with take of SpeakableString?(a3, a6 + *(v9 + 24));
  v10 = a6 + *(v9 + 28);

  return outlined init with take of SpeakableString?(a4, v10);
}

uint64_t WorkflowRunnerShowAlertParameters.message.getter()
{
  v0 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  v1 = OUTLINED_FUNCTION_18_28(*(v0 + 20));
  return outlined init with copy of AppDisplayInfo?(v1, v2, v3, v4);
}

uint64_t WorkflowRunnerShowAlertParameters.message.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerShowAlertParameters(v0);
  v1 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v1, v2);
}

uint64_t WorkflowRunnerShowAlertParameters.message.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerShowAlertParameters(v0);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerShowAlertParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216840;
  OUTLINED_FUNCTION_26_3();
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = v7;
  *(v6 + 48) = *v0;
  OUTLINED_FUNCTION_26_23();
  v8[9] = v10;
  v8[10] = v9;
  v8[11] = 0xE700000000000000;
  v11 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  v12 = OUTLINED_FUNCTION_18_28(*(v11 + 20));
  outlined init with copy of AppDisplayInfo?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v14;
    __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    OUTLINED_FUNCTION_21_2();
    (*(v15 + 32))();
  }

  return v5;
}

uint64_t WorkflowRunnerShowAlertParameters.init(executeSashGroupOnWatch:message:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  v2 = OUTLINED_FUNCTION_24_21();

  return outlined init with take of SpeakableString?(v2, v3);
}

uint64_t WorkflowRunnerCATPatternsExecutor.finalDone(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  done = type metadata accessor for WorkflowRunnerFinalDoneParameters(v4);
  *(v0 + 40) = done;
  OUTLINED_FUNCTION_14(done);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  v2 = OUTLINED_FUNCTION_23_18();
  v3 = OUTLINED_FUNCTION_11_31(v2);
  v1(v3);
  *(v0 + 56) = WorkflowRunnerFinalDoneParameters.asKeyValuePairs()();
  v4 = OUTLINED_FUNCTION_22_3();
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_42(v4);

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_53();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_53();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t WorkflowRunnerCATPatternsExecutor.inputText(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for WorkflowRunnerInputTextParameters(v4);
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_14(v5);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  v2 = OUTLINED_FUNCTION_23_18();
  v3 = OUTLINED_FUNCTION_11_31(v2);
  v1(v3);
  *(v0 + 56) = WorkflowRunnerInputTextParameters.asKeyValuePairs()();
  v4 = OUTLINED_FUNCTION_22_3();
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_42(v4);

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_53();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_53();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t outlined destroy of WorkflowRunnerFinalDoneParameters()
{
  v1 = OUTLINED_FUNCTION_92();
  v2(v1);
  OUTLINED_FUNCTION_21_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t WorkflowRunnerCATPatternsExecutor.showAlert(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for WorkflowRunnerShowAlertParameters(v4);
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_14(v5);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 40) + 20);
  v5 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(&v1[v4], 1, 1, v5);
  *v1 = v3;
  v2(v1);
  *(v0 + 56) = WorkflowRunnerShowAlertParameters.asKeyValuePairs()();
  v6 = OUTLINED_FUNCTION_22_3();
  *(v0 + 64) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_0_42(v6);

  return v8(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_60();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_60();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t WorkflowRunnerCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  __chkstk_darwin(v10);
  outlined init with copy of AppDisplayInfo?(v3, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.finalDone(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor) + **(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.userDenied();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.inputText(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 8) + **(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 8));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.showAlert(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 16) + **(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A4774);
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

void type metadata accessor for SirikitDeviceState?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v7 = OUTLINED_FUNCTION_18_28(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_18_28(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for WorkflowRunnerFinalDoneParameters(uint64_t a1)
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4A58(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = OUTLINED_FUNCTION_18_28(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

_BYTE *sub_1A4AFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_18_28(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for WorkflowRunnerShowAlertParameters(uint64_t a1)
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_1_60()
{

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_7_33(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 28), 1, 1, a1);
  *v1 = 0;
  *(v1 + 8) = v3;
  return v1;
}

__n128 *OUTLINED_FUNCTION_12_28(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_18()
{

  return type metadata accessor for SpeakableString();
}

uint64_t IntroduceCustomIntentCatTemplater.makeTemplate(items:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TemplatingResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_0_43();
  TemplatingResult.init(dialogId:print:speak:)(0x7974706D65, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v2);
  (*(v8 + 16))(v6, v2, v7);
  swift_storeEnumTagMultiPayload();
  a2(v6);
  outlined destroy of String?(v6, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return (*(v8 + 8))(v2, v7);
}

uint64_t IntroduceCustomIntentOutputProvider.__allocating_init(items:templating:viewBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_0_43();
  (*(v13 + 16))(v5);
  v14 = a4(a1, a2, v5, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

uint64_t IntroduceCustomIntentOutputProvider.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[11];
  v6 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v5);
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v2;
  v9 = *(v6 + 8);

  v9(v7, partial apply for closure #1 in IntroduceCustomIntentOutputProvider.makeOutput(_:), v8, v5, v6);
}

uint64_t closure #1 in IntroduceCustomIntentOutputProvider.makeOutput(_:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AceOutput();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v15);
  v17 = (&v24 - v16);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v24 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v28 = *v17;
    v31 = 1;
    swift_errorRetain();
    a2(&v28);
  }

  else
  {
    v24 = v12;
    v25 = v11;
    (*(v12 + 32))(v14, v17, v11);
    v18 = a4[6];
    v19 = a4[7];
    __swift_project_boxed_opaque_existential_1(a4 + 3, v18);
    if ((*(v19 + 8))(v14, a4[2], v18, v19) >> 62)
    {
      type metadata accessor for SABaseCommand();
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SABaseCommand();
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    AceOutput.init(commands:flowActivity:)();
    v20 = v26;
    *(&v29 + 1) = v26;
    v30 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    v22 = v27;
    (*(v27 + 16))(boxed_opaque_existential_1, v10, v20);
    v31 = 0;
    a2(&v28);
    (*(v22 + 8))(v10, v20);
    (*(v24 + 8))(v14, v25);
  }

  return outlined destroy of String?(&v28, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t IntroduceCustomIntentOutputProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t IntroduceCustomIntentOutputProvider.__deallocating_deinit()
{
  IntroduceCustomIntentOutputProvider.deinit();

  return swift_deallocClassInstance();
}

void *specialized IntroduceCustomIntentOutputProvider.__allocating_init(items:templating:viewBuilder:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntroduceCustomIntentOutputProvider();
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  v15 = specialized IntroduceCustomIntentOutputProvider.init(items:templating:viewBuilder:)(a1, a2, v13, v14, a5, a6);
  (*(v11 + 8))(a3, a5);
  return v15;
}

void *specialized IntroduceCustomIntentOutputProvider.init(items:templating:viewBuilder:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[6] = a5;
  a4[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 3);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[2] = a1;
  outlined init with take of Output(a2, (a4 + 8));
  return a4;
}

uint64_t sub_1A5830()
{

  return _swift_deallocObject(v0);
}

uint64_t INImage.convertToVisualProperty()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  v2[25] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for ImageElement.AspectRatio();
  v2[26] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v2[27] = v4;
  v2[28] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for ImageElement.ImageStyle();
  v2[29] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v2[30] = v6;
  v2[31] = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
  v2[32] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for ImageElement.RenderingMode();
  v2[33] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v2[34] = v8;
  v2[35] = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  v2[36] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for ImageElement();
  v2[37] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v2[38] = v10;
  v2[39] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(INImage.convertToVisualProperty());
}

{
  v15 = v1;
  swift_willThrow();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error retrieving image data %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_15_0(v5);
  }

  else
  {
  }

  v10 = *(v1 + 184);
  v11 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_2_54();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t INImage.convertToVisualProperty()()
{
  if ([*(v0 + 192) _isSystem])
  {
    outlined bridged method (pb) of @objc INImage._name.getter(*(v0 + 192));
    if (v1)
    {
      v62 = *(v0 + 296);
      v64 = *(v0 + 304);
      v2 = *(v0 + 272);
      v3 = *(v0 + 280);
      v53 = v3;
      v54 = *(v0 + 288);
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v57 = *(v0 + 312);
      v59 = v4;
      v6 = *(v0 + 240);
      v7 = *(v0 + 248);
      v8 = *(v0 + 232);
      v51 = v8;
      type metadata accessor for Color();
      v9 = OUTLINED_FUNCTION_76_3();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      (*(v2 + 104))(v3, enum case for ImageElement.RenderingMode.template(_:), v4);
      v11 = type metadata accessor for ImageElement.Background();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
      (*(v6 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v12 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_7_1();
      v14 = v13;
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_216850;
      (*(v14 + 104))(v16 + v15, enum case for _ProtoIdiom.default(_:), v12);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v16);
      static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:punchesThroughBackground:)();

      (*(v6 + 8))(v7, v51);
      outlined destroy of String?(v5, &_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
      (*(v2 + 8))(v53, v59);
      outlined destroy of String?(v54, &_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
      VisualPropertyConvertible<>.asVisualProperty()();
      (*(v64 + 8))(v57, v62);
      type metadata accessor for VisualProperty();
      v17 = OUTLINED_FUNCTION_76_3();
      goto LABEL_14;
    }
  }

  if (![*(v0 + 192) _requiresRetrieval])
  {
    v21 = *(v0 + 192);
    v22 = outlined bridged method (pb) of @objc INImage._imageData.getter(v21);
    v63 = v23;
    v65 = v22;
    if (v23 >> 60 == 15)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.voiceCommands);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        OUTLINED_FUNCTION_11_32(&dword_0, v28, v29, "image data is empty");
        OUTLINED_FUNCTION_15_0(v27);

        outlined consume of Data?(v65, v63);
      }

      else
      {

        v25 = v21;
      }

      type metadata accessor for VisualProperty();
      v17 = OUTLINED_FUNCTION_76_3();
      v47 = 1;
      goto LABEL_17;
    }

    v60 = *(v0 + 304);
    v61 = *(v0 + 296);
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v50 = *(v0 + 232);
    v52 = *(v0 + 312);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v58 = v33;
    v35 = *(v0 + 200);
    v55 = v32;
    v56 = *(v0 + 184);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_13_26();
    ImageElement.AspectRatio.init(width:height:)();
    (*(v33 + 16))(v35, v32, v34);
    OUTLINED_FUNCTION_10_35();
    v36 = OUTLINED_FUNCTION_8_33();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v38 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_7_1();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_4_51();
    *(v41 + 16) = xmmword_216850;
    (*(v40 + 104))(v41 + v31, enum case for _ProtoIdiom.default(_:), v38);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v41);
    v42 = OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_29(v42, v43, v44, v45);

    (*(v30 + 8))(v31, v50);
    outlined destroy of String?(v35, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_216850;
    *(v46 + 56) = type metadata accessor for VisualElement();
    *(v46 + 64) = &protocol witness table for VisualElement;
    __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    ImageElement.asVisualElement()();
    VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
    outlined consume of Data?(v65, v63);

    (*(v60 + 8))(v52, v61);
    (*(v58 + 8))(v55, v34);
    v18 = type metadata accessor for VisualProperty();
    v17 = v56;
LABEL_14:
    v47 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v17, v47, 1, v18);
    OUTLINED_FUNCTION_2_54();

    v48 = *(v0 + 8);

    return v48();
  }

  v19 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = INImage.convertToVisualProperty();
  v20 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v20;
  [v19 _retrieveImageDataWithReply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = INImage.convertToVisualProperty();
  }

  else
  {
    v2 = INImage.convertToVisualProperty();
  }

  return _swift_task_switch(v2);
}

{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INImage._imageData.getter(v2);
    v45 = v4;
    v46 = v3;
    if (v4 >> 60 != 15)
    {
      v43 = v0[38];
      v44 = v0[37];
      v18 = v0[30];
      v19 = v0[31];
      v20 = v0[28];
      v38 = v0[29];
      v39 = v0[39];
      v22 = v0[26];
      v21 = v0[27];
      v42 = v21;
      v23 = v0[25];
      v40 = v20;
      v41 = v0[23];
      OUTLINED_FUNCTION_13_26();
      OUTLINED_FUNCTION_13_26();
      ImageElement.AspectRatio.init(width:height:)();
      (*(v21 + 16))(v23, v20, v22);
      OUTLINED_FUNCTION_10_35();
      v24 = OUTLINED_FUNCTION_8_33();
      v25(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v26 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_7_1();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_4_51();
      *(v29 + 16) = xmmword_216850;
      (*(v28 + 104))(v29 + v19, enum case for _ProtoIdiom.default(_:), v26);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v29);
      v30 = OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_29(v30, v31, v32, v33);

      (*(v18 + 8))(v19, v38);
      outlined destroy of String?(v23, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_216850;
      *(v34 + 56) = type metadata accessor for VisualElement();
      *(v34 + 64) = &protocol witness table for VisualElement;
      __swift_allocate_boxed_opaque_existential_1((v34 + 32));
      ImageElement.asVisualElement()();
      VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
      outlined consume of Data?(v46, v45);

      (*(v43 + 8))(v39, v44);
      (*(v42 + 8))(v40, v22);
      v16 = type metadata accessor for VisualProperty();
      v17 = v41;
      v35 = 0;
      goto LABEL_16;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_11_32(&dword_0, v9, v10, "image data is empty");
      OUTLINED_FUNCTION_15_0(v8);

      outlined consume of Data?(v46, v45);
    }

    else
    {

      v6 = v2;
    }

    type metadata accessor for VisualProperty();
    v17 = OUTLINED_FUNCTION_76_3();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.voiceCommands);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Can't retrieve image;", v14, 2u);
      OUTLINED_FUNCTION_15_0(v14);
    }

    v15 = v0[23];

    v16 = type metadata accessor for VisualProperty();
    v17 = v15;
  }

  v35 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v17, v35, 1, v16);
  OUTLINED_FUNCTION_2_54();

  v36 = v0[1];

  return v36();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    v7 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t ImageElement.convertToVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216850;
  *(v0 + 56) = type metadata accessor for VisualElement();
  *(v0 + 64) = &protocol witness table for VisualElement;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  ImageElement.asVisualElement()();
  return VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
}

_BYTE *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_7_1();
  v34 = v3;
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << v10[32]);
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *&v37[8 * v19];
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v7, *(v10 + 6) + v18 * v14, v2);
      lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v13;
      (*v13)(v7, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *&v37[8 * v19] = v21 | v20;
    result = (*v30)(*(v10 + 6) + v18 * v14, v25, v2);
    v26 = *(v10 + 2);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 2) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc INImage._imageData.getter(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INImage._name.getter(void *a1)
{
  v1 = [a1 _name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ProtoIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_54()
{
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_11_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_12_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();
}

id OUTLINED_FUNCTION_13_26()
{
  v3 = *(v1 + 2528);

  return [v0 v3];
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional __swiftcall WorkflowRunnerCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.Properties.init(rawValue:), v3);
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

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.Properties()
{
  OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.Properties.rawValue.getter();
  *v0 = 0xD000000000000018;
  v0[1] = v2;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputDate(device:inputType:message:)()
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
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
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

  OUTLINED_FUNCTION_0_44(v7);
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

  v12 = v1[6];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v13;
  v2[17] = v14;
  outlined init with copy of SpeakableString?(v15, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v21 = v17;
  v18 = swift_task_alloc();
  v1[9] = v18;
  *v18 = v1;
  v18[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v19 = OUTLINED_FUNCTION_17_29();

  return v21(v19);
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

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x54646E4165746164;
      break;
    case 3:
      result = OUTLINED_FUNCTION_22_22();
      break;
    case 4:
      result = 1701669236;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.InputDateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.InputDateDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputDateAsLabels(device:inputType:message:)()
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
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
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

  OUTLINED_FUNCTION_0_44(v7);
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

  v12 = v1[6];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v13;
  v2[17] = v14;
  outlined init with copy of SpeakableString?(v15, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v22 = v17;
  v18 = swift_task_alloc();
  v1[9] = v18;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v18 = v19;
  v18[1] = WorkflowRunnerCATsSimple.inputDateAsLabels(device:inputType:message:);
  v20 = OUTLINED_FUNCTION_16_33();

  return v22(v20);
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

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputText(device:inputType:message:)()
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
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
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

  OUTLINED_FUNCTION_0_44(v7);
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

  v12 = v1[6];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v13;
  v2[17] = v14;
  outlined init with copy of SpeakableString?(v15, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v21 = v17;
  v18 = swift_task_alloc();
  v1[9] = v18;
  *v18 = v1;
  v18[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v19 = OUTLINED_FUNCTION_17_29();

  return v21(v19);
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:), v3);
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

uint64_t WorkflowRunnerCATsSimple.InputTextDialogIds.rawValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x7265626D756ELL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_22_22();
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.InputTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.InputTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.InputTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputTextAsLabels(device:inputType:message:)()
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
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
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

  OUTLINED_FUNCTION_0_44(v7);
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

  v12 = v1[6];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v13;
  v2[17] = v14;
  outlined init with copy of SpeakableString?(v15, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v10)
  {
    outlined destroy of String?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v22 = v17;
  v18 = swift_task_alloc();
  v1[9] = v18;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v18 = v19;
  v18[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v20 = OUTLINED_FUNCTION_16_33();

  return v22(v20);
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.showAlert(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = v9;
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = WorkflowRunnerCATsSimple.showAlert(message:);
  v11 = OUTLINED_FUNCTION_17_29();

  return v13(v11);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 == 1)
  {
    v4.value = SiriLinkFlowPlugin_WorkflowRunnerCATsSimple_ShowAlertDialogIds_custom;
  }

  else
  {
    v4.value = SiriLinkFlowPlugin_WorkflowRunnerCATsSimple_ShowAlertDialogIds_unknownDefault;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t WorkflowRunnerCATsSimple.ShowAlertDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x61756E69746E6F63;
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.ShowAlertDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.showAlertAsLabels(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = v9;
  v10 = swift_task_alloc();
  v0[6] = v10;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v10 = v11;
  v10[1] = WorkflowRunnerCATsSimple.showAlertAsLabels(message:);
  v12 = OUTLINED_FUNCTION_16_33();

  return v14(v12);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return WorkflowRunnerCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t WorkflowRunnerCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t WorkflowRunnerCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
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

uint64_t WorkflowRunnerCATsSimple.init(useResponseMode:options:)(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for WorkflowRunnerCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkflowRunnerCATsSimple;
  if (!type metadata singleton initialization cache for WorkflowRunnerCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A9030);
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

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.InputDateDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A9134);
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

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.InputTextDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A9238);
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

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.ShowAlertDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A933CLL);
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

uint64_t OUTLINED_FUNCTION_0_44(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x7079547475706E69;
  v2[11] = 0xE900000000000065;
  return result;
}

SiriLinkFlowPlugin::Document __swiftcall Document.init(body:)(Swift::String body)
{
  v1 = String.lowercased()();

  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  result.body._object = object;
  result.body._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t TfIdfComputer.__allocating_init(documents:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TfIdfComputer.init(documents:)(a1);
  return v2;
}

BOOL Array<A>.isNullVector.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (!v1)
    {
      break;
    }

    v4 = *v2++;
    --v1;
  }

  while (v4 == 0.0);
  return v3 == 0;
}

long double Array<A>.magnitude.getter(uint64_t a1)
{
  Array<A>.dot(other:)(a1, a1);

  return sqrt(v1);
}

uint64_t Array<A>.dot(other:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 > *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = (a2 + 32);
      v4 = (result + 32);
      v5 = 0.0;
      do
      {
        v6 = *v3++;
        v7 = v6;
        v8 = *v4++;
        v5 = v5 + v7 * v8;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t TfIdfComputer.init(documents:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;

  *(v1 + 24) = static TfIdfComputer.idf(items:)(v4);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(a1 + 16);

    *(v8 + 4) = v9;

    _os_log_impl(&dword_0, v6, v7, "[TfIdf] computing idf for %ld documents", v8, 0xCu);
    OUTLINED_FUNCTION_15_0(v8);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v2;
}

void *static TfIdfComputer.idf(items:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = _swiftEmptyArrayStorage;
    v4 = *(a1 + 16);
    do
    {
      v5 = *(v2 - 1);
      v6 = *v2;

      static TfIdfComputer.tokenize(_:)(v5, v6);
      v8 = v7;

      v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v12;
      }

      v10 = v3[2];
      v11 = v10 + 1;
      if (v10 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v13;
      }

      v3[2] = v11;
      v3[v10 + 4] = v9;
      v2 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage;
  }

  for (i = 0; v11 != i; i = v15)
  {
    if (i >= v3[2])
    {
      goto LABEL_50;
    }

    v15 = i + 1;

    specialized Array.append<A>(contentsOf:)(v16);
  }

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(_swiftEmptyArrayStorage);
  v18 = 0;
  v19 = v1;
  v20 = v17 + 56;
  v57 = v17;
  v21 = 1 << *(v17 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v17 + 56);
  v24 = (v21 + 63) >> 6;
  v55 = v24;
  v56 = v17 + 56;
  if (v23)
  {
    while (1)
    {
      v25 = v18;
LABEL_22:
      v26 = (*(v57 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
      v28 = *v26;
      v27 = v26[1];
      v29 = v3[2];

      if (v29)
      {
        break;
      }

      v31 = 0.5;
LABEL_38:
      v39 = log10(v19 / v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
      v43 = _swiftEmptyDictionarySingleton[2];
      v44 = (v42 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_52;
      }

      v46 = v41;
      v47 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
      {
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_54;
        }

        v46 = v48;
      }

      v23 &= v23 - 1;
      if (v47)
      {
        *(_swiftEmptyDictionarySingleton[7] + 8 * v46) = v39;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v46 >> 6) + 8] |= 1 << v46;
        v50 = (_swiftEmptyDictionarySingleton[6] + 16 * v46);
        *v50 = v28;
        v50[1] = v27;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v46) = v39;
        v51 = _swiftEmptyDictionarySingleton[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_53;
        }

        _swiftEmptyDictionarySingleton[2] = v53;
      }

      v18 = v25;
      v24 = v55;
      v20 = v56;
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    v30 = 0;
    v31 = 0.5;
    while (v30 < v3[2])
    {
      v32 = v3[v30 + 4];
      if (*(v32 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = ~(-1 << *(v32 + 32));
        while (1)
        {
          v35 = v33 & v34;
          if (((*(v32 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
          {
            break;
          }

          v36 = (*(v32 + 48) + 16 * v35);
          if (*v36 != v28 || v36[1] != v27)
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v33 = v35 + 1;
            if ((v38 & 1) == 0)
            {
              continue;
            }
          }

          v31 = v31 + 1.0;
          goto LABEL_35;
        }
      }

LABEL_35:
      if (++v30 == v29)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_19:
  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v23 = *(v20 + 8 * v25);
    ++v18;
    if (v23)
    {
      goto LABEL_22;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TfIdfComputer.vectorize(input:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = v3 + 64;
  OUTLINED_FUNCTION_1_62();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = _swiftEmptyDictionarySingleton;
  v101 = v3 + 64;
  for (i = v3; v7; v4 = v101)
  {
LABEL_6:
    v13 = (*(v3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v11;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    v19 = v11[2];
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_59;
    }

    v22 = v17;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21))
    {
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_64;
      }

      v22 = v24;
    }

    v3 = i;
    if (v23)
    {

      v11 = v105;
      *(v105[7] + 8 * v22) = 0;
    }

    else
    {
      v11 = v105;
      OUTLINED_FUNCTION_2_55(&v105[v22 >> 6]);
      v26 = (v105[6] + 16 * v22);
      *v26 = v15;
      v26[1] = v14;
      *(v11[7] + 8 * v22) = 0;
      v27 = v11[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_60;
      }

      v11[2] = v29;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_6;
    }
  }

  v30 = TfIdfComputer.tf(item:)(a1, a2);
  v31 = 0;
  v32 = v30 + 8;
  OUTLINED_FUNCTION_1_62();
  v35 = v34 & v33;
  v7 = (v36 + 63) >> 6;
  v37 = &unk_2B7000;
  v100 = v38;
LABEL_17:
  v39 = v31;
  v102 = v11;
  if (!v35)
  {
    goto LABEL_19;
  }

  do
  {
    v31 = v39;
LABEL_22:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v40 | (v31 << 6);
    v42 = (v30[6] + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    if (v11[2])
    {
      v45 = *(v30[7] + 8 * v41);

      v46 = OUTLINED_FUNCTION_3_54();
      specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
      if (v48)
      {
        v60 = 0.0;
        if (*(i + 16))
        {
          v61 = OUTLINED_FUNCTION_3_54();
          v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62);
          if (v64)
          {
            v60 = *(*(i + 56) + 8 * v63);
          }
        }

        v65 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v11;
        v66 = OUTLINED_FUNCTION_3_54();
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
        v69 = v11[2];
        v103 = v70;
        v71 = (v70 & 1) == 0;
        v72 = v69 + v71;
        if (__OFADD__(v69, v71))
        {
          __break(1u);
        }

        else
        {
          v73 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v65, v72))
          {
            v74 = OUTLINED_FUNCTION_3_54();
            v76 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v75);
            v78 = v103;
            v30 = v100;
            if ((v103 & 1) != (v77 & 1))
            {
              goto LABEL_64;
            }

            v73 = v76;
          }

          else
          {
            v30 = v100;
            v78 = v103;
          }

          v79 = v45 * v60;
          if (v78)
          {

            v11 = v105;
            *(v105[7] + 8 * v73) = v79;
LABEL_45:
            v37 = &unk_2B7000;
            goto LABEL_17;
          }

          v11 = v105;
          OUTLINED_FUNCTION_2_55(&v105[v73 >> 6]);
          v80 = (v105[6] + 16 * v73);
          *v80 = v43;
          v80[1] = v44;
          *(v11[7] + 8 * v73) = v79;
          v81 = v11[2];
          v28 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (!v28)
          {
            v11[2] = v82;
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_64:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    if (v37[95] != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.voiceCommands);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v105 = v53;
      *v52 = 136315138;
      v54 = OUTLINED_FUNCTION_3_54();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_0, v50, v51, "[TfIdf] skipping token not in training data %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      v58 = v53;
      v30 = v100;
      OUTLINED_FUNCTION_15_0(v58);
      v59 = v52;
      v37 = &unk_2B7000;
      OUTLINED_FUNCTION_15_0(v59);
    }

    else
    {
    }

    v39 = v31;
    v11 = v102;
  }

  while (v35);
LABEL_19:
  while (1)
  {
    v31 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v31 >= v7)
    {

      v105 = specialized _copyCollectionToContiguousArray<A>(_:)(v11);
      specialized MutableCollection<>.sort(by:)(&v105);
      v83 = v105;
      v84 = v105[2];
      if (v84)
      {
        v105 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
        v7 = v105;
        v85 = v105[2];
        v86 = 6;
        do
        {
          v87 = v83[v86];
          v105 = v7;
          v88 = *(v7 + 24);
          if (v85 >= v88 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v85 + 1, 1);
            v7 = v105;
          }

          *(v7 + 16) = v85 + 1;
          *(v7 + 8 * v85 + 32) = v87;
          v86 += 3;
          ++v85;
          --v84;
        }

        while (v84);
      }

      else
      {

        v7 = _swiftEmptyArrayStorage;
      }

      v11 = a2;
      if (v37[95] != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    }

    v35 = v32[v31];
    ++v39;
    if (v35)
    {
      goto LABEL_22;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  OUTLINED_FUNCTION_0_1();
  swift_once();
LABEL_54:
  v89 = type metadata accessor for Logger();
  __swift_project_value_buffer(v89, static Logger.voiceCommands);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v105 = v93;
    *v92 = 136315394;
    *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v11, &v105);
    *(v92 + 12) = 2080;
    v94 = Array.description.getter();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v105);

    *(v92 + 14) = v96;
    _os_log_impl(&dword_0, v90, v91, "[TfIdf] vectorizing input: %s vector: %s", v92, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v93);
    OUTLINED_FUNCTION_15_0(v92);
  }

  return v7;
}

void static TfIdfComputer.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  [v4 setLanguage:NLLanguageEnglish];
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(a1, a2, v4);
  v5 = NLTokenizer.tokens(for:)();
  v6 = *(v5 + 16);
  if (v6)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v5 + 40;
    do
    {
      String.subscript.getter();
      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      }

      v7 += 16;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      --v6;
    }

    while (v6);
  }

  v14 = 0;
  v15 = _swiftEmptyArrayStorage[2];
LABEL_7:
  for (i = &_swiftEmptyArrayStorage[2 * v14 + 5]; ; i += 2)
  {
    if (v15 == v14)
    {

      return;
    }

    if (v14 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    v18 = *(i - 1);
    v17 = *i;

    if (String.count.getter() > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
      }

      ++v14;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v18;
      v21[5] = v17;
      goto LABEL_7;
    }

    ++v14;
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
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

void *TfIdfComputer.tf(item:)(uint64_t a1, uint64_t a2)
{
  static TfIdfComputer.tokenize(_:)(a1, a2);
  v3 = v2;
  v4 = 0;
  v23 = *(v2 + 16);
  for (i = (v2 + 40); ; i += 2)
  {
    if (v23 == v4)
    {

      return _swiftEmptyDictionarySingleton;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_14;
    }

    v14 = v9;
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_16;
      }

      v14 = v16;
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_55(&_swiftEmptyDictionarySingleton[v14 >> 6]);
      v18 = (_swiftEmptyDictionarySingleton[6] + 16 * v14);
      *v18 = v7;
      v18[1] = v6;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v14) = 0;
      v19 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_15;
      }

      _swiftEmptyDictionarySingleton[2] = v21;
    }

    *(_swiftEmptyDictionarySingleton[7] + 8 * v14) = *(_swiftEmptyDictionarySingleton[7] + 8 * v14) + 1.0;

    ++v4;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TfIdfComputer.deinit()
{

  return v0;
}

uint64_t TfIdfComputer.__deallocating_deinit()
{
  TfIdfComputer.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_218740;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setString:v4];
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t SiriLinkFlowFeatureFlags.isEnabled.getter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  v2 = static SiriLinkFlowFeatureFlags.forceEnabled;
  if (*(static SiriLinkFlowFeatureFlags.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for SiriLinkFlowFeatureFlags;
    v7[4] = lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

uint64_t *SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  return &static SiriLinkFlowFeatureFlags.forceEnabled;
}

double static SiriLinkFlowFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static SiriLinkFlowFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  static SiriLinkFlowFeatureFlags.forceEnabled = a1;
}

uint64_t (*static SiriLinkFlowFeatureFlags.forceEnabled.modify())(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

double key path getter for static SiriLinkFlowFeatureFlags.forceEnabled : SiriLinkFlowFeatureFlags.Type@<D0>(void *a1@<X8>)
{
  SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static SiriLinkFlowFeatureFlags.forceEnabled;

  return result;
}

uint64_t key path setter for static SiriLinkFlowFeatureFlags.forceEnabled : SiriLinkFlowFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;

  SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  static SiriLinkFlowFeatureFlags.forceEnabled = v1;
}

const char *SiriLinkFlowFeatureFlags.feature.getter(char a1)
{
  result = "nlv4Followup";
  switch(a1)
  {
    case 1:
      result = "autoshortcuts";
      break;
    case 2:
      result = "rfMigration";
      break;
    case 3:
      result = "sendMailEncore";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  v6 = specialized Dictionary.subscript.getter(a4, static SiriLinkFlowFeatureFlags.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = OUTLINED_FUNCTION_2_39();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v9);
  static SiriLinkFlowFeatureFlags.forceEnabled = v12;
  v10 = swift_endAccess();
  a2(v10);
  return $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(a4, v6);
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 104) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:));
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v3 = *(v0 + 105);
  swift_beginAccess();
  *(v0 + 106) = specialized Dictionary.subscript.getter(v3, static SiriLinkFlowFeatureFlags.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = static SiriLinkFlowFeatureFlags.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, v3, isUniquelyReferenced_nonNull_native);
  static SiriLinkFlowFeatureFlags.forceEnabled = v9;
  swift_endAccess();
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  v6 = *(v0 + 64);

  return v8(v6);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v2 = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v2);
}

{
  $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105), *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105), *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = static SiriLinkFlowFeatureFlags.forceEnabled;
      v5 = static SiriLinkFlowFeatureFlags.forceEnabled;
      static SiriLinkFlowFeatureFlags.forceEnabled = 0x8000000000000000;
      v6 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMd, &_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
      lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags();
      _NativeDictionary._delete(at:)();
      static SiriLinkFlowFeatureFlags.forceEnabled = v12;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v7 = OUTLINED_FUNCTION_2_39();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v9);
    static SiriLinkFlowFeatureFlags.forceEnabled = v11;
  }

  return swift_endAccess();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for RFFeatureFlags.ResponseFramework();
  lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework, &protocol conformance descriptor for RFFeatureFlags.ResponseFramework);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
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
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    outlined destroy of AnyHashable(v7);
    if (v5)
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

{
  v13 = a1;
  v4 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework, &protocol conformance descriptor for RFFeatureFlags.ResponseFramework);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1AD0C4);
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

id LNAction.asSELFAction()()
{
  v1 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAction) init];
  if (!v1)
  {
    return v1;
  }

  v2 = [v0 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v3, v5, v1, &selRef_setActionIdentifierName_);
  v6 = [v0 presentationStyle];
  if (v6 < 3)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  [v1 setPresentationStyle:v7];
  v8 = [v0 parameters];
  type metadata accessor for LNProperty();
  OUTLINED_FUNCTION_71();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v9);
  if (!result)
  {
LABEL_21:

    return v1;
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = &off_2B4000;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) init];
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = [v15 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v13;
      v22 = v21;

      v23 = v22;
      v13 = v20;
      outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v19, v23, v17, &selRef_setName_);
      v24 = [v15 v20[336]];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 valueType];

        if (!v26)
        {
          goto LABEL_16;
        }

        objc_opt_self();
        OUTLINED_FUNCTION_71();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {
          break;
        }
      }

LABEL_17:
      v27 = v24 != 0;

      [v17 setIsArray:v27];
      v28 = [v15 v20[336]];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 valueType];

        v31 = LNValueType.asSELFType()();
        [v17 setType:v31];
      }

      [v1 addParameters:v17];

LABEL_20:
      ++v12;

      if (v11 == v12)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t LNPrimitiveValueTypeIdentifier.asSELFType()(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_2263A8[a1];
  }
}

void *LNValueType.asSELFType()()
{
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 memberValueType];
    v2 = LNValueType.asSELFType()();

    return v2;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v4 = [result typeIdentifier];
      if (v4 >= 0xD)
      {
        return 0;
      }

      else
      {
        return dword_2263A8[v4];
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for LNProperty()
{
  result = lazy cache variable for type metadata for LNProperty;
  if (!lazy cache variable for type metadata for LNProperty)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNProperty);
  }

  return result;
}

uint64_t static WFDialogState.isAppFirstRun(appId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = objc_allocWithZone(NSUserDefaults);

  v5 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000021, 0x8000000000234BF0);
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringArrayForKey:v7];

  if (v8)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v31[0] = a1;
  v31[1] = a2;
  __chkstk_darwin(v9);
  v30[2] = v31;
  v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v30, v10);

  if (v12)
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
      v17 = swift_slowAlloc();
      v31[0] = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_0, v14, v15, "#WFDialogState this is not the first time that %s shows a dialog", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_15_0(v17);
      OUTLINED_FUNCTION_15_0(v16);
    }

    else
    {
    }

    return 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
    _os_log_impl(&dword_0, v20, v21, "#WFDialogState app %s hasn't shown any dialogs before, showing app attribution", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_0(v23);
    OUTLINED_FUNCTION_15_0(v22);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v28;
  }

  v24 = v10[2];
  if (v24 >= v10[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v29;
  }

  v10[2] = v24 + 1;
  v25 = &v10[2 * v24];
  v25[4] = a1;
  v25[5] = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v27];

  return 1;
}

uint64_t *WFDialogState.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }

  return &static WFDialogState.shared;
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for WFDialogState();
  v1 = swift_allocObject();
  result = OUTLINED_FUNCTION_2_56(v1);
  static WFDialogState.shared = result;
  return result;
}

uint64_t static WFDialogState.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }
}

uint64_t WFDialogState.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 34) = 0;
  return result;
}

Swift::Void __swiftcall WFDialogState.prepareForShortcut(name:)(Swift::String name)
{
  if (*(v1 + 16) != name._countAndFlagsBits || *(v1 + 24) != name._object)
  {
    object = name._object;
    countAndFlagsBits = name._countAndFlagsBits;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(v1 + 16) = countAndFlagsBits;
      *(v1 + 24) = object;

      *(v1 + 32) = 0;
      *(v1 + 34) = 0;
    }
  }
}

uint64_t WFDialogState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v0 = v3;
  }
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = v2;
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 34) = 0;
  return result;
}

uint64_t UsoEntity_common_MeasurementComponent.measurementValue(locale:)(uint64_t a1)
{
  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_DurationComponent();
  OUTLINED_FUNCTION_1_58();

  if (v7)
  {
    v1 = UsoEntity_common_DurationComponent.measurementValue.getter();
  }

  else
  {
    CodeGenBase.entity.getter();
    type metadata accessor for UsoEntity_common_TemperatureComponent();
    OUTLINED_FUNCTION_1_58();

    v3 = dispatch thunk of UsoEntity_common_MeasurementComponent.value.getter();
    if (v3)
    {
      v1 = UsoEntity_common_Number.doubleValue.getter(v3);
      v5 = v4;
    }

    else
    {
      v1 = 0;
      v5 = 1;
    }

    if (dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter())
    {
      v6 = UsoEntity_common_MeasurementUnit.unitType.getter();

      if ((v5 & 1) == 0)
      {
        return v1;
      }
    }

    else
    {
      v6 = 0;
      if ((v5 & 1) == 0)
      {
        return v1;
      }
    }

    return 0;
  }

  return v1;
}

uint64_t UsoEntity_common_DurationComponent.measurementValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = dispatch thunk of UsoEntity_common_DurationComponent.value.getter();
  if (v3)
  {
    v4 = UsoEntity_common_Number.doubleValue.getter(v3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 1;
  }

  v7 = dispatch thunk of UsoEntity_common_DurationComponent.unit.getter();
  if (v7)
  {
    dispatch thunk of UsoEntity_common_TimeUnit.definedValue.getter();

    v8 = type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
    if (__swift_getEnumTagSinglePayload(v2, 1, v8) != 1)
    {
      v7 = UsoEntity_common_TimeUnit.DefinedValues.unitType.getter();
      (*(*(v8 - 8) + 8))(v2, v8);
      if ((v6 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

    outlined destroy of String?(v2, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
    v7 = 0;
  }

  if (v6)
  {
LABEL_8:

    return 0;
  }

  return v4;
}

uint64_t UsoEntity_common_TemperatureComponent.measurementValue(locale:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = dispatch thunk of UsoEntity_common_TemperatureComponent.value.getter();
  if (v4)
  {
    v5 = UsoEntity_common_Number.doubleValue.getter(v4);
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  v8 = dispatch thunk of UsoEntity_common_TemperatureComponent.unit.getter();
  if (v8)
  {
    dispatch thunk of UsoEntity_common_TemperatureUnit.definedValue.getter();

    v9 = type metadata accessor for UsoEntity_common_TemperatureUnit.DefinedValues();
    if (__swift_getEnumTagSinglePayload(v3, 1, v9) != 1)
    {
      v8 = UsoEntity_common_TemperatureUnit.DefinedValues.unitType(locale:)();
      (*(*(v9 - 8) + 8))(v3, v9);
      if ((v7 & 1) == 0)
      {
        return v5;
      }

      goto LABEL_8;
    }

    outlined destroy of String?(v3, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMR);
    v8 = 0;
  }

  if (v7)
  {
LABEL_8:

    return 0;
  }

  return v5;
}

id UsoEntity_common_TimeUnit.DefinedValues.unitType.getter()
{
  v2 = v1;
  type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
  OUTLINED_FUNCTION_0_46();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v0);
  v8 = (*(v4 + 88))(v7, v0);
  if (v8 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:))
  {
    v9 = [objc_opt_self() seconds];
  }

  else if (v8 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Minute(_:))
  {
    v9 = [objc_opt_self() minutes];
  }

  else if (v8 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Hour(_:))
  {
    v9 = [objc_opt_self() hours];
  }

  else
  {
    if (v8 != enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Millisecond(_:))
    {
      (*(v4 + 8))(v7, v0);
      return 0;
    }

    v9 = [objc_opt_self() milliseconds];
  }

  return v9;
}

id UsoEntity_common_TemperatureUnit.DefinedValues.unitType(locale:)()
{
  type metadata accessor for UsoEntity_common_TemperatureUnit.DefinedValues();
  OUTLINED_FUNCTION_0_46();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v0);
  v7 = (*(v3 + 88))(v6, v0);
  if (v7 == enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_Degrees(_:))
  {
    v8 = Locale.usesMetricSystem.getter();
    v9 = objc_opt_self();
    v10 = &selRef_celsius;
    if ((v8 & 1) == 0)
    {
      v10 = &selRef_fahrenheit;
    }

    v11 = [v9 *v10];
  }

  else if (v7 == enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_DegreesCelsius(_:))
  {
    v11 = [objc_opt_self() celsius];
  }

  else
  {
    if (v7 != enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_DegreesFahrenheit(_:))
    {
      (*(v3 + 8))(v6, v0);
      return 0;
    }

    v11 = [objc_opt_self() fahrenheit];
  }

  return v11;
}

uint64_t ResponseMode.toLinkInteractionMode(supportedModes:)(char a1)
{
  v2 = type metadata accessor for ResponseMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 0xE) == 0 || (a1)
  {

    return ResponseMode.toSimpleInteractionMode()();
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t LNActionModes.asString.getter(char a1)
{
  _StringGuts.grow(_:)(44);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x8000000000234CF0;
  String.append(_:)(v5);
  if ((a1 & 0xE) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0xE) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  return 0xD000000000000013;
}

uint64_t LNInteractionMode.asString.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x79616C707369642ELL;
      break;
    case 3:
      result = 0x6F466563696F762ELL;
      break;
    case 4:
      result = 0x6E4F6563696F762ELL;
      break;
    default:
      result = 0x6E776F6E6B6E755FLL;
      break;
  }

  return result;
}

uint64_t LNActionModes.supportsMultiIntentMode.getter(unint64_t a1)
{
  if ((a1 & 0xC) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = (a1 >> 1) & 1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ResponseMode.toSimpleInteractionMode()()
{
  v1 = v0;
  v2 = type metadata accessor for ResponseMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v3 + 16))(&v14 - v7, v1, v2);
  static ResponseMode.displayForward.getter();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(v8, v2);
    return 1;
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v10(v6, v2);
    if (v12)
    {
      v10(v8, v2);
      return 2;
    }

    else
    {
      static ResponseMode.voiceOnly.getter();
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();
      v10(v6, v2);
      v10(v8, v2);
      if (v13)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t InstallShortcutViewFactory.__allocating_init(deviceState:catWrapper:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of Output(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t InstallShortcutViewFactory.init(deviceState:catWrapper:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of Output(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t one-time initialization function for shortcutsApp()
{
  type metadata accessor for App();
  result = App.__allocating_init(appIdentifier:)();
  static InstallShortcutViewFactory.shortcutsApp = result;
  return result;
}

uint64_t *InstallShortcutViewFactory.shortcutsApp.unsafeMutableAddressor()
{
  if (one-time initialization token for shortcutsApp != -1)
  {
    OUTLINED_FUNCTION_3_55(&one-time initialization token for shortcutsApp);
  }

  return &static InstallShortcutViewFactory.shortcutsApp;
}

uint64_t static InstallShortcutViewFactory.shortcutsApp.getter()
{
  if (one-time initialization token for shortcutsApp != -1)
  {
    OUTLINED_FUNCTION_3_55(&one-time initialization token for shortcutsApp);
  }
}

uint64_t InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[9] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for TemplatingResult();
  v2[10] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v2[11] = v4;
  v2[12] = OUTLINED_FUNCTION_28();
  v7 = (*(*v1 + 112) + **(*v1 + 112));
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut();

  return v7();
}

uint64_t InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *(v1 + 64);
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v2 + 112) = v7;

  v11 = (*(*v4 + 128) + **(*v4 + 128));
  v8 = swift_task_alloc();
  *(v2 + 120) = v8;
  *v8 = v5;
  v8[1] = InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut();
  v9 = *(v1 + 96);

  return v11(v9);
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
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  if (v1 >> 62)
  {
    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
  }

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v3 + 8))(v2, v5);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t InstallShortcutViewFactory.makeAppLaunchButton()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = [objc_allocWithZone(SAUIButton) init];
  v0[3] = v2;
  v3 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v0[4] = v3;
  v4 = String._bridgeToObjectiveC()();
  [v3 setBundleId:v4];

  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v3;
  v6 = v3;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v5, v2);
  v9 = (*(*v1 + 120) + **(*v1 + 120));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = InstallShortcutViewFactory.makeAppLaunchButton();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  v1 = v0[4];
  v2 = v0[3];
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v0[7], v0[8], v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_216010;
  *(v3 + 32) = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t InstallShortcutViewFactory.makeAppLaunchButtonText()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for TemplatingSection();
  v1[6] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  *(v0 + 96) = OUTLINED_FUNCTION_7_34(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = InstallShortcutViewFactory.makeAppLaunchButtonText();
  OUTLINED_FUNCTION_11_33();

  return v2();
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
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = InstallShortcutViewFactory.makeAppLaunchButtonText();
  }

  else
  {

    v7 = InstallShortcutViewFactory.makeAppLaunchButtonText();
  }

  return _swift_task_switch(v7);
}

{

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "InstallShortcutViewFactory error generating app launch button text");
    OUTLINED_FUNCTION_15_0(v4);
  }

  v7 = *(v0 + 8);

  return v7(0, 0xE000000000000000);
}

uint64_t InstallShortcutViewFactory.makeAppLaunchButtonText()(uint64_t a1)
{
  v2 = *(TemplatingResult.sections.getter() + 16);

  if (v2)
  {
    v3 = TemplatingResult.sections.getter();
    if (*(v3 + 16))
    {
      v4 = v1[10];
      v26 = v1[11];
      v5 = v1[8];
      v6 = v1[9];
      v7 = v1[6];
      v8 = v1[7];
      v9 = v1[4];
      v10 = v1[5];
      v11 = v1[3];
      (*(v8 + 16))(v5, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      TemplatingSection.content.getter();
      (*(v8 + 8))(v5, v7);
      v12 = TemplatingText.text.getter();
      v14 = v13;
      (*(v9 + 8))(v10, v11);
      (*(v4 + 8))(v26, v6);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v19, v20, "InstallShortcutViewFactory app launch button text is empty");
    OUTLINED_FUNCTION_15_0(v18);
  }

  v22 = v1[10];
  v21 = v1[11];
  v23 = v1[9];

  (*(v22 + 8))(v21, v23);
  v12 = 0;
  v14 = 0xE000000000000000;
LABEL_8:

  v24 = v1[1];

  return v24(v12, v14);
}

uint64_t InstallShortcutViewFactory.makeErrorInstallShortcutTemplate()()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  *(v0 + 80) = OUTLINED_FUNCTION_7_34(*(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = InstallShortcutViewFactory.makeErrorInstallShortcutTemplate();
  OUTLINED_FUNCTION_11_33();

  return v2();
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
  *(v3 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutViewFactory.makeErrorInstallShortcutTemplate());
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

{
  v22 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate dialog due to error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_15_0(v5);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v1 - 8);
  (*(v12 + 16))(v10, v2, v1);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v1);
  outlined init with copy of Logger?(v10, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
  {
    outlined destroy of String?(*(v0 + 64), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315650;
      v17 = StaticString.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 78;
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000000234D10, &v21);
      _os_log_impl(&dword_0, v13, v14, "FatalError at %s:%lu - %s", v15, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0(v16);
      OUTLINED_FUNCTION_15_0(v15);
    }

    (*(v12 + 8))(*(v0 + 64), v1);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_3_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_34@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  v2 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);

  return DeviceState.asSiriKitDeviceState()(v2, v1);
}

uint64_t Siri_Nlu_External_UserDialogAct.stringValue.getter(uint64_t a1)
{
  v4 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v2)
  {
    v1 = v4;
    if (v4)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v16)
      {
        v5 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v5, v6, v7, v5, v8, v9, v10, v11, v13, v14);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v3)
          {
            v1 = v3;
            dispatch thunk of UsoEntity_common_VoiceCommandPayload.stringValue.getter();
            OUTLINED_FUNCTION_64_6();

            return v1;
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v15, &_sypSgMd, &_sypSgMR);
      }

      return 0;
    }
  }

  return v1;
}

uint64_t Siri_Nlu_External_UserDialogAct.smartPromptConfirmationValue()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  result = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v1)
  {
    if (result)
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
      OUTLINED_FUNCTION_48_11();

      if (v2)
      {
        v9 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.voiceCommandConfirmation.getter();

        if (v9)
        {
          dispatch thunk of UsoEntity_common_VoiceCommandConfirmation.definedValue.getter();

          type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
          OUTLINED_FUNCTION_20_14();
          OUTLINED_FUNCTION_58_8();
          if (__swift_getEnumTagSinglePayload(v10, v11, v12) != 1)
          {
            OUTLINED_FUNCTION_21_2();
            (*(v23 + 32))(a1, v7, v9);
            v19 = a1;
            v20 = 0;
            v21 = 1;
            v22 = v9;
            return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
          }

          outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
        }
      }
    }

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
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v17, v18, "#NLUUserDialogActInputUtils: unable to extract voice command confirmation value from UDA");
      OUTLINED_FUNCTION_15_1();
    }

    type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.urlValue.getter@<X0>(uint64_t a2@<X8>)
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v2)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v12[3])
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_48_11();

          if (v3)
          {
            if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.contactAddress.getter())
            {
              CodeGenBase.entity.getter();
            }

            type metadata accessor for UsoEntity_common_Uri();
            OUTLINED_FUNCTION_63_9();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v12[0])
            {

              dispatch thunk of UsoEntity_common_Uri.value.getter();
              v7 = v6;

              if (v7)
              {
                String.convertedToURL()(a2);
              }
            }
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_sypSgMd, &_sypSgMR);
      }
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  v7 = OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v7);
  *(v0 + 112) = v8;
  OUTLINED_FUNCTION_14(v8);
  *(v0 + 120) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[15];
  if (v0[18])
  {

    dispatch thunk of DateTime.dateComponents.getter();
    OUTLINED_FUNCTION_22_23();

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v1);
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v0[15]);
  }

  v2 = v0[7];
  v3 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_52_10(v2, v4, v5, v3);

  OUTLINED_FUNCTION_6_7();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 120);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v1);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v14[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      v21 = swift_dynamicCast();
      if (v21)
      {
        OUTLINED_FUNCTION_68_11(v21);
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();
        OUTLINED_FUNCTION_48_11();

        if (v16)
        {
          v23 = v14[14];
          v22 = v14[15];
          v14[16] = OUTLINED_FUNCTION_45_9();

          outlined init with copy of DeviceState(v19, v22);
          outlined init with copy of DeviceState(v18, v22 + 40);
          v24 = v23[6];
          type metadata accessor for Locale();
          OUTLINED_FUNCTION_4_11();
          (*(v25 + 16))(v22 + v24, v17);
          v26 = v23[7];
          type metadata accessor for Calendar();
          OUTLINED_FUNCTION_4_11();
          (*(v27 + 16))(v22 + v26, v15);
          v28 = v23[8];
          type metadata accessor for TimeZone();
          OUTLINED_FUNCTION_4_11();
          (*(v29 + 16))(v22 + v28, a10);
          v30 = swift_task_alloc();
          v14[17] = v30;
          *v30 = v14;
          v30[1] = Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:);
          OUTLINED_FUNCTION_6_1();

          return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v14 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for DateComponents();
  v0[14] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[15] = v8;
  v0[16] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v0[17] = OUTLINED_FUNCTION_27();
  v0[18] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v0[19] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_27();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  v0[27] = v12;
  OUTLINED_FUNCTION_14(v12);
  v0[28] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v4;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v15[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      v17 = swift_dynamicCast();
      if (v17)
      {
        OUTLINED_FUNCTION_68_11(v17);
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTimeRange.getter();
        OUTLINED_FUNCTION_59_9();

        if (v14)
        {
          v18 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
          v15[29] = v18;

          if (v18)
          {
            v19 = DateTime.DateTimeRange.start.getter();
            v15[30] = v19;
            if (v19)
            {
              v20 = DateTime.DateTimeRange.end.getter();
              v15[31] = v20;
              if (v20)
              {
                v22 = v15[27];
                v21 = v15[28];
                v24 = v15[11];
                v23 = v15[12];
                v26 = v15[9];
                v25 = v15[10];
                outlined init with copy of DeviceState(v15[8], v21);
                outlined init with copy of DeviceState(v26, v21 + 40);
                v27 = v22[6];
                type metadata accessor for Locale();
                OUTLINED_FUNCTION_4_11();
                (*(v28 + 16))(v21 + v27, v25);
                v29 = v22[7];
                type metadata accessor for Calendar();
                OUTLINED_FUNCTION_4_11();
                (*(v30 + 16))(v21 + v29, v24);
                v31 = v22[8];
                type metadata accessor for TimeZone();
                OUTLINED_FUNCTION_4_11();
                (*(v32 + 16))(v21 + v31, v23);
                v33 = swift_task_alloc();
                v15[32] = v33;
                *v33 = v15;
                OUTLINED_FUNCTION_65_9(v33);
                OUTLINED_FUNCTION_6_1();

                return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
              }
            }
          }
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v15 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  OUTLINED_FUNCTION_24_22();
  v48 = v15[17];
  v49 = v15[16];
  type metadata accessor for DateInterval();
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (v14[33])
  {
    v15 = swift_task_alloc();
    v14[35] = v15;
    *v15 = v14;
    OUTLINED_FUNCTION_65_9(v15);
    OUTLINED_FUNCTION_6_1();

    return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v14[28]);

    OUTLINED_FUNCTION_24_22();
    v30 = v14[17];
    v31 = v14[16];
    type metadata accessor for DateInterval();
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_6_1();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v30, v31, a12, a13, a14);
  }
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1)
{
  v61 = v1;
  if (!v1[36])
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v1[28]);

    goto LABEL_8;
  }

  v3 = v1[18];
  v2 = v1[19];
  v4 = v1[15];
  dispatch thunk of DateTime.dateComponents.getter();
  Calendar.date(from:)();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_13_5();
  v5(v6);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v7 = v1[18];
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v1[28]);

    v8 = v7;
LABEL_7:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_8;
  }

  v9 = v1[19];
  v10 = v1[17];
  v58 = *(v1[20] + 32);
  v58(v1[26], v1[18], v9);
  dispatch thunk of DateTime.dateComponents.getter();
  Calendar.date(from:)();
  v11 = OUTLINED_FUNCTION_13_5();
  v5(v11);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    v12 = v1[28];
    v13 = v1[26];
    v15 = v1[19];
    v14 = v1[20];
    v16 = v1[17];

    (*(v14 + 8))(v13, v15);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v12);
    v8 = v16;
    goto LABEL_7;
  }

  v58(v1[25], v1[17], v1[19]);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v24 = v1[25];
  v23 = v1[26];
  v26 = v1[23];
  v25 = v1[24];
  v27 = v1[19];
  v28 = v1[20];
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.voiceCommands);
  v30 = *(v28 + 16);
  v30(v25, v23, v27);
  v57 = v30;
  v30(v26, v24, v27);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v1[23];
  v34 = v1[24];
  v37 = v1[19];
  v36 = v1[20];
  if (v33)
  {
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v38 = 136315394;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v32;
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v34, v37);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v60);
    OUTLINED_FUNCTION_20_14();

    *(v38 + 4) = v34;
    *(v38 + 12) = 2080;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = OUTLINED_FUNCTION_75();
    v59 = v42;
    (v42)(v46);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v60);
    OUTLINED_FUNCTION_20_14();

    *(v38 + 14) = v43;
    _os_log_impl(&dword_0, v31, v55, "NLUUserDialogActInputUtils: dateIntervalValue() returned %s and %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v47 = *(v36 + 8);
    v47(v35, v37);
    v59 = v47;
    v47(v34, v37);
  }

  v48 = static Date.< infix(_:_:)();
  v56 = v1[28];
  v50 = v1[25];
  v49 = v1[26];
  v51 = v1[21];
  v52 = v1[19];
  if (v48)
  {
    v57(v1[22], v1[26], v1[19]);
    v53 = OUTLINED_FUNCTION_31_16();
  }

  else
  {
    v57(v1[22], v1[25], v1[19]);
    v53 = v51;
    v54 = v49;
  }

  v57(v53, v54, v52);
  DateInterval.init(start:end:)();

  v59(v50, v52);
  v59(v49, v52);
  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v56);
LABEL_8:
  type metadata accessor for DateInterval();
  v17 = OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_52_10(v17, v18, v19, v20);

  OUTLINED_FUNCTION_6_7();

  return v21();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = *(v12 + 224);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v13);
  v23 = *(v12 + 272);
  OUTLINED_FUNCTION_24_22();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, v23, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  v13 = *(v12 + 224);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v13);
  v23 = *(v12 + 296);
  OUTLINED_FUNCTION_24_22();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, v23, a10, a11, a12);
}

uint64_t Siri_Nlu_External_UserDialogAct.placemarkValue(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v1);
  v0[2] = OUTLINED_FUNCTION_28();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_28();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_37_13(v4);

  return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *(v1 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_58_8();
  if (__swift_getEnumTagSinglePayload(v3, v4, v5) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v6 = 0;
  }

  else
  {
    v8 = v0[4];
    v7 = v0[5];
    (*(v8 + 32))(v7, v1, v2);
    v6 = static InputUtils.getPlacemark(_:)();
    (*(v8 + 8))(v7, v2);
  }

  v9 = v0[1];

  return v9(v6);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

Class Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(uint64_t a1, uint64_t a2)
{
  v150 = a1;
  v149 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v143 = &v135 - v5;
  type metadata accessor for Contact();
  OUTLINED_FUNCTION_7_1();
  v146 = v7;
  v147 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  v144 = v8 - v9;
  __chkstk_darwin(v10);
  v145 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v135 - v18;
  v20 = type metadata accessor for ContactResolverConfig();
  OUTLINED_FUNCTION_7_1();
  v148 = v21;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7_1();
  v28 = v27;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_50_0();
  v32 = (v30 - v31);
  __chkstk_darwin(v33);
  v35 = &v135 - v34;
  v36 = v151;
  v37 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v36)
  {
    isa = v37;
    v141 = v32;
    v142 = v25;
    v136 = v16;
    v137 = v19;
    v151 = v35;
    v138 = v20;
    v139 = v28;
    v140 = v26;
    if (v37)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (!v152[3])
      {
        v54 = &_sypSgMd;
        v55 = &_sypSgMR;
        v56 = v152;
LABEL_11:
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v56, v54, v55);
        return 0;
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v38 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

      if (!v38)
      {
        return 0;
      }

      if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.agent.getter())
      {
        CodeGenBase.entity.getter();
      }

      v40 = v150;
      v39 = v151;
      v41 = v149;
      v42 = v141;
      type metadata accessor for UsoEntity_common_Person();
      OUTLINED_FUNCTION_63_9();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      v43 = v152[0];
      if (!v152[0])
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v58, static Logger.voiceCommands);
        v59 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v60 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_18_1();
          v62 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v62);
          OUTLINED_FUNCTION_21_6(&dword_0, v63, v64, "#NLUUserDialogActInputUtils: Could not create ContactQuery from parse");
          OUTLINED_FUNCTION_15_1();
        }

        return 0;
      }

      v150 = v38;

      UsoEntity_common_Person.toContactQuery()();

      v149 = v43;
      v44 = v42;
      v46 = v139;
      v45 = v140;
      (*(v139 + 32))(v39, v44, v140);
      v47 = v40;
      v48 = v40[3];
      v49 = v47[4];
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v49 + 8))(v41, v48, v49);
      v141 = __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_216850;
      (*(v46 + 16))(v51 + v50, v39, v45);
      v52 = OUTLINED_FUNCTION_31_16();
      v65 = v53(v52);
      v66 = v39;

      v67 = v137;
      specialized Collection.first.getter(v65, v137);

      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
      OUTLINED_FUNCTION_58_8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, v70, v71);
      v73 = v138;
      v74 = v148;
      if (EnumTagSinglePayload == 1)
      {
LABEL_20:
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v75, static Logger.voiceCommands);
        v76 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        v77 = OUTLINED_FUNCTION_17_18();
        v79 = os_log_type_enabled(v77, v78);
        v81 = v139;
        v80 = v140;
        if (v79)
        {
          OUTLINED_FUNCTION_18_1();
          v82 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v82);
          OUTLINED_FUNCTION_21_6(&dword_0, v83, v84, "#NLUUserDialogActInputUtils ContactResolver could not recommend a contact");
          OUTLINED_FUNCTION_15_1();
        }

        (*(v74 + 8))(v142, v73);
        (*(v81 + 8))(v151, v80);
        v54 = &_s13SiriInference14RecommendationOyAA7ContactVGSgMd;
        v55 = &_s13SiriInference14RecommendationOyAA7ContactVGSgMR;
        v56 = v67;
        goto LABEL_11;
      }

      v85 = v136;
      outlined init with copy of SiriWorkflowRunnerEvent?(v67, v136, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
      v86 = *(v68 - 8);
      v87 = (*(v86 + 88))(v85, v68);
      if (v87 == enum case for Recommendation.confident<A>(_:))
      {
        v88 = OUTLINED_FUNCTION_42_13();
        v89(v88);
        v90 = v85;
        v91 = v145;
        (*(v146 + 32))(v145, v90, v147);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v92 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v92, static Logger.voiceCommands);
        v93 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v94 = OUTLINED_FUNCTION_17_18();
        v96 = os_log_type_enabled(v94, v95);
        v97 = v140;
        if (v96)
        {
          OUTLINED_FUNCTION_18_1();
          v98 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v98);
          OUTLINED_FUNCTION_21_6(&dword_0, v99, v100, "#NLUUserDialogActInputUtils ContactResolver confidently recommended a contact");
          OUTLINED_FUNCTION_15_1();
        }

        isa = Contact.toINPerson()().super.isa;

        (*(v146 + 8))(v91, v147);
        v101 = OUTLINED_FUNCTION_43_11();
        v102(v101);
        OUTLINED_FUNCTION_54_10();
        v104 = v39;
      }

      else
      {
        if (v87 != enum case for Recommendation.needsConfirmation<A>(_:))
        {
          if (v87 != enum case for Recommendation.needsDisambiguation<A>(_:))
          {
            (*(v86 + 8))(v85, v68);
            goto LABEL_20;
          }

          v116 = OUTLINED_FUNCTION_42_13();
          v117(v116);
          v118 = *v85;
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0_1();
            swift_once();
          }

          v119 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v119, static Logger.voiceCommands);
          v120 = Logger.logObject.getter();
          static os_log_type_t.info.getter();
          v121 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v121, v122))
          {
            OUTLINED_FUNCTION_18_1();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_81(&dword_0, v123, v124, "#NLUUserDialogActInputUtils ContactResolver call returned needsDisambiguation which is unsupported, picking first one");
            OUTLINED_FUNCTION_15_1();
          }

          v125 = v143;
          specialized Collection.first.getter(v118, v143);

          v126 = v147;
          if (__swift_getEnumTagSinglePayload(v125, 1, v147) == 1)
          {

            v127 = OUTLINED_FUNCTION_43_11();
            v128(v127);
            OUTLINED_FUNCTION_54_10();
            v129 = OUTLINED_FUNCTION_13_5();
            v130(v129);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(v125, &_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
            isa = 0;
          }

          else
          {
            isa = Contact.toINPerson()().super.isa;

            v131 = OUTLINED_FUNCTION_43_11();
            v132(v131);
            OUTLINED_FUNCTION_54_10();
            v133 = OUTLINED_FUNCTION_13_5();
            v134(v133);
            (*(v146 + 8))(v125, v126);
          }

LABEL_38:
          outlined destroy of Siri_Nlu_External_UserDialogAct?(v67, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
          return isa;
        }

        v105 = OUTLINED_FUNCTION_42_13();
        v106(v105);
        v107 = v85;
        v108 = v144;
        (*(v146 + 32))(v144, v107, v147);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v109, static Logger.voiceCommands);
        v110 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        v111 = OUTLINED_FUNCTION_17_18();
        v113 = os_log_type_enabled(v111, v112);
        v97 = v140;
        if (v113)
        {
          OUTLINED_FUNCTION_18_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_81(&dword_0, v114, v115, "#NLUUserDialogActInputUtils ContactResolver call returned needsConfirmation which is unsupported, returning contact");
          v66 = v151;
          OUTLINED_FUNCTION_15_1();
        }

        isa = Contact.toINPerson()().super.isa;

        (*(v146 + 8))(v108, v147);
        (*(v74 + 8))(v142, v73);
        OUTLINED_FUNCTION_54_10();
        v104 = v66;
      }

      v103(v104, v97);
      goto LABEL_38;
    }
  }

  return isa;
}