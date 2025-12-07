uint64_t ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Parse();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  type metadata accessor for GeoParse();
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v1, (v0 + 16));
  (*(v2 + 8))(v1, v3);
  outlined init with copy of GeoIntent?(v0 + 16, v0 + 56);
  if (!*(v0 + 80))
  {
    outlined destroy of Mirror.DisplayStyle?(v0 + 56, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
  type metadata accessor for LocationSearchIntent(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    lazy protocol witness table accessor for type Errors and conformance Errors();
    swift_allocError();
    *v5 = 0xD00000000000001CLL;
    *(v5 + 8) = 0x80000000000C3AC0;
    *(v5 + 16) = 0;
    swift_willThrow();
LABEL_7:
    outlined destroy of Mirror.DisplayStyle?(v0 + 16, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);

    v6 = *(v0 + 8);
    goto LABEL_8;
  }

  v4 = *(**(v0 + 96) + 152);
  if (v4() == 3)
  {

    goto LABEL_6;
  }

  v8 = v4();
  if ((v8 - 1) >= 2)
  {
    if (v8)
    {
      lazy protocol witness table accessor for type Errors and conformance Errors();
      swift_allocError();
      *v14 = 0xD000000000000020;
      *(v14 + 8) = 0x80000000000C3AE0;
      *(v14 + 16) = 0;
      swift_willThrow();

      goto LABEL_7;
    }

    v9 = &enum case for ConfirmationResponse.confirmed(_:);
  }

  else
  {
    v9 = &enum case for ConfirmationResponse.rejected(_:);
  }

  v10 = *(v0 + 120);
  v11 = *v9;
  v12 = type metadata accessor for ConfirmationResponse();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  SimpleConfirmationResponseProvider.init(_:)();

  outlined destroy of Mirror.DisplayStyle?(v0 + 16, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);

  v6 = *(v0 + 8);
LABEL_8:

  return v6();
}

uint64_t ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[36] = swift_task_alloc();
  v4 = type metadata accessor for PommesContext.Source();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[45] = v6;
  v3[46] = *(v6 - 8);
  v3[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v3[48] = swift_task_alloc();
  v7 = type metadata accessor for ActivityType();
  v3[49] = v7;
  v3[50] = *(v7 - 8);
  v3[51] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[52] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

id ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[34];
  type metadata accessor for DialogPerson();
  v5 = v4;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v21 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  v0[53] = v21;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static SiriKitEventSender.current.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  (*(v3 + 104))(v1, enum case for ActivityType.confirmation(_:), v2);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v7 = result;
    v8 = v0[48];
    v20 = v0[35];
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = enum case for SiriKitReliabilityCodes.normal(_:);
    v10 = type metadata accessor for SiriKitReliabilityCodes();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v8, v9, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v12 = *(v20 + 32);
    v0[15] = type metadata accessor for ShareETA(0);
    v0[16] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
    *boxed_opaque_existential_0 = v21;
    v15 = enum case for BehaviorAfterSpeaking.listen(_:);
    v16 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v16 - 8) + 104))(boxed_opaque_existential_0 + v14, v15, v16);
    swift_storeEnumTagMultiPayload();

    v17 = static DialogHelper.globals.getter();
    v0[54] = v17;
    v22 = (*(*v12 + 112) + **(*v12 + 112));
    v18 = swift_task_alloc();
    v0[55] = v18;
    *v18 = v0;
    v18[1] = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v19 = v0[47];

    return v22(v19, v0 + 12, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    v3 = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v38 = v0;
  v1 = v0;
  v2 = v0[35];
  v3 = static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)(v2[5]);
  v4 = (*(*v2 + 120))(v3);
  v5 = v0[35];
  if (v4)
  {
    v6 = v5[2];
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "makePromptForConfirmation adding Pommes Context", v8, 2u);
    }

    v9 = v0[40];
    (*(v0[38] + 104))(v0[39], enum case for PommesContext.Source.pluginDefined(_:), v0[37]);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v10 = type metadata accessor for PommesContext();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    NLContextUpdate.pommesContext.setter();
  }

  else if ((*(*v5 + 144))())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v11 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_B89E0;
    static UsoRequest.makeSDAForYesNoCancel()(v13 + v12);
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  v14 = v1[35];
  v15 = static os_log_type_t.info.getter();
  v16 = *(v14 + 16);
  if (os_log_type_enabled(v16, v15))
  {
    v18 = v1[43];
    v17 = v1[44];
    v20 = v1[41];
    v19 = v1[42];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136315138;
    swift_beginAccess();
    (*(v19 + 16))(v18, v17, v20);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v16, v15, "makePromptForConfirmation: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v26 = v1[47];
  v27 = v1[46];
  v36 = v1[45];
  v28 = v1[44];
  v29 = v1[41];
  v30 = v1[42];
  v31 = v1[36];
  v32 = v1[33];
  swift_beginAccess();
  (*(v30 + 16))(v31, v28, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  static Device.current.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v33 = type metadata accessor for AceOutput();
  *(v1 + 12) = 0u;
  v1[26] = 0;
  *(v1 + 11) = 0u;
  v32[3] = v33;
  v32[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v32);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Mirror.DisplayStyle?((v1 + 22), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 17);
  outlined destroy of Mirror.DisplayStyle?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v27 + 8))(v26, v36);
  (*(v30 + 8))(v28, v29);

  v34 = v1[1];

  return v34();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for PommesContext.Source();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v2[34] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[39] = swift_task_alloc();
  v6 = type metadata accessor for ActivityType();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse(), 0, 0);
}

id ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  v45 = v1;
  v2 = v1;
  v5 = v1 + 328;
  v4 = *(v1 + 328);
  v3 = *(v5 + 8);
  v6 = *(v2 + 320);
  static SiriKitEventSender.current.getter();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  (*(v4 + 104))(v3, enum case for ActivityType.confirmationRejected(_:), v6);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v2 + 312);
  v10 = *(v2 + 200);
  type metadata accessor for SiriKitEvent();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v9, v11, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
  static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)(*(v10 + 40));
  v14 = static os_log_type_t.info.getter();
  v15 = *(v10 + 16);
  v16 = os_log_type_enabled(v15, v14);
  if (v16)
  {
    v18 = *(v2 + 296);
    v17 = *(v2 + 304);
    v20 = *(v2 + 280);
    v19 = *(v2 + 288);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315138;
    swift_beginAccess();
    (*(v19 + 16))(v18, v17, v20);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v44);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v15, v14, "nl context = %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  if ((*(**(v2 + 200) + 120))(v16))
  {
    v27 = *(v2 + 264);
    v26 = *(v2 + 272);
    v29 = *(v2 + 248);
    v28 = *(v2 + 256);
    v30 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v30, &dword_0, v15, "makeConfirmationRejectedResponse adding Pommes Context", 54, 2, &_swiftEmptyArrayStorage);
    (*(v28 + 104))(v27, enum case for PommesContext.Source.pluginDefined(_:), v29);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v31 = type metadata accessor for PommesContext();
    (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
    swift_beginAccess();
    NLContextUpdate.pommesContext.setter();
LABEL_8:
    swift_endAccess();
    goto LABEL_9;
  }

  if ((*(**(v2 + 200) + 144))())
  {
    v33 = *(v2 + 232);
    v32 = *(v2 + 240);
    v35 = *(v2 + 216);
    v34 = *(v2 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    *(swift_allocObject() + 16) = xmmword_B89E0;
    type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    swift_allocObject();
    v36 = UsoTaskBuilder_noVerb_common_Person.init()();
    type metadata accessor for UsoEntityBuilder_common_Person();
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    static Siri_Nlu_External_SystemPrompted.from(_:)(v36, v32);
    Siri_Nlu_External_SystemDialogAct.init()();
    (*(v34 + 16))(v33, v32, v35);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v34 + 8))(v32, v35);
    swift_beginAccess();
    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_8;
  }

LABEL_9:
  v37 = *(v2 + 304);
  v38 = *(v2 + 288);
  v39 = *(v2 + 280);
  v40 = *(v2 + 208);
  v41 = *(v2 + 192);
  swift_beginAccess();
  (*(v38 + 16))(v40, v37, v39);
  (*(v38 + 56))(v40, 0, 1, v39);
  v42 = type metadata accessor for AceOutput();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 56) = 0u;
  v41[3] = v42;
  v41[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v41);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v2 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v40, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v38 + 8))(v37, v39);

  v43 = *(v2 + 8);

  return v43();
}

uint64_t ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for ActivityType();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeFlowCancelledResponse(), 0, 0);
}

id ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  static SiriKitEventSender.current.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  (*(v3 + 104))(v2, enum case for ActivityType.canceled(_:), v4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v6 = result;
    v7 = v1[28];
    v15 = v1[23];
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v9 = type metadata accessor for SiriKitReliabilityCodes();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v7, v8, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
    v11 = *(v15 + 32);
    v1[10] = &type metadata for Common;
    v1[11] = &protocol witness table for Common;
    v1[7] = 0;
    v12 = static DialogHelper.globals.getter();
    v1[32] = v12;
    v16 = (*(*v11 + 112) + **(*v11 + 112));
    v13 = swift_task_alloc();
    v1[33] = v13;
    *v13 = v1;
    v13[1] = ShareETAContactConfirmationStrategy.makeFlowCancelledResponse();
    v14 = v1[27];

    return v16(v14, v1 + 7, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = ShareETAContactConfirmationStrategy.makeFlowCancelledResponse();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = ShareETAPromptForContactStrategy.makeFlowCancelledResponse();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ShareETAContactConfirmationStrategy.makeErrorResponse(_:)()
{
  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeErrorResponse(_:), 0, 0);
}

{
  lazy protocol witness table accessor for type Errors and conformance Errors();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x80000000000C3B50;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ShareETAContactConfirmationStrategy.confirmationHandle(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GeoParse();
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v11, v26);
  (*(v9 + 8))(v11, v8);
  outlined init with copy of GeoIntent?(v26, v25);
  if (!v25[3])
  {
    outlined destroy of Mirror.DisplayStyle?(v25, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
  type metadata accessor for LocationSearchIntent(0);
  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
LABEL_6:
    v15 = static os_log_type_t.debug.getter();
    v16 = *(v2 + 16);
    (*(v5 + 16))(v7, a1, v4);
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      Input.parse.getter();
      v19 = String.init<A>(describing:)();
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v16, v15, "ignoring parse %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    static ActionForInput.ignore()();
    return outlined destroy of Mirror.DisplayStyle?(v26, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
  }

  v13 = *(*v24[1] + 152);
  v14 = v13(v12);
  if (v14 == 3)
  {

    goto LABEL_6;
  }

  if (v13(v14) == 2)
  {
    static ActionForInput.cancel()();
  }

  else
  {
    static ActionForInput.handle()();
  }

  return outlined destroy of Mirror.DisplayStyle?(v26, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
}

uint64_t ShareETAContactConfirmationStrategy.deinit()
{

  return v0;
}

uint64_t ShareETAContactConfirmationStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShareETAContactConfirmationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShareETAContactConfirmationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ShareETAContactConfirmationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAContactConfirmationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t sub_AD954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_AD9EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t TrafficIncidentBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t TrafficIncidentBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  Input.parse.getter();
  (*(v2 + 16))(v4, v6, v1);
  v7 = (*(v2 + 88))(v4, v1);
  if (v7 == enum case for Parse.NLv3IntentOnly(_:))
  {
    static ActionForInput.handle()();
  }

  else
  {
    if (v7 == enum case for Parse.pommesResponse(_:))
    {
      v8 = *(v2 + 8);
      v8(v4, v1);
      v9 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v9, &dword_0, *(v0 + 16), "actionForInput - pommesResponse", 31, 2, &_swiftEmptyArrayStorage);
      static ActionForInput.handle()();
      return (v8)(v6, v1);
    }

    v11 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, *(v0 + 16), "actionForInput - shouldn't hit default case", 43, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.cancel()();
  }

  v12 = *(v2 + 8);
  v12(v6, v1);
  return (v12)(v4, v1);
}

uint64_t TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1)
{
  v22 = v1;
  v2 = v1[2];
  v3 = v1[3];
  if (v2)
  {
    v4 = v2;
    v5 = static os_log_type_t.info.getter();
    v6 = *(v3 + 16);
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = v4;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_0, v6, v5, "makeIntentFromParse with current intent: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    v15 = v1[1];

    return v15(v4);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v17, &dword_0, *(v3 + 16), "makeIntentFromParse should have INReportIncidentIntent passed in", 64, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for RuntimeError();
    v18 = swift_allocObject();
    *(v18 + 16) = 0xD000000000000040;
    *(v18 + 24) = 0x80000000000C3BD0;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_5(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
    swift_allocError();
    *v19 = v18;
    swift_willThrow();
    v20 = v1[1];

    return v20();
  }
}

uint64_t TrafficIncidentBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 96) + **(**v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_5(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t WhereAmIFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 160))(v2);
}

uint64_t sub_AE878()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t CLPlacemark.makeDialogLocation()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin();
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v39 - v3;
  __chkstk_darwin();
  v5 = &v39 - v4;
  __chkstk_darwin();
  v7 = &v39 - v6;
  __chkstk_darwin();
  v9 = &v39 - v8;
  __chkstk_darwin();
  v11 = &v39 - v10;
  type metadata accessor for DialogLocationAddress.Builder();
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  v12 = [v0 fullThoroughfare];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v14 = type metadata accessor for SpeakableString();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for SpeakableString();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of Mirror.DisplayStyle?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = [v1 locality];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = type metadata accessor for SpeakableString();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = 1;
  v23 = v21;
  v42 = v20 + 56;
  v21(v9, v18, 1, v19);
  dispatch thunk of DialogLocationAddress.Builder.withLocality(_:)();

  outlined destroy of Mirror.DisplayStyle?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = [v1 country];
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v22 = 0;
  }

  v26 = 1;
  v23(v7, v22, 1, v19);
  dispatch thunk of DialogLocationAddress.Builder.withCountry(_:)();

  outlined destroy of Mirror.DisplayStyle?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v27 = [v1 administrativeArea];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v26 = 0;
  }

  v29 = 1;
  v23(v5, v26, 1, v19);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(_:)();

  outlined destroy of Mirror.DisplayStyle?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v30 = [v1 subLocality];
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v40;
    String.toSpeakableString.getter();

    v29 = 0;
  }

  else
  {
    v32 = v40;
  }

  v33 = 1;
  v23(v32, v29, 1, v19);
  dispatch thunk of DialogLocationAddress.Builder.withSubLocality(_:)();

  outlined destroy of Mirror.DisplayStyle?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v34 = [v1 postalCode];
  if (v34)
  {
    v35 = v34;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v41;
    String.toSpeakableString.getter();

    v33 = 0;
  }

  else
  {
    v36 = v41;
  }

  v23(v36, v33, 1, v19);
  dispatch thunk of DialogLocationAddress.Builder.withPostCode(_:)();

  outlined destroy of Mirror.DisplayStyle?(v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v37 = dispatch thunk of DialogLocationAddress.Builder.build()();

  return v37;
}

void *WhereAmIFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v1, *(v0 + 32));
  return v1;
}

void WhereAmIFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  v6 = *(v2 + 32);
  *(v2 + 32) = a2;
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v5, v6);
}

uint64_t WhereAmIFlow.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized WhereAmIFlow.init(with:)(v6, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t WhereAmIFlow.init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized WhereAmIFlow.init(with:)(v6, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t WhereAmIFlow.executeState()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(WhereAmIFlow.executeState(), 0, 0);
}

uint64_t WhereAmIFlow.executeState()()
{
  v30 = v0;
  v1 = (*(**(v0 + 40) + 112))();
  v3 = v1;
  *(v0 + 48) = v1;
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = *(v0 + 40);
      v5 = static os_log_type_t.default.getter();
      v6 = *(v4 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v29 = v8;
        *v7 = 136315138;
        *(v0 + 16) = v3;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v29);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "WhereAmIFlow execute request unsupported with err: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      static ExecuteResponse.complete()();
      outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v3, 1);
      goto LABEL_14;
    }

    if (v1)
    {
      if (v1 != 1)
      {
        v17 = *(v0 + 40);
        v18 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v18, &dword_0, *(v17 + 16), "WhereAmI execute rchComplete", 28, 2, &_swiftEmptyArrayStorage);
        static ExecuteResponse.complete()();
LABEL_14:
        v22 = *(v0 + 8);

        return v22();
      }
    }

    else
    {
      v19 = *(v0 + 40);
      v20 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v20, &dword_0, *(v19 + 16), "Creating .whereAmI guardFlows", 29, 2, &_swiftEmptyArrayStorage);
      if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
        type metadata accessor for CommonFlowGuard();
        *(swift_allocObject() + 16) = xmmword_B89E0;
        static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
        v21 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

        *(v0 + 24) = v21;
        type metadata accessor for GuardFlow();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_14;
      }

      (*(**(v0 + 40) + 120))(1, 2);
    }

    v23 = *(v0 + 40);
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v24, &dword_0, v23[2], " .whereAmI flow prechecks", 25, 2, &_swiftEmptyArrayStorage);
    v28 = (*(*v23 + 184) + **(*v23 + 184));
    v25 = swift_task_alloc();
    *(v0 + 64) = v25;
    *v25 = v0;
    v25[1] = AnswerETAFlow.executeState();
    v26 = *(v0 + 32);

    return v28(v26);
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_0, v12[2], "Handling the WhereAmI Flow", 26, 2, &_swiftEmptyArrayStorage);
    v27 = (*(*v12 + 192) + **(*v12 + 192));
    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    *v14 = v0;
    v14[1] = WhereAmIFlow.executeState();
    v15 = *(v0 + 32);

    return v27(v15, v3);
  }
}

{

  return _swift_task_switch(WhereAmIFlow.executeState(), 0, 0);
}

{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 48), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in WhereAmIFlow.executeState()(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = static os_log_type_t.info.getter();
  v5 = a2[2];
  os_log(_:dso:log:_:_:)(v4, &dword_0, v5, "location prompting result", 25, 2, &_swiftEmptyArrayStorage);
  if (v3 == 1)
  {
    v6 = static os_log_type_t.error.getter();
    v7 = 2;
    os_log(_:dso:log:_:_:)(v6, &dword_0, v5, "location prompting fail, let the guard flow handle this", 55, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_0, v5, "location prompting pass", 23, 2, &_swiftEmptyArrayStorage);
    v7 = 1;
  }

  return (*(*a2 + 120))(v7, 2);
}

uint64_t WhereAmIFlow.preChecks()(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceIdiomOSgMd, &_s13SiriUtilities11DeviceIdiomOSgMR);
  v2[33] = swift_task_alloc();
  v3 = type metadata accessor for DeviceIdiom();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(WhereAmIFlow.preChecks(), 0, 0);
}

uint64_t WhereAmIFlow.preChecks()()
{
  v23 = v0;
  type metadata accessor for SiriEnvironment();
  v1 = static SiriEnvironment.forCurrentTask.getter();
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  if (v1)
  {
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceIdiom.getter();

    (*(v4 + 56))(v5, 0, 1, v3);
    (*(v4 + 32))(v2, v5, v3);
  }

  else
  {
    (*(v4 + 56))(*(v0 + 264), 1, 1, *(v0 + 272));
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceIdiom.getter();

    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 264), &_s13SiriUtilities11DeviceIdiomOSgMd, &_s13SiriUtilities11DeviceIdiomOSgMR);
    }
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  (*(v8 + 104))(v6, enum case for DeviceIdiom.tv(_:), v7);
  v9 = static DeviceIdiom.== infix(_:_:)();
  v10 = *(v8 + 8);
  v11 = v10(v6, v7);
  v12 = *(v0 + 296);
  v13 = *(v0 + 272);
  if (v9)
  {
    static Device.current.getter();
    v14 = type metadata accessor for GeoRCHFlowFactoryImpl();
    v15 = swift_allocObject();
    *(v0 + 80) = v14;
    *(v0 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
    *(v0 + 56) = v15;
    *(v0 + 96) = static DialogHelper.globals.getter();
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for CATService();
    v16 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v16 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
    *(v16 + 32) = OS_os_log.init(subsystem:category:)();
    *(v16 + 16) = 0;
    *(v0 + 184) = v16;
    type metadata accessor for UnsupportedDeviceFlow();
    v18 = swift_allocObject();
    *(v0 + 216) = &type metadata for FlowHelperImpl;
    *(v0 + 224) = &protocol witness table for FlowHelperImpl;
    v19 = swift_allocObject();
    *(v0 + 192) = v19;
    outlined init with copy of FlowHelperImpl(v0 + 16, v19 + 16);
    *(v18 + 16) = OS_os_log.init(subsystem:category:)();
    outlined init with take of CATType((v0 + 192), v18 + 24);
    outlined destroy of FlowHelperImpl(v0 + 16);
    *(v0 + 240) = v18;
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow, 255, type metadata accessor for UnsupportedDeviceFlow, &protocol conformance descriptor for UnsupportedDeviceFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    (*(**(v0 + 256) + 136))(v22, v11);
    type metadata accessor for LocationFetchFlow();
    swift_allocObject();
    *(v0 + 232) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v22, 3);
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, 255, type metadata accessor for LocationFetchFlow, &protocol conformance descriptor for LocationFetchFlow);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  v10(v12, v13);

  v20 = *(v0 + 8);

  return v20();
}

void closure #1 in WhereAmIFlow.preChecks()(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      v15 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v15, &dword_0, a2[2], "Unable to get location services", 31, 2, &_swiftEmptyArrayStorage);
    }

    else
    {
      v17 = static os_log_type_t.info.getter();
      v18 = a2[2];
      if (v3)
      {
        os_log(_:dso:log:_:_:)(v17, &dword_0, v18, "Location Services are required for WhereAmI", 43, 2, &_swiftEmptyArrayStorage);
      }

      else
      {
        os_log(_:dso:log:_:_:)(v17, &dword_0, v18, "Siri Location Services are required for WhereAmI", 48, 2, &_swiftEmptyArrayStorage);
      }
    }

    goto LABEL_14;
  }

  if (*(a1 + 8))
  {
    v16 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v16, &dword_0, a2[2], "Precise Location Services are required for WhereAmI", 51, 2, &_swiftEmptyArrayStorage);
LABEL_14:
    (*(*a2 + 120))(2, 2);
    return;
  }

  v4 = [objc_opt_self() placemarkWithLocation:v3 name:0 postalAddress:0];
  v5 = static os_log_type_t.info.getter();
  v6 = a2[2];
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = [v3 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v6, v5, "WhereAmIFlow continuing with location %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = *(*a2 + 120);
  v19 = v4;
  v14(v4, 0);
}

uint64_t WhereAmIFlow.handle(location:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(WhereAmIFlow.handle(location:), 0, 0);
}

uint64_t WhereAmIFlow.handle(location:)(uint64_t a1)
{
  v23 = v1;
  v2 = v1[9];
  v3 = static os_log_type_t.info.getter();
  v4 = *(v2 + 16);
  v5 = os_log_type_enabled(v4, v3);
  if (v5)
  {
    v6 = v1[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    v9 = [v6 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v22);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v4, v3, "RevGeocode location to get address: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v15 = v1[8];
  v14 = v1[9];
  (*(*v14 + 136))(v5);
  v16 = v1[5];
  v17 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
  (*(v17 + 104))(v22, v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = v15;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v19 = v15;

  v1[2] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v20 = v1[1];

  return v20();
}

uint64_t closure #1 in WhereAmIFlow.handle(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = closure #1 in WhereAmIFlow.handle(location:);

  return WhereAmIFlow.generateWhereAmIExperience(location:)(a1);
}

uint64_t closure #1 in WhereAmIFlow.handle(location:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WhereAmIFlow.generateWhereAmIExperience(location:)(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  type metadata accessor for DialogPhase();
  v2[53] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[57] = v4;
  *v4 = v2;
  v4[1] = WhereAmIFlow.generateWhereAmIExperience(location:);

  return CLPlacemark.withRevGeo()();
}

{
  *(*v1 + 464) = a1;

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v19 = v1;
  v2 = v1[52];
  static DialogPhase.summary.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v18[3] = &type metadata for String;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v3 = (*(*v2 + 152))(v1 + 27);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 96))(v1 + 31, v5, v6);
  specialized Dictionary.subscript.setter(v18, 0x65736E6F70736572, 0xEC00000065646F4DLL);
  v7(v1 + 31, 0);
  v3(v1 + 27, 0);
  v8 = static os_log_type_t.default.getter();
  v9 = v2[2];
  v1[59] = v9;
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type OutputGenerationManifest and conformance OutputGenerationManifest, 255, &type metadata accessor for OutputGenerationManifest, &protocol conformance descriptor for OutputGenerationManifest);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v9, v8, "outputManifest: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v1[50] = &_swiftEmptyArrayStorage;
  v15 = swift_task_alloc();
  v1[60] = v15;
  *v15 = v1;
  v15[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
  v16 = v1[58];

  return WhereAmIFlow.makeDialog(placemark:)(v16);
}

{
  *(*v2 + 488) = a1;

  if (v1)
  {

    v3 = WhereAmIFlow.generateWhereAmIExperience(location:);
  }

  else
  {
    v3 = WhereAmIFlow.generateWhereAmIExperience(location:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v1 + 488);
  v3 = *(v1 + 472);
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_0, v3, "Adding Dialog to WhereAmI", 25, 2, &_swiftEmptyArrayStorage);
  v5 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v1 + 400) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 400) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v6 = *(v1 + 488);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v7 = *(v1 + 400);
  *(v1 + 496) = v7;
  (*(**(v1 + 416) + 136))();
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v8);
  (*(v9 + 32))(v8, v9);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
  v10 = DeviceState.isVOXExclusivePlatform.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));
  if (v10)
  {
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v1 + 504) = ResponseFactory.init()();
    swift_beginAccess();
    v16 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v11 = swift_task_alloc();
    *(v1 + 512) = v11;
    *v11 = v1;
    v11[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v12 = *(v1 + 448);

    return v16(v1 + 16, v7, v12);
  }

  else
  {
    v17 = (*(**(v1 + 416) + 216) + **(**(v1 + 416) + 216));
    v14 = swift_task_alloc();
    *(v1 + 520) = v14;
    *v14 = v1;
    v14[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v15 = *(v1 + 464);

    return v17(v1 + 136, v15);
  }
}

{
  v18 = v1;
  v2 = *(v1 + 472);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 464);
    v4 = *(v1 + 472);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    outlined init with copy of DeviceState(v1 + 16, v1 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v3, "WhereAmIFlow completing with output: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v12 = *(v1 + 440);
  v11 = *(v1 + 448);
  v13 = *(v1 + 432);
  v14 = *(v1 + 408);
  swift_beginAccess();
  outlined init with copy of DeviceState(v1 + 16, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  (*(v12 + 8))(v11, v13);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t WhereAmIFlow.generateWhereAmIExperience(location:)()
{

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[66] = ResponseFactory.init()();
  swift_beginAccess();
  v5 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
  v2 = v0[62];
  v3 = v0[56];

  return (v5)(v0 + 2, v0 + 17, v2, v3);
}

{

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 472);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    outlined init with copy of DeviceState(v0 + 16, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v2, "WhereAmIFlow completing with output: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v12 = *(v0 + 432);
  v13 = *(v0 + 408);
  swift_beginAccess();
  outlined init with copy of DeviceState(v0 + 16, v13);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v11 + 8))(v10, v12);

  v14 = *(v0 + 8);

  return v14();
}

{
  *(v0 + 496) = &_swiftEmptyArrayStorage;
  (*(**(v0 + 416) + 136))();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  (*(v2 + 32))(v1, v2);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v3 = DeviceState.isVOXExclusivePlatform.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (v3)
  {
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v0 + 504) = ResponseFactory.init()();
    swift_beginAccess();
    v9 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    v4 = swift_task_alloc();
    *(v0 + 512) = v4;
    *v4 = v0;
    v4[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v5 = *(v0 + 448);

    return (v9)(v0 + 16, &_swiftEmptyArrayStorage, v5);
  }

  else
  {
    v10 = (*(**(v0 + 416) + 216) + **(**(v0 + 416) + 216));
    v7 = swift_task_alloc();
    *(v0 + 520) = v7;
    *v7 = v0;
    v7[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v8 = *(v0 + 464);

    return v10(v0 + 136, v8);
  }
}

uint64_t CLPlacemark.withRevGeo()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(CLPlacemark.withRevGeo(), 0, 0);
}

{
  v1 = [*(v0 + 160) location];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 144) = 0;
    v3 = specialized getter of coder #1 in CLPlacemark.withRevGeo()((v0 + 144));
    *(v0 + 176) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = CLPlacemark.withRevGeo();
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo11CLPlacemarkCGs5Error_pGMd, &_sSccySaySo11CLPlacemarkCGs5Error_pGMR);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark];
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v4;
    [v3 reverseGeocodeLocation:v2 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 8);
    v5 = *(v0 + 160);

    return v7(v5);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = CLPlacemark.withRevGeo();
  }

  else
  {
    v2 = CLPlacemark.withRevGeo();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 152);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 168);

    v4 = [objc_opt_self() placemarkWithLocation:v5 name:0 postalAddress:0];

    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t CLPlacemark.withRevGeo()(uint64_t a1)
{
  v2 = v1[22];
  v4 = v1[20];
  v3 = v1[21];
  swift_willThrow();

  v5 = v1[18];
  v6 = v4;

  v7 = v1[20];
  v8 = v1[1];

  return v8(v7);
}

uint64_t WhereAmIFlow.makeDialog(placemark:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(WhereAmIFlow.makeDialog(placemark:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {

    v5 = WhereAmIFlow.makeDialog(placemark:);
  }

  else
  {

    *(v4 + 240) = a1;
    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 56));
    v5 = WhereAmIFlow.makeDialog(placemark:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t WhereAmIFlow.makeDialog(placemark:)()
{
  v27 = v0;
  v1 = v0[23];
  v2 = CLPlacemark.makeDialogLocation()();
  v0[24] = v2;
  swift_retain_n();
  v3 = static os_log_type_t.default.getter();
  v4 = *(v1 + 16);
  v0[25] = v4;
  v5 = os_log_type_enabled(v4, v3);
  if (v5)
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    (*(*v6 + 136))();
    v9 = v0[20];
    v10 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v9);
    (*(v10 + 80))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v4, v3, "catGlobals: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v15 = *(*v0[23] + 136);
  v15(v5);
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = (*(v17 + 128))(v16, v17);
  v0[26] = v18;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v0[10] = &type metadata for LocationSearch;
  v0[11] = &protocol witness table for LocationSearch;
  v0[7] = v2;
  v0[8] = v2;
  v19 = swift_retain_n();
  v15(v19);
  v20 = v0[15];
  v21 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v20);
  v22 = (*(v21 + 80))(v20, v21);
  v0[27] = v22;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v25 = (*(*v18 + 152) + **(*v18 + 152));
  v23 = swift_task_alloc();
  v0[28] = v23;
  *v23 = v0;
  v23[1] = WhereAmIFlow.makeDialog(placemark:);

  return v25(v0 + 7, v22);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 240);

  return v1(v2);
}

{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, v1, "Dialog Engine RF implementation error when building WhereAmI experience", 71, 2, &_swiftEmptyArrayStorage);
  lazy protocol witness table accessor for type Errors and conformance Errors();
  swift_allocError();
  *v3 = xmmword_B99F0;
  *(v3 + 16) = 3;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t WhereAmIFlow.makeRFView(placemark:)(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = type metadata accessor for Google_Protobuf_DoubleValue();
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();

  return _swift_task_switch(WhereAmIFlow.makeRFView(placemark:), 0, 0);
}

uint64_t WhereAmIFlow.makeRFView(placemark:)()
{
  v66 = v0;
  v1 = *(**(v0 + 592) + 136);
  v1();
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v2);
  v4 = (*(v3 + 128))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
  *(v0 + 320) = &type metadata for GeoLabel;
  *(v0 + 328) = &protocol witness table for GeoLabel;
  *(v0 + 296) = 3;
  *(v0 + 304) = 0;
  *(v0 + 312) = 2;
  v5 = (*(*v4 + 136))(v0 + 296);
  v7 = v6;
  v9 = v8;

  v10 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  if (v9)
  {
    v10 = outlined consume of Result<String, Error>(v5, v7, 1);
    v5 = 0;
    v64 = 0xE000000000000000;
  }

  else
  {
    v64 = v7;
  }

  (v1)(v10);
  v11 = *(v0 + 360);
  v12 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v11);
  v13 = (*(v12 + 128))(v11, v12);
  v14 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
  (v1)(v14);
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v15);
  (*(v16 + 32))(v15, v16);
  __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
  v17 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
  v18 = 4;
  if (v17)
  {
    v18 = 5;
  }

  *(v0 + 400) = &type metadata for GeoLabel;
  *(v0 + 408) = &protocol witness table for GeoLabel;
  *(v0 + 376) = v18;
  *(v0 + 384) = 0;
  *(v0 + 392) = 2;
  v19 = (*(*v13 + 136))(v0 + 376);
  v21 = v20;
  v23 = v22;

  v24 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
  if (v23)
  {
    v24 = outlined consume of Result<String, Error>(v19, v21, 1);
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  (v1)(v24);
  v25 = *(v0 + 520);
  v26 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v25);
  v27 = (*(v26 + 128))(v25, v26);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 496));
  v28 = CLPlacemark.makeDialogLocation()();
  *(v0 + 560) = &type metadata for GeoLabel;
  *(v0 + 568) = &protocol witness table for GeoLabel;
  *(v0 + 536) = v28;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  v29 = (*(*v27 + 136))(v0 + 536);
  v31 = v30;
  v33 = v32;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
  if (v33)
  {
    outlined consume of Result<String, Error>(v29, v31, 1);
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v34 = [*(v0 + 584) location];
  if (v34)
  {
    v35 = *(v0 + 624);
    v36 = *(v0 + 616);
    v63 = v21;
    v37 = v19;
    v38 = v5;
    v39 = *(v0 + 608);
    v40 = *(v0 + 600);
    v41 = v34;
    [v34 coordinate];

    Double.toProtobufDoubleValue()();
    Google_Protobuf_DoubleValue.value.getter();
    v43 = v42;
    v44 = *(v39 + 8);
    v44(v35, v40);
    Double.toProtobufDoubleValue()();
    Google_Protobuf_DoubleValue.value.getter();
    v46 = v45;
    v44(v36, v40);
    v5 = v38;
    v19 = v37;
    v21 = v63;
  }

  else
  {
    v43 = 0;
    v46 = 0;
  }

  v47 = *(v0 + 592);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v19;
  *(v0 + 40) = v21;
  *(v0 + 48) = v29;
  *(v0 + 56) = v31;
  *(v0 + 64) = v5;
  *(v0 + 72) = v64;
  *(v0 + 80) = v43;
  *(v0 + 88) = v46;
  v48 = static os_log_type_t.default.getter();
  v49 = *(v47 + 16);
  if (os_log_type_enabled(v49, v48))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65 = v51;
    *v50 = 136315138;
    v52 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v52;
    *(v0 + 160) = *(v0 + 80);
    v53 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v53;
    outlined init with copy of GeoDataModels.WhereAmIDataModel(v0 + 16, v0 + 176);
    v54 = String.init<A>(describing:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v65);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_0, v49, v48, "RF: WhereAmI view %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  v57 = *(v0 + 576);
  v57[3] = &type metadata for GeoDataModels;
  v57[4] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
  v58 = swift_allocObject();
  *v57 = v58;
  v59 = *(v0 + 80);
  *(v58 + 64) = *(v0 + 64);
  *(v58 + 80) = v59;
  v60 = *(v0 + 48);
  *(v58 + 32) = *(v0 + 32);
  *(v58 + 48) = v60;
  *(v58 + 16) = *(v0 + 16);
  *(v58 + 96) = 3;

  v61 = *(v0 + 8);

  return v61();
}

uint64_t WhereAmIFlow.deinit()
{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return v0;
}

uint64_t WhereAmIFlow.__deallocating_deinit()
{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance WhereAmIFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance WhereAmIFlow(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance WhereAmIFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WhereAmIFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WhereAmIFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

id specialized getter of coder #1 in CLPlacemark.withRevGeo()(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = [objc_allocWithZone(CLGeocoder) init];
    swift_beginAccess();
    v5 = *a1;
    *a1 = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t specialized WhereAmIFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  outlined init with copy of DeviceState(v12, a2 + 40);
  *(a2 + 80) = (*(a4 + 128))(a3, a4);
  v9 = static os_log_type_t.default.getter();
  v10 = *(a2 + 16);
  os_log(_:dso:log:_:_:)(v9, &dword_0, v10, "WhereAmIFlow has been initalized with .guardFlows", 49, 2, &_swiftEmptyArrayStorage);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return a2;
}

uint64_t sub_B3390()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in WhereAmIFlow.handle(location:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in WhereAmIFlow.handle(location:)(a1, v5, v4);
}

uint64_t sub_B34A8()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t instantiation function for generic protocol witness table for WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, a2, type metadata accessor for WhereAmIFlow, &protocol conformance descriptor for WhereAmIFlow);
  result = _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, v3, type metadata accessor for WhereAmIFlow, &protocol conformance descriptor for WhereAmIFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_B35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_B35FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *(a1 + 8);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin12WhereAmIFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id AnswerETAIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnswerETAIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnswerETAIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id AnswerETAIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AnswerETAIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AnswerETAIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AnswerETAIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id AnswerETAIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id AnswerETAIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for AnswerETAIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerETAIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized AnswerETAIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AnswerETAIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *AnswerETAIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *AnswerETAIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id AnswerETAIntentResponse.init()()
{
  *&v0[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnswerETAIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id AnswerETAIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id AnswerETAIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id @objc AnswerETAIntentResponse.init(coder:)(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AnswerETAIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id AnswerETAIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id AnswerETAIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t specialized AnswerETAIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode;
  if (!lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode);
  }

  return result;
}

uint64_t sub_B4548@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_20.maxprot + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_B45A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AnswerETAIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}