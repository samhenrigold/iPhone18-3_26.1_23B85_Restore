uint64_t PlayVoicemailReadIntroductionFlow.execute()(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 280);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  if (App.isFirstParty()())
  {
    v5 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(v4, v3);
    goto LABEL_8;
  }

  v6 = [v4 recipient];
  if (v6)
  {
    v7 = v6;
    v9 = *(v1 + 320);
    v8 = *(v1 + 328);
    v48 = *(v1 + 312);
    type metadata accessor for PhonePerson(0);
    v10 = v7;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1((v1 + 224));
    v11 = static PhonePerson.make(phonePerson:options:locale:)(v7, 0, v8);

    (*(v9 + 8))(v8, v48);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v5 = swift_allocObject();
      *(v5 + 1) = xmmword_426260;
      v5[4] = v11;

      goto LABEL_8;
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = *(v1 + 280);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v13 = PhonePersonList.__allocating_init(list:)(v5);
  v14 = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v4, v13);
  *(v1 + 384) = v14;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v12 + 120, v1 + 64);
  v15 = *(v12 + 264);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  swift_retain_n();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v1 + 280);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v51 = v22;
    v52 = 0;
    *v21 = 136315394;
    v23 = *(v20 + 336);
    v24 = *(v20 + 344);
    v25 = *(v20 + 352);
    v26 = *(v20 + 360);
    v53 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v23, v24, v25, v26);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, 0xE000000000000000, &v51);

    *(v21 + 4) = v27;
    *(v21 + 12) = 1024;
    v28 = *(v20 + 280);

    *(v21 + 14) = v28;

    _os_log_impl(&dword_0, v17, v18, "%s isSingleVoicemailRequest: %{BOOL}d", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
  }

  v29 = *(v1 + 280);
  v30 = *(v29 + 280);
  *(v1 + 456) = v30;
  if (v30 == 1)
  {
    v31 = *(v29 + 288);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v31 & 0xC000000000000001) == 0, v31);
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v32 = *(v31 + 32);
    }

    *(v1 + 392) = v32;
    v33 = *(v1 + 304);
    v34 = *(v1 + 280);
    v35 = v34[7];
    v36 = v34[8];
    __swift_project_boxed_opaque_existential_1(v34 + 4, v35);
    (*(v36 + 8))(v35, v36);
    static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, (v1 + 144));
    __swift_destroy_boxed_opaque_existential_1((v1 + 144));
    String.toSpeakableString.getter();

    v37 = *(v1 + 88);
    v38 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_1((v1 + 64), v37);
    v39 = swift_task_alloc();
    *(v1 + 400) = v39;
    v39[2] = v14;
    v39[3] = v34;
    v39[4] = v32;
    v39[5] = v33;
    v50 = (*(v38 + 72) + **(v38 + 72));
    v40 = swift_task_alloc();
    *(v1 + 408) = v40;
    *v40 = v1;
    v40[1] = PlayVoicemailReadIntroductionFlow.execute();

    return v50(0, 0, partial apply for closure #2 in PlayVoicemailReadIntroductionFlow.execute(), v39, v37, v38);
  }

  else
  {
    INSearchCallHistoryIntentResponse.newRecordsCount.getter();
    v43 = v42;
    INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
    v45 = v44;
    v46 = *(*v15 + class metadata base offset for SearchCallHistoryCATsSimple + 432);

    v49 = (v46 + *v46);
    v47 = swift_task_alloc();
    *(v1 + 432) = v47;
    *v47 = v1;
    v47[1] = PlayVoicemailReadIntroductionFlow.execute();

    return (v49)(*&v43, 0, *&v45, 0, v14);
  }
}

uint64_t closure #2 in PlayVoicemailReadIntroductionFlow.execute()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(0);
  v11 = *(v10 + 24);

  *(a1 + v11) = a2;
  v12 = a3[36];
  if (specialized Array.count.getter(v12) == 1)
  {
    v13 = *(v10 + 20);

    *(a1 + v13) = a4;
    outlined destroy of SpeakableString?(a1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v14 = type metadata accessor for SpeakableString();
    (*(*(v14 - 8) + 16))(a1, a5, v14);

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a3[42], a3[43], a3[44], a3[45]);
    v17._object = 0x80000000004605A0;
    v17._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v17);
    specialized Array.count.getter(v12);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v23);
      _os_log_impl(&dword_0, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in PlayVoicemailReadIntroductionFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #3 in PlayVoicemailReadIntroductionFlow.execute(), 0, 0);
}

uint64_t closure #3 in PlayVoicemailReadIntroductionFlow.execute()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[40];
  v4 = v1[41];
  __swift_project_boxed_opaque_existential_1(v1 + 37, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v2;
  v6 = v2;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = closure #3 in PlayVoicemailReadIntroductionFlow.execute();
  v11 = v0[5];
  v12 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v5, v11, v3, v4, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t PlayVoicemailReadIntroductionFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  return v0;
}

uint64_t PlayVoicemailReadIntroductionFlow.__deallocating_deinit()
{
  PlayVoicemailReadIntroductionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PlayVoicemailReadIntroductionFlow(uint64_t a1, uint64_t a2)
{
  IntroductionFlow = type metadata accessor for PlayVoicemailReadIntroductionFlow();

  return Flow<>.exitValue.getter(IntroductionFlow, a2);
}

uint64_t partial apply for closure #3 in PlayVoicemailReadIntroductionFlow.execute()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = closure #2 in ActionableCallControlFlow.execute();
  v3 = OUTLINED_FUNCTION_59_1();

  return closure #3 in PlayVoicemailReadIntroductionFlow.execute()(v3, v4, v5, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void PluginPrewarmProvider.__allocating_init(eligibleAppsFinder:callRegistrationManager:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v6 = swift_allocObject();
  v8 = v5[3];
  v7 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v8);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v11 = OUTLINED_FUNCTION_3_88(v10);
  v12(v11);
  v13 = v3[3];
  v14 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v13);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v17 = OUTLINED_FUNCTION_28_4(v16);
  v18(v17);
  specialized PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)(v0, v1, v6, v8, v13, v7, v14);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

void PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v9);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v12 = OUTLINED_FUNCTION_3_88(v11);
  v13(v12);
  v14 = v5[3];
  v15 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v14);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_28_4(v17);
  v19(v18);
  specialized PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)(v1, v2, v3, v9, v14, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

Swift::Void __swiftcall PluginPrewarmProvider.prewarm(refId:)(Swift::String refId)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v21 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_9_1();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_4_68();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v3;
  v19[4] = v1;
  v22[4] = partial apply for closure #1 in PluginPrewarmProvider.prewarm(refId:);
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22[3] = &block_descriptor_6;
  v20 = _Block_copy(v22);

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v8 + 8))(v12, v6);
  (*(v14 + 8))(v18, v21);

  OUTLINED_FUNCTION_65();
}

void closure #1 in PluginPrewarmProvider.prewarm(refId:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 112);
  if (v6 && (*(a3 + 104) == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
      _os_log_impl(&dword_0, oslog, v9, "PluginPrewarmProvider#prewarm refId: %s already prewarmed", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriPhone);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
      _os_log_impl(&dword_0, v13, v14, "PluginPrewarmProvider#prewarm for refId: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    PluginPrewarmProvider.prewarm()();
    *(a3 + 104) = a1;
    *(a3 + 112) = a2;
  }
}

void PluginPrewarmProvider.prewarm()()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  static Signpost.begin(_:)();
  v29[0] = v6;
  v29[1] = v5;
  type metadata accessor for ContactResolver();
  static ContactResolver.refreshSharedCache()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_424FF0;
  v8 = [objc_allocWithZone(INStartCallIntent) init];
  v9 = [v8 _className];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  v13 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v14 = [v13 _className];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v7 + 48) = v15;
  *(v7 + 56) = v17;
  v18 = [objc_allocWithZone(INStartVideoCallIntent) init];
  v19 = [v18 _className];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v24 = v23;
  v23[2] = 3;
  v23[8] = v20;
  v23[9] = v22;
  v25 = v1[5];
  v26 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v25);
  (*(v26 + 8))(v24, v25, v26);

  if (PluginPrewarmProvider.shouldRunAppSelectionModelPreWarm()())
  {
    type metadata accessor for PhoneAppSelectionModelCache();
    static PhoneAppSelectionModelCache.prewarm()();
  }

  v27 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v27);
  OUTLINED_FUNCTION_4_68();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PluginPrewarmProvider.prewarm(), v28);

  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PluginPrewarmProvider.prewarm()()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PluginPrewarmProvider.prewarm();

  return v6(v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PluginPrewarmProvider.shouldRunAppSelectionModelPreWarm()()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v0 = dispatch thunk of CurrentDevice.isPhone.getter();

  if (v0)
  {
    return 1;
  }

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v2 = dispatch thunk of CurrentDevice.isCarPlay.getter();

  return v2 & 1;
}

uint64_t PluginPrewarmProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t PluginPrewarmProvider.__deallocating_deinit()
{
  PluginPrewarmProvider.deinit();

  return swift_deallocClassInstance();
}

void *specialized PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v22 = a7;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v13 - 8);
  v24 = v13;
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v30 = a4;
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v27 = a5;
  v28 = v22;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a5 - 8) + 32))(v19, a2, a5);
  v22 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInteractive.getter();
  v25 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[13] = 0;
  a3[14] = 0;
  a3[12] = v20;
  outlined init with take of SPHConversation(&v29, (a3 + 2));
  outlined init with take of SPHConversation(&v26, (a3 + 7));
  return a3;
}

uint64_t partial apply for closure #1 in PluginPrewarmProvider.prewarm()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return closure #1 in PluginPrewarmProvider.prewarm()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATs::Properties_optional __swiftcall PostCallInquiryAnswerCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PostCallInquiryAnswerCallCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PostCallInquiryAnswerCallCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PostCallInquiryAnswerCallCATs_Properties_unknownDefault;
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

unint64_t PostCallInquiryAnswerCallCATs.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002DLL;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PostCallInquiryAnswerCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATs::Properties_optional *a2@<X8>)
{
  result.value = PostCallInquiryAnswerCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PostCallInquiryAnswerCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PostCallInquiryAnswerCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PostCallInquiryAnswerCallCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "incomingCallConcept");
  if (a1)
  {
    v6 = type metadata accessor for PhoneIncomingCall();
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PostCallInquiryAnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PostCallInquiryAnswerCallCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_62(v5);

  return v9(v7);
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);

  return v8(0xD00000000000002FLL, 0x8000000000453AE0, v3);
}

uint64_t PostCallInquiryAnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *(v3 + 16) = xmmword_424FD0;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PostCallInquiryAnswerCallCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_35_1(v8);
  *(v9 + 16) = xmmword_424FD0;
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    (*(v11 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PostCallInquiryAnswerCallCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[7] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_62(v7);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);

  return v10(0xD00000000000002DLL, 0x8000000000453B10, v4);
}

uint64_t PostCallInquiryAnswerCallCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1(v6);
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PostCallInquiryAnswerCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATs.Properties and conformance PostCallInquiryAnswerCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATs.Properties and conformance PostCallInquiryAnswerCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATs.Properties and conformance PostCallInquiryAnswerCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATs.Properties and conformance PostCallInquiryAnswerCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PostCallInquiryAnswerCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for PostCallInquiryAnswerCallCATs;
  if (!type metadata singleton initialization cache for PostCallInquiryAnswerCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PostCallInquiryAnswerCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::Properties_optional __swiftcall PostCallInquiryAnswerCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PostCallInquiryAnswerCallCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PostCallInquiryAnswerCallCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PostCallInquiryAnswerCallCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PostCallInquiryAnswerCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PostCallInquiryAnswerCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PostCallInquiryAnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = PostCallInquiryAnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return v7(0xD00000000000002FLL, 0x8000000000453AE0, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PostCallInquiryAnswerCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PostCallInquiryAnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds();
  *v5 = v0;
  v5[1] = PostCallInquiryAnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return v8(0xD00000000000002FLL, 0x8000000000453AE0, v3, &type metadata for PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds, v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  *v9 = v2;
  v9[1] = PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:);

  return v11(v3 + 28, 0x8000000000453B10, v5);
}

BOOL PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  v10 = lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds();
  *v9 = v2;
  v9[1] = PhoneCallControlCATs.callControl(callControlAction:);

  return v12(v3 + 28, 0x8000000000453B10, v5, &type metadata for PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds, v10);
}

unint64_t lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t PostCallInquiryAnswerCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PostCallInquiryAnswerCallCATsSimple.Properties and conformance PostCallInquiryAnswerCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.Properties and conformance PostCallInquiryAnswerCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.Properties and conformance PostCallInquiryAnswerCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostCallInquiryAnswerCallCATsSimple.Properties and conformance PostCallInquiryAnswerCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PostCallInquiryAnswerCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for PostCallInquiryAnswerCallCATsSimple;
  if (!type metadata singleton initialization cache for PostCallInquiryAnswerCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PostCallInquiryAnswerCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for PostCallInquiryAnswerCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for PostCallInquiryAnswerCallCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t PreferredCallProviderSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v17 = v28 - v16;
  v18 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPreferredCallProvider(0);
  if (swift_dynamicCast())
  {
    v19 = v28[5];
  }

  else
  {
    v19 = (*(*(*(*(a9 + 32) + 8) + 16) + 8))(*(a9 + 16));
  }

  v20 = *(v9 + 40);
  if (v19)
  {
    v21 = INPreferredCallProviderGetBackingType();
    switch(v21)
    {
      case 4:
        v22 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v22 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v22 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v22 = [NSString stringWithFormat:@"(unknown: %i)", v21];
        goto LABEL_14;
    }

    v23 = v22;
LABEL_14:
    v24 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v25 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
  type metadata accessor for SirikitDeviceState();
  outlined init with copy of SignalProviding(v10, v28);
  v26 = SirikitDeviceState.__allocating_init(from:)();
  (*(*v20 + class metadata base offset for StartCallCATs + 160))(v17, v26, a7, a8);

  return outlined destroy of SpeakableString?(v17);
}

uint64_t PreferredCallProviderSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(int a1, int a2, uint64_t a3, id a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch([a4 unsupportedReason])
  {
    case 1uLL:
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v10, v21);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_26_1();
      (*(v12 + class metadata base offset for StartCallCATs + 2176))();
      goto LABEL_5;
    case 3uLL:
      OUTLINED_FUNCTION_26_1();
      result = (*(v13 + class metadata base offset for StartCallCATs + 2080))(a8, a9);
      break;
    case 6uLL:
      OUTLINED_FUNCTION_26_1();
      result = (*(v20 + class metadata base offset for StartCallCATs + 2112))(a8, a9);
      break;
    default:
      type metadata accessor for PhoneStartCallIntent(0);
      v15 = OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_1_96(v15);
      v16 = type metadata accessor for SirikitDeviceState();
      OUTLINED_FUNCTION_4_69(v16, v17);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_26_1();
      v18 = OUTLINED_FUNCTION_0_98();
      v19(v18);

LABEL_5:

      break;
  }

  return result;
}

uint64_t type metadata instantiation function for PreferredCallProviderSlotTemplating(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v3 + 16);
  *(v3 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INPreferredCallProvider(0);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 152))(&v73, v6, v7);
  v8 = v74;
  v9 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, v74);
  if (a3)
  {
    v10 = App.appIdentifier.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  (*(v9 + 16))(v76, v10, v12, v8, v9);
  v13 = v76[0];
  v14 = v76[1];
  v15 = v79;

  __swift_destroy_boxed_opaque_existential_1(&v73);
  if (v13)
  {
    v81 = v77;
    v82 = v14;

    OUTLINED_FUNCTION_7_11(&v82);
    v83 = v81;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v83, &_sSSSgMd, &_sSSSgMR);
    v84 = v15;
    OUTLINED_FUNCTION_7_11(&v84);
  }

  OUTLINED_FUNCTION_1_97();
  if (PhoneCallNLIntent.hasAnyFaceTime()())
  {
    OUTLINED_FUNCTION_1_97();
    if (PhoneCallNLIntent.isFirstPartyOrDefaultAppRequest()())
    {
      OUTLINED_FUNCTION_11_8();
      if (!v16)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_7_39(v19))
      {
        OUTLINED_FUNCTION_42();
        v20 = OUTLINED_FUNCTION_14_2();
        *&v73 = v20;
        *a1 = 136315138;
        *&v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMR);
        v21 = String.init<A>(describing:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v73);

        *(a1 + 4) = v23;
        OUTLINED_FUNCTION_2_96(&dword_0, v24, v25, "#%s using FaceTime provider per verb or noun parse");
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_26_0(v20);
        OUTLINED_FUNCTION_14_0();
      }

      v26 = 0;
      v27 = 2;
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1_97();
  if (PhoneCallNLIntent.isRedialOrCallBack()() || (OUTLINED_FUNCTION_1_97(), PhoneCallNLIntent.isFind()()))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v16)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_7_39(v30))
    {
      OUTLINED_FUNCTION_42();
      v31 = OUTLINED_FUNCTION_14_2();
      *&v73 = v31;
      *a1 = 136315138;
      *&v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMR);
      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v73);

      *(a1 + 4) = v34;
      OUTLINED_FUNCTION_2_96(&dword_0, v35, v36, "#%s Not setting preferredCallProvider because this is a redial/callback or find request");
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_26_0(v31);
      OUTLINED_FUNCTION_14_0();
    }

    v27 = 0;
    v26 = 1;
    goto LABEL_20;
  }

  if (!v13)
  {
    goto LABEL_34;
  }

  if (!App.isFaceTime()())
  {
LABEL_33:

LABEL_34:
    OUTLINED_FUNCTION_1_97();
    if (PhoneCallNLIntent.isFirstPartyOrDefaultAppRequest()())
    {
      OUTLINED_FUNCTION_11_8();
      if (!v16)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.siriPhone);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_7_39(v51))
      {
        OUTLINED_FUNCTION_42();
        v52 = OUTLINED_FUNCTION_14_2();
        v72 = v52;
        *a1 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMR);
        v53 = String.init<A>(describing:)();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v72);

        *(a1 + 4) = v55;
        OUTLINED_FUNCTION_2_96(&dword_0, v56, v57, "#%s fallback to telephony");
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_26_0(v52);
        OUTLINED_FUNCTION_14_0();
      }

      v26 = 0;
      v27 = 1;
    }

    else
    {
      v26 = 0;
      v27 = 3;
    }

    goto LABEL_20;
  }

  v80 = v77;
  if (v78 == 1)
  {
    v85[0] = v14;

    OUTLINED_FUNCTION_7_11(v85);
    v73 = v80;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v73, &_sSSSgMd, &_sSSSgMR);
    v86 = v15;
    OUTLINED_FUNCTION_7_11(&v86);
    goto LABEL_33;
  }

  v63 = one-time initialization token for siriPhone;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.siriPhone);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    OUTLINED_FUNCTION_42();
    v70 = OUTLINED_FUNCTION_14_2();
    v72 = v70;
    *a1 = 136315138;
    *&v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMR);
    v67 = String.init<A>(describing:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v72);

    *(a1 + 4) = v69;
    _os_log_impl(&dword_0, v65, v66, "#%s using FaceTime provider per app resolution result (user requested)", a1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_26_0(v70);
    OUTLINED_FUNCTION_14_0();
  }

  v27 = 2;

  v85[0] = v14;
  OUTLINED_FUNCTION_7_11(v85);
  v73 = v80;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v73, &_sSSSgMd, &_sSSSgMR);
  v86 = v15;
  OUTLINED_FUNCTION_7_11(&v86);
  v26 = 0;
LABEL_20:
  OUTLINED_FUNCTION_11_8();
  if (!v16)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72 = v41;
    *v40 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGmMR);
    v42 = String.init<A>(describing:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v72);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    if (v26)
    {
      v45 = 0xE700000000000000;
      v46 = 0x4E574F4E4B4E55;
LABEL_46:
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v72);

      *(v40 + 14) = v61;
      _os_log_impl(&dword_0, v38, v39, "#%s --> %s", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v41);
      OUTLINED_FUNCTION_26_0(v40);
      goto LABEL_47;
    }

    v47 = INPreferredCallProviderGetBackingType();
    switch(v47)
    {
      case 4:
        v48 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v48 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v48 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v48 = [NSString stringWithFormat:@"(unknown: %i)", v47];
        goto LABEL_45;
    }

    v58 = v48;
LABEL_45:
    v59 = v48;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v60;

    goto LABEL_46;
  }

LABEL_47:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v76, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

  *a4 = v27;
  return result;
}

uint64_t *EligibleAppFinder.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
  }

  return &static EligibleAppFinder.instance;
}

uint64_t static EligibleAppFinder.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
  }
}

uint64_t EligibleAppFinder.().init()()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue();
  v8[0] = "com.apple.siri.phone.prewarm";
  v8[1] = v6;
  static DispatchQoS.userInteractive.getter();
  v10 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  return v0;
}

Swift::Void __swiftcall EligibleAppFinder.prefetchApps(intentTypeNames:)(Swift::OpaquePointer intentTypeNames)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v19 = v4;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[2];
  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  v14[2]._rawValue = intentTypeNames._rawValue;
  v14[3]._rawValue = v1;
  aBlock[4] = partial apply for closure #1 in EligibleAppFinder.prefetchApps(intentTypeNames:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v7, v3);
  (*(v9 + 8))(v12, v18);
}

uint64_t closure #1 in EligibleAppFinder.prefetchApps(intentTypeNames:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = (result + 40); ; i += 2)
    {
      v33 = v2;
      v5 = *(i - 1);
      v6 = *i;
      v7 = one-time initialization token for siriPhone;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriPhone);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v34[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v34);
        _os_log_impl(&dword_0, v9, v10, "#EligibleAppFinder prefetching apps for %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      EligibleAppFinder.makeTask(intentTypeName:)(v5, v6);
      v13 = v5;
      v15 = v14;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(a2 + 24);
      v18 = a2;
      *(a2 + 24) = 0x8000000000000000;
      v19 = v13;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v6);
      v22 = v17[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMd, &_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v6);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_20;
        }

        v25 = v27;
      }

      a2 = v18;
      if (v26)
      {
        *(v17[7] + 8 * v25) = v15;
      }

      else
      {
        v17[(v25 >> 6) + 8] |= 1 << v25;
        v29 = (v17[6] + 16 * v25);
        *v29 = v19;
        v29[1] = v6;
        *(v17[7] + 8 * v25) = v15;
        v30 = v17[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_19;
        }

        v17[2] = v32;
      }

      *(v18 + 24) = v17;
      swift_endAccess();

      v2 = v33 - 1;
      if (v33 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t EligibleAppFinder.findEligibleApps(intentTypeName:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t EligibleAppFinder.findEligibleApps(intentTypeName:)()
{
  v23 = v0;
  static Signpost.begin(_:)();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  *(v0 + 88) = __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);
    _os_log_impl(&dword_0, v6, v7, "#EligibleAppFinder finding apps for %s ..", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = v13;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTySay17SiriAppResolution0B0CGs5NeverOGMd, &_sScTySay17SiriAppResolution0B0CGs5NeverOGMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v18 = *(v0 + 48);
  *(v0 + 96) = v18;
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  *v19 = v0;
  v19[1] = EligibleAppFinder.findEligibleApps(intentTypeName:);

  return Task<>.value.getter(v0 + 56, v18, v20);
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

char *EligibleAppFinder.findEligibleApps(intentTypeName:)()
{
  v31 = v0;
  v1 = v0[7];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v29);
    *(v6 + 12) = 2080;
    v8 = specialized Array.count.getter(v1);
    if (v8)
    {
      v9 = v8;
      v30 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v7;
      v27 = v6;
      v28 = v2;
      v11 = 0;
      v12 = v30;
      v13 = v1 & 0xC000000000000001;
      v14 = v1;
      do
      {
        if (v13)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v15 = App.appIdentifier.getter();
        v17 = v16;

        v30 = v12;
        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v12 = v30;
        }

        ++v11;
        v12[2] = v19 + 1;
        v20 = &v12[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v1 = v14;
      }

      while (v9 != v11);
      v7 = v26;
      v2 = v28;
      v6 = v27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v21 = Array.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v29);

    *(v6 + 14) = v24;
    _os_log_impl(&dword_0, v2, v3, "#EligibleAppFinder found apps for %s -> %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_17_5();

  return v25(v1);
}

uint64_t closure #1 in EligibleAppFinder.findEligibleApps(intentTypeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    EligibleAppFinder.makeTask(intentTypeName:)(a2, a3);
    v11 = v13;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 24);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3);
    *(a1 + 24) = v14;
    result = swift_endAccess();
    goto LABEL_6;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

LABEL_6:
  *a4 = v11;
  return result;
}

uint64_t EligibleAppFinder.findEligibleApps(intentTypeNames:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t EligibleAppFinder.findEligibleApps(intentTypeNames:)()
{
  v11 = v0;
  if (specialized Array.count.getter(_swiftEmptyArrayStorage))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17SiriAppResolution0F0C_Tt0g5(_swiftEmptyArrayStorage);
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  v3 = v0[4];
  v0[2] = v2;
  v4 = *(v3 + 16);
  v0[6] = v4;
  if (v4)
  {
    v0[7] = 0;
    v0[8] = *(v3 + 40);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_0_99(v5);

    return EligibleAppFinder.findEligibleApps(intentTypeName:)(v6, v7);
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v2);

    v10 = specialized Array._copyToContiguousArray()();
    specialized MutableCollection<>.sort(by:)(&v10);

    OUTLINED_FUNCTION_17_5();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *(v4 + 80) = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v16 = v0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 80);
  result = specialized Array.count.getter(v1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    App.appIdentifier.getter();
    if (v5)
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  specialized Set.formUnion<A>(_:)(*(v0 + 24));
  if (v7 + 1 == v6)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(*(v0 + 16));

    v15 = specialized Array._copyToContiguousArray()();
    specialized MutableCollection<>.sort(by:)(&v15);

    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X2, X16 }
  }

  v8 = *(v0 + 56) + 1;
  *(v0 + 56) = v8;
  *(v0 + 64) = *(*(v0 + 32) + 16 * v8 + 40);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_0_99(v9);
  OUTLINED_FUNCTION_15_11();

  return EligibleAppFinder.findEligibleApps(intentTypeName:)(v10, v11);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  result = specialized Array.count.getter(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = result;
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    specialized Set._Variant.insert(_:)(&v6, v5);
  }
}

void EligibleAppFinder.makeTask(intentTypeName:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSay17SiriAppResolution0F0CG_Tt2g5();
}

uint64_t closure #1 in EligibleAppFinder.makeTask(intentTypeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return _swift_task_switch(closure #1 in EligibleAppFinder.makeTask(intentTypeName:), 0, 0);
}

uint64_t closure #1 in EligibleAppFinder.makeTask(intentTypeName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *(v4 + 136) = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v14 = v0;
  Signpost.OpenSignpost.end()();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    *(v6 + 12) = 2080;
    type metadata accessor for App();
    v8 = Array.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_0, v2, v3, "#EligibleAppFinder retrieved apps for %s -> %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  **(v0 + 64) = *(v0 + 136);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t EligibleAppFinder.__deallocating_deinit()
{
  EligibleAppFinder.deinit();
  OUTLINED_FUNCTION_50();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PrefetchableAppFinding.findEligibleApps(intentTypeNames:) in conformance EligibleAppFinder(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>;

  return v6(a1);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = _swiftEmptyArrayStorage;
LABEL_130:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_171;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_132:
      v93 = i;
      v94 = (i + 16);
      for (i = *(i + 16); i >= 2; *v94 = i)
      {
        if (!*a3)
        {
          goto LABEL_168;
        }

        v95 = (v93 + 16 * i);
        v96 = *v95;
        v97 = &v94[2 * i];
        v98 = v97[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v95), (*a3 + 8 * *v97), (*a3 + 8 * v98), v4);
        if (v112)
        {
          break;
        }

        if (v98 < v96)
        {
          goto LABEL_156;
        }

        if (i - 2 >= *v94)
        {
          goto LABEL_157;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v94 - i;
        if (*v94 < i)
        {
          goto LABEL_158;
        }

        v112 = 0;
        i = *v94 - 1;
        memmove(v97, v97 + 2, 16 * v99);
      }

LABEL_140:

      return;
    }

LABEL_165:
    i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
    goto LABEL_132;
  }

  v6 = 0;
  i = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = *a3;
      v113 = v6 + 1;
      v4 = *(*a3 + 8 * v9);
      v103 = v6;

      v11 = App.appIdentifier.getter();
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      v15 = App.appIdentifier.getter();
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0xE000000000000000;
      }

      if (v15 == v13 && v17 == v14)
      {
        v108 = 0;
      }

      else
      {
        v108 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v101 = i;

      v19 = (v10 + 8 * v8 + 16);
      v20 = 8 * v103 + 8;
      v9 = v113;
      v106 = v5;
      do
      {
        i = v9;
        v21 = v20;
        if (++v9 >= v5)
        {
          break;
        }

        v114 = v9;
        v4 = *v19;

        v22 = App.appIdentifier.getter();
        v24 = v23 ? v22 : 0;
        v25 = v23 ? v23 : 0xE000000000000000;
        v26 = App.appIdentifier.getter();
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0xE000000000000000;
        }

        v29 = v26 == v24 && v28 == v25;
        v30 = v29 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v19;
        v20 = v21 + 8;
        v9 = v114;
        v5 = v106;
      }

      while (((v108 ^ v30) & 1) == 0);
      if (v108)
      {
        v8 = v103;
        if (v9 < v103)
        {
          goto LABEL_162;
        }

        if (v103 < v9)
        {
          v31 = v103;
          v32 = 8 * v103;
          do
          {
            if (v31 != i)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_169;
              }

              v34 = *(v33 + v32);
              *(v33 + v32) = *(v33 + v21);
              *(v33 + v21) = v34;
            }

            ++v31;
            v21 -= 8;
            v32 += 8;
          }

          while (v31 < i--);
        }

        i = v101;
      }

      else
      {
        i = v101;
        v8 = v103;
      }
    }

    v36 = a3[1];
    if (v9 < v36)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_161;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_78:
    if (v9 < v8)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v91;
    }

    v51 = *(i + 16);
    v52 = v51 + 1;
    v116 = v9;
    if (v51 >= *(i + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v92;
    }

    *(i + 16) = v52;
    v53 = i + 32;
    v54 = (i + 32 + 16 * v51);
    *v54 = v8;
    v54[1] = v9;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        v56 = (v53 + 16 * (v52 - 1));
        v57 = (i + 16 * v52);
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(i + 32);
          v59 = *(i + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_98:
          if (v61)
          {
            goto LABEL_147;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_150;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_153;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_155;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        if (v52 < 2)
        {
          goto LABEL_149;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_113:
        if (v76)
        {
          goto LABEL_152;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_154;
        }

        if (v83 < v75)
        {
          goto LABEL_127;
        }

LABEL_120:
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v87 = i;
        v88 = (v53 + 16 * (v55 - 1));
        i = *v88;
        v89 = (v53 + 16 * v55);
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v88), (*a3 + 8 * *v89), (*a3 + 8 * v90), v110);
        if (v112)
        {
          goto LABEL_140;
        }

        if (v90 < i)
        {
          goto LABEL_142;
        }

        v4 = *(v87 + 16);
        if (v55 > v4)
        {
          goto LABEL_143;
        }

        *v88 = i;
        v88[1] = v90;
        if (v55 >= v4)
        {
          goto LABEL_144;
        }

        v112 = 0;
        v52 = (v4 - 1);
        memmove((v53 + 16 * v55), v89 + 2, 16 * &v4[-v55 - 1]);
        i = v87;
        *(v87 + 16) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_127;
        }
      }

      v62 = v53 + 16 * v52;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_145;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_146;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_148;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_151;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_159;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_98;
    }

LABEL_127:
    v5 = a3[1];
    v6 = v116;
    if (v116 >= v5)
    {
      goto LABEL_130;
    }
  }

  v37 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_163;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v8)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v9 == v37)
  {
    goto LABEL_78;
  }

  v38 = *a3;
  v39 = (*a3 + 8 * v9 - 8);
  v104 = v8;
  v105 = v37;
  v40 = v8 - v9;
LABEL_56:
  v115 = v9;
  v107 = v40;
  v109 = v39;
  while (1)
  {

    v41 = App.appIdentifier.getter();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v4 = v42;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v44 = App.appIdentifier.getter();
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0xE000000000000000;
    }

    if (v44 == v43 && v46 == v4)
    {

LABEL_76:
      v9 = v115 + 1;
      v39 = v109 + 1;
      v40 = v107 - 1;
      if (v115 + 1 == v105)
      {
        v9 = v105;
        v8 = v104;
        goto LABEL_78;
      }

      goto LABEL_56;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      goto LABEL_76;
    }

    if (!v38)
    {
      break;
    }

    v49 = *v39;
    *v39 = v39[1];
    v39[1] = v49;
    --v39;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
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

uint64_t partial apply for closure #1 in EligibleAppFinder.makeTask(intentTypeName:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return closure #1 in EligibleAppFinder.makeTask(intentTypeName:)(a1, v4, v5, v7, v6);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.__allocating_init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:isLeadingSavedVoiceMailPostPrompt:voiceMailPositionString:searchCallHistorySharedGlobals:isRepeatRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, __int16 a12, const void *a13, char a14)
{
  v16 = swift_allocObject();
  PromptForValueAfterReadingVoicemailFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:isLeadingSavedVoiceMailPostPrompt:voiceMailPositionString:searchCallHistorySharedGlobals:isRepeatRequest:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, a12, SHIBYTE(a12), a13, a14);
  return v16;
}

id specialized UpdateResponseCommand<>.asUpdateCommand(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(SAUIUpdateVisualResponseSnippet) init];
  UUID.init()();
  v16 = UUID.uuidString.getter();
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_0();
  String._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_40_0();

  [v15 setAceId:v16];

  (*(a2 + 8))(a1, a2);
  String._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_40_0();

  [v15 setViewId:a1];

  a4();
  updated = dispatch thunk of UpdateResponseCommand.serializeData()();
  if (v23)
  {
  }

  else
  {
    v19 = updated;
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v19, v20);
    [v15 setStateData:isa];
  }

  return v15;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC38buildVoiceMailListFollowUpOfferContext07SiriKitC00F6UpdateVyFZSo08INSearchB13HistoryIntentC_So0sbtU8ResponseCTt0g5()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#PhoneCallNLContextProvider buildVoiceMailListFollowUpOfferContext", v3, 2u);
  }

  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC40buildSingleVoiceMailFollowUpOfferContext07SiriKitC00F6UpdateVyFZSo08INSearchB13HistoryIntentC_So0sbtU8ResponseCTt0g5();
  v5 = NLContextUpdate.weightedPromptResponseOptions.modify();
  if (*v4)
  {
    v6 = v4;
    String.uppercased()();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v16 = PhoneCallNLConstants.canonicalName.getter(14);
    v17 = v7;
    v8._countAndFlagsBits = 0x2E65756C61562ELL;
    v8._object = 0xE700000000000000;
    String.append(_:)(v8);
    v9 = String.uppercased()();
    String.append(_:)(v9);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = *(*v6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v11 = *v6;
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 16 * v10;
    *(v12 + 32) = v16;
    *(v12 + 40) = v17;
  }

  v5(v18, 0);
  v13 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v13 setReason:SAAceConfirmationReasonCONTINUE_READINGValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_426260;
  *(v14 + 32) = v13;
  return NLContextUpdate.conversationStateAttachments.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC31makeSDAForOfferReadingVoicemail33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0V29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchB13HistoryIntentC_So08INSearchB21HistoryIntentResponseCTtg5()
{
  v67 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v67);
  v66 = &v57 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v65 = (&v57 - v2);
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v57 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v57 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v61 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v72 = &v57 - v11;
  v60 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v24 - 8);
  v26 = &v57 - v25;
  type metadata accessor for UsoTaskBuilder_summarise_common_PhoneCall();
  swift_allocObject();
  v27 = UsoTaskBuilder_summarise_common_PhoneCall.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_426260;
  *(v28 + 32) = v27;
  v29 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v29);
  v63 = v27;

  v30 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v62 = v30;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v64 = v23;
  v65 = v18;
  v31 = v18[2];
  v66 = v17;
  (v31)(v20, v23, v17);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v32 = v72;
  Siri_Nlu_External_SystemOffered.init()();
  v33 = v59;
  v34 = *(v59 + 16);
  v67 = v15;
  v35 = v60;
  v34(v58, v15, v60);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v37 = v70;
  v36 = v71;
  (*(v70 + 16))(v61, v32, v71);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.siriPhone);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v68;
  v43 = v69;
  if (v41)
  {
    v44 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v73[0] = v61;
    *v44 = 136315138;
    swift_beginAccess();
    v45 = v57;
    (*(v42 + 16))(v57, v7, v43);
    v46 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v45);
    v48 = v33;
    v49 = v7;
    v50 = v43;
    v51 = v35;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v73);

    *(v44 + 4) = v52;
    v35 = v51;
    v43 = v50;
    v7 = v49;
    v33 = v48;
    _os_log_impl(&dword_0, v39, v40, "#PhoneCallNLContextProvider Returning SystemOffered for offer continue to read or repeat: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v37 = v70;

    v36 = v71;
  }

  v53 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v54 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v42 + 16))(v55 + v54, v7, v43);

  (*(v37 + 8))(v72, v36);
  (*(v33 + 8))(v53, v35);
  v65[1](v64, v66);
  (*(v42 + 8))(v7, v43);
  return v55;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC40buildSingleVoiceMailFollowUpOfferContext07SiriKitC00F6UpdateVyFZSo08INSearchB13HistoryIntentC_So0sbtU8ResponseCTt0g5()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#PhoneCallNLContextProvider buildSingleVoiceMailFollowUpOfferContext", v3, 2u);
  }

  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426980;
  String.uppercased()();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v15 = PhoneCallNLConstants.canonicalName.getter(14);
  v18 = v5;
  v6._countAndFlagsBits = 0x2E65756C61562ELL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7 = String.uppercased()();
  String.append(_:)(v7);

  *(v4 + 32) = v15;
  *(v4 + 40) = v18;
  String.uppercased()();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = PhoneCallNLConstants.canonicalName.getter(15);
  v19 = v8;
  v9._countAndFlagsBits = 0x2E65756C61562ELL;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  v10 = String.uppercased()();
  String.append(_:)(v10);

  *(v4 + 48) = v16;
  *(v4 + 56) = v19;
  String.uppercased()();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v17 = PhoneCallNLConstants.canonicalName.getter(6);
  v20 = v11;
  v12._countAndFlagsBits = 0x2E65756C61562ELL;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13 = String.uppercased()();
  String.append(_:)(v13);

  *(v4 + 64) = v17;
  *(v4 + 72) = v20;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  return NLContextUpdate.weightedPromptStrict.setter();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:isLeadingSavedVoiceMailPostPrompt:voiceMailPositionString:searchCallHistorySharedGlobals:isRepeatRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13, const void *a14, char a15)
{
  v22 = (v15 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
  *v22 = type metadata accessor for PromptForValueAfterReadingVoicemailFlowStrategy(0);
  v22[1] = &outlined read-only object #0 of PromptForValueAfterReadingVoicemailFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:isLeadingSavedVoiceMailPostPrompt:voiceMailPositionString:searchCallHistorySharedGlobals:isRepeatRequest:);
  v22[2] = 0;
  v22[3] = 0;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 96) = a1;
  *(v15 + 104) = a4;
  *(v15 + 48) = a5;
  outlined init with copy of SignalProviding(a6, v15 + 56);
  v23 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_windowParam;
  type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1();
  (*(v24 + 32))(v15 + v23, a8);
  *(v15 + 16) = a7;
  v25 = v15 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_totalItemCount;
  *v25 = a9;
  *(v25 + 8) = a10 & 1;
  type metadata accessor for YesNoConfirmationParser();
  v26 = swift_allocObject();
  *(v26 + 16) = 5;
  outlined init with take of SPHConversation(a6, v26 + 24);
  *(v15 + 40) = v26;
  *(v15 + 312) = a11;
  *(v15 + 320) = a12;
  *(v15 + 321) = a13;
  memcpy((v15 + 112), a14, 0xC8uLL);
  *(v15 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_isRepeatRequest) = a15;
  return v15;
}

uint64_t type metadata accessor for PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for PromptForValueAfterReadingVoicemailFlowStrategy;
  if (!type metadata singleton initialization cache for PromptForValueAfterReadingVoicemailFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.actionForInput(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  Input.parse.getter();
  v9 = PromptForValueAfterReadingVoicemailFlowStrategy.parsePromptResponse(from:)(v8);
  (*(v4 + 8))(v8, v2);
  if (v9 > 3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "PromptForValueAfterReadingVoicemailFlowStrategy ignore the request", v25, 2u);
      OUTLINED_FUNCTION_26_0(v25);
    }

    return static ActionForInput.ignore()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_42();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      v15 = OUTLINED_FUNCTION_5_5(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
      v26 = v16;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v15, v17, v18, v19);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v26, &v27);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_0, v11, v12, "%s handle the request", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_26_0(v14);
      OUTLINED_FUNCTION_14_0();
    }

    return static ActionForInput.handle()();
  }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Parse();
  v1[4] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Input();
  v1[7] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_39_4();
  v41 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  v7 = OUTLINED_FUNCTION_86_0();
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_66_1();
    *v11 = 136315394;
    v12 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    OUTLINED_FUNCTION_62_19(v12, v13, v14, v15);
    v24 = OUTLINED_FUNCTION_127(v16, v17, v18, v19, v20, v21, v22, v23, v40[0], v40[1], v40[2]);

    *(v11 + 4) = v24;
    *(v11 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v8, v10);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v40);

    *(v11 + 14) = v28;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v35 = v0[5];
  v34 = v0[6];
  v36 = v0[4];
  Input.parse.getter();
  v37 = PromptForValueAfterReadingVoicemailFlowStrategy.parsePromptResponse(from:)(v34);
  (*(v35 + 8))(v34, v36);

  v38 = v0[1];

  return v38(v37);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_8_1();

  return v0();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.parsePromptResponse(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = (*(v6 + 88))(v10, v4);
  v12 = enum case for Parse.NLv3IntentOnly(_:);
  v13 = enum case for Parse.NLv4IntentOnly(_:);
  v14 = enum case for Parse.uso(_:);
  (*(v6 + 8))(v10, v4);
  if (v11 != v12 && v11 != v13 && v11 != v14)
  {
    goto LABEL_13;
  }

  v17 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v17);
  v18 = (*(v11 + 72))(v17, v11);
  (*(*v18 + 192))(&v53, a1);

  if (!v54)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_42();
      *&v53 = OUTLINED_FUNCTION_83();
      *v11 = 136315138;
      v23 = OUTLINED_FUNCTION_5_5(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
      v55 = 0;
      v56 = v24;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v23, v25, v26, v27);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v53);
      OUTLINED_FUNCTION_40_0();

      *(v11 + 4) = &v55;
      OUTLINED_FUNCTION_26(&dword_0, v28, v29, "%s parsePromptResponse gets an error, return .unknown");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    return 4;
  }

  outlined init with take of SPHConversation(&v53, &v55);
  OUTLINED_FUNCTION_33_21();
  if (PhoneCallNLIntent.isNextAfterPlayingVoiceMail()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v55);
    return 0;
  }

  OUTLINED_FUNCTION_33_21();
  if (PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v55);
    return 3;
  }

  else
  {
    OUTLINED_FUNCTION_33_21();
    if (PhoneCallNLIntent.isVoiceMailCallOrCallBack()())
    {
      __swift_destroy_boxed_opaque_existential_1(&v55);
      return 2;
    }

    else
    {
      v30 = v57;
      v31 = v58;
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      if (((*(v31 + 64))(v30, v31) - 1) > 1u)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.siriPhone);
        OUTLINED_FUNCTION_40_0();

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          OUTLINED_FUNCTION_42();
          v52 = OUTLINED_FUNCTION_83();
          *&v53 = 0;
          *v11 = 136315138;
          v45 = OUTLINED_FUNCTION_5_5(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
          *(&v53 + 1) = v46;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v45, v47, v48, v49);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, *(&v53 + 1), &v52);
          OUTLINED_FUNCTION_40_0();

          *(v11 + 4) = &v53;
          OUTLINED_FUNCTION_26(&dword_0, v50, v51, "%s user followed a unknown follow up");
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_35();
        }

        __swift_destroy_boxed_opaque_existential_1(&v55);
        return 4;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_42();
        v52 = OUTLINED_FUNCTION_83();
        *&v53 = 0;
        *v11 = 136315138;
        v35 = OUTLINED_FUNCTION_5_5(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
        *(&v53 + 1) = v36;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v35, v37, v38, v39);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, *(&v53 + 1), &v52);
        OUTLINED_FUNCTION_40_0();

        *(v11 + 4) = &v53;
        OUTLINED_FUNCTION_26(&dword_0, v40, v41, "%s user followed with no/cancel");
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_35();
      }

      __swift_destroy_boxed_opaque_existential_1(&v55);
      return 1;
    }
  }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue());
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_13();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = v20[3];
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    a10 = OUTLINED_FUNCTION_83();
    a11 = 0;
    *v24 = 136315138;
    v27 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    a12 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a11, a12, &a10);
    OUTLINED_FUNCTION_63_1();
    *(v24 + 4) = v21;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  if (*(v20[3] + 48) == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v20[4] = v37;
    *v37 = v38;
    v37[1] = DialogOutputFactory.makeOutput();
    OUTLINED_FUNCTION_48_20();

    return PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v20[5] = v41;
    *v41 = v42;
    v41[1] = closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
    OUTLINED_FUNCTION_48_20();

    return PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()();
  }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[127] = v0;
  v1[121] = v2;
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[128] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[129] = v4;
  v1[130] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for SingleResultVoicemailModel(0);
  OUTLINED_FUNCTION_21(v5);
  v1[131] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for SpeakableString();
  v1[132] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[133] = v7;
  v1[134] = *(v8 + 64);
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v44 = v1;
  v2 = *(v1[127] + 16);
  OUTLINED_FUNCTION_68_10();
  if (v0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v1[138] = v3;
  v39 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  outlined init with copy of SignalProviding(v1[127] + 192, (v1 + 87));
  v40 = v3;
  v4 = v1[127];
  SpeakableString.init(print:speak:)();
  v5 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6, v5);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v1 + 97);
  __swift_destroy_boxed_opaque_existential_1(v1 + 97);
  String.toSpeakableString.getter();

  INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
  v9 = v8;
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  v11 = v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v12 = type metadata accessor for Logger();
  v1[139] = __swift_project_value_buffer(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_42();
    v16 = swift_slowAlloc();
    v41 = v16;
    v42 = 0;
    *v15 = 136315138;
    v17 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v43 = v18;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v19, v20, v21);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v41);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "%s rendering read of multiple voicemails with SMART UI on.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_26_0(v15);
  }

  v23 = v11;
  v24 = v9;
  v25 = v1[137];
  v26 = v1[135];
  v27 = v1[134];
  v28 = v1[133];
  v29 = v1[132];
  v30 = v1[127];
  v31 = *(v30 + 296);
  v1[140] = v31;
  (*(v28 + 16))(v26, v25, v29);
  v32 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v33 = (v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v1[141] = v34;
  *(v34 + 2) = v31;
  *(v34 + 3) = v40;
  *(v34 + 4) = v30;
  (*(v28 + 32))(&v34[v32], v26, v29);
  *&v34[v33] = v23;
  v35 = &v34[(v33 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v35 = v24;
  *(v35 + 8) = v39;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  v1[142] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_windowParam;
  WindowedPaginationParameters.isLastWindow.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[143] = v36;
  *v36 = v37;
  v36[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();

  return static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 1152) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  *(v0 + 1160) = v1;
  v2 = OUTLINED_FUNCTION_48_0(v1);
  *(v0 + 1168) = v2;
  *(v2 + 16) = xmmword_426260;
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_get_throwing(v3, v4, v5, v0 + 736);
}

{
  *(v1 + 1176) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[115];
  *(v0[146] + 32) = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[148] = v3;
  *v3 = v4;
  v3[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();

  return PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 1192) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = WindowedPaginationParameters.isLastWindow.getter();
  OUTLINED_FUNCTION_24_5();
  v6 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1200) = v3;
  *v3 = v4;
  v3[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();

  return v6(v1 & 1);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v2[107] = v1;
  v2[108] = v4;
  v2[109] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 1208) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_39_4();
  v2 = v0[127];

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    *v2 = 136315138;
    v4 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    OUTLINED_FUNCTION_62_19(v4, v5, v6, v7);
    OUTLINED_FUNCTION_127(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v41);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v21 = v0[108];
  v22 = v0[145];
  v23 = v0[131];
  v0[152] = v21;
  __swift_project_boxed_opaque_existential_1(v0 + 87, v0[90]);
  v24 = OUTLINED_FUNCTION_48_0(v22);
  v0[153] = v24;
  *(v24 + 16) = xmmword_426260;
  *(v24 + 32) = v21;
  v25 = *v23;
  v26 = v23[1];
  v27 = v21;
  PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)(v25, v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[154] = v28;
  *v28 = v29;
  v28[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  OUTLINED_FUNCTION_57_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v30, v31, v32, v33, v34, v35, v36, v37);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[130];
  v3 = v1[129];
  v4 = v1[128];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 976);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 920, PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput(), v0 + 656);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);
  *(*(v0 + 1168) + 16) = 0;

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 816);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 880);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 928);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[137];
  v14 = v12[136];
  v15 = v12[133];
  v16 = v12[132];

  v17 = *(v15 + 8);
  v17(v14, v16);
  v17(v13, v16);
  __swift_destroy_boxed_opaque_existential_1(v12 + 87);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_6_70();
  v13 = OUTLINED_FUNCTION_36_24();
  v12(v13);
  v14 = OUTLINED_FUNCTION_65_14();
  v12(v14);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_6_70();
  v13 = OUTLINED_FUNCTION_36_24();
  v12(v13);
  v14 = OUTLINED_FUNCTION_65_14();
  v12(v14);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_6_70();
  v13 = OUTLINED_FUNCTION_36_24();
  v12(v13);
  v14 = OUTLINED_FUNCTION_65_14();
  v12(v14);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_6_70();
  v13 = OUTLINED_FUNCTION_36_24();
  v12(v13);
  v14 = OUTLINED_FUNCTION_65_14();
  v12(v14);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  *(v8 + 104) = a6;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput(), 0, 0);
}

void implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[9];
  v2 = v0[6];
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 16))(v1, v2, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  OUTLINED_FUNCTION_24_5();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  OUTLINED_FUNCTION_16();

  __asm { BRAA            X8, X16 }
}

uint64_t implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 88) = v0;

  v7 = *(v4 + 72);
  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  **(v0 + 16) = *(v0 + 96);

  OUTLINED_FUNCTION_8_1();

  return v1();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[14] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for SingleResultVoicemailModel(0);
  OUTLINED_FUNCTION_21(v5);
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v1[18] = *(v1[13] + 16);
  OUTLINED_FUNCTION_68_10();
  if (v0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v1[19] = v2;
  v3 = v1[13];
  outlined init with copy of SignalProviding(v3 + 192, (v1 + 2));
  v1[20] = *(v3 + 296);
  OUTLINED_FUNCTION_24_5();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();

  return v7();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[18];
  v2 = v1 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v1 & 0xC000000000000001) == 0, v1);
  if (v2)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v0[18] + 32);
  }

  v0[28] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v4;
  *v4 = v5;
  v4[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();

  return static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[26];
  v2 = v0[22];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0[31] = v3;
  v4 = OUTLINED_FUNCTION_48_0(v3);
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  *(inited + 32) = v2;
  v6 = v1;
  v7 = v2;
  specialized Array.append<A>(contentsOf:)(inited);
  v0[32] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[33] = v8;
  *v8 = v9;
  v8[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();

  return PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
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
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = OUTLINED_FUNCTION_48_0(v2);
  v0[38] = v4;
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  v5 = *v3;
  v6 = v3[1];
  v7 = v1;
  PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)(v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v8;
  *v8 = v9;
  v8[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  OUTLINED_FUNCTION_57_18();
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[14];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[37];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[17];

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_8_1();

  return v6();
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_24();

  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_24();
  v3 = *(v2 + 136);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v3, v4);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_24();
  v3 = *(v2 + 136);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v3, v4);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v5();
}

void PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()()
{
  OUTLINED_FUNCTION_39_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v29 = OUTLINED_FUNCTION_83();
    *v2 = 136315138;
    v5 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v30 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    OUTLINED_FUNCTION_39_15(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v28, v29, 0, v30);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  OUTLINED_FUNCTION_55_17();

  __asm { BRAA            X4, X16 }
}

{
  OUTLINED_FUNCTION_39_4();
  v2 = *(v0 + 104);

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v28 = OUTLINED_FUNCTION_83();
    *v2 = 136315138;
    v4 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v29 = v5;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v6, v7, v8);
    OUTLINED_FUNCTION_39_15(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26, v27, v28, 0, v29);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_24_5();
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  v22[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  OUTLINED_FUNCTION_55_17();

  __asm { BRAA            X1, X16 }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[54] = v2;
  v1[55] = v0;
  v1[52] = v3;
  v1[53] = v4;
  v5 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[56] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[57] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[58] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[59] = v7;
  v1[60] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_39_4();
  v3 = *(*(v0 + 440) + 312);
  if (!specialized Array.count.getter(v3))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = OUTLINED_FUNCTION_71_7();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v15 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_44_16();
      v66 = OUTLINED_FUNCTION_83();
      *v1 = 136315138;
      v16 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
      v67 = v17;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v16, v18, v19, v20);
      OUTLINED_FUNCTION_39_15(v21, v22, v23, v24, v25, v26, v27, v28, v63, v64, v65, v66, 0, v67);
      OUTLINED_FUNCTION_63_1();
      *(v1 + 4) = v2;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    OUTLINED_FUNCTION_70_7();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_55_17();

    __asm { BRAA            X1, X16 }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  *(v0 + 488) = v4;
  v5 = *(v0 + 440);
  v6 = *(v0 + 424);
  swift_beginAccess();
  v8 = static SingleResultVoicemailModel.resultViewID;
  v7 = off_55DDE8;
  v9 = *v6;
  v10 = v6[1];

  PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)(v8, v7, v9, v10);

  if (*(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_isRepeatRequest) == 1)
  {
    OUTLINED_FUNCTION_24_5();
    v11 = swift_task_alloc();
    *(v0 + 496) = v11;
    *v11 = v0;
    v11[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    OUTLINED_FUNCTION_55_17();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_10_63(*(v0 + 440));
  v36 = OUTLINED_FUNCTION_4_3();
  v37(v36);
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  OUTLINED_FUNCTION_4_3();
  v38 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  if (v38)
  {
    OUTLINED_FUNCTION_7_0(*(v0 + 416));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 552) = v39;
    *v39 = v40;
    v39[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    OUTLINED_FUNCTION_55_17();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  else
  {
    v50 = *(v0 + 448);
    v49 = *(v0 + 456);
    v51 = *(v0 + 416);
    outlined init with copy of SingleResultVoicemailModel(*(v0 + 424), v49, type metadata accessor for SingleResultVoicemailModel);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_0(v51);
    *(v0 + 216) = v50;
    *(v0 + 224) = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
    outlined init with copy of SingleResultVoicemailModel(v49, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 560) = v53;
    *v53 = v54;
    v53[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    OUTLINED_FUNCTION_55_17();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v55, v56, v57, v58, v59, v60);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 504) = v4;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[63];
  v2 = v0[52];
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_7_0(v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0(v5);
  v0[65] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v1;
  v7 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[66] = v11;
  *v11 = v12;
  v11[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
  v13 = v0[60];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 39, v6, v13, v3, v4, v8, v9, v10);
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
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
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
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 192));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 592) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_70_7();

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v0 = OUTLINED_FUNCTION_15_18();
  v1(v0);
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 504);

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  v2 = OUTLINED_FUNCTION_0();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_63(v16[55]);
  v17 = OUTLINED_FUNCTION_4_3();
  v18(v17);
  v19 = v16[11];
  v20 = v16[13];
  OUTLINED_FUNCTION_7_0(v16 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v16[67] = v26;
  *v26 = v27;
  v26[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 39, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v16[57];
  if (v20)
  {
    v22 = OUTLINED_FUNCTION_44_16();
    v23 = swift_slowAlloc();
    *v22 = 136315138;
    v24 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    OUTLINED_FUNCTION_62_19(v24, v25, v26, v27);
    v36 = OUTLINED_FUNCTION_127(v28, v29, v30, v31, v32, v33, v34, v35, v23, 0, v50);

    *(v22 + 4) = v36;
    _os_log_impl(&dword_0, v18, v19, "%s start to display summary view", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0(v23);
    OUTLINED_FUNCTION_14_0();
  }

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v21, type metadata accessor for PhoneSnippetDataModels);
  OUTLINED_FUNCTION_10_63(v16[55]);
  v37 = OUTLINED_FUNCTION_4_3();
  v38(v37);
  OUTLINED_FUNCTION_7_0(v16 + 2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v16[71] = v39;
  *v39 = v40;
  v41 = OUTLINED_FUNCTION_26_28(v39);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_13();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = OUTLINED_FUNCTION_71_7();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_44_16();
    a10 = OUTLINED_FUNCTION_83();
    a11 = 0;
    *v21 = 136315138;
    v27 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    a12 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a11, a12, &a10);
    OUTLINED_FUNCTION_63_1();
    *(v21 + 4) = v22;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_10_63(v20[55]);
  v37 = OUTLINED_FUNCTION_4_3();
  v38(v37);
  OUTLINED_FUNCTION_7_0(v20 + 2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v20[71] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_26_28(v39);
  OUTLINED_FUNCTION_48_20();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DialogPhase();
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  static DialogPhase.summary.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  OutputGenerationManifest.resultViewId.setter();

  OutputGenerationManifest.responseViewId.setter();
  return OutputGenerationManifest.preserveResultSpaceIfPossible.setter();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DialogPhase();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  static DialogPhase.clarification.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC38buildVoiceMailListFollowUpOfferContext07SiriKitC00F6UpdateVyFZSo08INSearchB13HistoryIntentC_So0sbtU8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC31makeSDAForOfferReadingVoicemail33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0V29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchB13HistoryIntentC_So08INSearchB21HistoryIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();

  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.preserveResultSpaceIfPossible.setter();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 112);

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_windowParam;
  type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.__deallocating_deinit()
{
  PromptForValueAfterReadingVoicemailFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(*v2 + 224) + **(*v2 + 224));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy;

  return v7(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy()
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

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

unint64_t lazy protocol witness table accessor for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse()
{
  result = lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse;
  if (!lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse);
  }

  return result;
}

uint64_t type metadata completion function for PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for WindowedPaginationParameters();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallHistoryPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t outlined init with copy of SingleResultVoicemailModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction()
{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_24_1();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v0 + v9);
  v14 = v0[4];
  v15 = *(v0 + v10);
  v16 = *(v0 + v10 + 8);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(v4, v11, v12, v14, v0 + v7, v16, v13, v15);
}

uint64_t OUTLINED_FUNCTION_40_25()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_60_14()
{

  return AceServiceInvokerAsync.submitAndForget(_:)();
}

uint64_t OUTLINED_FUNCTION_64_12()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
}

uint64_t OUTLINED_FUNCTION_70_7()
{
}

void OUTLINED_FUNCTION_72_8()
{
  v2 = *(v0 + 488);
}

id ReadCallHistoryResultSetFlowProvider.bundle.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t ReadCallHistoryResultSetFlowProvider.totalItemCount.getter()
{
  OUTLINED_FUNCTION_2_0();
  v1 = (*(v0 + 168))();
  v2 = specialized Array.count.getter(v1);

  return v2;
}

uint64_t key path setter for ReadCallHistoryResultSetFlowProvider.items : ReadCallHistoryResultSetFlowProvider(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t ReadCallHistoryResultSetFlowProvider.items.getter()
{
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
}

uint64_t ReadCallHistoryResultSetFlowProvider.items.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ReadCallHistoryResultSetFlowProvider.__allocating_init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_64();
  ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(v10, a2, a3, a4, a5);
  return v5;
}

void *ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v61 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[37] = type metadata accessor for ReadCallHistoryResultSetFlowProvider();
  v6[38] = &outlined read-only object #0 of ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:);
  v6[39] = 0;
  v6[40] = 0;
  v6[11] = a1;
  v6[8] = a2;
  v6[9] = a3;
  v57 = a4;
  outlined init with copy of SignalProviding(a4, (v6 + 3));
  v56 = a5;
  outlined init with copy of SearchCallHistorySharedGlobals(a5, (v6 + 12));
  v17 = a3;

  v18 = a2;
  v55 = a1;
  v19 = App.isFirstParty()();
  v53 = v6;
  v58 = v17;
  if (v19)
  {
    v20 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(v18, v17);

    v21 = v17;
    goto LABEL_8;
  }

  v22 = [v18 recipient];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for PhonePerson(0);
    v24 = v23;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v62, v64);
    OUTLINED_FUNCTION_64();
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(&v62);
    v25 = static PhonePerson.make(phonePerson:options:locale:)(v23, 0, v16);

    (*(v13 + 8))(v16, v61);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v20 = swift_allocObject();
      *(v20 + 1) = xmmword_426260;
      v20[4] = v25;

      v21 = v58;
      v6 = v53;
      goto LABEL_8;
    }

    v6 = v53;
  }

  v21 = v58;

  v20 = _swiftEmptyArrayStorage;
LABEL_8:
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v26 = PhonePersonList.__allocating_init(list:)(v20);
  v54 = v18;
  v6[10] = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v54, v26);
  v27 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(v21);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = specialized Array.count.getter(v28);
  if (v29)
  {
    v30 = v29;
    v65 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v30 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v59 = v28 & 0xC000000000000001;
    v60 = v28;
    v33 = (v13 + 8);
    do
    {
      if (v59)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v28 + 8 * v32 + 32);
      }

      v35 = v34;
      ++v32;
      type metadata accessor for AppInfoBuilder();
      v36 = swift_allocObject();
      static Device.current.getter();
      v37 = __swift_project_boxed_opaque_existential_1(&v62, v64);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(&v62);
      _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v35, 1, v36, v16);
      v38 = OUTLINED_FUNCTION_88();
      type metadata accessor for PhoneCallRecord(v38);
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      PhoneCallRecord.init(builder:)(v37);

      (*v33)(v16, v61);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v28 = v60;
    }

    while (v30 != v32);

    v39 = v65;
    v6 = v53;
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  v6[2] = v39;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.siriPhone);
  OUTLINED_FUNCTION_64();
  swift_retain_n();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v44 = swift_slowAlloc();
    v65 = v44;
    *v43 = 136315394;
    v45 = v6;
    v46 = v6[39];
    v47 = v6[40];
    v62 = 0;
    v63 = 0xE000000000000000;

    v48 = OUTLINED_FUNCTION_72();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v48, v49, v46, v47);
    v6 = v45;

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v65);

    *(v43 + 4) = v50;
    *(v43 + 12) = 1024;
    v51 = specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);

    *(v43 + 14) = v51 & 1;

    _os_log_impl(&dword_0, v41, v42, "%s initiated, isMissedCall:%{BOOL}d", v43, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  outlined destroy of SearchCallHistorySharedGlobals(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v6;
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[38] = v0;
  v2 = type metadata accessor for PhoneError(0);
  v1[39] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[40] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for SpeakableString();
  v1[41] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[42] = v4;
  v1[43] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeSingleItemFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_3();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_86_2();
  a24 = v26;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v31 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v32 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    v33 = swift_slowAlloc();
    a12 = v33;
    a13 = 0;
    v34 = OUTLINED_FUNCTION_11_51(4.8149e-34);
    a14 = v35;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v34, v36, v37, v38);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a13, a14, &a12);
    OUTLINED_FUNCTION_63_1();
    *(v32 + 4) = v27;
    OUTLINED_FUNCTION_12(&dword_0, v39, v40, "%s there is only one item in the result set. Rendering single result.");
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_2_0();
  v42 = (*(v41 + 168))();
  if (specialized Array.count.getter(v42))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v42 & 0xC000000000000001) == 0, v42);
    if ((v42 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v43 = v26[38];

    v44 = [*(v43 + 72) callRecords];
    if (v44)
    {
      v45 = v44;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    if (specialized Array.count.getter(v46))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v46 + 32);
      }

      v49 = v26[42];
      v48 = v26[43];
      v75 = v47;
      v76 = v26[41];
      v77 = v26[40];
      v50 = v26[38];

      v51 = v50[7];
      __swift_project_boxed_opaque_existential_1(v50 + 3, v50[6]);
      v52 = OUTLINED_FUNCTION_5();
      v53(v52, v51);
      static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v26 + 27);
      __swift_destroy_boxed_opaque_existential_1(v26 + 27);
      String.toSpeakableString.getter();

      v54 = v50[8];
      outlined init with copy of SignalProviding((v50 + 3), (v26 + 32));
      outlined init with copy of SearchCallHistorySharedGlobals((v50 + 12), (v26 + 2));
      type metadata accessor for SingleCallResultFlow();
      swift_allocObject();
      v26[37] = SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)();
      lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, 255, type metadata accessor for SingleCallResultFlow, &protocol conformance descriptor for SingleCallResultFlow);

      v55 = v54;

      Flow.eraseToAnyFlow()();

      (*(v49 + 8))(v48, v76);

      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_6();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, v75, v76, v77, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  v65 = v26[40];
  *v65 = 0xD000000000000024;
  v65[1] = 0x8000000000442A10;
  v65[2] = 0xD00000000000001CLL;
  v65[3] = 0x80000000004607A0;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v66);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v65, type metadata accessor for PhoneError);
  swift_willThrow();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46_6();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v0;
  v2 = type metadata accessor for Locale();
  v1[20] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[21] = v3;
  v1[22] = OUTLINED_FUNCTION_45();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[23] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
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
  *(v5 + 208) = v0;

  if (v0)
  {
    v9 = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  }

  else
  {
    *(v5 + 216) = v3;
    v9 = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[19];
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v4 = OUTLINED_FUNCTION_3_13();
  v5(v4);
  v6 = v0[5];
  v7 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[16] = v6;
  v0[17] = v7;
  __swift_allocate_boxed_opaque_existential_1(v0 + 13);
  OUTLINED_FUNCTION_40();
  (*(v8 + 16))();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v1;
  type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  v10 = v1;
  v11 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[18] = v11;
  Flow.eraseToAnyFlow()();

  outlined destroy of SpeakableString?(v2);

  v12 = OUTLINED_FUNCTION_2_8();

  return v13(v12);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 184);

  outlined destroy of SpeakableString?(v1);

  OUTLINED_FUNCTION_11();

  return v2();
}

void ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_86_2();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v4 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    v5 = swift_slowAlloc();
    v34 = v5;
    v6 = OUTLINED_FUNCTION_11_51(4.8149e-34);
    v33 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v33, &v34);
    OUTLINED_FUNCTION_63_1();
    *(v4 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s can't find any call record");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v32 = v0[20];
  v16 = v15[15];
  v17 = v15[16];
  __swift_project_boxed_opaque_existential_1(v15 + 12, v16);
  v18 = v15[11];
  v19 = v15[6];
  v20 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v19);
  (*(v20 + 8))(v19, v20);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v17 + 16))(v18, v13, v16, v17);
  v22 = v21;
  (*(v14 + 8))(v13, v32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  if (v22)
  {
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v0[23];
  v25 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v24, v23, 1, v25);
  type metadata accessor for SirikitDeviceState();
  v26 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v15[6]);
  v27 = OUTLINED_FUNCTION_11_0();
  v28(v27, v26);
  v0[24] = SirikitDeviceState.__allocating_init(from:)();
  App.isFirstParty()();
  specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  OUTLINED_FUNCTION_24_5();
  v29 = swift_task_alloc();
  v0[25] = v29;
  *v29 = v0;
  v29[1] = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_46_6();

  __asm { BRAA            X8, X16 }
}

uint64_t closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for DialogPhase();
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

uint64_t closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = v2[25];
  v4 = v2[26];
  __swift_project_boxed_opaque_existential_1(v2 + 22, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v1;
  v6 = v1;
  static DialogPhase.completion.getter();
  v7 = swift_task_alloc();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  v12 = v0[8];
  v13 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v5, v12, v3, v4, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_8_1();

  return v7();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[257] = v0;
  v2 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[258] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[259] = v3;
  v1[260] = *(v4 + 64);
  v1[261] = swift_task_alloc();
  v1[262] = swift_task_alloc();
  v5 = type metadata accessor for SearchCallHistoryModel(0);
  v1[263] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[264] = v6;
  v1[265] = *(v7 + 64);
  v1[266] = swift_task_alloc();
  v1[267] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[268] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[269] = v9;
  v1[270] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v10);
  v1[271] = v11;
  v1[272] = *(v12 + 64);
  v1[273] = swift_task_alloc();
  v1[274] = swift_task_alloc();
  v1[275] = swift_task_alloc();
  v13 = type metadata accessor for SpeakableString();
  v1[276] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[277] = v14;
  v1[278] = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 2272) = v6;
  *(v7 + 2280) = v0;

  if (v0)
  {
    v8 = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v8 = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v29 = v0[280];
  v1 = v0[279];
  v2 = v0[270];
  v28 = v0[268];
  v3 = v0[257];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v4 = OUTLINED_FUNCTION_3_13();
  v5(v4);
  v6 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v1, 0, v0 + 193);
  v0[286] = v6;
  __swift_destroy_boxed_opaque_existential_1(v0 + 193);

  swift_asyncLet_begin();
  v7 = v3[15];
  v8 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v7);
  v10 = v3[6];
  v9 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v10);
  (*(v9 + 8))(v10, v9);
  __swift_project_boxed_opaque_existential_1(v0 + 183, v0[186]);
  OUTLINED_FUNCTION_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v8 + 16))(v6, v2, v7, v8);
  v12 = v11;
  v29(v2, v28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 183);
  if (v12)
  {
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v0[273];
  v15 = v0[271];
  v16 = v0[257];
  __swift_storeEnumTagSinglePayload(v0[274], v13, 1, v0[276]);
  v17 = OUTLINED_FUNCTION_92();
  outlined init with copy of SpeakableString?(v17, v18);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v0[287] = v20;
  *(v20 + 16) = v16;
  outlined init with take of SpeakableString?(v14, v20 + v19);

  swift_asyncLet_begin();
  v0[253] = SpeakableString.print.getter();
  v0[254] = v21;
  v0[288] = v21;
  v22 = (*(*v16 + 168))();
  static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(v22);
  v0[289] = v23;

  v24 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_get_throwing(v24, v25, v26, v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[290] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
  }

  else
  {
    v1[291] = v1[243];
    v1[292] = v1[244];

    v2 = OUTLINED_FUNCTION_26_29();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 198);
  }
}

{
  v1[293] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
  }

  v1[294] = v1[253];
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  v30 = *(v0 + 2328);
  v31 = *(v0 + 2336);
  v28 = *(v0 + 2312);
  v25 = *(v0 + 2304);
  v26 = *(v0 + 2352);
  v38 = *(v0 + 2272);
  v1 = *(v0 + 2136);
  v35 = *(v0 + 2128);
  v37 = *(v0 + 2112);
  v36 = *(v0 + 2080);
  v33 = *(v0 + 2088);
  v34 = *(v0 + 2072);
  v32 = *(v0 + 2096);
  v2 = *(v0 + 2056);
  v29 = *(v0 + 1960);
  v27 = *(v0 + 1968);
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  v5 = *(v4 + 8);

  v5(v3, v4);
  __swift_project_boxed_opaque_existential_1((v0 + 1624), *(v0 + 1648));
  OUTLINED_FUNCTION_64();
  LOBYTE(v4) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1624));
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7, v6);
  __swift_project_boxed_opaque_existential_1((v0 + 1704), *(v0 + 1728));
  OUTLINED_FUNCTION_3_13();
  LOBYTE(v3) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1704));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v9);
  *v1 = 0xD000000000000011;
  v1[1] = 0x8000000000456CD0;
  *(v0 + 1976) = v26;
  *(v0 + 1984) = v25;
  Loggable.init(wrappedValue:)();
  *(v0 + 2040) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  Loggable.init(wrappedValue:)();
  *(v0 + 1992) = v30;
  *(v0 + 2000) = v31;
  Loggable.init(wrappedValue:)();
  *(v0 + 2008) = v29;
  *(v0 + 2016) = v27;
  Loggable.init(wrappedValue:)();
  *(v0 + 2368) = (v4 & 1) == 0;
  Loggable.init(wrappedValue:)();
  *(v0 + 2369) = (v3 & 1) == 0;
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  outlined init with copy of SearchCallHistoryModel(v1, v32);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v10 = OUTLINED_FUNCTION_3_13();
  v11(v10);
  v12 = *(v0 + 1360);
  v13 = *(v0 + 1376);
  __swift_project_boxed_opaque_existential_1((v0 + 1336), v12);
  *(v0 + 1888) = v12;
  *(v0 + 1896) = v13;
  __swift_allocate_boxed_opaque_existential_1((v0 + 1864));
  OUTLINED_FUNCTION_40();
  (*(v14 + 16))();
  OUTLINED_FUNCTION_21_36();
  outlined init with copy of SearchCallHistoryModel(v32, v33);
  outlined init with copy of SearchCallHistoryModel(v1, v35);
  v15 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v16 = (v36 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v37 + 80) + v16 + 8) & ~*(v37 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  outlined init with take of PhoneSnippetDataModels(v33, v18 + v15);
  *(v18 + v16) = v38;
  outlined init with take of PhoneSnippetDataModels(v35, v18 + v17);
  type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  v19 = v38;
  v20 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
  *(v0 + 2048) = v20;
  *(v0 + 2360) = Flow.eraseToAnyFlow()();

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v32, type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v1, type metadata accessor for SearchCallHistoryModel);
  v21 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v21, v22, v23, v0 + 1824);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1904);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1504);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1744);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

void ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_86_2();
  v1 = v0[270];
  v2 = v0[269];
  v31 = v0[268];
  v3 = v0[257];
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
  (*(v5 + 8))(v4, v5);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 173);
  __swift_destroy_boxed_opaque_existential_1(v0 + 173);
  String.toSpeakableString.getter();

  v6 = v3[15];
  v7 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v6);
  v8 = v3[11];
  v0[279] = v8;
  v10 = v3[6];
  v9 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v10);
  (*(v9 + 8))(v10, v9);
  __swift_project_boxed_opaque_existential_1(v0 + 223, v0[226]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v7 + 16))(v8, v1, v6, v7);
  v12 = v11;
  v13 = *(v2 + 8);
  v0[280] = v13;
  v0[281] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 223);
  if (v12)
  {
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0[275], v14, 1, v0[276]);
  type metadata accessor for SirikitDeviceState();
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v15 = OUTLINED_FUNCTION_92();
  v16(v15);
  v0[282] = SirikitDeviceState.__allocating_init(from:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[257];
  if (v20)
  {
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v21[37], v21[38], v21[39], v21[40]);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v32);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2048;
    v26 = (*(*v21 + 168))(v25);
    v27 = specialized Array.count.getter(v26);

    *(v22 + 14) = v27;

    _os_log_impl(&dword_0, v18, v19, "%s show all results there are %ld items in the result set. Rendering multiple results with SMART UI on.", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  INSearchCallHistoryIntentResponse.callRecordsCount.getter();
  INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();

  App.isFirstParty()();
  specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  OUTLINED_FUNCTION_24_5();
  v28 = swift_task_alloc();
  v0[283] = v28;
  *v28 = v0;
  v28[1] = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_46_6();

  __asm { BRAA            X8, X16 }
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v19 = *(v18 + 2224);
  v20 = *(v18 + 2216);
  v21 = *(v18 + 2208);
  v22 = *(v18 + 2200);
  v32 = *(v18 + 2184);
  v33 = *(v18 + 2160);
  v34 = *(v18 + 2136);
  v35 = *(v18 + 2128);
  v36 = *(v18 + 2096);
  v37 = *(v18 + 2088);

  outlined destroy of SpeakableString?(v22);
  (*(v20 + 8))(v19, v21);

  OUTLINED_FUNCTION_46_6();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, a16, a17, a18);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[278];
  v14 = v12[277];
  v15 = v12[276];
  v16 = v12[275];

  outlined destroy of SpeakableString?(v16);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_30_32();

  outlined destroy of SpeakableString?(v14);
  (*(v15 + 8))(v12, v13);

  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_30_32();

  outlined destroy of SpeakableString?(v14);
  (*(v15 + 8))(v12, v13);

  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();

  return v4();
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
    *(v5 + 40) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  *(v0 + 48) = 1;
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v3 = *(v0 + 32);

  return v5(v3);
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
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  type metadata accessor for DialogPhase();
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[8] + 176), *(v0[8] + 200));
  v4 = OUTLINED_FUNCTION_88();
  v0[5] = type metadata accessor for PhoneSnippetDataModels(v4);
  v0[6] = lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_21_36();
  outlined init with copy of SearchCallHistoryModel(v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v3;
  v8 = *v1;
  v7 = v1[1];
  v9 = v3;
  static DialogPhase.completion.getter();
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_92();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  OUTLINED_FUNCTION_8_1();

  return v8();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin0gH6RecordCGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin0gH6RecordCGGMR);
  OUTLINED_FUNCTION_21(v3);
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v0[2] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  type metadata accessor for ReadCallHistoryResultSetFlowProvider();
  lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type ReadCallHistoryResultSetFlowProvider and conformance ReadCallHistoryResultSetFlowProvider, v2, type metadata accessor for ReadCallHistoryResultSetFlowProvider, &protocol conformance descriptor for ReadCallHistoryResultSetFlowProvider);
  OUTLINED_FUNCTION_92();
  static PromptFlowProviderType.continuation<A>(_:)();
  WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin0fG6RecordCGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin0fG6RecordCGGMR);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);

  OUTLINED_FUNCTION_8_1();

  return v4();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[40] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[41] = v5;
  v1[42] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[45] = v2;
  v1[46] = v0;
  v1[44] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[47] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[48] = v5;
  v1[49] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ReadCallHistoryResultSetFlowProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 96);

  return v0;
}

uint64_t ReadCallHistoryResultSetFlowProvider.__deallocating_deinit()
{
  ReadCallHistoryResultSetFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v1 = ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v4 = (*(**v0 + 248) + **(**v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v4 = (*(**v0 + 240) + **(**v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v4 = (*(**v0 + 256) + **(**v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 264) + **(**v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(**v2 + 280) + **(**v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v8(a1, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(**v2 + 272) + **(**v2 + 272));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v8(a1, v5);
}

uint64_t partial apply for closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18(v5);
  *v6 = v7;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()(v2, v4, v3);
}

uint64_t partial apply for implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v2, v0);
}

uint64_t partial apply for implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v2, v6, v0 + v5);
}

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_88();
  v5(v4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

{
  v4 = type metadata accessor for SearchCallHistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PhoneSnippetDataModels(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_88();
  v5(v4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t partial apply for closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for PhoneSnippetDataModels(0);
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for SearchCallHistoryModel(0);
  OUTLINED_FUNCTION_21(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v0 + 16);
  v14 = *(v0 + v9);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v4, v13, v0 + v7, v14, v0 + v12);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t key path setter for ReadCallRecordAction.nextAction : ReadCallRecordAction(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 136);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ReadCallRecordAction.paginatedCallRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ReadCallRecordAction.__allocating_init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)()
{
  OUTLINED_FUNCTION_7_8();
  v0 = swift_allocObject();
  ReadCallRecordAction.init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)();
  return v0;
}

char *ReadCallRecordAction.init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)()
{
  OUTLINED_FUNCTION_7_8();
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xD000000000000014;
  *(v1 + 5) = 0x8000000000442C60;
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(&v1[v5], v4);
  *&v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_intent] = v3;
  outlined init with take of SPHConversation(v2, &v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker]);
  *&v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_searchCallHistoryCatFamily] = v0;
  return v1;
}

uint64_t ReadCallRecordAction.run(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *(*v2 + 168);

  v6(partial apply for closure #1 in ReadCallRecordAction.run(_:), v5);
}

uint64_t closure #1 in ReadCallRecordAction.run(_:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return a3(a1);
  }

  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker), *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker + 24));
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

  dispatch thunk of AceServiceInvoker.submit<A>(_:completion:)();
}

uint64_t closure #1 in closure #1 in ReadCallRecordAction.run(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SubmitCommandError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v6, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    lazy protocol witness table accessor for type ReadCallRecordAction and conformance ReadCallRecordAction(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
    v11 = swift_allocError();
    (*(v8 + 16))(v12, v10, v7);
    a2(v11);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of Result<SABaseCommand, SubmitCommandError>(v6);
    return (a2)(0);
  }
}

uint64_t ReadCallRecordAction.makeSummaryView(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v17 = type metadata accessor for Locale();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_searchCallHistoryCatFamily);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v6 = v21[5];
  type metadata accessor for AppInfoBuilder();
  v7 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v8 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v6, 0, v7, v5);
  type metadata accessor for PhoneCallRecord(0);
  swift_allocObject();
  v9 = PhoneCallRecord.init(builder:)(v8);

  (*(v3 + 8))(v5, v17);
  ItemIn = PaginatedItem.isLastItemInPage.getter();
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v11 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(*(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_intent));
  INSearchCallHistoryIntent.isSingleDateRequest.getter();
  LOBYTE(v7) = v12;
  LOBYTE(v8) = INSearchCallHistoryIntent.isTimeRangeRequest.getter();
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 16) = v19;
  *(v13 + 24) = v20;
  v15 = *(*v14 + class metadata base offset for SearchCallHistoryCATs + 544);

  v15(v9, ItemIn & 1, v11, v7 & 1, v8 & 1, partial apply for closure #1 in ReadCallRecordAction.makeSummaryView(_:), v13);
}

uint64_t closure #1 in ReadCallRecordAction.makeSummaryView(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = (&v14 - v9);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v14 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    swift_errorRetain();
    a2(v11, 1);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for ViewFactory();
    swift_allocObject();
    ViewFactory.init(ttsEnabled:)();
    v13 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();

    a2(v13, 0);

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ReadCallRecordAction.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker));
  return v0;
}

uint64_t ReadCallRecordAction.__deallocating_deinit()
{
  ReadCallRecordAction.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for StaticAction.nextAction.modify in conformance ReadCallRecordAction(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t type metadata accessor for ReadCallRecordAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for ReadCallRecordAction;
  if (!type metadata singleton initialization cache for ReadCallRecordAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ReadCallRecordAction(uint64_t a1)
{
  type metadata accessor for PaginatedItem<INCallRecord>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PaginatedItem<INCallRecord>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PaginatedItem<INCallRecord>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v1 = type metadata accessor for PaginatedItem();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PaginatedItem<INCallRecord>);
    }
  }
}

uint64_t outlined destroy of Result<SABaseCommand, SubmitCommandError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ReadCallRecordAction and conformance ReadCallRecordAction(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5()
{
  v76 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_16_2();
  v75 = v1;
  __chkstk_darwin(v2);
  v74 = (v67 - v3);
  type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v77 = v5;
  v78 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v6);
  v8 = v67 - v7;
  type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7();
  v79 = v10;
  v80 = v9;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  v81 = v67 - v12;
  v69 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v68 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v15);
  v17 = v67 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v19 = OUTLINED_FUNCTION_21(v18);
  __chkstk_darwin(v19);
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  __chkstk_darwin(v23);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v30 = OUTLINED_FUNCTION_21(v29);
  __chkstk_darwin(v30);
  v32 = v67 - v31;
  type metadata accessor for UsoTaskBuilder_summarise_common_PhoneCall();
  swift_allocObject();
  v33 = UsoTaskBuilder_summarise_common_PhoneCall.init()();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = OUTLINED_FUNCTION_48_0(v34);
  *(v35 + 16) = xmmword_426260;
  *(v35 + 32) = v33;
  v36 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  v72 = v33;

  v37 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v71 = v37;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v73 = v28;
  v74 = v22;
  v38 = v22[2];
  v75 = v20;
  (v38)(v25, v28, v20);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  v39 = v68;
  v40 = *(v68 + 16);
  v76 = v17;
  v41 = v69;
  v40(v67[1], v17, v69);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v43 = v79;
  v42 = v80;
  v44 = OUTLINED_FUNCTION_19_0();
  v45(v44);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.siriPhone);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v77;
  v51 = v78;
  if (v49)
  {
    v52 = OUTLINED_FUNCTION_42();
    v70 = swift_slowAlloc();
    v82[0] = v70;
    *v52 = 136315138;
    swift_beginAccess();
    v53 = v67[0];
    (*(v50 + 16))(v67[0], v8, v51);
    v54 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v53);
    v56 = v39;
    v57 = v8;
    v58 = v51;
    v59 = v41;
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v82);

    *(v52 + 4) = v60;
    v41 = v59;
    v51 = v58;
    v8 = v57;
    v39 = v56;
    _os_log_impl(&dword_0, v47, v48, "#PhoneCallNLContextProvider Returning SystemOffered for offer read record confirmation: %s", v52, 0xCu);
    v61 = v70;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v43 = v79;
    OUTLINED_FUNCTION_26_0(v61);
    v62 = v52;
    v42 = v80;
    OUTLINED_FUNCTION_26_0(v62);
  }

  v63 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v64 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v50 + 16))(v65 + v64, v8, v51);

  (*(v43 + 8))(v81, v42);
  (*(v39 + 8))(v63, v41);
  v74[1](v73, v75);
  (*(v50 + 8))(v8, v51);
  return v65;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.__allocating_init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v17 = swift_allocObject();
  ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(a1, a2, a3, a4, a5, a6, a7, v9, a9);
  return v17;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v17 = (v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
  *v17 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy(0);
  v17[1] = &outlined read-only object #0 of ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:);
  v17[2] = 0;
  v17[3] = 0;
  *(v9 + 144) = a1;
  *(v9 + 152) = a8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 160) = a4;
  outlined init with copy of SignalProviding(a5, v9 + 104);
  *(v9 + 16) = a6;
  type metadata accessor for YesNoConfirmationParser();
  v18 = swift_allocObject();
  *(v18 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(a5, v18 + 24);
  *(v9 + 96) = v18;
  outlined init with copy of SearchCallHistorySharedGlobals(a9, v9 + 168);
  v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_windowParam;
  type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1();
  (*(v20 + 32))(v9 + v19, a7);
  outlined init with copy of SignalProviding(a9, v9 + 40);
  v21 = *(a9 + 192);
  *(v9 + 80) = *(a9 + 184);

  outlined destroy of SearchCallHistorySharedGlobals(a9);
  *(v9 + 88) = v21;
  return v9;
}

uint64_t type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ReadCallRecordsYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for ReadCallRecordsYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 128))(a1);
  v7 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:));
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_24_1();
  v19 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_83();
    v17 = 0;
    *v1 = 136315138;
    v5 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v18 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s makePromptForConfirmation");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0(v1);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v13;
  *v13 = v14;
  v13[1] = DialogOutputFactory.makeOutput();

  return ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_39_4();
  v23 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_83();
    v21 = 0;
    *v1 = 136315138;
    v5 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v22 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v20);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s makeConfirmationRejectedResponse");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0(v1);
  }

  v13 = v0[8];
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v13 + 104, (v0 + 2));
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v14 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v14;
  v19 = (*(*v14 + 136) + **(*v14 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v15;
  *v15 = v16;
  v15[1] = ReadCallRecordsYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
  v17 = v0[7];

  return v19(v17);
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

    return _swift_task_switch(CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v7();
  }
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse());
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  OUTLINED_FUNCTION_24_1();
  v19 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_83();
    v17 = 0;
    *v1 = 136315138;
    v5 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v18 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s makePromptForYesNoResponse");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0(v1);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v13;
  *v13 = v14;
  v13[1] = ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[9];
  v1 = v0[10];
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 128))();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v1, v2, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) != 1)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0[9], v0[8], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v5 = *(v4 - 8);
    v6 = OUTLINED_FUNCTION_19_0();
    v8 = v7(v6);
    if (v8 == enum case for ConfirmationResponse.confirmed(_:) || v8 == enum case for ConfirmationResponse.rejected(_:))
    {
      v10 = v0[9];
      v11 = v0[7];
      (*(v5 + 104))(v11, v8, v4);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v4);
      SimpleConfirmationResponseProvider.init(_:)();
      v12 = OUTLINED_FUNCTION_19_0();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, v13, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

      OUTLINED_FUNCTION_8_1();
      goto LABEL_9;
    }

    (*(v5 + 8))(v0[8], v4);
  }

  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[6];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_31();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(v18, v19, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v20);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v17, type metadata accessor for PhoneError);
  swift_willThrow();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

  OUTLINED_FUNCTION_11();
LABEL_9:

  return v14();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  v1[471] = v0;
  v1[465] = v2;
  v3 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[477] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[483] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for SearchCallHistoryModel(0);
  v1[489] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[495] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Locale();
  v1[501] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[507] = v6;
  v1[513] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v7);
  v1[519] = v8;
  v1[525] = *(v9 + 64);
  v1[531] = swift_task_alloc();
  v1[537] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[543] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[549] = v11;
  v1[555] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for SpeakableString();
  v1[561] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[567] = v13;
  v1[568] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  v77 = v0;
  v1 = *(v0 + 3768);
  outlined init with copy of SignalProviding((v1 + 21), v0 + 3256);
  outlined init with copy of SignalProviding((v1 + 31), v0 + 3016);
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  v4 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, (v0 + 2936));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2936));
  String.toSpeakableString.getter();

  v5 = v1[2];
  if (specialized Array.count.getter(v5))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = OUTLINED_FUNCTION_48_0(v6);
    OUTLINED_FUNCTION_27_29(v7, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v8, v5);
    if (v4)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v7[2].n128_u64[0] = v9;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (specialized Array.count.getter(v5) < 2)
  {
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = OUTLINED_FUNCTION_48_0(v10);
    OUTLINED_FUNCTION_27_29(v11, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v12, v5);
    if (v4)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v11[2].n128_u64[0] = v13;
  }

  if (specialized Array.count.getter(v5) <= 2)
  {
    v15 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = OUTLINED_FUNCTION_48_0(v14);
    OUTLINED_FUNCTION_27_29(v15, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v16, v5);
    if (v4)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v15[2].n128_u64[0] = v17;
  }

  v71 = v15;
  if (specialized Array.count.getter(v5) < 4)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_48_0(v18);
    OUTLINED_FUNCTION_27_29(v19, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(3, v20, v5);
    if (v4)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v19[2].n128_u64[0] = v21;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v73 = v1;
  v70 = v5;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_42();
    v26 = swift_slowAlloc();
    v74 = v26;
    v75 = 0;
    *v25 = 136315138;
    v27 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v76 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    v32 = v11;
    v33 = v7;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v74);

    *(v25 + 4) = v34;
    v7 = v33;
    v11 = v32;
    _os_log_impl(&dword_0, v23, v24, "%s execute readMultipleCallRecords with SMART UI on", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_26_0(v26);
    v35 = v25;
    v1 = v73;
    OUTLINED_FUNCTION_26_0(v35);
  }

  v36 = *(v0 + 3768);
  v37 = swift_allocObject();
  *(v0 + 4552) = v37;
  v37[2] = v36;
  v37[3] = v7;
  v37[4] = v11;
  v37[5] = v71;
  v37[6] = v19;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  v38 = OUTLINED_FUNCTION_7_1();
  v39(v38);
  __swift_project_boxed_opaque_existential_1((v0 + 2616), *(v0 + 2640));
  OUTLINED_FUNCTION_7_1();
  LOBYTE(v36) = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
  if (v36)
  {
    v40 = *(v0 + 3040);
    *(v0 + 4560) = v40;
    *(v0 + 4576) = __swift_project_boxed_opaque_existential_1((v0 + 3016), v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    *(v0 + 4584) = v41;
    v42 = OUTLINED_FUNCTION_48_0(v41);
    *(v0 + 4592) = v42;
    *(v42 + 16) = xmmword_426260;
    v43 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
    v44 = v0 + 16;
    v45 = v0 + 3672;
    v46 = v0 + 3776;
  }

  else
  {
    v47 = *(v0 + 4104);
    v48 = *(v0 + 4056);
    v72 = *(v0 + 4008);
    v49 = *(*(v0 + 3768) + 144);
    v50 = v1[16];
    v51 = v1[17];
    __swift_project_boxed_opaque_existential_1(v1 + 13, v50);
    (*(v51 + 8))(v50, v51);
    v52 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v49, 0, (v0 + 2696));
    *(v0 + 4640) = v52;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
    v53 = *(v0 + 3280);
    v54 = *(v0 + 3288);
    __swift_project_boxed_opaque_existential_1((v0 + 3256), v53);
    v55 = v1;
    v56 = v1[16];
    v57 = v55[17];
    __swift_project_boxed_opaque_existential_1(v55 + 13, v56);
    (*(v57 + 8))(v56, v57);
    __swift_project_boxed_opaque_existential_1((v0 + 2776), *(v0 + 2800));
    OUTLINED_FUNCTION_11_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v54 + 16))(v52, v47, v53, v54);
    v59 = v58;
    (*(v48 + 8))(v47, v72);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2776));
    if (v59)
    {
      SpeakableString.init(print:speak:)();
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    v61 = *(v0 + 4296);
    v62 = *(v0 + 4248);
    v63 = *(v0 + 4152);
    v64 = *(v0 + 3768);
    __swift_storeEnumTagSinglePayload(v61, v60, 1, *(v0 + 4488));
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v61, v62, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v65 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v66 = swift_allocObject();
    *(v0 + 4648) = v66;
    *(v66 + 16) = v64;
    outlined init with take of SpeakableString?(v62, v66 + v65);

    swift_asyncLet_begin();

    swift_asyncLet_begin();
    *(v0 + 4656) = SpeakableString.print.getter();
    *(v0 + 4664) = v67;
    static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(v70);
    *(v0 + 4672) = v68;
    v44 = OUTLINED_FUNCTION_13_50();
    v46 = v0 + 2896;
  }

  return _swift_asyncLet_get_throwing(v44, v45, v43, v46);
}

{
  *(v1 + 4600) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[459];
  *(v0[574] + 32) = v1;
  inited = swift_initStackObject();
  v0[576] = inited;
  *(inited + 16) = xmmword_426260;
  v3 = v1;
  v4 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_get_throwing(v4, v5, v6, v0 + 562);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 4616) = v0;
  if (v0)
  {

    v2 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v2 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[576];
  v2 = v0[574];
  v3 = v0[447];
  *(v1 + 32) = v3;
  v17 = v2;
  v4 = v3;
  specialized Array.append<A>(contentsOf:)(v1);
  v0[578] = v17;
  v5 = OUTLINED_FUNCTION_2_3();
  ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)(v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[579] = v10;
  *v10 = v11;
  v10[1] = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v12 = v0[571];
  v13 = v0[570];
  v14 = v0[555];
  v15 = v0[465];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v17, v14, v13, v12, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = v4[555];
  v6 = v4[549];
  v7 = v4[543];
  v8 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);

  return _swift_asyncLet_finish(v2 + 1936, v2 + 3576, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v2 + 2736);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1[585] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
  }

  else
  {
    v1[586] = v1[443];
    v1[587] = v1[444];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 445, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v1 + 412);
  }
}

{
  *(v1 + 4704) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  v19 = *(v0 + 4688);
  v20 = *(v0 + 4696);
  v17 = *(v0 + 4672);
  v15 = *(v0 + 4656);
  v16 = *(v0 + 4664);
  v1 = *(v0 + 3960);
  v21 = *(v0 + 3864);
  v22 = *(v0 + 3816);
  v2 = *(v0 + 3768);
  v18 = *(v0 + 3560);
  v3 = *(v0 + 3568);
  v4 = v2[16];
  v5 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v4);
  v6 = *(v5 + 8);

  v6(v4, v5);
  __swift_project_boxed_opaque_existential_1((v0 + 3096), *(v0 + 3120));
  LOBYTE(v4) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3096));
  v7 = v2[16];
  v8 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v7);
  (*(v8 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_1((v0 + 3176), *(v0 + 3200));
  LOBYTE(v7) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3176));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v9);
  *v1 = 0xD000000000000011;
  v1[1] = 0x8000000000456CD0;
  *(v0 + 3528) = v15;
  *(v0 + 3536) = v16;
  Loggable.init(wrappedValue:)();
  *(v0 + 3624) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  Loggable.init(wrappedValue:)();
  *(v0 + 3496) = v19;
  *(v0 + 3504) = v20;
  Loggable.init(wrappedValue:)();
  *(v0 + 3512) = v18;
  *(v0 + 3520) = v3;
  Loggable.init(wrappedValue:)();
  *(v0 + 4792) = (v4 & 1) == 0;
  Loggable.init(wrappedValue:)();
  *(v0 + 4793) = (v7 & 1) == 0;
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(v1, v21, type metadata accessor for SearchCallHistoryModel);
  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 3040);
  *(v0 + 4712) = v10;
  *(v0 + 4728) = __swift_project_boxed_opaque_existential_1((v0 + 3016), v10);
  *(v0 + 3360) = v22;
  *(v0 + 3368) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3336));
  _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(v21, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  *(v0 + 4736) = v12;
  v13 = OUTLINED_FUNCTION_48_0(v12);
  *(v0 + 4744) = v13;
  *(v13 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3920);
}

{
  *(v1 + 4752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[459];
  *(v0[593] + 32) = v1;
  inited = swift_initStackObject();
  v0[595] = inited;
  *(inited + 16) = xmmword_426260;
  v3 = v1;
  v4 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_get_throwing(v4, v5, v6, v0 + 520);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 4768) = v0;
  if (v0)
  {

    v2 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v2 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[447];
  *(v1 + 32) = v3;
  v12 = v2;
  v4 = v3;
  specialized Array.append<A>(contentsOf:)(v1);
  v0[597] = v12;
  ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)(0xD000000000000011, 0x8000000000456CD0);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[598] = v5;
  *v5 = v6;
  v5[1] = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v7 = v0[590];
  v8 = v0[589];
  v9 = v0[555];
  v10 = v0[465];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v10, v0 + 417, v12, v9, v8, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = v4[555];
  v6 = v4[549];
  v7 = v4[543];
  v8 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1((v2 + 3336));
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 3960);
  OUTLINED_FUNCTION_9_61();
  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v1, v2);
  v3 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 4400);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4448);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 2656);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3872);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 4592) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 3680);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 4608) + 16) = 0;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v1 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 3824);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3728);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 2976);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3056);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 3136);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3216);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 3376);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3456);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 3584);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3632);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[593];
  v2 = v0[495];
  OUTLINED_FUNCTION_9_61();
  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 417);
  v4 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 496);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 4016);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 4064);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4112);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[595];
  v2 = v0[495];
  OUTLINED_FUNCTION_9_61();
  *(v1 + 16) = 0;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 417);
  v4 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 526);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4256);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 4304);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4352);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  (*(v12[567] + 8))(v12[568], v12[561]);
  OUTLINED_FUNCTION_34_20();

  v13 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v13, v14);
  v15 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v15, v16);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[581];
  v14 = v12[471];
  v26 = v12[483];
  (*(v12[567] + 8))(v12[568], v12[561]);
  OUTLINED_FUNCTION_34_20();

  v15 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v15, v13);
  v16 = OUTLINED_FUNCTION_2_97();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16, v14);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v12 = OUTLINED_FUNCTION_21_37();
  v13(v12);
  OUTLINED_FUNCTION_34_20();

  v14 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v14, v15);
  v16 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16, v17);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v12 = OUTLINED_FUNCTION_21_37();
  v13(v12);
  OUTLINED_FUNCTION_34_20();

  v14 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v14, v15);
  v16 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16, v17);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = OUTLINED_FUNCTION_4_70();
  v16(v15);
  OUTLINED_FUNCTION_29_27();

  v17 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17, v14);
  v18 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v18);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = OUTLINED_FUNCTION_4_70();
  v16(v15);
  OUTLINED_FUNCTION_29_27();

  v17 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17, v14);
  v18 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v18);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = OUTLINED_FUNCTION_4_70();
  v16(v15);
  OUTLINED_FUNCTION_29_27();

  v17 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17, v14);
  v18 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v18);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = OUTLINED_FUNCTION_4_70();
  v16(v15);
  OUTLINED_FUNCTION_29_27();

  v17 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17, v14);
  v18 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v18);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

void implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 24);
  v2 = *(v1 + 80);
  specialized Array.count.getter(*(v1 + 16));
  v5 = *(*v2 + class metadata base offset for SearchCallHistoryCATsSimple + 304) + **(*v2 + class metadata base offset for SearchCallHistoryCATsSimple + 304);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();

  __asm { BRAA            X8, X16 }
}

uint64_t implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 72) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  return OUTLINED_FUNCTION_13_0(*(v0 + 72));
}

uint64_t implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 80);
  v2 = WindowedPaginationParameters.isLastWindow.getter();
  v6 = (*(*v1 + class metadata base offset for SearchCallHistoryCATsSimple + 192) + **(*v1 + class metadata base offset for SearchCallHistoryCATsSimple + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v3;
  *v3 = v4;
  v3[1] = implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();

  return v6(v2 & 1);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  return OUTLINED_FUNCTION_13_0(*(v0 + 40));
}

uint64_t implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v5 = (*(v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248) + **(v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v3 = *(v0 + 32);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 48) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v1 + class metadata base offset for SearchCallHistoryCATsSimple + 568) + **(v1 + class metadata base offset for SearchCallHistoryCATsSimple + 568));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DialogPhase();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  static DialogPhase.confirmation.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();
  WindowedPaginationParameters.isLastWindow.getter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 168);
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_windowParam;
  type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.__deallocating_deinit()
{
  ReadCallRecordsYesNoPromptFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 232) + **(*v2 + 232));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy(0);
  v5 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type ReadCallRecordsYesNoPromptFlowStrategy and conformance ReadCallRecordsYesNoPromptFlowStrategy, type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy, &protocol conformance descriptor for ReadCallRecordsYesNoPromptFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v4, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy(0);
  v5 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type ReadCallRecordsYesNoPromptFlowStrategy and conformance ReadCallRecordsYesNoPromptFlowStrategy, type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy, &protocol conformance descriptor for ReadCallRecordsYesNoPromptFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v4, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t type metadata completion function for ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for WindowedPaginationParameters();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_3(v7);

  return implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v9, v2, v3, v4, v5, v6);
}

uint64_t partial apply for implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v4, v0);
}

uint64_t partial apply for implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v3, v7, v0 + v6);
}

uint64_t partial apply for implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v4, v0);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  v4 = OUTLINED_FUNCTION_19_0();
  v5(v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29_27()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3016));
  __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
}

uint64_t OUTLINED_FUNCTION_54_22()
{
}

uint64_t OUTLINED_FUNCTION_55_19(uint64_t a1)
{
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(a1, v1);
}

PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional __swiftcall ReaderNLConstants.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ReaderNLConstants.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t ReaderNLConstants.rawValue.getter(char a1)
{
  result = 0x726564616572;
  switch(a1)
  {
    case 1:
      result = 0x6973734169726953;
      break;
    case 2:
      result = 0x6E6F69746361;
      break;
    case 3:
      result = 0x646E616D6D6F63;
      break;
    case 4:
      result = 0x7463656A627573;
      break;
    case 5:
      result = 0x6556726564616572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReaderNLConstants and conformance ReaderNLConstants()
{
  result = lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants;
  if (!lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants);
  }

  return result;
}