uint64_t SiriLinkFlowPlugin.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 320));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 360));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));

  return v0;
}

uint64_t SiriLinkFlowPlugin.__deallocating_deinit()
{
  SiriLinkFlowPlugin.deinit();

  return swift_deallocClassInstance();
}

void *protocol witness for FlowPlugin.init() in conformance SiriLinkFlowPlugin@<X0>(void *a1@<X8>)
{
  result = SiriLinkFlowPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t *specialized SiriLinkFlowPlugin.__allocating_init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v93 = a4;
  v94 = a8;
  v101 = a7;
  v102 = a6;
  v103 = a5;
  v104 = a1;
  v91 = a2;
  v92 = a3;
  v88 = a22;
  v89 = a21;
  v87 = a23;
  v86 = a24;
  v90 = a12;
  v85 = a11;
  v99 = a10;
  v100 = a9;
  v97 = a17;
  v79 = a18;
  v96 = a20;
  v84 = a19;
  v83 = *(a19 - 8);
  v81 = a15;
  v24 = __chkstk_darwin(a13);
  v82 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v26 - 8);
  v27 = __chkstk_darwin(v24);
  v80 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v29 - 8);
  v30 = __chkstk_darwin(v27);
  v77 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v32 - 8);
  v33 = v74;
  v34 = __chkstk_darwin(v30);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v36;
  v75 = *(v37 - 8);
  v38 = v75;
  v39 = __chkstk_darwin(v34);
  v41 = &v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v41;
  v67 = a16;
  v76 = *(a16 - 8);
  v42 = v76;
  v43 = __chkstk_darwin(v39);
  v45 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v45;
  v70 = a14;
  v78 = *(a14 - 8);
  v46 = v78;
  __chkstk_darwin(v43);
  v48 = &v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v48;
  v72 = swift_allocObject();
  (*(v46 + 16))(v48, v104, a14);
  (*(v42 + 16))(v45, v103, a16);
  v49 = v41;
  v50 = v96;
  (*(v38 + 16))(v49, v102, v96);
  v51 = *(v33 + 16);
  v52 = v97;
  v51(v36, v101, v97);
  v53 = v77;
  v54 = v79;
  (*(v95 + 16))(v77, v100, v79);
  v55 = v80;
  v56 = v81;
  (*(v98 + 16))(v80, v99, v81);
  v57 = v83;
  v58 = v82;
  v59 = v85;
  v60 = v84;
  (*(v83 + 16))(v82, v85, v84);
  v66 = v50;
  v65 = v52;
  v61 = v67;
  v62 = v70;
  v63 = specialized SiriLinkFlowPlugin.init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(v73, v91, v92, v93, v71, v69, v68, v94, v53, v55, v58, v90, v72, v70, v56, v67, v65, v54, v60, v66, v89, *(&v89 + 1), v88, *(&v88 + 1), v87, *(&v87 + 1), v86);
  (*(v57 + 8))(v59, v60);
  (*(v98 + 8))(v99, v56);
  (*(v95 + 8))(v100, v54);
  (*(v74 + 8))(v101, v97);
  (*(v75 + 8))(v102, v96);
  (*(v76 + 8))(v103, v61);
  (*(v78 + 8))(v104, v62);
  return v63;
}

uint64_t *specialized SiriLinkFlowPlugin.init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a13[7] = a14;
  a13[8] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a13 + 4);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a1, a14);
  a13[27] = a16;
  a13[28] = a23;
  v29 = __swift_allocate_boxed_opaque_existential_1(a13 + 24);
  (*(*(a16 - 8) + 32))(v29, a5, a16);
  a13[32] = a20;
  a13[33] = a27;
  v30 = __swift_allocate_boxed_opaque_existential_1(a13 + 29);
  (*(*(a20 - 8) + 32))(v30, a6, a20);
  a13[37] = a17;
  a13[38] = a24;
  v31 = __swift_allocate_boxed_opaque_existential_1(a13 + 34);
  (*(*(a17 - 8) + 32))(v31, a7, a17);
  a13[43] = a18;
  a13[44] = a25;
  v32 = __swift_allocate_boxed_opaque_existential_1(a13 + 40);
  (*(*(a18 - 8) + 32))(v32, a9, a18);
  a13[48] = a15;
  a13[49] = a22;
  v33 = __swift_allocate_boxed_opaque_existential_1(a13 + 45);
  (*(*(a15 - 8) + 32))(v33, a10, a15);
  a13[53] = a19;
  a13[54] = a26;
  v34 = __swift_allocate_boxed_opaque_existential_1(a13 + 50);
  (*(*(a19 - 8) + 32))(v34, a11, a19);
  a13[2] = 0xD000000000000030;
  a13[3] = 0x800000000022F760;
  outlined init with take of AceServiceInvokerAsync(a2, (a13 + 9));
  outlined init with take of AceServiceInvokerAsync(a3, (a13 + 14));
  outlined init with take of AceServiceInvokerAsync(a4, (a13 + 19));
  a13[39] = a8;
  a13[55] = a12;
  return a13;
}

uint64_t specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  v18 = type metadata accessor for VoiceCommandsAppPolicyHandler();
  v19 = &protocol witness table for VoiceCommandsAppPolicyHandler;
  *&v17 = a2;
  type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a1, a3 + 32);
  outlined init with copy of DeviceState(a1, v16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(a3 + 16) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v16, v7, v15, v8, v9, v10, v11, v12, v13);
  type metadata accessor for WorkflowNLContextProvider();
  *(a3 + 24) = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(&v17, a3 + 72);
  return a3;
}

uint64_t sub_4B894()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return _swift_deallocObject(v0);
}

uint64_t outlined init with copy of AutoShortcutInvocation(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined destroy of AutoShortcutInvocation(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of VoiceCommandTask(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t RunVoiceCommandCATs.confirmSlotValue(device:slotName:slotValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_10_6(v3);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v4);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v5);
  v6 = v0[8];
  OUTLINED_FUNCTION_24_6();
  if (v7)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  v9 = v0[7];
  v10 = v0[5];
  v2[8].n128_u64[0] = 0x756C6156746F6C73;
  v2[8].n128_u64[1] = 0xE900000000000065;
  outlined init with copy of SpeakableString?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_38_3(v12);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
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

uint64_t RunVoiceCommandCATs.disambiguateSlotValue(device:slotName:)()
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
  v2 = *(v0 + 24);
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
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_10_6(v6);
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
  OUTLINED_FUNCTION_12_6(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
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

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunVoiceCommandCATs.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[4];
  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  strcpy(&v2[5], "customDialog");
  v2[5].n128_u8[13] = 0;
  v2[5].n128_u16[7] = -5120;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v4);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v5);
  v6 = v0[8];
  OUTLINED_FUNCTION_24_6();
  if (v7)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  v9 = v0[7];
  v10 = v0[5];
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = 0x8000000000230CE0;
  outlined init with copy of SpeakableString?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_38_3(v12);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_87();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
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

uint64_t RunVoiceCommandCATs.errorWithCodePreflightRequired(localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_216850;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000000230CE0;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v5) == 1)
  {
    outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v6();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[7] = v7;
  *v7 = v8;
  v7[1] = RunVoiceCommandCATs.errorWithCodePreflightRequired(localizedAppName:);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_87();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
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

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunVoiceCommandCATs.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

uint64_t RunVoiceCommandCATs.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_31_0(v14);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v18);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_13_6(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_12_6(v23);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATs.followupNotSupported(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

uint64_t RunVoiceCommandCATs.followupNotSupported(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_31_0(v14);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v18);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_13_6(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_12_6(v23);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 129) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 128) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  *(v1 + 72) = OUTLINED_FUNCTION_27();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
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

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 104) = v12;
  v13 = OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    v13 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v14 = *(v10 + 32);
  v15 = *(v10 + 128);
  *(v12 + 48) = v11;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0xD000000000000016;
  *(v12 + 88) = 0x8000000000230D20;
  *(v12 + 96) = v15;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = 0x8000000000230CE0;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v14);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v16);
  v17 = *(v10 + 96);
  OUTLINED_FUNCTION_24_6();
  if (v18)
  {

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = *(v10 + 88);
  v21 = *(v10 + 40);
  strcpy((v12 + 176), "customResponse");
  *(v12 + 191) = -18;
  outlined init with copy of SpeakableString?(v21, v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 88), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v23 = *(v10 + 80);
  v24 = *(v10 + 48);
  strcpy((v12 + 224), "intentCategory");
  *(v12 + 239) = -18;
  outlined init with copy of SpeakableString?(v24, v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v25();
  }

  v26 = *(v10 + 72);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v27;
  *(v12 + 280) = v28;
  outlined init with copy of SpeakableString?(v29, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v30();
  }

  v31 = *(v10 + 129);
  *(v12 + 320) = 0xD000000000000018;
  *(v12 + 328) = 0x8000000000230D40;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v31;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v44 = v32;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 112) = v33;
  *v33 = v34;
  v33[1] = RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44);
}

uint64_t RunVoiceCommandCATs.intentHandledResponseDone(device:localizedAppName:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

uint64_t RunVoiceCommandCATs.intentHandledResponseDone(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  v9[9] = v11;
  v12 = OUTLINED_FUNCTION_1_3(v11, xmmword_218630);
  if (v10)
  {
    v12 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[3].n128_u64[1] = 0;
    v11[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_5_4(v12);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v13);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v14);
  v15 = v9[8];
  OUTLINED_FUNCTION_24_6();
  if (v16)
  {

    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = v9[7];
  OUTLINED_FUNCTION_34_2();
  v11[8].n128_u64[0] = v19;
  v11[8].n128_u64[1] = v20;
  outlined init with copy of SpeakableString?(v21, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v9[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v35 = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[10] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_38_3(v24);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATs.openApp(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

uint64_t RunVoiceCommandCATs.openApp(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_31_0(v14);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v18);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_13_6(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_12_6(v23);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATs.openAppFailed(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.openAppFailed(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216850);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_3_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
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
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunVoiceCommandCATs.openAppFailedCarPlay(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.openAppFailedCarPlay(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216850);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_3_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
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

uint64_t RunVoiceCommandCATs.openAppFailedWatch(device:userAssignedDeviceName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

uint64_t RunVoiceCommandCATs.openAppFailedWatch(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2(v13);
  v15 = OUTLINED_FUNCTION_31_0(v14);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v18);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_13_6(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_12_6(v23);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t RunVoiceCommandCATs.promptForSlotValue(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.promptForSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216850);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_3_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t RunVoiceCommandCATs.unsupportedSlotValue(device:slotName:)()
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
  v2 = *(v0 + 24);
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
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_10_6(v6);
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
  OUTLINED_FUNCTION_12_6(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t RunVoiceCommandCATs.yesAndCancel(device:intentVerb:)()
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
  v1[10] = 0x6556746E65746E69;
  v1[11] = 0xEA00000000006272;
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
  OUTLINED_FUNCTION_12_6(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
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

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t RunVoiceCommandCATs.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunVoiceCommandCATs.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t RunVoiceCommandCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t type metadata accessor for RunVoiceCommandCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunVoiceCommandCATs;
  if (!type metadata singleton initialization cache for RunVoiceCommandCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x656D614E746F6C73;
  v2[11] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

double OUTLINED_FUNCTION_26_5()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = result;
  v4[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(a3, v3, a1, a2);
}

uint64_t *OUTLINED_FUNCTION_36_2()
{
  *(v1 + 120) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_43_2()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_46_1()
{
  *(v1 + 168) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 144));
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1)
{

  return swift_allocObject();
}

void WorkflowRunnerFlow.__allocating_init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28)
{
  OUTLINED_FUNCTION_40_0();
  v73 = v31;
  v74 = v32;
  v71 = v33;
  v72 = v34;
  v69 = v35;
  v70 = v36;
  v67 = v37;
  v68 = v38;
  v66 = objc_allocWithZone(v28);
  v39 = a25[3];
  v65 = a25[4];
  __swift_mutable_project_boxed_opaque_existential_1(a25, v39);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_3();
  v42 = OUTLINED_FUNCTION_77_0(v41);
  v43(v42);
  v44 = a26[3];
  v62 = a26[4];
  __swift_mutable_project_boxed_opaque_existential_1(a26, a26[3]);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v48 = v47 - v46;
  (*(v49 + 16))(v47 - v46);
  v50 = a27[3];
  v60 = a27[4];
  __swift_mutable_project_boxed_opaque_existential_1(a27, v50);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_3();
  v53 = OUTLINED_FUNCTION_94(v52);
  v54(v53);
  v55 = a28[3];
  v56 = a28[4];
  __swift_mutable_project_boxed_opaque_existential_1(a28, v55);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  (*(v58 + 16))(a26);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v67, v68, v69, v70, v71, v72, v73, v74, a21, a22, a23, a24, v30, v48, v29, a26, v66, v55, v39, v50, v44, v56, v65, v60, v62, v59, v60, a27, v62, a26, v65, v66, a24, a23, a21, a22, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(a25);
  OUTLINED_FUNCTION_42();
}

void WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, char *a27, void *a28)
{
  OUTLINED_FUNCTION_40_0();
  v68 = v28;
  v69 = v32;
  v74 = v33;
  v75 = v34;
  v72 = v35;
  v73 = v36;
  v70 = v37;
  v71 = v38;
  v76 = v39;
  v40 = a25[3];
  v66 = a25[4];
  __swift_mutable_project_boxed_opaque_existential_1(a25, v40);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_3();
  v43 = OUTLINED_FUNCTION_77_0(v42);
  v44(v43);
  v45 = a26[3];
  v64 = a26[4];
  __swift_mutable_project_boxed_opaque_existential_1(a26, v45);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_3();
  v48 = OUTLINED_FUNCTION_94(v47);
  v49(v48);
  v50 = *(a27 + 3);
  v62 = *(a27 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(a27, v50);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_3();
  v54 = v53 - v52;
  (*(v55 + 16))(v53 - v52);
  v56 = a28[3];
  v57 = a28[4];
  __swift_mutable_project_boxed_opaque_existential_1(a28, v56);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  (*(v59 + 16))(v29);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v69, v70, v71, v72, v73, v74, v75, v76, a21, a22, a23, a24, v31, v30, v54, v29, v68, v56, v40, v50, v45, v57, v66, v62, v64, v60, v61, v62, a27, v64, a26, v66, a24, a23, a21, a22, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(a25);
  OUTLINED_FUNCTION_42();
}

void WorkflowRunnerFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v59 = v0;
  v1 = OUTLINED_FUNCTION_92();
  type metadata accessor for WorkflowRunnerFlow.State(v1);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v65 = v7;
  v66 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  v62 = (v8 - v9);
  __chkstk_darwin(v10);
  v63 = &v56 - v11;
  v64 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_13_1();
  v61 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
  v19 = OUTLINED_FUNCTION_48_2();
  v20(v19);
  v58 = v0;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v60 = v16;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_48();
    v57 = v5;
    v25 = v24;
    v56 = OUTLINED_FUNCTION_85();
    v67[0] = v56;
    *v25 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_95();
    v30(v29);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v67);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v21, v22, "WorkflowRunnerFlow received input: %s", v25, 0xCu);
    v32 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_15_0(v32);
    v33 = v25;
    v5 = v57;
    OUTLINED_FUNCTION_15_0(v33);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_95();
    v35(v34);
  }

  v36 = v63;
  Input.parse.getter();
  v38 = v65;
  v37 = v66;
  v39 = (*(v65 + 88))(v36, v66);
  v40 = v64;
  if (v39 == enum case for Parse.directInvocation(_:))
  {
    (*(v38 + 96))(v36, v37);
    v41 = v36;
    v42 = v60;
    v43 = v61;
    (*(v61 + 32))(v60, v41, v40);
    if (Parse.DirectInvocation.identifier.getter() != 0xD00000000000003FLL || 0x8000000000230CA0 != v44)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_80_0();
    }

    (*(v43 + 8))(v42, v40);
  }

  else
  {
    (*(v38 + 8))(v36, v37);
    v46 = v62;
    Input.parse.getter();
    v47 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v46);
    v48 = OUTLINED_FUNCTION_20_1();
    v49(v48);
    switch(v47)
    {
      case 2:

        goto LABEL_18;
      case 3:
        break;
      default:
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v50)
        {
LABEL_18:
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_45(v53);
            _os_log_impl(&dword_0, v51, v52, "WorkflowRunnerFlow received cancel signal, cancelling execution...", v46, 2u);
            OUTLINED_FUNCTION_17();
          }

          swift_storeEnumTagMultiPayload();
          v54 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
          v55 = v59;
          OUTLINED_FUNCTION_57_0(v59 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v67);
          outlined assign with take of WorkflowRunnerFlow.State(v5, v55 + v54);
          swift_endAccess();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WorkflowRunnerFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[31] = v2;
  v1[32] = v0;
  v3 = type metadata accessor for AceOutput();
  v1[33] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[34] = v4;
  v1[35] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v1[36] = v5;
  OUTLINED_FUNCTION_14(v5);
  v1[37] = OUTLINED_FUNCTION_27();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v6 = type metadata accessor for DurationUtil(0);
  OUTLINED_FUNCTION_14(v6);
  v1[40] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14(v7);
  v1[41] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[42] = OUTLINED_FUNCTION_27();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v1[46] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[47] = v10;
  v1[48] = OUTLINED_FUNCTION_27();
  v1[49] = swift_task_alloc();
  v11 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v1[50] = v11;
  OUTLINED_FUNCTION_14(v11);
  v1[51] = OUTLINED_FUNCTION_27();
  v1[52] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
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
  v1 = v0[54];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[32];
  outlined assign with take of SiriWorkflowRunnerEvent?(v0[44], v2);
  v7 = DurationUtil.computeDuration()();
  outlined destroy of WorkflowRunnerFlow.State(v4);
  BYTE4(v39) = 0;
  specialized static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v1, LODWORD(v7), v6, v2, v8, v9, v10, v11, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v0, v49, v50);

  v12 = OUTLINED_FUNCTION_20_1();
  outlined init with copy of SiriWorkflowRunnerEvent?(v12, v13, v14, v15);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    v16 = v0[53];
    v17 = v0[51];
    v38 = v0[45];
    v18 = v0[32];
    outlined destroy of Any?(v0[43], &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    v19 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v20 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v19);
    *v21 = 0xD00000000000002BLL;
    v21[1] = 0x8000000000230E10;
    *v17 = v20;
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0(v18 + v16, (v0 + 27));
    outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v16);
    swift_endAccess();
    static ExecuteResponse.complete()();
    v22 = OUTLINED_FUNCTION_9_3();
    v23(v22);
    outlined destroy of Any?(v38, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_17_5();

    OUTLINED_FUNCTION_6_0();

    return v24();
  }

  else
  {
    OUTLINED_FUNCTION_35_3();
    outlined init with take of SiriWorkflowRunnerEvent(v26, v27);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[56] = v28;
    *v28 = v29;
    v28[1] = WorkflowRunnerFlow.execute();
    v30 = v0[49];
    v31 = v0[39];
    v32 = v0[31];

    return WorkflowRunnerFlow.responseFrom(event:iterator:)(v32, v31, v30);
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
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
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
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[10] = v3;
  v0[11] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[62] = v7;
  *v7 = v8;
  v7[1] = WorkflowRunnerFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v4, v5);
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
  *(v3 + 504) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

uint64_t WorkflowRunnerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = *(v16 + 360);
  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State(v18);
  v19 = OUTLINED_FUNCTION_22_4();
  v20(v19);
  outlined destroy of Any?(v17, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = v16[42];
  if (__swift_getEnumTagSinglePayload(v17, 1, v16[36]) == 1)
  {
    v18 = v16[53];
    v19 = v16[51];
    v20 = v16[32];
    outlined destroy of Any?(v17, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    v21 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v22 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v21);
    *v23 = 0xD00000000000002BLL;
    v23[1] = 0x8000000000230D90;
    *v19 = v22;
    OUTLINED_FUNCTION_20_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0(v20 + v18, (v16 + 21));
    outlined assign with take of WorkflowRunnerFlow.State(v19, v20 + v18);
    swift_endAccess();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v25))
    {
      v26 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v26);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_17();
    }

    static ExecuteResponse.complete()();
    v32 = OUTLINED_FUNCTION_9_3();
    v33(v32);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_35_3();
  v34 = OUTLINED_FUNCTION_9_3();
  outlined init with take of SiriWorkflowRunnerEvent(v34, v35);
  OUTLINED_FUNCTION_10_7();
  v36 = OUTLINED_FUNCTION_20_1();
  outlined init with copy of WorkflowRunnerFlow.State(v36, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v47 = v16[38];
    outlined destroy of WorkflowRunnerFlow.State(v16[37]);
    static ExecuteResponse.complete()();
    outlined destroy of WorkflowRunnerFlow.State(v47);
    v48 = OUTLINED_FUNCTION_22_4();
    v49(v48);
LABEL_14:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_17_5();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (EnumCaseMultiPayload != 9)
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v51))
    {
      v52 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v52);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_17();
    }

    v59 = v16[37];
    v58 = v16[38];

    static ExecuteResponse.complete()();
    outlined destroy of WorkflowRunnerFlow.State(v58);
    v60 = OUTLINED_FUNCTION_9_3();
    v61(v60);
    outlined destroy of WorkflowRunnerFlow.State(v59);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State(v39);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v16[59] = v40;
  *v40 = v41;
  v40[1] = WorkflowRunnerFlow.execute();
  OUTLINED_FUNCTION_58();

  return WorkflowRunnerFlow.responseFrom(event:iterator:)(v42, v43, v44);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State(v16);
  v17 = OUTLINED_FUNCTION_22_4();
  v18(v17);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = v16[53];
  v18 = v16[51];
  v19 = v16[32];
  (*(v16[34] + 8))(v16[35], v16[33]);
  __swift_destroy_boxed_opaque_existential_1Tm(v16 + 2);
  OUTLINED_FUNCTION_22_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v19 + v17, (v16 + 18));
  outlined assign with take of WorkflowRunnerFlow.State(v18, v19 + v17);
  swift_endAccess();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_72_0(*(v19 + 488));
  OUTLINED_FUNCTION_57_0(v18 + v16, v19 + 120);
  outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v16);
  swift_endAccess();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  (*(v19[34] + 8))(v19[35], v19[33]);
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 2);
  OUTLINED_FUNCTION_72_0(v19[63]);
  OUTLINED_FUNCTION_57_0(v18 + v16, (v19 + 15));
  outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v16);
  swift_endAccess();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

void closure #2 in WorkflowRunnerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_92();
  v8 = type metadata accessor for SiriWorkflowRunnerEvent(v7);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  v10 = a2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput;
  if (*(a2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64) == 3)
  {
    v11 = *(v10 + 16);

    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (!*(v10 + 64))
  {

LABEL_5:
    v12 = String._bridgeToObjectiveC()();

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  [v3 setShortcutName:v12];

  if (__swift_getEnumTagSinglePayload(a3, 1, v8))
  {
    v13 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    outlined init with copy of WorkflowRunnerFlow.State(a3, v4);
    SiriWorkflowRunnerEvent.name.getter();
    OUTLINED_FUNCTION_3_9();
    outlined destroy of WorkflowRunnerFlow.State(v4);
    v13 = String._bridgeToObjectiveC()();
  }

  [v3 setWfRunnerEventName:v13];
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.responseFrom(event:iterator:));
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = v14[9];
  v16 = v14[10];
  OUTLINED_FUNCTION_10_7();
  outlined init with copy of WorkflowRunnerFlow.State(v17, v16);
  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v14[10];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v14[15] = v19[1];
      v14[16] = v19[3];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[17] = v66;
      *v66 = v67;
      v66[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(v68, v69, v70, v71, v72, v73);
    case 2:
      v48 = v14[7];
      v47 = v14[8];
      v49 = v14[6];
      a10 = v14[4];
      a11 = v14[5];
      v50 = v14[2];
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
      v52 = (v19 + *(v51 + 48));
      v53 = *v52;
      v54 = v52[1];
      v55 = (v19 + *(v51 + 64));
      v57 = *v55;
      v56 = v55[1];
      (*(v48 + 32))(v47, v19, v49);
      WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:)(v47, v53, v54, a10, v57, v56, v50);

      v58 = OUTLINED_FUNCTION_9_3();
      v59(v58);
      goto LABEL_27;
    case 3:
      v15 = *v19;
      WorkflowRunnerFlow.createHandleUserActivityFlow(userActivity:bundleId:iterator:_:)(*v19, v19[1], v19[2], v14[4], v19[3], v19[4]);

      goto LABEL_24;
    case 4:
      v40 = OUTLINED_FUNCTION_62_1();
      WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:)(v40, v41, v42, v43, v44);
      goto LABEL_23;
    case 5:
      v14[18] = *v19;
      v14[19] = v19[2];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[20] = v75;
      *v75 = v76;
      v75[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(v77, v78, v79, v80, v81);
    case 6:
      v83 = OUTLINED_FUNCTION_62_1();
      WorkflowRunnerFlow.createOpenInteractionInAppFlow(interaction:iterator:_:)(v83, v84, v85, v86, v87);
LABEL_23:

LABEL_24:

      goto LABEL_27;
    case 7:
      v60 = OUTLINED_FUNCTION_63_1();
      WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:)(v60, v61, v62, v63, v64, v65);
      goto LABEL_26;
    case 8:
      v101 = *v19;
      v102 = v19[1];
      v14[21] = v102;
      v103 = *(v19 + 16);

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v104 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v104, static Logger.voiceCommands);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 67109120;
        *(v107 + 4) = v103;
        _os_log_impl(&dword_0, v105, v106, "#WorkflowRunnerFlow cancelled: %{BOOL}d", v107, 8u);
        OUTLINED_FUNCTION_11_0();
      }

      if (v102)
      {
        swift_errorRetain();
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        v14[22] = v108;
        *v108 = v109;
        v108[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_6_1();

        return WorkflowRunnerFlow.handleDidFinishWithError(error:)(v110, v111);
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        v14[23] = v113;
        *v113 = v114;
        v113[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_6_1();

        return WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(v115, v116);
      }

    case 9:
      WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(v14[4], *v19, v19[1], v14[2]);

      goto LABEL_27;
    case 10:
      v88 = OUTLINED_FUNCTION_63_1();
      WorkflowRunnerFlow.createAppProtectionRequestFlow(bundleId:iterator:_:)(v88, v89, v90, v91, v92);
LABEL_26:

      goto LABEL_27;
    case 11:
      v14[24] = v19[2];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[25] = v32;
      *v32 = v33;
      v32[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(v34, v35, v36, v37, v38);
    case 12:
      v45 = WorkflowRunnerFlow.isActionable(actionID:)(*v19, v19[1]);

      if (v45)
      {
        OUTLINED_FUNCTION_18_4();
        (*(v46 + 232))();
      }

      static ExecuteResponse.ongoing(requireInput:)();
LABEL_27:
      OUTLINED_FUNCTION_82_0();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_1();

      result = v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
      break;
    default:
      v14[11] = *v19;
      v14[12] = v19[2];
      v14[13] = v19[5];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[14] = v20;
      *v20 = v21;
      v20[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_6_1();

      result = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(v22, v23, v24, v25, v26, v27, v28, v29);
      break;
  }

  return result;
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)()
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
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
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

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
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
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
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

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
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
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
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

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  type metadata accessor for CATOption();
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.buildCancelledOutput());
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 224);
  static Device.current.getter();
  type metadata accessor for AutoShortcutCATs(0);
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AutoShortcutCATsSimple(0);
  static CATOption.defaultMode.getter();
  v3 = CATWrapperSimple.__allocating_init(options:globals:)();
  v4 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_92();
  type metadata accessor for AutoShortcutDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  inited[12] = v4;
  inited[13] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[9] = v1;
  outlined init with take of AceServiceInvokerAsync((v0 + 128), (inited + 2));
  inited[7] = v2;
  inited[8] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 264) = v6;
  *v6 = v7;
  v6[1] = WorkflowRunnerFlow.buildCancelledOutput();
  OUTLINED_FUNCTION_87();

  return AutoShortcutDialogTemplating.makeUserDeniedDialog_rfv1()(v8);
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
  *(v3 + 272) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    AutoShortcutDialogTemplating.deinit();
    swift_deallocClassInstance();
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  swift_setDeallocating();
  AutoShortcutDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = OUTLINED_FUNCTION_75();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  OUTLINED_FUNCTION_60_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0;
  *(v12 + 168) = 0u;
  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();
  outlined destroy of Any?(v12 + 168, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  v15 = OUTLINED_FUNCTION_20_1();
  v16(v15);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.execute(completion:)()
{
  swift_getObjectType();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, type metadata accessor for WorkflowRunnerFlow, &protocol conformance descriptor for WorkflowRunnerFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 432) = a8;
  *(v9 + 440) = v8;
  *(v9 + 416) = a6;
  *(v9 + 424) = a7;
  *(v9 + 129) = a5;
  *(v9 + 400) = a3;
  *(v9 + 408) = a4;
  *(v9 + 384) = a1;
  *(v9 + 392) = a2;
  *(v9 + 448) = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v9 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0PAAE12onCompletionyQry9ValueTypeQzcFQOyAA08ReactiveC0Cy0A12MailInternal04SendJ4PlanCG_Qo_Md, &_s11SiriKitFlow06ActingC0PAAE12onCompletionyQry9ValueTypeQzcFQOyAA08ReactiveC0Cy0A12MailInternal04SendJ4PlanCG_Qo_MR);
  *(v9 + 464) = v10;
  *(v9 + 472) = *(v10 - 8);
  *(v9 + 480) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:));
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = *(v0 + 392);
  v2 = type metadata accessor for Logger();
  *(v0 + 488) = OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 392);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_83();
    *v3 = 138412290;
    *(v3 + 1) = v6;
    *v7 = v6;
    v8 = v6;
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v14 = *(v0 + 392);

  v15 = [v14 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != 0x6C69614D646E6553 || v18 != 0xE800000000000000)
  {
    OUTLINED_FUNCTION_54_1();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_80_0();
  }

  if (SiriLinkFlowFeatureFlags.isEnabled.getter(3))
  {
    v20 = *(v0 + 392);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 392);
      v24 = OUTLINED_FUNCTION_48();
      v95 = OUTLINED_FUNCTION_85();
      *v24 = 136315138;
      v25 = [v23 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = OUTLINED_FUNCTION_75();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);

      *(v24 + 4) = v29;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_17();
    }

    v35 = *(v0 + 472);
    v36 = *(v0 + 480);
    v37 = *(v0 + 456);
    v87 = *(v0 + 440);
    v88 = *(v0 + 464);
    v94 = *(v0 + 432);
    v92 = *(v0 + 408);
    v93 = *(v0 + 424);
    v89 = *(v0 + 416);
    v90 = *(v0 + 400);
    v91 = *(v0 + 392);
    v38 = type metadata accessor for SendMailPlan();
    OUTLINED_FUNCTION_66(v38);
    *(v0 + 368) = SendMailPlan.init()();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMd, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMR);
    OUTLINED_FUNCTION_66(v39);
    *(v0 + 376) = ReactiveFlow.init(plan:)();
    OUTLINED_FUNCTION_21();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMd, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMR, &protocol conformance descriptor for ReactiveFlow<A>);
    ActingFlow.onCompletion(_:)();

    *(v0 + 336) = v39;
    *(v0 + 344) = v40;
    swift_getOpaqueTypeConformance2();
    ActingFlow.toAnyFlow()();
    (*(v35 + 8))(v36, v88);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
    v42 = (v37 + v41[12]);
    v43 = v41[16];
    v44 = (v37 + v41[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11();
    (*(v45 + 16))(v37, v89);
    *v42 = v90;
    v42[1] = v92;
    *(v37 + v43) = v91;
    *v44 = v93;
    v44[1] = v94;
    swift_storeEnumTagMultiPayload();
    v46 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v87 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v0 + 312);
    v47 = v91;

    outlined assign with take of WorkflowRunnerFlow.State(v37, v87 + v46);
    swift_endAccess();
    static ExecuteResponse.ongoing(next:)();

    OUTLINED_FUNCTION_108();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X1, X16 }
  }

  v50 = *(v0 + 129);
  v52 = *(v0 + 400);
  v51 = *(v0 + 408);
  v53 = *(v0 + 392);
  outlined init with copy of DeviceState(*(v0 + 440) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner, v0 + 48);
  *(v0 + 16) = v52;
  *(v0 + 24) = v51;
  *(v0 + 32) = v53;
  *(v0 + 40) = v50;
  v54 = v53;

  v55 = [v54 outputType];
  if (!v55 || (v56 = *(v0 + 392), v55, v57 = [v56 systemProtocols], type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr), OUTLINED_FUNCTION_48_2(), v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v57, v59 = objc_msgSend(objc_opt_self(), "sessionStartingProtocol"), *(v0 + 360) = v59, v60 = swift_task_alloc(), *(v60 + 16) = v0 + 360, specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v60, v58), LOBYTE(v57) = v61, , v59, , (v57 & 1) == 0) || (v62 = objc_msgSend(*(v0 + 392), "systemProtocols"), v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v62, LOBYTE(v62) = Array<A>.isAudioStarting.getter(v63), , (v62 & 1) == 0))
  {
    OUTLINED_FUNCTION_42_3((*(v0 + 440) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory));
    v81 = type metadata accessor for LinkMetadataProvider();
    OUTLINED_FUNCTION_21();
    v82 = swift_allocObject();
    *(v82 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
    *(v0 + 160) = v81;
    *(v0 + 168) = &protocol witness table for LinkMetadataProvider;
    *(v0 + 136) = v82;
    OUTLINED_FUNCTION_16_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 520) = v83;
    *v83 = v84;
    v83[1] = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:);
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X8, X16 }
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v65))
  {
    v66 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v66);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v72 = *(v0 + 392);

  *(v0 + 496) = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker;
  v73 = [v72 systemProtocols];
  *(v0 + 504) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 512) = v74;
  *v74 = v75;
  v74[1] = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:);
  OUTLINED_FUNCTION_100();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v76, v77, v78);
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
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = v14[57];
  v16 = v14[55];
  v17 = v14[53];
  v35 = v14[52];
  v36 = v14[56];
  v37 = v14[48];
  v18 = (v16 + v14[62]);
  v19 = [objc_opt_self() wfSiriExecutionRequiresShortcutsJrError];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v20 = [objc_allocWithZone(SAUICloseAssistant) init];
  AceServiceInvokerAsync.submitAndForget(_:)();

  v21 = v19;
  v17(0, v19);

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v15 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11();
  (*(v23 + 16))(&v15[v22], v35);
  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0(v16 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, (v14 + 36));
  v25 = v21;
  outlined assign with take of WorkflowRunnerFlow.State(v15, v16 + v24);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  outlined destroy of LinkHandlingFlowType.GetFlowConfig((v14 + 2));
  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = *(v16 + 456);
  v18 = *(v16 + 440);
  if (*(v16 + 128) == 1)
  {
    outlined init with take of AceServiceInvokerAsync((v16 + 88), v16 + 176);
    OUTLINED_FUNCTION_97();
    swift_storeEnumTagMultiPayload();
    v19 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v18 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v16 + 240);
    outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v19);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v16 + 176), *(v16 + 200));
    static ExecuteResponse.ongoing<A>(next:)();
    outlined destroy of LinkHandlingFlowType.GetFlowConfig(v16 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 176));
  }

  else
  {
    a10 = *(v16 + 424);
    a11 = *(v16 + 432);
    v20 = *(v16 + 408);
    v21 = *(v16 + 416);
    v22 = *(v16 + 392);
    a9 = *(v16 + 400);
    a12 = *(v16 + 88);
    a13 = *(v16 + 384);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
    v24 = (v17 + v23[12]);
    v25 = v23[16];
    v26 = (v17 + v23[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11();
    (*(v27 + 16))(v17, v21);
    *v24 = a9;
    v24[1] = v20;
    *(v17 + v25) = v22;
    *v26 = a10;
    v26[1] = a11;
    OUTLINED_FUNCTION_97();
    swift_storeEnumTagMultiPayload();
    v28 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v18 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v16 + 264);
    v29 = v22;

    outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v28);
    swift_endAccess();
    *(v16 + 352) = a12;
    OUTLINED_FUNCTION_21();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for LinkRCHFlow();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type LinkRCHFlow and conformance LinkRCHFlow, type metadata accessor for LinkRCHFlow, &protocol conformance descriptor for LinkRCHFlow);
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    outlined destroy of LinkHandlingFlowType.GetFlowConfig(v16 + 16);
  }

  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  outlined destroy of LinkHandlingFlowType.GetFlowConfig((v17 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v17 + 17);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v20);
    _os_log_impl(&dword_0, v18, v19, "#WorkflowRunnerFlow error constructing LinkRCHFlow", v16, 2u);
    OUTLINED_FUNCTION_17();
  }

  v21 = v17[57];
  v22 = v17[55];
  v24 = v17[52];
  v23 = v17[53];
  v41 = v17[48];
  v42 = v17[66];

  v25 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v26 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v25);
  *v27 = xmmword_218710;
  v23(0, v26);

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v21 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v25);
  *v29 = xmmword_218710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11();
  (*(v30 + 16))(v21 + v28, v24);
  swift_storeEnumTagMultiPayload();
  v31 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, (v17 + 27));
  outlined assign with take of WorkflowRunnerFlow.State(v21, v22 + v31);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, 0, 4, a11, v41, v42, a14, a15, a16);
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  v7[41] = type metadata accessor for WorkflowRunnerFlow.State(0);
  v7[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7[43] = swift_task_alloc();
  v8 = type metadata accessor for AceOutput();
  v7[44] = v8;
  v7[45] = *(v8 - 8);
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for TemplatingResult();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:));
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_17();
  }

  v10 = *(v0 + 392);
  v11 = *(v0 + 360);
  v12 = *(v0 + 344);
  v30 = *(v0 + 368);
  v31 = *(v0 + 352);
  v13 = *(v0 + 320);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_216850;
  *(v17 + 32) = v15;
  *(v17 + 40) = v14;
  swift_bridgeObjectRetain_n();
  TemplatingResult.init(dialogId:print:speak:)(0xD000000000000019, inited, v17, v10);
  v18 = OUTLINED_FUNCTION_75();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  OUTLINED_FUNCTION_60_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v0 + 144) = 0;
  *(v0 + 128) = 0u;
  *(v0 + 112) = 0u;
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 112, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v24 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher + 24);
  v25 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher + 32);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher), v24);
  *(v0 + 176) = v31;
  *(v0 + 184) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  (*(v11 + 16))(boxed_opaque_existential_1, v30, v31);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 408) = v27;
  *v27 = v28;
  v27[1] = WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 152, v24, v25);
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
  *(v3 + 416) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 152));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  OUTLINED_FUNCTION_18_4();
  (*(v5 + 224))(0);
  v4(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11();
  (*(v6 + 16))(v1, v3);
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, (v0 + 30));
  outlined assign with take of WorkflowRunnerFlow.State(v1, v2 + v7);
  swift_endAccess();
  OUTLINED_FUNCTION_73_0();
  v8 = OUTLINED_FUNCTION_20_1();
  v9(v8);
  v10 = OUTLINED_FUNCTION_22_4();
  v11(v10);

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_99();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 19);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_48();
    v26 = OUTLINED_FUNCTION_85();
    a10 = v26;
    *v25 = 136315138;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &a10);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v35 = v20[52];
  v36 = v20[42];
  v37 = v20[40];
  v38 = v20[37];
  v39 = v20[38];
  swift_errorRetain();
  v39(v35);

  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11();
  (*(v41 + 16))(&v36[v40], v38);
  swift_storeEnumTagMultiPayload();
  v42 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0(v37 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, (v20 + 24));
  outlined assign with take of WorkflowRunnerFlow.State(v36, v37 + v42);
  swift_endAccess();
  OUTLINED_FUNCTION_73_0();
  v43 = OUTLINED_FUNCTION_20_1();
  v44(v43);
  v45 = OUTLINED_FUNCTION_22_4();
  v46(v45);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_78();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

void WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v61 = a4;
  v59 = a3;
  v58 = a2;
  v57 = a1;
  v60 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v60);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CATOption();
  __chkstk_darwin(v14 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#WorkflowRunnerFlow createOpenURLFlow", v18, 2u);
  }

  v19 = &v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v20 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v22 = v19[2];

    if (v22)
    {
      goto LABEL_9;
    }
  }

  else if (!v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v21 = *v19;
    v22 = *&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v20 = v21;
LABEL_9:
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    v23 = NSUserActivity.__allocating_init(activityType:)(0xD000000000000017, 0x8000000000231050, &selRef_initWithActivityType_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation3URLVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation3URLVtGMR);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
    v56 = a7;
    v25 = v24 - 8;
    v26 = *(*(v24 - 8) + 80);
    v55 = a6;
    v27 = (v26 + 32) & ~v26;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_216850;
    v29 = (v28 + v27);
    v54 = a5;
    v30 = *(v25 + 56);
    *v29 = 0xD00000000000001DLL;
    *(v29 + 1) = 0x8000000000231070;
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 16))(&v29[v30], v57, v31);
    v32 = Dictionary.init(dictionaryLiteral:)();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v32);
    v34 = v33;

    outlined bridged method (mbnn) of @objc NSUserActivity.userInfo.setter(v34, v23);
    if (v59)
    {
      v35 = v58;
    }

    else
    {
      v35 = 0xD000000000000013;
    }

    if (v59)
    {
      v36 = v59;
    }

    else
    {
      v36 = 0x800000000022F740;
    }

    v37 = v23;

    v38 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v20, v22, v23, v35, v36);

    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v65);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v64);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v63);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v62);
    type metadata accessor for RunVoiceCommandCATs(0);
    v39 = v38;
    static CATOption.defaultMode.getter();
    v40 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    v41 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v42 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v39, v65, v64, v40, v41, v63, v62);
    v43 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v44 - 8) + 16))(v13, v61, v44);
    v45 = v55;
    *v43 = v54;
    v43[1] = v45;
    swift_storeEnumTagMultiPayload();
    v46 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v13, &v8[v46]);
    swift_endAccess();
    v65[0] = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = v8;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
    *(v48 + 24) = v47;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow, &protocol conformance descriptor for WFOpenInteractionFlow);
    v49 = v8;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "#WorkflowRunnerFlow does not have shortcutName for open url action", v52, 2u);
  }

  static ExecuteResponse.complete()();
}

void WorkflowRunnerFlow.createHandleUserActivityFlow(userActivity:bundleId:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v40 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CATOption();
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v15;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#WorkflowRunnerFlow createHandleUserActivityFlow", v19, 2u);
  }

  v20 = &v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v21 = *&v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v23 = v20[2];

    if (v23)
    {
      goto LABEL_9;
    }
  }

  else if (!v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v22 = *v20;
    v23 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v21 = v22;
LABEL_9:
    v24 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v21, v23, a1, a2, a3);

    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v47);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v46);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v45);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v44);
    type metadata accessor for RunVoiceCommandCATs(0);
    v25 = v24;
    static CATOption.defaultMode.getter();
    v26 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    v27 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v28 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v25, v47, v46, v26, v27, v45, v44);
    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v30 - 8) + 16))(v12, v41, v30);
    v31 = v43;
    *v29 = v42;
    v29[1] = v31;
    swift_storeEnumTagMultiPayload();
    v32 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v12, &v7[v32]);
    swift_endAccess();
    v47[0] = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
    *(v34 + 24) = v33;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow, &protocol conformance descriptor for WFOpenInteractionFlow);
    v35 = v7;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "#WorkflowRunnerFlow does not have shortcutName for handle UserActivity action", v38, 2u);
  }

  static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v67 = a3;
  v65 = a2;
  v66 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v66);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#WorkflowRunnerFlow createExecuteIntentFlow", v15, 2u);
  }

  v16 = &v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v17 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v19 = *(v16 + 2);

    if (v19)
    {
LABEL_9:
      v64 = a4;
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v73);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v72);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v71);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v70);
      v20 = [objc_allocWithZone(AFPreferences) init];
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      v21 = static VoiceCommandsAppPolicyHandler.instance;
      v63 = type metadata accessor for WFExecuteCustomIntentFlow();
      v22 = swift_allocObject();
      v23 = type metadata accessor for VoiceCommandsAppPolicyHandler();
      v69[4] = &protocol witness table for VoiceCommandsAppPolicyHandler;
      v69[3] = v23;
      v69[0] = v21;
      outlined init with copy of DeviceState(v72, v22 + 104);
      outlined init with copy of DeviceState(v71, v22 + 144);
      outlined init with copy of DeviceState(v70, v22 + 184);
      *(v22 + 40) = a1;
      *(v22 + 48) = v17;
      *(v22 + 56) = v19;
      outlined init with copy of DeviceState(&v73, v22 + 64);
      *(v22 + 224) = v20;
      outlined init with copy of DeviceState(v69, v22 + 232);
      *(v22 + 272) = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:);
      *(v22 + 280) = 0;
      v24 = a1;

      v25 = v20;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v62 = v11;
        v29 = a5;
        v30 = v25;
        v31 = v28;
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v24;
        *v32 = v24;
        v33 = v24;
        _os_log_impl(&dword_0, v26, v27, "#WFExecuteCustomIntentFlow intent: %@", v31, 0xCu);
        outlined destroy of Any?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v25 = v30;
        a5 = v29;
        v11 = v62;
      }

      v34 = [*(v22 + 40) _metadata];
      if (v34)
      {
        v35 = v34;
        v36 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v34, &selRef_launchId);
        if (v37)
        {
          v60[1] = v36;
          v61 = v25;
          v62 = a5;
          v38 = [v24 typeName];
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v68[0] = v39;
          v68[1] = v41;
          __chkstk_darwin(v42);
          v60[-2] = v68;
          LOBYTE(v38) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v60[-4], &outlined read-only object #0 of one-time initialization function for parityIntentsList);

          if ((v38 & 1) == 0)
          {
            [v35 setExecutionContext:2];
          }

          [v24 _setMetadata:v35];
          type metadata accessor for App();
          v43 = App.__allocating_init(appIdentifier:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          __swift_destroy_boxed_opaque_existential_1Tm(&v73);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          v44 = 0;
LABEL_27:
          v53 = v64;
          *(v22 + 16) = v43;
          *(v22 + 24) = v24;
          *(v22 + 32) = v44;
          v54 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
          (*(*(v55 - 8) + 16))(v11, v65, v55);
          *v54 = v67;
          v54[1] = v53;
          swift_storeEnumTagMultiPayload();
          v56 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
          swift_beginAccess();

          outlined assign with take of WorkflowRunnerFlow.State(v11, v6 + v56);
          swift_endAccess();
          v73 = v22;
          v57 = swift_allocObject();
          *(v57 + 16) = v6;
          v58 = swift_allocObject();
          *(v58 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:);
          *(v58 + 24) = v57;
          _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFExecuteCustomIntentFlow and conformance WFExecuteCustomIntentFlow, type metadata accessor for WFExecuteCustomIntentFlow, &protocol conformance descriptor for WFExecuteCustomIntentFlow);
          v59 = v6;
          static ExecuteResponse.ongoing<A>(next:childCompletion:)();
        }
      }

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "#WFExecuteCustomIntentFlow error state because metadata or bundleid is nil", v51, 2u);
      }

      lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v43 = swift_allocError();
      *v52 = 0;

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      __swift_destroy_boxed_opaque_existential_1Tm(&v73);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      v24 = 0;
      v44 = 4;
      goto LABEL_27;
    }
  }

  else if (!v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v18 = *v16;
    v19 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v17 = v18;
    goto LABEL_9;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "#WorkflowRunnerFlow does not have shortcutName for ExecuteIntent action", v47, 2u);
  }

  return static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[30] = a5;
  v6[31] = v5;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v6[32] = type metadata accessor for WorkflowRunnerFlow.State(0);
  v6[33] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:));
}

uint64_t WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v18);
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v24 = *(v14 + 248);

  v25 = (v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput);
  v26 = *(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8);
  if (*(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64) == 3)
  {
    v28 = v25[2];

    if (v28)
    {
      goto LABEL_9;
    }
  }

  else if (!*(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64))
  {
    v27 = *v25;
    v28 = *(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8);

    v26 = v27;
LABEL_9:
    v29 = *(v14 + 264);
    v31 = *(v14 + 240);
    v30 = *(v14 + 248);
    a9 = *(v14 + 232);
    a10 = *(v14 + 256);
    v32 = *(v14 + 216);
    a11 = *(v14 + 208);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState, v14 + 16);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v14 + 56);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider, v14 + 96);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver, v14 + 136);
    type metadata accessor for RouteDialogRequestResponseFlow();
    swift_allocObject();
    v33 = RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(v26, v28, v32, (v14 + 16), (v14 + 56), (v14 + 96), (v14 + 136));
    v34 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11();
    v35 = OUTLINED_FUNCTION_97();
    v36(v35);
    *v34 = a9;
    v34[1] = v31;
    swift_storeEnumTagMultiPayload();
    v37 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v14 + 176);

    outlined assign with take of WorkflowRunnerFlow.State(v29, v30 + v37);
    swift_endAccess();
    *(v14 + 200) = v33;
    OUTLINED_FUNCTION_21();
    v38 = swift_allocObject();
    *(v38 + 16) = v30;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:);
    *(v39 + 24) = v38;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow, type metadata accessor for RouteDialogRequestResponseFlow, &protocol conformance descriptor for RouteDialogRequestResponseFlow);
    v40 = v30;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    goto LABEL_13;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v42))
  {
    v43 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v43);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v44, v45, v46, v47, v48, 2u);
    OUTLINED_FUNCTION_17();
  }

  static ExecuteResponse.complete()();
LABEL_13:

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t WorkflowRunnerFlow.createOpenInteractionInAppFlow(interaction:iterator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a3;
  v30 = a5;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CATOption();
  __chkstk_darwin(v13 - 8);
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
    _os_log_impl(&dword_0, v15, v16, "#WorkflowRunnerFlow createOpenInteractionInAppFlow", v17, 2u);
  }

  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner, v34);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState, v33);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker, v32);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v31);
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WFOpenInteractionFlow();
  swift_allocObject();
  v20 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(a1, v34, v33, v18, v19, v32, v31);
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v22 - 8) + 16))(v12, a2, v22);
  *v21 = v29;
  v21[1] = a4;
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();

  outlined assign with take of WorkflowRunnerFlow.State(v12, v6 + v23);
  swift_endAccess();
  v34[0] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
  *(v25 + 24) = v24;
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow, &protocol conformance descriptor for WFOpenInteractionFlow);
  v26 = v6;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

void WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v40 = a5;
  v39 = a4;
  v38 = a3;
  v41 = a6;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CATOption();
  __chkstk_darwin(v13 - 8);
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
    _os_log_impl(&dword_0, v15, v16, "#WorkflowRunnerFlow createOpenAppFlow", v17, 2u);
  }

  v18 = &v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v19 = *&v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v21 = v18[2];

    if (v21)
    {
      goto LABEL_9;
    }
  }

  else if (!v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v20 = *v18;
    v21 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v19 = v20;
LABEL_9:
    v22 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v19, v21, 0, a1, a2);

    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v45);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v44);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v43);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v42);
    type metadata accessor for RunVoiceCommandCATs(0);
    v23 = v22;
    static CATOption.defaultMode.getter();
    v24 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    v25 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v26 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v23, v45, v44, v24, v25, v43, v42);
    v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v28 - 8) + 16))(v12, v38, v28);
    v29 = v40;
    *v27 = v39;
    v27[1] = v29;
    swift_storeEnumTagMultiPayload();
    v30 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v12, &v7[v30]);
    swift_endAccess();
    v45[0] = v26;
    v31 = swift_allocObject();
    *(v31 + 16) = v7;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:);
    *(v32 + 24) = v31;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow, &protocol conformance descriptor for WFOpenInteractionFlow);
    v33 = v7;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "#WorkflowRunnerFlow does not have shortcutName for Open App action", v36, 2u);
  }

  static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35[0] = a2;
  v35[1] = a4;
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#WorkflowRunnerFlow createPunchoutRequestedFlow", v14, 2u);
  }

  v15 = &v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24]);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v16 = v35[0];

    return WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(a1, v16, a3);
  }

  else
  {
    v18 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24];
    v19 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32];
    __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v18);
    (*(v19 + 16))(v18, v19);
    __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));
    if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v5;
      v21 = v5;
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      static AceService.currentAsync.getter();
      type metadata accessor for ShowOutputAndCloseFlow();
      swift_allocObject();
      v22 = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, &v37, v36, &async function pointer to partial apply for closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:), v20);
      v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
      (*(*(v24 - 8) + 16))(v10, a1, v24);
      *v23 = v35[0];
      *(v23 + 1) = a3;
      swift_storeEnumTagMultiPayload();
      v25 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
      swift_beginAccess();

      outlined assign with take of WorkflowRunnerFlow.State(v10, &v21[v25]);
      swift_endAccess();
      *&v37 = v22;
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      v27 = swift_allocObject();
      *(v27 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:);
      *(v27 + 24) = v26;
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow, &protocol conformance descriptor for ShowOutputAndCloseFlow);
      v28 = v21;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }

    else
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
      (*(*(v29 - 8) + 16))(v10, a1, v29);
      swift_storeEnumTagMultiPayload();
      v30 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
      swift_beginAccess();
      outlined assign with take of WorkflowRunnerFlow.State(v10, &v5[v30]);
      swift_endAccess();
      (v35[0])(1);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "dismissing Siri after punchout request", v33, 2u);
      }

      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24]);
      v34 = [objc_allocWithZone(SAUICloseAssistant) init];
      AceServiceInvokerAsync.submitAndForget(_:)();

      return static ExecuteResponse.complete()();
    }
  }
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for DialogPhase();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.handleDidFinishWithError(error:));
}

void WorkflowRunnerFlow.handleDidFinishWithError(error:)()
{
  OUTLINED_FUNCTION_24_1();
  v41 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v0[29] = v2;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_85();
    v40 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v40);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_101(&dword_0, v10, v11, "#WorkflowRunnerFlow did finish with output has error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_11_0();
  }

  swift_getErrorValue();
  v0[13] = Error.localizedDescription.getter();
  v0[14] = v12;
  v0[15] = 0xD000000000000020;
  v0[16] = 0x8000000000231090;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.contains<A>(_:)();

  if (v13)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v15))
    {
      v16 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v16);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_17();
    }

    static ExecuteResponse.complete()();
  }

  else
  {
    v22 = _convertErrorToNSError(_:)();
    v0[30] = v22;
    v23 = [v22 domain];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        NSError.filteredLocalizedDescription.getter();
        v0[31] = v29;
        v30 = swift_task_alloc();
        v0[32] = v30;
        *v30 = v0;
        v30[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_103();

        __asm { BRAA            X2, X16 }
      }
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v34))
    {
      v35 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_2(v35);
      _os_log_impl(&dword_0, v33, v2, "#WorkflowRunnerFlow skipping general error dialog for WFSiriExecutionErrorDomain", v24, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v36 = v0[21];

    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker), *(v36 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24));
    v37 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();

    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_103();

  __asm { BRAA            X1, X16 }
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 264) = v6;
  *(v7 + 272) = v0;

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
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_42_3((*(v0 + 168) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v1;
  *v1 = v2;
  v1[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
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
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 240);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v3);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v9 = *(v0 + 240);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v11 = *(v0 + 240);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[33];
  v14 = v12[25];
  v15 = v12[22];
  v16 = v12[23];
  static DialogPhase.summary.getter();
  v17 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OUTLINED_FUNCTION_69_0();
  v19(v18);
  OUTLINED_FUNCTION_1_14();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v16 + 8))(v14, v15);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v20 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v20);
  v12[35] = ResponseFactory.init()();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_64(v21);
  v12[36] = v22;
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v13;
  OUTLINED_FUNCTION_59_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[37] = v23;
  *v23 = v24;
  v23[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_27_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  type metadata accessor for DialogPhase();
  *(v3 + 160) = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:));
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v13 = type metadata accessor for Logger();
  *(v12 + 208) = __swift_project_value_buffer(v13, static Logger.voiceCommands);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v15))
  {
    v16 = *(v12 + 288);
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    v17[1] = v16;
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v18, v19, v20, v21, v22, 8u);
    OUTLINED_FUNCTION_19_0();
  }

  v23 = *(v12 + 136);

  v24 = *(v23 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState);
  if ((*(*v24 + 272))())
  {
    v25 = v12 + 104;
    v26 = *(v12 + 200);
    v27 = *(v12 + 136);
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v70 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v25);
    outlined assign with take of WorkflowRunnerFlow.State(v26, v27 + v70);
    v71 = swift_endAccess();
    OUTLINED_FUNCTION_23_5(v71);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78();

    return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12);
  }

  v28 = *(v12 + 288);
  OUTLINED_FUNCTION_18_4();
  if (((*(v29 + 240))() & 1) != 0 || v28)
  {
    v53 = (*(*v24 + 256))();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v56 = OUTLINED_FUNCTION_38_4(v55);
    if (v53)
    {
      v25 = v12 + 80;
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_44_2(v57);
        OUTLINED_FUNCTION_4_7();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_19_0();
      }

      v26 = *(v12 + 200);
      v27 = *(v12 + 136);

      __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker), *(v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24));
      v63 = [objc_allocWithZone(SAUICloseAssistant) init];
      AceServiceInvokerAsync.submitAndForget(_:)();
    }

    else
    {
      v25 = v12 + 56;
      if (v56)
      {
        v64 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_44_2(v64);
        OUTLINED_FUNCTION_4_7();
        _os_log_impl(v65, v66, v67, v68, v69, 2u);
        OUTLINED_FUNCTION_19_0();
      }

      v26 = *(v12 + 200);
      v27 = *(v12 + 136);
    }

    OUTLINED_FUNCTION_20_1();
    goto LABEL_20;
  }

  v30 = *(v12 + 136);
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  v31 = *(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple);
  v32 = (v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState);
  v33 = *(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24);
  v34 = *(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  *(v12 + 216) = DeviceState.asSiriKitDeviceState()(v33, v34);
  v35 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  v80 = *v31 + class metadata base offset for RunVoiceCommandCATsSimple + 112;
  OUTLINED_FUNCTION_16_1();
  v81 = v42 + *v42;
  v43 = swift_task_alloc();
  *(v12 + 224) = v43;
  *v43 = v12;
  v43[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
  OUTLINED_FUNCTION_78();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, v80, v81, a11, a12);
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 232) = v6;
  *(v7 + 240) = v0;

  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of Any?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of Any?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[29];
  v2 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  v3 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v3);
  v0[31] = ResponseFactory.init()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64(v4);
  v0[32] = v5;
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v1;
  OUTLINED_FUNCTION_59_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[33] = v6;
  *v6 = v7;
  v6[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
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
  OUTLINED_FUNCTION_42_3((*(v0 + 136) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 272) = v1;
  *v1 = v2;
  v1[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
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
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OUTLINED_FUNCTION_22_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_23_5(v3);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v3);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_23_5(v9);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_23_5(v11);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t WorkflowRunnerFlow.createAppProtectionRequestFlow(bundleId:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24[2] = a1;
  v11 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v24[1] = a2;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#WorkflowRunnerFlow createAppProtectionRequestFlow", v17, 2u);
  }

  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  v18 = static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v20 - 8) + 16))(v13, a3, v20);
  *v19 = a4;
  *(v19 + 1) = a5;
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();

  outlined assign with take of WorkflowRunnerFlow.State(v13, v6 + v21);
  swift_endAccess();
  v24[3] = v18;
  *(swift_allocObject() + 16) = v6;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR, &protocol conformance descriptor for AnyAppResolutionFlow<A>);
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a3;
  *(v6 + 240) = a4;
  *(v6 + 320) = a2;
  *(v6 + 224) = a1;
  *(v6 + 264) = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v6 + 272) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:));
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  (*(*(v13 + 256) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider))(*(v13 + 320));
  if (*(v13 + 80))
  {
    outlined init with take of AceServiceInvokerAsync((v13 + 56), v13 + 16);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_52();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#WorkflowRunnerFlow guardLocationAccess", v17, 2u);
      OUTLINED_FUNCTION_15_0(v17);
    }

    v18 = *(v13 + 272);
    v19 = *(v13 + 248);
    v20 = *(v13 + 256);
    v21 = *(v13 + 232);
    v22 = *(v13 + 240);

    v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11();
    (*(v24 + 16))(v18, v21);
    *v23 = v22;
    v23[1] = v19;
    swift_storeEnumTagMultiPayload();
    v25 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0(v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, v13 + 200);

    outlined assign with take of WorkflowRunnerFlow.State(v18, v20 + v25);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
    outlined init with copy of DeviceState(v13 + 16, v13 + 136);
    v26 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync((v13 + 136), v26 + 16);
    *(v26 + 56) = v20;
    v27 = v20;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v13 + 16));

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    outlined destroy of Any?(v13 + 56, &_s18SiriLinkFlowPlugin0A22LocationAccessGuarding_pSgMd, &_s18SiriLinkFlowPlugin0A22LocationAccessGuarding_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v37 = type metadata accessor for Logger();
    *(v13 + 280) = __swift_project_value_buffer(v37, static Logger.voiceCommands);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v39))
    {
      v40 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v40);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_17();
    }

    v46 = *(v13 + 256);

    OUTLINED_FUNCTION_42_3((v46 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper));
    OUTLINED_FUNCTION_16_1();
    v58 = v47 + *v47;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 288) = v48;
    *v48 = v49;
    v48[1] = WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:);
    OUTLINED_FUNCTION_78();

    return v55(v50, v51, v52, v53, v54, v55, v56, v57, v12 + 8, v58, a11, a12);
  }
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_42_3((*(v0 + 256) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v1;
  *v1 = v2;
  v1[1] = WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:);
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
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v4 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v5 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v4);
  *v6 = 0;
  v6[1] = 0;
  *v1 = v5;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state, (v0 + 22));
  outlined assign with take of WorkflowRunnerFlow.State(v1, v2 + v7);
  swift_endAccess();
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v8 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v4);
  v10 = OUTLINED_FUNCTION_46_2(v8, v9);
  v3(v10);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v3, v0))
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    *v2 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v5;
    *v4 = v5;
    OUTLINED_FUNCTION_102(&dword_0, v6, v7, "#WorkflowRunnerFlow guardLocationAccess - error with failure output: %@");
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v8 = *(v1 + 240);

  static ExecuteResponse.ongoing(requireInput:)();

  v9 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v10 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v9);
  v12 = OUTLINED_FUNCTION_46_2(v10, v11);
  v8(v12);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v3, v0))
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    *v2 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v5;
    *v4 = v5;
    OUTLINED_FUNCTION_102(&dword_0, v6, v7, "#WorkflowRunnerFlow guardLocationAccess - error with failure output: %@");
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v8 = *(v1 + 240);

  static ExecuteResponse.ongoing(requireInput:)();

  v9 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v10 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v9);
  v12 = OUTLINED_FUNCTION_46_2(v10, v11);
  v8(v12);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

BOOL WorkflowRunnerFlow.isActionable(actionID:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_218720;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000000002310C0;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000000002310F0;
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x8000000000231110;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x8000000000231140;
  *(inited + 96) = 0xD00000000000001BLL;
  *(inited + 104) = 0x8000000000231160;
  v7[0] = a1;
  v7[1] = a2;
  v6[2] = v7;
  LOBYTE(a2) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v6, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return (a2 & 1) == 0;
}

void closure #1 in WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  v5 = __chkstk_darwin(v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25[-1] - v8;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  outlined init with copy of SiriWorkflowRunnerEvent?(a1, v9, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v24 = a2;
    v25[0] = v14;
    outlined init with copy of SiriWorkflowRunnerEvent?(v9, v7, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    outlined destroy of Any?(v9, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "#WorkflowRunnerFlow SendMailPlan completed with %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {

    outlined destroy of Any?(v9, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = specialized Result<>.linkExitValue.getter();
    v23 = v22;
    WorkflowRunnerFlow.handleLinkExitValue(_:)(v21, v22);
    outlined consume of LinkExitValue(v21, v23);
  }
}

uint64_t specialized Result<>.linkExitValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SendMailResult();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  __chkstk_darwin(v9);
  v11 = (v20 - v10);
  outlined init with copy of SiriWorkflowRunnerEvent?(v1, v20 - v10, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v20[1] = *v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = _getErrorEmbeddedNSError<A>(_:)();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = swift_allocError();
      *v16 = v12;
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    v15 = (*(v3 + 88))(v6, v2);
    if (v15 == enum case for SendMailResult.success(_:) || v15 == enum case for SendMailResult.failure(_:))
    {
      (*(v3 + 8))(v8, v2);
      (*(v3 + 96))(v6, v2);
      return *v6;
    }

    else if (v15 == enum case for SendMailResult.rejected(_:))
    {
      (*(v3 + 8))(v8, v2);
      return 1;
    }

    else if (v15 == enum case for SendMailResult.done(_:))
    {
      (*(v3 + 8))(v8, v2);
      return 2;
    }

    else
    {
      lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
      v14 = swift_allocError();
      *v18 = xmmword_218730;
      v19 = *(v3 + 8);
      v19(v8, v2);
      v19(v6, v2);
    }
  }

  return v14;
}

void Result<>.linkExitValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_0();
  a19 = v20;
  a20 = v21;
  v23 = *(v22 + 24);
  OUTLINED_FUNCTION_13_1();
  v25 = v24;
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_50_0();
  v29 = (v27 - v28);
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_13_1();
  v34 = v33;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  (*(v41 + 16))(v39 - v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *(v25 + 32);
    v42(v32, v40, v23);
    (*(v25 + 16))(v29, v32, v23);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      v43 = *(v25 + 8);
      v43(v29, v23);
      v43(v32, v23);
    }

    else
    {
      v55 = OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_16_6(v55, v56);
      v42(v57, v29, v23);
      (*(v25 + 8))(v32, v23);
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_97();
    v45(v44);
    v46 = OUTLINED_FUNCTION_20_1();
    v47(v46);
    v48 = OUTLINED_FUNCTION_48_2();
    v50 = v49(v48);
    if (v50 == enum case for SendMailResult.success(_:) || v50 == enum case for SendMailResult.failure(_:))
    {
      v51 = OUTLINED_FUNCTION_54_1();
      v52(v51);
      v53 = OUTLINED_FUNCTION_48_2();
      v54(v53);
    }

    else if (v50 == enum case for SendMailResult.rejected(_:) || v50 == enum case for SendMailResult.done(_:))
    {
      v58 = OUTLINED_FUNCTION_54_1();
      v59(v58);
    }

    else
    {
      v60 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
      OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v60);
      *v61 = xmmword_218730;
      v62 = *(v34 + 8);
      v63 = OUTLINED_FUNCTION_54_1();
      v62(v63);
      v64 = OUTLINED_FUNCTION_48_2();
      v62(v64);
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WorkflowRunnerFlow.handleLinkExitValue(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v103 = (&v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v89 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v14 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v89 - v15;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.voiceCommands);
  outlined copy of LinkExitValue(a1, v4);
  *&v105 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  outlined consume of LinkExitValue(a1, v4);
  v20 = os_log_type_enabled(v18, v19);
  LODWORD(v104) = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v102 = v13;
    v22 = v21;
    v101 = swift_slowAlloc();
    v109 = v101;
    *v22 = 136315138;
    v111 = a1;
    v112 = v4;
    outlined copy of LinkExitValue(a1, v4);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v109);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "#WorkflowRunnerFlow handleLinkExitValue received: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);

    v13 = v102;
  }

  v26 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v26, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of WorkflowRunnerFlow.State(v13);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "#WorkflowRunnerFlow handleLinkExitValue received unexpected state", v45, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v46 = swift_allocError();
    *v47 = xmmword_218740;
    *v11 = v46;
    goto LABEL_18;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
  v28 = &v13[v27[12]];
  v29 = *v28;
  v30 = v28[1];

  v31 = &v13[v27[20]];
  v32 = *v31;
  v101 = *(v31 + 1);
  v102 = v32;
  v100 = *(v14 + 32);
  v100(v106, v13, v107);
  if (v104)
  {
    if (v104 == 1)
    {

      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = a1;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v103 = v37;
        v104 = swift_slowAlloc();
        *&v105 = v11;
        v108 = v104;
        *v36 = 138412546;
        swift_errorRetain();
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v38;
        *v37 = v38;
        *(v36 + 12) = 2080;
        v109 = v35;
        v110 = 1;
        swift_errorRetain();
        v39 = String.init<A>(describing:)();
        v41 = v3;
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v108);

        *(v36 + 14) = v42;
        v3 = v41;
        _os_log_impl(&dword_0, v33, v34, "#WorkflowRunnerFlow.handleSuccessfulOutput received error %@ for %s", v36, 0x16u);
        outlined destroy of Any?(v103, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        v11 = v105;

        a1 = v35;
      }

      swift_errorRetain();
      (v102)(0, a1);
      outlined consume of LinkExitValue(a1, 1);

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      *v11 = a1;
      v100(v11 + v67, v106, v107);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v68 = v3 + v26;
      goto LABEL_19;
    }

    v103 = v3;
    v104 = (v14 + 32);

    outlined copy of LinkExitValue(a1, 2);
    v59 = Logger.logObject.getter();
    v60 = a1;
    v61 = static os_log_type_t.error.getter();
    outlined consume of LinkExitValue(v60, 2);
    if (os_log_type_enabled(v59, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v108 = v63;
      v109 = v60;
      *v62 = 136315138;
      v110 = 2;
      outlined copy of LinkExitValue(v60, 2);
      v64 = String.init<A>(describing:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v108);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_0, v59, v61, "#WorkflowRunnerFlow.handleSuccessfulOutput %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v74 = swift_allocError();
    v105 = xmmword_218730;
    *v75 = xmmword_218730;
    (v102)(0, v74);

    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    *v11 = swift_allocError();
    *v77 = v105;

    v100(v11 + v76, v106, v107);
    swift_storeEnumTagMultiPayload();
    v78 = v103;
    swift_beginAccess();
    v68 = v78 + v26;
  }

  else
  {
    v104 = (v14 + 32);
    v99 = v14;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNActionOutput, LNActionOutput_ptr);
    v48 = a1;
    v49 = static LNActionOutput.shouldSuppressOpensIntent(bundleId:)(v29, v30);

    if (v49)
    {
      v50 = [v48 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v98 = [v48 dialog];
      v97 = [v48 viewSnippet];
      v96 = [v48 snippetAction];
      v95 = [v48 attribution];
      v94 = [v48 value];
      v93 = [v48 showOutputActionHint];
      v92 = [v48 isDeferred];
      v91 = [v48 nextAction];
      v90 = outlined bridged method (pb) of @objc LNActionOutput.suggestedFollowUpActions.getter(v48);
      v89 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v48, &selRef_activityIdentifier);
      v52 = v51;
      v53 = v3;
      v54 = [v48 confirmationActionName];
      v55 = [v48 shouldShowPrompt];
      v56 = [v48 confirmationConditions];
      v57 = [v48 undoContext];
      v58 = objc_allocWithZone(LNActionOutput);
      v88 = v54;
      v3 = v53;
      v48 = @nonobjc LNActionOutput.init(identifier:dialog:viewSnippet:snippetAction:attribution:value:showOutputAction:showOutputActionHint:showOutputActionOptions:deferred:nextAction:suggestedFollowUp:activityIdentifier:confirmationActionName:showPrompt:confirmationConditions:undoContext:)(v103, v98, v97, v96, v95, v94, 0, v93, 0, v92, v91, v90, v89, v52, v88, v55, v56, v57);
      outlined consume of LinkExitValue(a1, 0);
    }

    (v102)(v48, 0);
    v70 = v3;
    v71 = (v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner);
    v72 = *(v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24);
    v73 = *(v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    if (((*(v73 + 24))(v72, v73) & 1) != 0 && !LNActionOutput.hasCustomOutput()())
    {
      __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState), *(v70 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24));
      v79 = dispatch thunk of DeviceState.isHomePod.getter();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v82 = os_log_type_enabled(v80, v81);
      if (v79)
      {
        if (v82)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v109 = v84;
          *v83 = 136315138;
          *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x8000000000230FD0, &v109);
          _os_log_impl(&dword_0, v80, v81, "%s: concluding flow", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
        }

        else
        {
        }
      }

      else
      {
        if (v82)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v109 = v86;
          *v85 = 136315138;
          *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x8000000000230FD0, &v109);
          _os_log_impl(&dword_0, v80, v81, "%s: dismissing Siri", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v86);
        }

        __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker), *(v70 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24));
        v87 = [objc_allocWithZone(SAUICloseAssistant) init];
        AceServiceInvokerAsync.submitAndForget(_:)();
      }

      (*(v99 + 8))(v106, v107);
    }

    else
    {

      v100(v11, v106, v107);
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v68 = v70 + v26;
  }

LABEL_19:
  outlined assign with take of WorkflowRunnerFlow.State(v11, v68);
  return swift_endAccess();
}

uint64_t LinkHandlingFlowType.GetFlowConfig.init(bundleId:action:showWhenRun:workflowRunner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return outlined init with take of AceServiceInvokerAsync(a5, a6 + 32);
}

void closure #2 in WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((v3 - 1) >= 2)
    {
      if (v3)
      {
        v2 = 0;
        v3 = 2;
      }

      else
      {
        v2 = [v2 output];
      }
    }

    else
    {
      outlined copy of LinkRCHFlowResult(v2, v3);
      v3 = 1;
    }

    WorkflowRunnerFlow.handleLinkExitValue(_:)(v2, v3);
    outlined consume of LinkExitValue(v2, v3);
  }
}

id LinkRCHFlowResult.linkExitValue.getter(id a1, uint64_t a2)
{
  v2 = a1;
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      return 0;
    }

    else
    {
      return [a1 output];
    }
  }

  else
  {
    outlined copy of LinkRCHFlowResult(a1, a2);
  }

  return v2;
}

Class WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INSpeakableString, INSpeakableString_ptr);

  v10 = NSUserActivity.__allocating_init(activityType:)(a1, a2, &selRef_initWithSpokenPhrase_);
  v11 = [objc_allocWithZone(INRunWorkflowIntent) initWithWorkflow:v10];
  outlined bridged method (mbgnn) of @objc INIntent.launchId.setter(a4, a5, v11);
  v12 = [objc_allocWithZone(INRunWorkflowIntentResponse) initWithCode:2 userActivity:a3];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
  v13 = v12;
  v16.value.super.isa = v12;
  isa = INInteraction.__allocating_init(intent:response:)(v11, v16).super.isa;

  return isa;
}

uint64_t WorkflowRunnerFlow.onOpenInteractionFinished(exitValue:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v2 + v14, v9);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v16 = *v15;
    v47 = *(v15 + 1);
    v17 = *(v11 + 32);
    v45 = v16;
    v46 = v17;
    v17(v13, v9, v10);
    if (a1 >> 62)
    {
      if (a1 >> 62 == 1)
      {
        v44 = v4;
        v18 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24);
        v19 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner), v18);
        (*(v19 + 16))(v18, v19);
        v45(a1 & 1, 0);

        v46(v7, v13, v10);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.voiceCommands);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_0, v36, v37, "#WorkflowRunnerFlow onOpenInteractionFinished needs handoff, completing the flow...", v38, 2u);
        }

        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.voiceCommands);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      outlined consume of WFOpenInteractionResponse(a1);
      LODWORD(v44) = v28;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = v29;
        v42 = swift_slowAlloc();
        v48[0] = v42;
        *v29 = 136315138;
        swift_getErrorValue();
        v41 = v27;
        v30 = Error.localizedDescription.getter();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v48);

        v33 = v43;
        *(v43 + 1) = v32;
        v27 = v41;
        _os_log_impl(&dword_0, v41, v44, "#WorkflowRunnerFlow onOpenInteractionFinished hitting error: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      swift_errorRetain();
      v45(0, a1);
      outlined consume of WFOpenInteractionResponse(a1);

      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      *v7 = a1;
      v46((v7 + v34), v13, v10);
    }
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State(v9);
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
      _os_log_impl(&dword_0, v21, v22, "#WorkflowRunnerFlow onOpenInteractionFinished received unexpected state", v23, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v24 = swift_allocError();
    *v25 = xmmword_218740;
    *v7 = v24;
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v7, v2 + v14);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.onExecuteCustomIntentFinished(exitValue:)(void *a1, objc_class *a2, char a3)
{
  v70 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMd, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v10 = __chkstk_darwin(v9);
  v71 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v65 - v16;
  v18 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v72 = v18;
  v73 = v3;
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v18, v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v20 = *v19;
    v68 = *(v19 + 1);
    v69 = v17;
    v22 = *(v15 + 32);
    v21 = v15 + 32;
    v23 = v17;
    v24 = v22;
    v22(v23, v13, v14);
    if (!a3)
    {
      *&v65 = v20;
      v67 = v21;
      v37 = a1;
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.voiceCommands);
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      v41 = v70;
      outlined consume of CustomIntentExecutionResult(v37, v70, 0);
      v42 = os_log_type_enabled(v39, v40);
      v66 = v9;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&dword_0, v39, v40, "#WorkflowRunnerFlow onExecuteCustomIntentFinished received error: %@", v43, 0xCu);
        outlined destroy of Any?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v74 = v37;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v46 = type metadata accessor for ConfirmIntentResponseError();
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v46);
        v47 = *(v46 - 8);
        v48 = (*(v47 + 88))(v8, v46);
        v49 = enum case for ConfirmIntentResponseError.continueInApp(_:);
        (*(v47 + 8))(v8, v46);
        if (v48 == v49)
        {
          (v65)(0, 0);
          outlined consume of CustomIntentExecutionResult(v37, v41, 0);

          goto LABEL_5;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v46);
        outlined destroy of Any?(v8, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMd, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMR);
      }

      swift_errorRetain();
      (v65)(0, v37);
      outlined consume of CustomIntentExecutionResult(v37, v41, 0);

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      v30 = v71;
      *v71 = v37;
      v24(v30 + v61, v69, v14);
      goto LABEL_25;
    }

    if (a3 == 1)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
      v25 = v20;
      v26 = v70;
      v27 = v70;
      v28 = a1;
      v75.value.super.isa = v26;
      isa = INInteraction.__allocating_init(intent:response:)(v28, v75).super.isa;
      v25(isa, 0);

LABEL_5:
      v30 = v71;
      v24(v71, v69, v14);
      goto LABEL_25;
    }

    v70 = v14;
    v67 = v21;
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.voiceCommands);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v69;
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v51, v52, "#WorkflowRunnerFlow onExecuteCustomIntentFinished cancelled", v55, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v56 = swift_allocError();
    v65 = xmmword_218730;
    *v57 = xmmword_218730;
    v20(0, v56);

    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    v59 = swift_allocError();
    v30 = v71;
    *v71 = v59;
    *v60 = v65;

    v24(v30 + v58, v54, v70);
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State(v13);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.voiceCommands);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "#WorkflowRunnerFlow onExecuteCustomIntentFinished received unexpected state", v34, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v35 = swift_allocError();
    *v36 = xmmword_218740;
    v30 = v71;
    *v71 = v35;
  }

LABEL_25:
  swift_storeEnumTagMultiPayload();
  v63 = v72;
  v62 = v73;
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v30, v62 + v63);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.onExecuteDialogRequestFinished(exitValue:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v16, v11);
  v42 = v6;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of WorkflowRunnerFlow.State(v11);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.voiceCommands);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#WorkflowRunnerFlow onExecuteDialogRequestFinished received unexpected state", v31, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v32 = swift_allocError();
    *v33 = xmmword_218740;
    *v9 = v32;
    goto LABEL_13;
  }

  v40 = v3;
  v41 = a1;
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v39 = *(v13 + 32);
  v39(v15, v11, v12);
  if (a2)
  {
    v37 = v19;
    v38 = v18;
    v20 = objc_allocWithZone(WFDialogResponse);
    swift_errorRetain();
    v21 = [v20 initWithResponseCode:1];
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v3 = v40;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v23, v24, "#WorkflowRunnerFlow onExecuteDialogRequest received error", v26, 2u);
    }

    v38(v21);

    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    *v9 = v41;
    v39(v9 + v27, v15, v12);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  v34 = v41;
  v18(v41);
  v35 = [v34 isCancelled];

  if (v35)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v39(v9, v15, v12);
  }

  swift_storeEnumTagMultiPayload();
  v3 = v40;
LABEL_18:
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v9, v3 + v16);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#WorkflowRunnerFlow createUnsupportedPunchOutOnCarPlayFlow", v14, 2u);
  }

  outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v26);
  outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker, v25);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  type metadata accessor for ShowOutputAndCloseFlow();
  swift_allocObject();
  v16 = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, v26, v25, &async function pointer to partial apply for closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:), v15);
  v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v18 - 8) + 16))(v10, a1, v18);
  *v17 = a2;
  *(v17 + 1) = a3;
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v20 = v4;

  outlined assign with take of WorkflowRunnerFlow.State(v10, v4 + v19);
  swift_endAccess();
  *&v26[0] = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);
  *(v22 + 24) = v21;
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow, &protocol conformance descriptor for ShowOutputAndCloseFlow);
  v23 = v20;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DialogPhase();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:));
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  v4 = (*(v1 + 312) + **(v1 + 312));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);

  return v4();
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

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v9();
  }

  else
  {
    *(v5 + 96) = v3;
    v11 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v11);
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[12];
  v14 = v12[7];
  v15 = v12[4];
  v16 = v12[5];
  static DialogPhase.clarification.getter();
  v17 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OUTLINED_FUNCTION_69_0();
  v19(v18);
  OUTLINED_FUNCTION_1_14();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v16 + 8))(v14, v15);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v20 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v20);
  v12[13] = ResponseFactory.init()();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_64(v21);
  v12[14] = v22;
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v13;
  OUTLINED_FUNCTION_59_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[15] = v23;
  *v23 = v24;
  v23[1] = closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_0();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.punchOutCompletion()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v3 = __chkstk_darwin(v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v1 + v12, v7);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v28 = v2;
    v29 = v5;
    v26 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v13 = *(v9 + 32);
    v13(v11, v7, v8);
    v27 = v1;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState), *(v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24));
    if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
    {
      v26(1);

      v23 = v29;
      v13(v29, v11, v8);
      swift_storeEnumTagMultiPayload();
      v24 = v27;
      swift_beginAccess();
      v15 = v24 + v12;
      v22 = v23;
      goto LABEL_11;
    }

    v26(0);

    (*(v9 + 8))(v11, v8);
    v5 = v29;
    swift_storeEnumTagMultiPayload();
    v14 = v27;
    swift_beginAccess();
    v15 = v14 + v12;
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State(v7);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#WorkflowRunnerFlow punchOutCompletion received unexpected state", v19, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v20 = swift_allocError();
    *v21 = xmmword_218740;
    *v5 = v20;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v15 = v1 + v12;
  }

  v22 = v5;
LABEL_11:
  outlined assign with take of WorkflowRunnerFlow.State(v22, v15);
  return swift_endAccess();
}

uint64_t closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for CATOption();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:));
}

uint64_t closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for ShortcutsUnlockDeviceStrategy();
  static Device.current.getter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static WFDialogState.shared;
  v14 = type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_88_0();
  v18 = type metadata accessor for AppNameResolver();
  v19 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v20 = swift_allocObject();
  *(v12 + 80) = v20;
  *(v20 + 136) = v18;
  *(v20 + 144) = &protocol witness table for AppNameResolver;
  *(v20 + 112) = v19;
  *(v20 + 56) = v13;
  outlined init with take of AceServiceInvokerAsync((v12 + 16), v20 + 16);
  *(v20 + 64) = 0;
  *(v20 + 72) = 1;
  *(v20 + 80) = v15;
  *(v20 + 88) = v16;
  *(v20 + 96) = v17;
  *(v20 + 104) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 88) = v21;
  *v21 = v22;
  v21[1] = closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:);
  OUTLINED_FUNCTION_27_0();

  return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)();
}

uint64_t closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)()
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

uint64_t WorkflowRunnerFlow.onAppResolutionFlowResult(exitValue:)(char *a1)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for AppResolutionFlowResult();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v84 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v85 = &v76 - v8;
  __chkstk_darwin(v7);
  v10 = &v76 - v9;
  v11 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v12 = __chkstk_darwin(v11);
  v88 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v76 - v18;
  v20 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v87 = v20;
  outlined init with copy of WorkflowRunnerFlow.State(v2 + v20, v15);
  v89 = v11;
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v83 = v2;
    v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v22 = *(v21 + 1);
    v79 = *v21;
    v23 = *(v17 + 32);
    v81 = v22;
    v82 = v23;
    v23(v19, v15, v16);
    v24 = *(v4 + 16);
    v25 = v86;
    v24(v10, v86, v3);
    v26 = (*(v4 + 88))(v10, v3);
    v80 = v16;
    v27 = v19;
    if (v26 == enum case for AppResolutionFlowResult.resolved(_:))
    {
      (*(v4 + 96))(v10, v3);
      v28 = *v10;
    }

    else
    {
      if (v26 != enum case for AppResolutionFlowResult.resolvedWithIntent(_:))
      {
        if (v26 == enum case for AppResolutionFlowResult.error(_:))
        {
          (*(v4 + 96))(v10, v3);
          v51 = *v10;
          v52 = v10[8];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static Logger.voiceCommands);
          swift_errorRetain();
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v56 = 138412546;
            swift_errorRetain();
            v58 = _swift_stdlib_bridgeErrorToNSError();
            *(v56 + 4) = v58;
            *v57 = v58;
            *(v56 + 12) = 1024;
            *(v56 + 14) = v52;
            _os_log_impl(&dword_0, v54, v55, "#WorkflowRunnerFlow onAppResolutionFlowResult w/ error: %@; \n\t handled=%{BOOL}d", v56, 0x12u);
            outlined destroy of Any?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          }

          swift_errorRetain();
          v79(0, v51);
        }

        else
        {
          if (v26 != enum case for AppResolutionFlowResult.cancelled(_:))
          {
            v78 = v4;
            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            __swift_project_value_buffer(v63, static Logger.voiceCommands);
            v64 = v85;
            v24(v85, v25, v3);
            v65 = v3;
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v77 = v68;
              v86 = swift_slowAlloc();
              v91[0] = v86;
              *v68 = 136315138;
              v24(v84, v64, v65);
              v69 = String.init<A>(describing:)();
              v71 = v70;
              LODWORD(v84) = v67;
              v72 = *(v78 + 8);
              v72(v64, v65);
              v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v91);

              v74 = v77;
              *(v77 + 1) = v73;
              v75 = v72;
              _os_log_impl(&dword_0, v66, v84, "#WorkflowRunnerFlow onAppResolutionFlowResult received unexpected exitValue: %s", v74, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v86);
            }

            else
            {

              v75 = *(v78 + 8);
              v75(v64, v65);
            }

            v47 = v83;
            v79(0, 0);

            v75(v10, v65);
            goto LABEL_17;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          __swift_project_value_buffer(v59, static Logger.voiceCommands);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_0, v60, v61, "#WorkflowRunnerFlow onAppResolutionFlowResult cancelled", v62, 2u);
          }

          v79(0, 0);
        }

        v47 = v83;
LABEL_17:
        v48 = v88;
        v82(v88, v27, v80);
        swift_storeEnumTagMultiPayload();
        v49 = v87;
        swift_beginAccess();
        v37 = v47 + v49;
        v38 = v48;
        goto LABEL_18;
      }

      (*(v4 + 96))(v10, v3);
      v28 = *v10;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.voiceCommands);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v28;
      v91[0] = v43;
      *v42 = 136315138;
      type metadata accessor for App();
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v91);

      *(v42 + 4) = v46;

      _os_log_impl(&dword_0, v40, v41, "#WorkflowRunnerFlow onAppResolutionFlowResult resolved app: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    else
    {
    }

    v47 = v83;
    v79(1, 0);

    goto LABEL_17;
  }

  outlined destroy of WorkflowRunnerFlow.State(v15);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.voiceCommands);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "#WorkflowRunnerFlow onAppResolutionFlowResult received unexpected state", v32, 2u);
  }

  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v33 = swift_allocError();
  *v34 = xmmword_218740;
  v35 = v88;
  *v88 = v33;
  swift_storeEnumTagMultiPayload();
  v36 = v87;
  swift_beginAccess();
  v37 = v2 + v36;
  v38 = v35;
LABEL_18:
  outlined assign with take of WorkflowRunnerFlow.State(v38, v37);
  return swift_endAccess();
}

void closure #1 in WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, void *a2, char *a3)
{
  v5 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v6 = __chkstk_darwin(v5);
  v51 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v52 = v50 - v11;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.voiceCommands);
  outlined init with copy of DeviceState(a2, v59);
  outlined init with copy of DeviceState(a2, v56);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v50[1] = v13;
    v17 = v16;
    v50[0] = swift_slowAlloc();
    v55 = v50[0];
    *v17 = 136315394;
    v50[2] = v5;
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    dispatch thunk of Flow.exitValue.getter();
    v18 = GuardFlowResult.description.getter();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v55);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = a3;
    v23 = v10;
    v24 = v57;
    v25 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v26 = *(v25 + 16);
    v27 = v25;
    v10 = v23;
    a3 = v22;
    v54 = v26(v24, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v55);

    *(v17 + 14) = v31;
    _os_log_impl(&dword_0, v14, v15, "#WorkflowRunnerFlow guardLocationAccess - received guardFlow response; exitValue=%s; failure: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  v32 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(&a3[v32], v9);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v33 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v35 = v52;
    v34 = v53;
    (*(v53 + 32))(v52, v9, v10);
    v36 = *(v34 + 16);
    v37 = v51;
    v36(v51, v35, v10);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of WorkflowRunnerFlow.State(v37, &a3[v32]);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    dispatch thunk of Flow.exitValue.getter();
    v38 = LOBYTE(v56[0]);
    v39 = a2[3];
    v40 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v39);
    v41 = (*(v40 + 16))(v39, v40);
    if (v41)
    {
      v33(0, v41);
    }

    else
    {
      v33(v38 == 0, 0);
    }

    (*(v53 + 8))(v52, v10);
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State(v9);
    v42 = a3;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56[0] = v46;
      *v45 = 136315138;
      outlined init with copy of WorkflowRunnerFlow.State(&a3[v32], v51);
      v47 = String.init<A>(describing:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v56);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_0, v43, v44, "#WorkflowRunnerFlow guardLocationAccess - unexpected state=%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }
  }
}

id NSUserActivity.__allocating_init(activityType:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

id AnonymousConnectionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnonymousConnectionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WorkflowRunnerFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance WorkflowRunnerFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return WorkflowRunnerFlow.execute()();
}

uint64_t LinkHandlingFlowType.GetFlowConfig.workflowRunner.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return outlined init with take of AceServiceInvokerAsync(a1, v1 + 32);
}

uint64_t DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[100] = v1;
  v0[99] = v2;
  v0[98] = v3;
  v0[97] = v4;
  v0[96] = v5;
  v0[95] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v0[101] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v8);
  v0[102] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for OutputGenerationManifest();
  v0[103] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[104] = v10;
  v0[105] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = [v5 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 && (v10 = OUTLINED_FUNCTION_60_0(), (static DefaultLinkHandlingFlowFactory.isSupportedCarPlayAction(bundleId:actionId:)(v10, v11, v7, v9) & 1) == 0))
  {

    v55 = swift_task_alloc();
    *(v0 + 848) = v55;
    *v55 = v0;
    v55[1] = DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:);

    return LinkActionDialogTemplating.unsupportedOnPlatform()();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 800), *(*(v0 + 800) + 24));
    OUTLINED_FUNCTION_39_4();
    v12 = OUTLINED_FUNCTION_60_0();
    v14 = v13(v12);

    v16 = [objc_opt_self() policyWithActionMetadata:v14];
    *(v0 + 744) = 0;
    v17 = [v16 connectionWithError:v0 + 744];
    v18 = *(v0 + 744);
    if (v17)
    {
      v19 = v17;
      v67 = v16;
      v20 = *(v0 + 768);
      v64 = *(v20 + 24);
      outlined init with copy of DeviceState(v20 + 32, v0 + 144);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0;
      *(v0 + 72) = -1;
      v21 = v18;
      v22 = v5;

      static AceService.currentAsync.getter();
      static Device.current.getter();
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for LinkRCHFlow();
      v23 = swift_allocObject();
      *(v0 + 328) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNConnection, LNConnection_ptr);
      *(v0 + 336) = &protocol witness table for LNConnection;
      *(v0 + 304) = v19;
      *(v23 + 16) = v22;
      *(v23 + 24) = v14;
      v66 = v22;
      v24 = v14;
      v59 = v19;
      v25 = [v19 bundleIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      *(v23 + 112) = v26;
      *(v23 + 120) = v28;
      outlined init with copy of SiriWorkflowRunnerEvent?(v0 + 144, v23 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined init with copy of DeviceState(v0 + 224, v23 + 208);
      outlined init with copy of DeviceState(v0 + 224, v0 + 344);
      outlined init with copy of DeviceState(v0 + 264, v0 + 384);
      outlined init with copy of DeviceState(v0 + 184, v0 + 424);
      type metadata accessor for RunLinkActionCATs(0);
      v29 = v24;
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v63 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunLinkActionCATsSimple(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v62 = CATWrapperSimple.__allocating_init(options:globals:)();
      v30 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v31 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for ShortcutsLinkRCHFlowStrategy();
      v32 = swift_allocObject();
      *(v0 + 488) = v30;
      *(v0 + 496) = &protocol witness table for RunLinkActionCATPatternsExecutor;
      *(v0 + 464) = v31;
      *(v32 + 16) = v3;
      *(v32 + 24) = v4;
      *(v32 + 32) = v29;
      outlined init with copy of DeviceState(v0 + 344, v32 + 40);
      *(v32 + 80) = v64;
      outlined init with copy of DeviceState(v0 + 384, v32 + 88);
      outlined init with copy of DeviceState(v0 + 424, v32 + 128);
      outlined init with copy of DeviceState(v0 + 344, v0 + 504);
      outlined init with copy of DeviceState(v0 + 464, v0 + 544);
      type metadata accessor for RunVoiceCommandCATs(0);
      v61 = v29;

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v65 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v60 = CATWrapperSimple.__allocating_init(options:globals:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 424));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
      type metadata accessor for LinkActionDialogTemplating();
      v33 = swift_allocObject();
      v34 = *(v0 + 568);
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 544, v34);
      OUTLINED_FUNCTION_13_1();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_28();
      (*(v37 + 16))(v38, v35, v34);
      v39 = *v38;
      *(v0 + 608) = v30;
      *(v0 + 616) = &protocol witness table for RunLinkActionCATPatternsExecutor;

      *(v0 + 584) = v39;
      outlined init with take of AceServiceInvokerAsync((v0 + 504), v33 + 16);
      *(v33 + 56) = v63;
      *(v33 + 64) = v62;
      *(v33 + 72) = v65;
      *(v33 + 80) = v60;
      outlined init with take of AceServiceInvokerAsync((v0 + 584), v33 + 88);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 544));

      *(v32 + 168) = v33;
      *(v23 + 32) = v32;
      v40 = [v61 systemProtocols];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = [objc_opt_self() sessionStartingProtocol];
      *(v0 + 752) = v42;
      v43 = swift_task_alloc();
      *(v43 + 16) = v0 + 752;
      specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v43, v41);
      LOBYTE(v33) = v44;

      v45 = 0;
      if (v33)
      {
        v46 = [v59 bundleIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for LinkActivityManager();
        swift_allocObject();
        v47 = OUTLINED_FUNCTION_9_3();
        v45 = LinkActivityManager.init(bundleId:)(v47, v48);
      }

      *(v23 + 40) = v45;
      outlined init with copy of DeviceState(v0 + 184, v23 + 128);
      outlined init with copy of DeviceState(v0 + 304, v23 + 248);
      outlined init with copy of SiriWorkflowRunnerEvent?(v0 + 16, v0 + 80, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
      v49 = *(v0 + 136);
      if (v49 == 255)
      {
        v53 = 0;
        LOBYTE(v49) = 14;
        v50 = 0uLL;
        v52 = 0uLL;
        v54 = v67;
        v51 = 0uLL;
      }

      else
      {
        v51 = *(v0 + 80);
        v50 = *(v0 + 96);
        v52 = *(v0 + 112);
        v53 = *(v0 + 128);
        v54 = v67;
      }

      v58 = *(v0 + 760);
      *(v23 + 48) = v51;
      *(v23 + 64) = v50;
      *(v23 + 80) = v52;
      *(v23 + 96) = v53;
      *(v23 + 104) = v49;
      *(v23 + 288) = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:);
      *(v23 + 296) = 0;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
      outlined destroy of Any?(v0 + 144, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined destroy of Any?(v0 + 16, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

      *v58 = v23;
      *(v58 + 40) = 0;
      OUTLINED_FUNCTION_85_0();

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v57 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      OUTLINED_FUNCTION_85_0();

      OUTLINED_FUNCTION_6_0();
    }

    return v15();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    *(v4 + 856) = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10);
  }
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[107];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  v2 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v2);
  v0[108] = ResponseFactory.init()();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_64(v3);
  v0[109] = v4;
  *(v4 + 16) = xmmword_216010;
  *(v4 + 32) = v1;
  v5 = async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[110] = v7;
  *v7 = v0;
  v7[1] = DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:);
  v8 = v0[105];

  return ((&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + v5))(v0 + 78, v4, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 856);
  v2 = *(v0 + 760);
  outlined init with copy of DeviceState(*(v0 + 784), v0 + 664);
  outlined init with copy of DeviceState(v0 + 624, v0 + 704);
  v3 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync((v0 + 704), v3 + 16);
  v4 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_66(v4);
  v5 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  *(v2 + 24) = v4;
  *(v2 + 32) = &protocol witness table for SimpleOutputFlowAsync;

  *v2 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 624));
  v6 = OUTLINED_FUNCTION_9_3();
  v7(v6);
  *(v2 + 40) = 1;
  OUTLINED_FUNCTION_85_0();

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:));
}

uint64_t closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  outlined init with copy of DeviceState(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t static DefaultLinkHandlingFlowFactory.isSupportedCarPlayAction(bundleId:actionId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for unsupportedCarPlayAppIntents != -1)
  {
    swift_once();
  }

  v8 = static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0];
  if (!*(static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0] + &dword_10))
  {
    return 1;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 1;
  }

  v11 = *(*&stru_20.segname[v8 + 16] + 8 * v9);
  v19[0] = a3;
  v19[1] = a4;
  __chkstk_darwin(v9);
  v18[2] = v19;

  v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, v11);

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v13, static Logger.voiceCommands);

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v19);
    _os_log_impl(&dword_0, v14, v12, "#DefaultLinkHandlingFlowFactory isSupportedCarPlayAction - NO support for bundleId=%s; actionId=%s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v16);
    OUTLINED_FUNCTION_15_0(v15);
  }

  return 0;
}

int *one-time initialization function for unsupportedCarPlayAppIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0] = result;
  return result;
}

uint64_t protocol witness for LinkHandlingFlowType.LinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:) in conformance DefaultLinkHandlingFlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)();
}

uint64_t SiriLocationAccessGuardFlow.failureReasonAsError.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v1 = OUTLINED_FUNCTION_14(v0);
  __chkstk_darwin(v1);
  v3 = &v20 - v2;
  v4 = type metadata accessor for LocationAccessFailureReason();
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v6);
  dispatch thunk of SiriLocationAccessGuardFlow.failureReason.getter();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of Any?(v3, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    return 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_95();
    v9(v8);
    v10 = OUTLINED_FUNCTION_69_0();
    v11(v10);
    OUTLINED_FUNCTION_54_1();
    v12 = String.init<A>(describing:)();
    v14 = v13;
    v15 = lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v7 = OUTLINED_FUNCTION_16_6(&type metadata for WorkflowRunnerError, v15);
    *v16 = v12;
    v16[1] = v14;
    v17 = OUTLINED_FUNCTION_48_2();
    v18(v17);
  }

  return v7;
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2);
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2);
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_6_0();
  return v2();
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance SLFLocationAccessGuardFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return SLFLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance SLFLocationAccessGuardFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(a1);
}

uint64_t closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for SiriLocationAccessGuardFlow();
  lazy protocol witness table accessor for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy();
  result = SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)();
  a2[3] = v3;
  a2[4] = &protocol witness table for SiriLocationAccessGuardFlow;
  *a2 = result;
  return result;
}

uint64_t specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  type metadata accessor for DialogPhase();
  v3[3] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v3[4] = v6;
  v3[5] = *(v6 - 8);
  v3[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a2, a3);
}

uint64_t specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
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
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

void specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_85();
    *v7 = 136315138;
    v8 = [v6 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OUTLINED_FUNCTION_75();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v18 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v18);
  v0[9] = ResponseFactory.init()();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = OUTLINED_FUNCTION_64(v19);
  v0[10] = v20;
  *(v20 + 16) = xmmword_216010;
  *(v20 + 32) = v1;
  OUTLINED_FUNCTION_104();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v21;
  *v21 = v22;
  v21[1] = specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_103();

  __asm { BR              X3 }
}

uint64_t TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v0[2] = v9;
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v10);
  v0[3] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for OutputGenerationManifest();
  v0[4] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[5] = v12;
  v0[6] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_1();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);

  return v16(v8, v6, v4, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
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

void TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_85();
    *v7 = 136315138;
    v8 = [v6 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OUTLINED_FUNCTION_75();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v18 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v18);
  v0[9] = ResponseFactory.init()();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = OUTLINED_FUNCTION_64(v19);
  v0[10] = v20;
  *(v20 + 16) = xmmword_216010;
  *(v20 + 32) = v1;
  OUTLINED_FUNCTION_104();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v21;
  *v21 = v22;
  v21[1] = TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_103();

  __asm { BR              X3 }
}

uint64_t DefaultTCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a1, a2);
}

uint64_t protocol witness for TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3);
}

uint64_t protocol witness for TCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper;

  return DefaultTCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a1, a2);
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithNSUUID:isa];

  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  (*(v7 + 8))(a1);
  return v6;
}

uint64_t @nonobjc LNConnection.bundleIdentifier.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @nonobjc LNActionOutput.init(identifier:dialog:viewSnippet:snippetAction:attribution:value:showOutputAction:showOutputActionHint:showOutputActionOptions:deferred:nextAction:suggestedFollowUp:activityIdentifier:confirmationActionName:showPrompt:confirmationConditions:undoContext:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, uint64_t a17, void *a18)
{
  v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (a12)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  if (a14)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v23) = a16 & 1;
  LOBYTE(v22) = a10 & 1;
  v26 = [v24 initWithIdentifier:v33.super.isa dialog:a2 viewSnippet:a3 snippetAction:a4 attribution:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 showOutputActionOptions:a9 deferred:v22 nextAction:a11 suggestedFollowUpActions:v18.super.isa activityIdentifier:v19 confirmationActionName:a15 showPrompt:v23 confirmationConditions:a17 undoContext:a18];

  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v26;
}

void outlined bridged method (mbgnn) of @objc INIntent.launchId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 _setLaunchId:v4];
}

void outlined bridged method (mbnn) of @objc NSUserActivity.userInfo.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserInfo:isa];
}

uint64_t outlined bridged method (pb) of @objc LNActionOutput.suggestedFollowUpActions.getter(void *a1)
{
  v1 = [a1 suggestedFollowUpActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_22();
}

void specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_40_0();
  v97 = v37;
  v103 = v39;
  v104 = v38;
  v106 = v40;
  v107 = v41;
  v105 = v42;
  v100 = v43;
  v102 = v44;
  v101 = a22;
  v98 = a21;
  v99 = a24;
  v90 = a23;
  v89 = a28;
  v87 = a27;
  v88 = a34;
  v85[1] = a26;
  v86 = a36;
  ObjectType = swift_getObjectType();
  v95 = type metadata accessor for WorkflowRunnerFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v94 = v47 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  OUTLINED_FUNCTION_13_1();
  v92 = v49;
  v93 = v48;
  __chkstk_darwin(v48);
  v91 = v85 - v50;
  v51 = type metadata accessor for CATOption();
  v52 = OUTLINED_FUNCTION_14(v51);
  __chkstk_darwin(v52);
  OUTLINED_FUNCTION_3();
  v117[3] = a31;
  v117[4] = a35;
  __swift_allocate_boxed_opaque_existential_1(v117);
  OUTLINED_FUNCTION_21_2();
  (*(v53 + 32))();
  v116[3] = a33;
  v116[4] = a37;
  __swift_allocate_boxed_opaque_existential_1(v116);
  OUTLINED_FUNCTION_21_2();
  (*(v54 + 32))();
  v115[3] = a32;
  v115[4] = v86;
  __swift_allocate_boxed_opaque_existential_1(v115);
  OUTLINED_FUNCTION_21_2();
  (*(v55 + 32))();
  v114[3] = a30;
  v114[4] = v88;
  __swift_allocate_boxed_opaque_existential_1(v114);
  OUTLINED_FUNCTION_21_2();
  (*(v56 + 32))();
  v57 = v106;
  memcpy(&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], v106, 0x41uLL);
  outlined init with copy of DeviceState(v105, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
  v58 = v107;
  outlined init with copy of DeviceState(v107, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v100;
  outlined init with copy of DeviceState(v104, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
  outlined init with copy of DeviceState(v117, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
  outlined init with copy of DeviceState(v115, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
  outlined init with copy of DeviceState(v114, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
  v59 = v99;
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v98;
  v60 = &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
  *v60 = v90;
  *(v60 + 1) = v59;
  outlined init with copy of DeviceState(v116, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
  outlined init with copy of DeviceState(v58, &v112);
  v61 = type metadata accessor for RunLinkActionCATs(0);
  outlined init with copy of SiriWorkflowRunnerInput(v57, &v110);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v62 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v63 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v64 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v65 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v66 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  v67 = swift_allocObject();
  v67[14] = v61;
  v67[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v67[11] = v66;
  outlined init with take of AceServiceInvokerAsync(&v112, (v67 + 2));
  v67[7] = v62;
  v67[8] = v63;
  v67[9] = v64;
  v67[10] = v65;
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v67;
  outlined init with copy of SiriWorkflowRunnerEvent?(v102, &v112, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  if (v113)
  {
    outlined init with take of AceServiceInvokerAsync(&v112, &v110);
    outlined init with take of AceServiceInvokerAsync(&v110, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
    v68 = v107;
  }

  else
  {
    outlined destroy of Any?(&v112, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    v68 = v107;
    outlined init with copy of DeviceState(v107, &v112);
    outlined init with copy of DeviceState(v105, v109);
    v69 = type metadata accessor for SiriWorkflowRunner();
    swift_allocObject();
    v70 = v106;
    outlined init with copy of SiriWorkflowRunnerInput(v106, &v110);
    v71 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v70, &v112, v109);
    v72 = &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
    *(v72 + 3) = v69;
    *(v72 + 4) = &protocol witness table for SiriWorkflowRunner;
    *v72 = v71;
  }

  outlined init with copy of DeviceState(v68, &v110);
  v73 = type metadata accessor for WorkflowRunnerCATs(0);
  v74 = v100;

  v75 = v98;

  v76 = v97;

  v77 = v101;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v78 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v79 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_88_0();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(&v110, v74, v78, v79, v103, v73, v76, v75, v77);
  outlined init with copy of DeviceState(&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v110);
  __swift_project_boxed_opaque_existential_1(&v110, v111);
  v80 = v91;
  v81 = OUTLINED_FUNCTION_95();
  v82(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  v84 = v93;
  v83 = v94;
  AsyncStream.makeAsyncIterator()();
  (*(v92 + 8))(v80, v84);
  swift_storeEnumTagMultiPayload();
  outlined init with take of SiriWorkflowRunnerEvent(v83, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state]);
  v108.receiver = a29;
  v108.super_class = ObjectType;
  objc_msgSendSuper2(&v108, "init");

  outlined destroy of SiriWorkflowRunnerInput(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  outlined destroy of Any?(v102, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  OUTLINED_FUNCTION_42();
}

uint64_t outlined assign with take of WorkflowRunnerFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowRunnerFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError);
  }

  return result;
}

uint64_t outlined init with copy of WorkflowRunnerFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88_0();
  v4(v3);
  OUTLINED_FUNCTION_4_11();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of WorkflowRunnerFlow.State(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_92();
  v3(v2);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t outlined assign with take of SiriWorkflowRunnerEvent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id outlined copy of LinkRCHFlowResult(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_61F10()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)(v3, v0 + 16);
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin19WorkflowRunnerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowRunnerError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkflowRunnerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkflowRunnerError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B9ExitValueO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for LinkExitValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for LinkExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkExitValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for WorkflowRunnerFlow(uint64_t a1)
{
  result = type metadata accessor for WorkflowRunnerFlow.State(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkHandlingFlowType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkHandlingFlowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkHandlingFlowType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkHandlingFlowType.GetFlowConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LinkHandlingFlowType.GetFlowConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for WorkflowRunnerFlow.State(uint64_t a1)
{
  type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ())(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ())(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Error();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)()
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator))
  {
    type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Iterator(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator));
    }
  }
}

void type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Iterator)
  {
    type metadata accessor for SiriWorkflowRunnerEvent(255);
    v1 = type metadata accessor for AsyncStream.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Iterator);
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ())(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ()))
  {
    __chkstk_darwin(0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ()));
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ())(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ()))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ()));
    }
  }
}

void type metadata accessor for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator));
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void *outlined consume of SiriWorkflowRunnerInput(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  switch(a9)
  {
    case 0:
      goto LABEL_5;
    case 1:
      goto LABEL_3;
    case 2:
      a5 = a7;
      a6 = a8;
LABEL_3:

      result = a6;
      goto LABEL_4;
    case 3:
LABEL_4:

LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_629EC()
{
  swift_unknownObjectWeakDestroy();
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v0);
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_11();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

void outlined consume of LinkExitValue(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id outlined copy of LinkExitValue(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

unint64_t outlined consume of WFOpenInteractionResponse(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

void outlined consume of CustomIntentExecutionResult(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_62BBC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_62C28()
{
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v1);
}

uint64_t partial apply for closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)()
{
  OUTLINED_FUNCTION_8_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_89(v1);

  return closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(v3, v4);
}

uint64_t partial apply for closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)()
{
  OUTLINED_FUNCTION_8_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_89(v1);

  return closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(v3, v4);
}

uint64_t lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_62E50()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t outlined init with take of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88_0();
  v4(v3);
  OUTLINED_FUNCTION_4_11();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_5()
{
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1)
{

  return static ExecuteResponse.complete()();
}

BOOL OUTLINED_FUNCTION_38_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_59_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_72_0@<X0>(uint64_t a1@<X8>)
{
  **(v1 + 408) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{
}

void OUTLINED_FUNCTION_101(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_102(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_104()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_105()
{

  return static DialogPhase.error.getter();
}

uint64_t OUTLINED_FUNCTION_106()
{
}

uint64_t OUTLINED_FUNCTION_108()
{
}

uint64_t OUTLINED_FUNCTION_109()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = [objc_opt_self() standardClient];
  v0[21] = v1;
  v2 = String._bridgeToObjectiveC()();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  OUTLINED_FUNCTION_17_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v3);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_12();
  [v1 getVoiceShortcutWithPhrase:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_6_6();
  v4 = *(v0 + 184) == 0;

  return v3(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_6_6();
  v4 = v0[23] == 0;

  return v3(v4);
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)()
{
  v1 = [objc_opt_self() standardClient];
  v0[22] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[23] = v3;
  v5 = String._bridgeToObjectiveC()();
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v0[13] = &block_descriptor_3;
  v0[14] = v6;
  [v1 importTopLevelShortcutFromURL:v4 withName:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)()
{
  OUTLINED_FUNCTION_15_2();
  if (v0[20])
  {
    v1 = [objc_opt_self() standardClient];
    v0[21] = v1;
    v2 = String._bridgeToObjectiveC()();
    v0[22] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
    v3 = OUTLINED_FUNCTION_17_6();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
    v0[13] = &block_descriptor_7;
    v0[14] = v3;
    [v1 getVoiceShortcutWithPhrase:v2 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_6_6();

    return v4(0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_6_6();

  return v3(0);
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 32) = [objc_opt_self() standardClient];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  OUTLINED_FUNCTION_2();

  return _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v5 + 48) = v0;

  if (v0)
  {
    v8 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  else
  {
    *(v5 + 56) = v3;
    v8 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = [v1 shortcutName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  OUTLINED_FUNCTION_12_7();

  return v7(v4, v6);
}

{
  v19 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v18);
    OUTLINED_FUNCTION_16_8(v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_15_7(&dword_0, v13, v14, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v9);
    OUTLINED_FUNCTION_15_0(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_15_0(v10);
    OUTLINED_FUNCTION_15_0(v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_7();
  v15 = OUTLINED_FUNCTION_2();

  return v16(v15);
}

uint64_t static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v4 = v3;
  v0[2] = v3;
  v0[3] = v1;
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);

  return v8(v4, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {
    v8 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  else
  {
    *(v5 + 48) = v3;
    v8 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 48);
  v2 = [v1 shortcutName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  OUTLINED_FUNCTION_12_7();

  return v6(v3, v5);
}

{
  v17 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);
    OUTLINED_FUNCTION_16_8(v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    OUTLINED_FUNCTION_15_7(&dword_0, v11, v12, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v7);
    OUTLINED_FUNCTION_15_0(v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0(v8);
    OUTLINED_FUNCTION_15_0(v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_7();
  v13 = OUTLINED_FUNCTION_2();

  return v14(v13);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[22] = v5;
  v0[23] = v7;

  return _swift_task_switch(_s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY0_);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY0_()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[21];
  v2 = String._bridgeToObjectiveC()();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TQ1_;
  OUTLINED_FUNCTION_17_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v3);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_12();
  [v1 getVoiceShortcutWithIdentifier:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TQ1_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY3_;
  }

  else
  {
    v5 = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY2_;
  }

  return _swift_task_switch(v5);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY2_()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY3_()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR()
{
  OUTLINED_FUNCTION_12_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation;
  v3 = OUTLINED_FUNCTION_2();

  return v5(v3);
}

void VoiceShortcutClientWrapper.getSiriAutoShortcutsEnablement(forBundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() standardClient];
  v7 = String._bridgeToObjectiveC()();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [v6 getSiriAutoShortcutsEnablementForBundleIdentifier:v7 completion:v8];
  _Block_release(v8);
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 184) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 184);
  v2 = [objc_opt_self() standardClient];
  *(v0 + 160) = v2;
  v3 = String._bridgeToObjectiveC()();
  *(v0 + 168) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  v4 = OUTLINED_FUNCTION_17_6();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 104) = &block_descriptor_15;
  *(v0 + 112) = v4;
  [v2 setSiriAutoShortcutsEnablement:v1 forBundleIdentifier:v3 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.installVoiceShortcut(url:voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(a1, a2, a3);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcut(voiceCommandName:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(v4, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  OUTLINED_FUNCTION_12_7();

  return v7(v4, v2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:) in conformance VoiceShortcutClientWrapper(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(a1, a2, a3);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_4_12()
{
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return swift_continuation_init();
}

uint64_t LocationResolver.makeRecommendation(value:context:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for LocationResolutionSpec();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationResolutionSpec.init()();
  LocationResolver.makeRecommendation(value:context:spec:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.__allocating_init(runner:deviceState:)(__int128 *a1, void *a2)
{
  v4 = swift_allocObject();
  CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(a1, a2);
  return v4;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  outlined init with copy of DeviceState(a2, v2 + 16);
  outlined init with copy of DeviceState(v2 + 16, v16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v10 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v11 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v12 = type metadata accessor for AppNameResolver();
  v13 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v14 = swift_allocObject();
  *(v14 + 136) = v12;
  *(v14 + 144) = &protocol witness table for AppNameResolver;
  *(v14 + 112) = v13;
  *(v14 + 56) = v7;
  outlined init with take of AceServiceInvokerAsync(v16, v14 + 16);
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 80) = v8;
  *(v14 + 88) = v9;
  *(v14 + 96) = v10;
  *(v14 + 104) = v11;
  *(v3 + 56) = v14;
  outlined init with take of AceServiceInvokerAsync(a1, v3 + 64);
  return v3;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[19] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for TemplatingResult();
  v1[20] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[21] = v4;
  v1[22] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  v1[23] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[24] = v6;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[27] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[28] = v8;
  v1[29] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[30] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[18];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v5 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v6 = **(v4 + 56);
  if (v5)
  {
    v11 = (*(v6 + 368) + **(v6 + 368));
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);

    return v11();
  }

  else
  {
    v12 = (*(v6 + 376) + **(v6 + 376));
    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);
    v10 = v0[22];

    return v12(v10);
  }
}

{
  v1 = v0[35];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  static DialogPhase.completion.getter();
  v6 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v3, v2, v4);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v2, v4);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[36] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[37] = v7;
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v1;
  v12 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);
  v10 = v0[29];

  return (v12)(v0 + 2, v7, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_1_15(v4);

  return static NotificationTemplates.genericHandoffNotification()(v5);
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
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = v6;
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_1_15(v7);

  return static NotificationTemplates.genericHandoffNotification()(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v7[42] = v0;

  if (!v0)
  {
    v7[43] = v3;
    v7[44] = v5;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 144);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);

  return v6(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  outlined init with copy of DeviceState(v0 + 16, v0 + 96);
  HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v1();
}