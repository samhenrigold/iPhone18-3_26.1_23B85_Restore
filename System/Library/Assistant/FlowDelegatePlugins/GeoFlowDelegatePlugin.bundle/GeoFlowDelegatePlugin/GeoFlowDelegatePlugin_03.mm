uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock(), 0, 0);
}

{
  v2 = v1[23];
  v3 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "makePromptForDeviceUnlock", 25, 2, &_swiftEmptyArrayStorage);
  v4 = v2[3];
  v1[5] = &type metadata for Common;
  v1[6] = &protocol witness table for Common;
  v1[2] = 1;
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v1[28] = v7;
  v11 = (*(*v4 + 112) + **(*v4 + 112));
  v8 = swift_task_alloc();
  v1[29] = v8;
  *v8 = v1;
  v8[1] = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  v9 = v1[27];

  return v11(v9, v1 + 2, v7);
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock()()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 32))(v7, v8);
  v9 = v6[7];
  v10 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v9);
  (*(v10 + 32))(v9, v10);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = type metadata accessor for AceOutput();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v5[3] = v12;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v5);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 136, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v13 = *(v0 + 8);

  return v13();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t lazy protocol witness table accessor for type TrafficIncidentContinueInAppPunchoutStrategy and conformance TrafficIncidentContinueInAppPunchoutStrategy(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnswerAltitudeFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of AnswerAltitudeFlow.State(v1, *(v0 + 40));
  return v1;
}

uint64_t outlined copy of AnswerAltitudeFlow.State(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t AnswerAltitudeFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  v6 = *(v2 + 40);
  *(v2 + 40) = a2;
  return outlined consume of AnswerAltitudeFlow.State(v5, v6);
}

uint64_t outlined consume of AnswerAltitudeFlow.State(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t AnswerAltitudeFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 48));
  outlined init with take of CATType(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t AnswerAltitudeFlow.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized AnswerAltitudeFlow.init(with:)(v6, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t AnswerAltitudeFlow.init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized AnswerAltitudeFlow.init(with:)(v6, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t AnswerAltitudeFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 160))(v2);
}

uint64_t AnswerAltitudeFlow.onInput(input:)(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + 16), "onInput altitude", 16, 2, &_swiftEmptyArrayStorage);
  return 1;
}

uint64_t AnswerAltitudeFlow.executeState()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.executeState(), 0, 0);
}

uint64_t AnswerAltitudeFlow.executeState()()
{
  v51 = v0;
  v1 = (*(**(v0 + 112) + 112))();
  *(v0 + 120) = v1;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v1;
      v4 = *(v0 + 112);
      v5 = static os_log_type_t.default.getter();
      v6 = *(v4 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v50 = v8;
        *v7 = 136315138;
        *(v0 + 96) = v3;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v50);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "AnswerAltitudeFlow execute request unsupported with err: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      v46 = (*(**(v0 + 112) + 208) + **(**(v0 + 112) + 208));
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = AnswerAltitudeFlow.executeState();
      v13 = *(v0 + 104);

      return v46(v13);
    }

    if (v1 <= 1)
    {
      if (v1)
      {
        v38 = *(v0 + 112);
        v39 = static os_log_type_t.info.getter();
        os_log(_:dso:log:_:_:)(v39, &dword_0, v38[2], "fetch location", 14, 2, &_swiftEmptyArrayStorage);
        v49 = (*(*v38 + 200) + **(*v38 + 200));
        v40 = swift_task_alloc();
        *(v0 + 144) = v40;
        *v40 = v0;
        v40[1] = AnswerAltitudeFlow.executeState();
        v22 = *(v0 + 104);
        v23 = v49;
      }

      else
      {
        v19 = *(v0 + 112);
        v20 = static os_log_type_t.info.getter();
        os_log(_:dso:log:_:_:)(v20, &dword_0, v19[2], "guardFlow check for fetch location", 34, 2, &_swiftEmptyArrayStorage);
        v48 = (*(*v19 + 192) + **(*v19 + 192));
        v21 = swift_task_alloc();
        *(v0 + 136) = v21;
        *v21 = v0;
        v21[1] = AnswerAltitudeFlow.executeState();
        v22 = *(v0 + 104);
        v23 = v48;
      }

      return v23(v22);
    }

    if (v1 == 2)
    {
      v24 = *(v0 + 112);
      v25 = static os_log_type_t.default.getter();
      v26 = *(v24 + 16);
      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v50 = v28;
        *v27 = 136315138;
        *(v0 + 80) = &type metadata for SiriGeoFeature;
        *(v0 + 88) = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
        *(v0 + 56) = 1;
        v29 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
        if (v29)
        {
          v30 = 1702195828;
        }

        else
        {
          v30 = 0x65736C6166;
        }

        if (v29)
        {
          v31 = 0xE400000000000000;
        }

        else
        {
          v31 = 0xE500000000000000;
        }

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v50);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_0, v26, v25, "Should answer altitude use the device's altimeter: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
      }

      *(v0 + 40) = &type metadata for SiriGeoFeature;
      *(v0 + 48) = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
      *(v0 + 16) = 1;
      v33 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      if (v33)
      {
        v34 = [objc_opt_self() isAbsoluteAltitudeAvailable];
        v35 = static os_log_type_t.info.getter();
        v36 = *(v0 + 112);
        if (v34)
        {
          v37 = os_log(_:dso:log:_:_:)(v35, &dword_0, v26, "fetch altitude using altimeter", 30, 2, &_swiftEmptyArrayStorage);
          (*(*v36 + 184))(v37);
LABEL_35:
          v45 = *(v0 + 8);

          return v45();
        }

        os_log(_:dso:log:_:_:)(v35, &dword_0, v26, "Altimeter not available on device, falling back to location based altitude", 74, 2, &_swiftEmptyArrayStorage);
        (*(*v36 + 120))(0, 2);
      }

      else
      {
        v43 = *(v0 + 112);
        v44 = static os_log_type_t.info.getter();
        os_log(_:dso:log:_:_:)(v44, &dword_0, v26, "Altimeter feature flag not enabled, falling back to location based altitude", 75, 2, &_swiftEmptyArrayStorage);
        (*(*v43 + 120))(0, 2);
      }

      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_35;
    }

    v41 = *(v0 + 112);
    v42 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v42, &dword_0, *(v41 + 16), "AnswerAltitudeFlow execute rchComplete", 38, 2, &_swiftEmptyArrayStorage);
    static ExecuteResponse.complete()();
    goto LABEL_35;
  }

  v47 = (*(**(v0 + 112) + 216) + **(**(v0 + 112) + 216));
  v15 = v1;
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = AnswerAltitudeFlow.executeState();
  v17 = *(v0 + 104);
  v18.n128_u64[0] = v15;

  return v47(v17, v18);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{

  return _swift_task_switch(AnswerAltitudeFlow.executeState(), 0, 0);
}

{
  outlined consume of AnswerAltitudeFlow.State(*(v0 + 120), 1);
  v1 = *(v0 + 8);

  return v1();
}

void AnswerAltitudeFlow.fetchAltitude()()
{
  v1 = [objc_allocWithZone(CMAltimeter) init];
  v2 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v0 + 16), "Start Absolute Altitude Updates", 31, 2, &_swiftEmptyArrayStorage);
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v7[4] = partial apply for closure #1 in AnswerAltitudeFlow.fetchAltitude();
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMAbsoluteAltitudeData?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_1;
  v5 = _Block_copy(v7);

  v6 = v1;

  [v6 startAbsoluteAltitudeUpdatesToQueue:v3 withHandler:v5];
  _Block_release(v5);

  static ExecuteResponse.ongoing(requireInput:)();
}

id closure #1 in AnswerAltitudeFlow.fetchAltitude()(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    v6 = static os_log_type_t.info.getter();
    v7 = a3[2];
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v7, v6, "Error Fetching Altitude from CMAltimeter: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    (*(*a3 + 120))(0, 2);
  }

  else if (a1)
  {
    v13 = a1;
    v14 = static os_log_type_t.info.getter();
    v7 = a3[2];
    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      [v13 altitude];
      *(v15 + 4) = v16;
      _os_log_impl(&dword_0, v7, v14, "Altimeter retrived value: %f", v15, 0xCu);
    }

    [v13 altitude];
    (*(*a3 + 120))(v17, 0);
  }

  else
  {
    v18 = static os_log_type_t.info.getter();
    v7 = a3[2];
    os_log(_:dso:log:_:_:)(v18, &dword_0, v7, "Altitude data is missing from CMAltitmeter, fallback to location based altitude fetching. ", 90, 2, &_swiftEmptyArrayStorage);
    (*(*a3 + 120))(0, 2);
  }

  v19 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v19, &dword_0, v7, "Stop Absolute Altitude Updates", 30, 2, &_swiftEmptyArrayStorage);
  return [a4 stopAbsoluteAltitudeUpdates];
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMAbsoluteAltitudeData?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t AnswerAltitudeFlow.fetchLocationCheck()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.fetchLocationCheck(), 0, 0);
}

uint64_t AnswerAltitudeFlow.fetchLocationCheck()()
{
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
    type metadata accessor for CommonFlowGuard();
    *(swift_allocObject() + 16) = xmmword_B89E0;
    static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
    v1 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

    *(v0 + 16) = v1;
    type metadata accessor for GuardFlow();

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  else
  {
    (*(**(v0 + 32) + 120))(1, 2);
    static ExecuteResponse.ongoing(requireInput:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in AnswerAltitudeFlow.fetchLocationCheck()(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = static os_log_type_t.info.getter();
  v5 = a2[2];
  os_log(_:dso:log:_:_:)(v4, &dword_0, v5, "location prompting result", 25, 2, &_swiftEmptyArrayStorage);
  if (v3 == 1)
  {
    v6 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_0, v5, "location prompting fail, let the guard flow handle this", 55, 2, &_swiftEmptyArrayStorage);
    v7 = 3;
  }

  else
  {
    v8 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_0, v5, "location prompting pass", 23, 2, &_swiftEmptyArrayStorage);
    v7 = 1;
  }

  return (*(*a2 + 120))(v7, 2);
}

uint64_t AnswerAltitudeFlow.fetchLocation()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.fetchLocation(), 0, 0);
}

uint64_t AnswerAltitudeFlow.fetchLocation()()
{
  v4 = v0;
  (*(**(v0 + 32) + 136))(v3);
  type metadata accessor for LocationFetchFlow();
  swift_allocObject();
  *(v0 + 16) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v3, 2);
  lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, 255, type metadata accessor for LocationFetchFlow, &protocol conformance descriptor for LocationFetchFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AnswerAltitudeFlow.fetchLocation()(uint64_t a1, void *a2)
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
        os_log(_:dso:log:_:_:)(v17, &dword_0, v18, "Location Services are required for AnswerAltitude", 49, 2, &_swiftEmptyArrayStorage);
      }

      else
      {
        os_log(_:dso:log:_:_:)(v17, &dword_0, v18, "Siri Location Services are required for AnswerAltitude", 54, 2, &_swiftEmptyArrayStorage);
      }
    }

    return (*(*a2 + 120))(3, 2);
  }

  if (*(a1 + 8))
  {
    v16 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v16, &dword_0, a2[2], "Precise Location Services are required for AnswerAltitude", 57, 2, &_swiftEmptyArrayStorage);
    return (*(*a2 + 120))(3, 2);
  }

  v4 = static os_log_type_t.default.getter();
  v5 = a2[2];
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    [v3 verticalAccuracy];
    v8 = Double.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "altitude accuracy: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  [v3 verticalAccuracy];
  if (v11 >= 0.0)
  {
    [v3 altitude];
    return (*(*a2 + 120))(v19, 0);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001FLL;
    *(v13 + 8) = 0x80000000000C1D00;
    *(v13 + 16) = 2;
    return (*(*a2 + 120))(v12, 1);
  }
}

uint64_t AnswerAltitudeFlow.errorDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerAltitudeFlow.errorDialog(), 0, 0);
}

uint64_t AnswerAltitudeFlow.errorDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for Compass;
  v0[6] = &protocol witness table for Compass;
  v0[2] = 0;
  v3 = *(*v1 + 136);
  v4 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0x811000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v11 = (*(*v2 + 112) + **(*v2 + 112));
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = AnswerAltitudeFlow.errorDialog();
  v9 = v0[29];

  return v11(v9, v0 + 2, v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = AnswerAltitudeFlow.errorDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = AnswerAltitudeFlow.errorDialog();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error while building fetchAlitutdeError", 53, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 120);
  swift_errorRetain();
  v4(v1, 1);
  static ExecuteResponse.complete()();

  v5 = v0[1];

  return v5();
}

uint64_t AnswerAltitudeFlow.handle(altitude:)(uint64_t a1, double a2)
{
  *(v3 + 200) = v2;
  *(v3 + 192) = a2;
  *(v3 + 184) = a1;
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 208) = v4;
  v5 = *(v4 - 8);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 + 64);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();

  return _swift_task_switch(AnswerAltitudeFlow.handle(altitude:), 0, 0);
}

uint64_t AnswerAltitudeFlow.handle(altitude:)(uint64_t a1)
{
  v2 = *(v1 + 25);
  v3 = v1[24];
  v4 = static os_log_type_t.default.getter();
  v5 = v2[2];
  *(v1 + 31) = v5;
  os_log(_:dso:log:_:_:)(v4, &dword_0, v5, "handleDialog", 12, 2, &_swiftEmptyArrayStorage);
  v6 = v2[3];
  v7 = AnswerAltitudeFlow.convert(altitudeMeters:)(v3);
  *(v1 + 5) = &type metadata for Compass;
  *(v1 + 6) = &protocol witness table for Compass;
  *(v1 + 2) = v7;
  v8 = *(*v2 + 136);
  v9 = (*v2 + 136) & 0xFFFFFFFFFFFFLL | 0x811000000000000;
  *(v1 + 32) = v8;
  *(v1 + 33) = v9;
  v8();
  v10 = *(v1 + 10);
  v11 = *(v1 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v12 = (*(v11 + 80))(v10, v11);
  *(v1 + 34) = v12;
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 7);
  v16 = (*(*v6 + 112) + **(*v6 + 112));
  v13 = swift_task_alloc();
  *(v1 + 35) = v13;
  *v13 = v1;
  v13[1] = AnswerAltitudeFlow.handle(altitude:);
  v14 = *(v1 + 30);

  return v16(v14, v1 + 2, v12);
}

uint64_t AnswerAltitudeFlow.handle(altitude:)()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = AnswerAltitudeFlow.handle(altitude:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = AnswerAltitudeFlow.handle(altitude:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  (*(v0 + 256))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[25];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_0, v2, "Dialog Engine error when building answerAtltitude experience", 60, 2, &_swiftEmptyArrayStorage);
  v5 = *(*v3 + 120);
  swift_errorRetain();
  v5(v1, 1);
  static ExecuteResponse.ongoing(requireInput:)();

  v6 = v0[1];

  return v6();
}

uint64_t AnswerAltitudeFlow.convert(altitudeMeters:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin();
  v60 = &v54 - v2;
  v3 = type metadata accessor for Locale.MeasurementSystem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v54 - v7;
  v57 = type metadata accessor for Locale();
  v56 = *(v57 - 8);
  __chkstk_darwin();
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v11 = &v54 - v10;
  v12 = objc_opt_self();
  v13 = [v12 meters];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSUnitLength, NSUnitLength_ptr);
  v62 = v11;
  Measurement.init(value:unit:)();
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 valueForKey:v15];

  v59 = v8;
  v58 = v6;
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v69[0] = v67;
  v69[1] = v68;
  v17 = static os_log_type_t.default.getter();
  v18 = *(v1 + 16);
  outlined init with copy of Any?(v69, &v67);
  v64 = v18;
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v66 = v20;
    *v19 = 136315138;
    outlined init with copy of Any?(&v67, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v21 = v4;
    v22 = String.init<A>(describing:)();
    v24 = v23;
    outlined destroy of Mirror.DisplayStyle?(&v67, &_sypSgMd, &_sypSgMR);
    v25 = v22;
    v4 = v21;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v66);
    v27 = v64;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_0, v27, v17, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    outlined destroy of Mirror.DisplayStyle?(&v67, &_sypSgMd, &_sypSgMR);
  }

  v28 = v62;
  v29 = v63;
  outlined init with copy of Any?(v69, &v67);
  if (!*(&v68 + 1))
  {
    outlined destroy of Mirror.DisplayStyle?(&v67, &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v36 = v55;
    static Locale.current.getter();
    v37 = v59;
    Locale.measurementSystem.getter();
    (*(v56 + 8))(v36, v57);
    v38 = v58;
    static Locale.MeasurementSystem.us.getter();
    lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem, 255, &type metadata accessor for Locale.MeasurementSystem, &protocol conformance descriptor for Locale.MeasurementSystem);
    LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v4 + 8);
    v39(v38, v3);
    if (v36)
    {
      v39(v37, v3);
    }

    else
    {
      static Locale.MeasurementSystem.uk.getter();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39(v38, v3);
      v39(v37, v3);
      if ((v40 & 1) == 0)
      {
        v42 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v42, &dword_0, v64, "Units already in meters no conversion. ", 39, 2, &_swiftEmptyArrayStorage);
        v29 = v63;
        goto LABEL_23;
      }
    }

    v41 = [v12 feet];
    v29 = v63;
    goto LABEL_22;
  }

  v59 = v12;
  v31 = v65[0];
  v30 = v65[1];
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v67 = v34;
    *v33 = 136315138;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v67);

    *(v33 + 4) = v35;
    v28 = v62;
    _os_log_impl(&dword_0, v64, v32, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  if (v31 == 0x736568636E49 && v30 == 0xE600000000000000)
  {

LABEL_21:
    v41 = [v59 feet];
LABEL_22:
    Measurement<>.convert(to:)();

    goto LABEL_23;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_21;
  }

LABEL_23:
  Measurement.value.getter();
  Measurement.value.setter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v65[0] = v46;
    *v45 = 136315138;
    swift_beginAccess();
    Measurement.value.getter();
    swift_endAccess();
    v47 = Double.description.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v65);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_0, v64, v44, "altitude: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  type metadata accessor for DialogLength.Builder();
  swift_allocObject();
  DialogLength.Builder.init()();
  swift_beginAccess();
  Measurement.value.getter();
  swift_endAccess();
  dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

  v50 = v60;
  String.toSpeakableString.getter();

  v51 = type metadata accessor for SpeakableString();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();

  outlined destroy of Mirror.DisplayStyle?(v50, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v52 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

  outlined destroy of Mirror.DisplayStyle?(v69, &_sypSgMd, &_sypSgMR);
  (*(v61 + 8))(v28, v29);
  return v52;
}

uint64_t AnswerAltitudeFlow.deinit()
{

  outlined consume of AnswerAltitudeFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  return v0;
}

uint64_t AnswerAltitudeFlow.__deallocating_deinit()
{

  outlined consume of AnswerAltitudeFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance AnswerAltitudeFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance AnswerAltitudeFlow(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnswerAltitudeFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerAltitudeFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized AnswerAltitudeFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v8 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v8 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v8 + 32) = OS_os_log.init(subsystem:category:)();
  *(v8 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 32) = 2;
  *(a2 + 40) = 2;
  outlined init with copy of DeviceState(v12, a2 + 48);
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v10, &dword_0, *(a2 + 16), "AnswerAltitudeFlow init with fetch altitude", 43, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return a2;
}

uint64_t sub_52500()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_52560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t instantiation function for generic protocol witness table for AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow, a2, type metadata accessor for AnswerAltitudeFlow, &protocol conformance descriptor for AnswerAltitudeFlow);
  result = lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow, v3, type metadata accessor for AnswerAltitudeFlow, &protocol conformance descriptor for AnswerAltitudeFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_526CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *(a1 + 8);
  outlined copy of AnswerAltitudeFlow.State(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin014AnswerAltitudeB0C5StateO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for AnswerAltitudeFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnswerAltitudeFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for AnswerAltitudeFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t ContactResolutionFlowError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return 0x696C616974696E69;
      }

      if (a2 == 1)
      {
        return 0x61707563634F6F6ELL;
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0x6F636552656E6F6ELL;
      }

      else
      {
        return 1701736302;
      }
    }

    return 0x6361746E6F436F6ELL;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        return 0xD000000000000017;
      case 9:
        return 0xD000000000000014;
      case 10:
        return 0xD000000000000013;
    }

    return 0x6361746E6F436F6ELL;
  }

  if (a2 == 5 || a2 == 6)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t ContactResolutionFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v1, *(v0 + 32), *(v0 + 40), outlined copy of ContactResolutionOutput, outlined copy of ContactResolutionFlowError);
  return v1;
}

id outlined copy of ContactResolutionOutput(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t outlined copy of ContactResolutionFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t ContactResolutionFlow.exitValue.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v7, v8, v9, outlined consume of ContactResolutionOutput, outlined consume of ContactResolutionFlowError);
}

uint64_t outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a5(a1, a2);
  }

  else
  {
    return a4(a1, a2 & 1);
  }
}

void outlined consume of ContactResolutionOutput(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of ContactResolutionFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t key path setter for ContactResolutionFlow.flowState : <A, B>ContactResolutionFlow<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v11[0] = *(a3 + a4 - 32);
  v11[1] = v6;
  type metadata accessor for ContactResolutionFlow.State(0, v11);
  __chkstk_darwin();
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1);
  return (*(**a2 + 216))(v8);
}

uint64_t ContactResolutionFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for ContactResolutionFlow.State(0, v8);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t ContactResolutionFlow.flowState.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for ContactResolutionFlow.State(0, v8);
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t ContactResolutionFlow.contactResolverConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = type metadata accessor for ContactResolverConfig();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *ContactResolutionFlow.__allocating_init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v16 = specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v16;
}

uint64_t *ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ContactResolutionFlow.onInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v0 + 16);
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_5:
      (*(v2 + 8))(v4, v1);
      return 1;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "ContactResolutionFlow onInput returns true.";
LABEL_4:
    _os_log_impl(&dword_0, v6, v7, v9, v8, 2u);

    goto LABEL_5;
  }

  if (v5 == enum case for Parse.pommesResponse(_:))
  {
    (*(v2 + 8))(v4, v1);
    v11 = *(v0 + 16);
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "ContactResolutionFlow onInput returns true for POMMES.", v13, 2u);
    }

    return 1;
  }

  v14 = enum case for Parse.uso(_:);
  v6 = *(v0 + 16);
  v15 = v5;
  v7 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v6, v7);
  if (v15 == v14)
  {
    if (!v16)
    {
      goto LABEL_5;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "ContactResolutionFlow onInput returns true for USO parse.";
    goto LABEL_4;
  }

  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v6, v7, "SiriGeo currently doesn't support parse type.", v17, 2u);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t ContactResolutionFlow.executeState()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v4 = type metadata accessor for ContactQuery();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  v5 = type metadata accessor for SiriKitContactResolver();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = type metadata accessor for OccupantIntentNode();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v7 = v3[10];
  *(v2 + 208) = v7;
  v8 = v3[11];
  *(v2 + 216) = v8;
  v9 = v3[12];
  *(v2 + 224) = v9;
  v10 = v3[13];
  *(v2 + 232) = v10;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v2 + 32) = v12;
  *(v2 + 16) = v11;
  *(v2 + 240) = type metadata accessor for ContactResolutionFlow.State(0, v2 + 16);
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return _swift_task_switch(ContactResolutionFlow.executeState(), 0, 0);
}

uint64_t ContactResolutionFlow.executeState()()
{
  v188 = v0;
  v2 = v0;
  (*(**(v0 + 80) + 208))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v15 = *(v0 + 272);
        v16 = *(v0 + 80);
        v17 = *v15;
        if (*(v16 + *(*v16 + 136)))
        {
          LOBYTE(v184) = *(v15 + 8);
          v90 = v0;
          if (v17 >> 62)
          {
            goto LABEL_114;
          }

          v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
          goto LABEL_10;
        }

        (*(*v16 + 192))(v17, 1, 0);
        static ExecuteResponse.complete()();
      }

      else
      {
        static ExecuteResponse.complete()();
      }

      goto LABEL_135;
    }

    v47 = *(v0 + 272);
    v48 = *(v0 + 80);
    v49 = *(v47 + 8);

    v50 = *v48;
    if (!*(v48 + *(*v48 + 144)))
    {
      v79 = *(v50 + 192);
      v80 = v49;
      v79(v49, 0, 0);
      static ExecuteResponse.complete()();

      goto LABEL_135;
    }

    v51 = *(v0 + 80);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for PromptForConfirmationFlowAsync();
    *(v0 + 56) = v49;
    v52 = (v51 + *(v50 + 152));
    v53 = v52[3];
    v54 = v52[4];
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v55 = *(v54 + 104);
    swift_unknownObjectRetain_n();
    v56 = v49;
    v55(v187, v53, v54);
    *(v0 + 64) = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    *(v57 + 24) = v56;
    v58 = v56;

    swift_getWitnessTable();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    swift_unknownObjectRelease();

LABEL_36:

    goto LABEL_135;
  }

  if (!EnumCaseMultiPayload)
  {
    v24 = *(v0 + 272);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v2 + 80);
    (*(*(v2 + 168) + 32))(*(v2 + 200), v24, *(v2 + 160));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    OccupantIntentNode.asContactQuery.getter();
    v9 = *(v29 + 16);
    v30 = *(v27 + 16);
    v30(v26, v25, v28);
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v9, v31);
    v33 = *(v2 + 192);
    v184 = v30;
    if (v32)
    {
      v34 = *(v2 + 184);
      log = v9;
      v35 = v2;
      v38 = v2 + 160;
      v37 = *(v2 + 160);
      v36 = *(v38 + 8);
      v39 = swift_slowAlloc();
      v187[0] = swift_slowAlloc();
      *v39 = 136315394;
      v30(v34, v33, v37);
      v1 = String.init<A>(describing:)();
      v41 = v40;
      v42 = v37;
      v2 = v35;
      v186 = *(v36 + 8);
      v186(v33, v42);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v41, v187);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = Array.description.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v187);

      *(v39 + 14) = v46;
      v9 = log;
      _os_log_impl(&dword_0, log, v31, "occupant node %s contactQuery %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v186 = *(*(v2 + 168) + 8);
      v186(v33, *(v2 + 160));
    }

    v90 = *(v2 + 80);
    (*(*(v2 + 136) + 16))(*(v2 + 152), v90 + *(*v90 + 176), *(v2 + 128));
    v11 = SiriKitContactResolver.resolve(queries:config:)();
    (*(*(v2 + 136) + 8))(*(v2 + 152), *(v2 + 128));

    v93 = static os_log_type_t.default.getter();
    v64 = v11 >> 62;
    if (!os_log_type_enabled(v9, v93))
    {
      goto LABEL_52;
    }

    v90 = swift_slowAlloc();
    *v90 = 134217984;
    if (v64)
    {
      goto LABEL_148;
    }

    v81 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 80);
    v186 = **(v2 + 272);
    INPerson.toContactQueryGeo()();
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v12(v4, v10 + *(*v10 + 176), v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_B89E0;
    (*(v8 + 16))(v14 + v13, v7, v9);
    v1 = SiriKitContactResolver.resolve(queries:config:)();
    v90 = v2;
    v91 = *(v2 + 80);
    (*(*(v2 + 136) + 8))(*(v2 + 144), *(v2 + 128));

    v92 = static os_log_type_t.default.getter();
    v93 = *(v91 + 16);
    v64 = v1 >> 62;
    if (os_log_type_enabled(v93, v92))
    {

      v94 = swift_slowAlloc();
      *v94 = 134217984;
      if (v64)
      {
        v95 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v95 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      *(v94 + 4) = v95;

      _os_log_impl(&dword_0, v93, v92, "number of persons resolved %ld", v94, 0xCu);
    }

    if (v64)
    {
LABEL_142:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_64;
      }
    }

    else if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_64:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          while (1)
          {
            __break(1u);
LABEL_148:
            v81 = _CocoaArrayWrapper.endIndex.getter();
LABEL_51:
            *(v90 + 4) = v81;

            _os_log_impl(&dword_0, v9, v93, "number of persons resolved %ld", v90, 0xCu);

LABEL_52:
            if (v64)
            {
LABEL_140:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }
            }

            else if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_141;
            }

            if ((v11 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
            {
              v82 = *(v11 + 32);
              goto LABEL_57;
            }

            __break(1u);
          }
        }

        v96 = *(v1 + 32);
      }

      v97 = v96;
      v2 = v90;
      v98 = *(v90 + 256);
      v99 = *(v90 + 160);
      v100 = *(v90 + 168);
      v101 = *(v90 + 112);
      loga = *(v90 + 104);
      v185 = *(v90 + 120);
      v102 = *(v90 + 80);

      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR) + 48);
      *v98 = v97;
      (*(v100 + 56))(&v98[v103], 1, 1, v99);
      swift_storeEnumTagMultiPayload();
      (*(*v102 + 216))(v98);
      static ExecuteResponse.ongoing(requireInput:)();

      (*(v101 + 8))(v185, loga);
      goto LABEL_135;
    }

    __break(1u);
LABEL_144:
    v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_57:
    v83 = v82;
    v84 = *(v2 + 264);
    v85 = *(v2 + 200);
    v86 = *(v2 + 160);
    v87 = *(v2 + 168);
    v88 = *(v2 + 80);

    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR) + 48);
    *v84 = v83;
    v184(&v84[v89], v85, v86);
    (*(v87 + 56))(&v84[v89], 0, 1, v86);
    swift_storeEnumTagMultiPayload();
    (*(*v88 + 216))(v84);
    static ExecuteResponse.ongoing(requireInput:)();
    v186(v85, v86);
    goto LABEL_135;
  }

  v59 = *(v0 + 272);
  v60 = *(v2 + 96);
  v90 = *v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR);
  outlined init with take of OccupantIntentNode?(v59 + *(v61 + 48), v60);
  v62 = [v90 scoredAlternatives];
  if (!v62)
  {
LABEL_117:
    v163 = *(v2 + 160);
    v164 = *(v2 + 168);
    v165 = *(v2 + 88);
    outlined init with copy of Mirror.DisplayStyle?(*(v2 + 96), v165, &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    if ((*(v164 + 48))(v165, 1, v163) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(*(v2 + 88), &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    }

    else
    {
      (*(*(v2 + 168) + 32))(*(v2 + 176), *(v2 + 88), *(v2 + 160));
      v166 = OccupantIntentNode.relationship.getter();
      if (v167)
      {
        v168 = 19;
      }

      else
      {
        v168 = 22;
      }

      if (v167)
      {
        v169 = "no relation matched";
      }

      else
      {
        v169 = "no scored alternatives";
      }

      v170 = *(v2 + 168);
      v171 = *(v2 + 176);
      v172 = *(v2 + 160);
      if (v167)
      {
        v173 = v167;
      }

      else
      {
        v173 = 3;
      }

      v174 = *(v2 + 80);
      if (v167)
      {
        v175 = v166;
      }

      else
      {
        v175 = 0;
      }

      v176 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v176, &dword_0, v174[2], v169, v168, 2, &_swiftEmptyArrayStorage);
      (*(*v174 + 192))(v175, v173, 1);
      (*(v170 + 8))(v171, v172);
    }

    v177 = *(v2 + 248);
    v149 = *(v2 + 96);
    v178 = *(v2 + 80);
    swift_storeEnumTagMultiPayload();
    (*(*v178 + 216))(v177);
    static ExecuteResponse.complete()();

LABEL_133:
    v158 = v149;
    goto LABEL_134;
  }

  v63 = v62;
  v186 = v90;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = v2;
  if (v17 >> 62)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
    if (v64)
    {
      goto LABEL_26;
    }

    goto LABEL_116;
  }

  v64 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (!v64)
  {
LABEL_116:

    goto LABEL_117;
  }

LABEL_26:
  v184 = (v17 >> 62);
  v65 = 0;
  LOBYTE(v93) = 0;
  v66 = (v17 & 0xC000000000000001);
  v2 = v17 & 0xFFFFFFFFFFFFFF8;
  v9 = "scoredAlternative %s";
  do
  {
    if (v66)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v65 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_113;
      }

      v67 = *(v17 + 8 * v65 + 32);
    }

    v11 = v67;
    v90 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
        swift_unknownObjectRetain();
        if (!v18)
        {
          break;
        }

        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_112;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = *(v90 + 80);
          v187[0] = v20;
          closure #2 in ContactResolutionFlow.executeState()(v187, v23, "disambiguation candidate %s", v181);

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
      }

LABEL_35:
      v69 = *(v90 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMR);
      v70 = (v69 + *(*v69 + 152));
      v72 = v70[3];
      v71 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v72);
      v73 = *(v71 + 104);
      swift_unknownObjectRetain();
      v73(v187, v72, v71);
      v2 = v90;
      *(v90 + 48) = PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)();
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      *(v74 + 24) = v184;
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMR, &protocol conformance descriptor for PromptForDisambiguationFlowAsync<A, B>);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      swift_unknownObjectRelease();
      goto LABEL_36;
    }

    v68 = *(v1 + 80);
    v187[0] = v67;
    closure #2 in ContactResolutionFlow.executeState()(v187, v68, "scoredAlternative %s", v181);

    ++v65;
  }

  while (v90 != v64);
  if (v66)
  {
    v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_140;
    }

    v75 = *(v17 + 32);
  }

  v76 = v75;
  v77 = [v75 recommendation];

  if (v77 == &dword_0 + 2)
  {
    if (v184)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    }

    v2 = v1;
    if (v78)
    {
      v187[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v78 < 0)
      {
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v108 = 0;
      do
      {
        if (v66)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v109 = *(v17 + 8 * v108 + 32);
        }

        v110 = v109;
        ++v108;
        v111 = [v109 person];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v78 != v108);

      v9 = v187[0];
    }

    else
    {

      v9 = &_swiftEmptyArrayStorage;
    }

    v154 = *(v1 + 80);
    LOBYTE(v17) = static os_log_type_t.default.getter();
    v78 = *(v154 + 16);
    v66 = v186;
    if (!os_log_type_enabled(v78, v17))
    {
LABEL_105:
      v156 = *(v2 + 248);
      v121 = *(v2 + 96);
      v157 = *(v2 + 80);
      *v156 = v9;
      *(v156 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      (*(*v157 + 216))(v156);
      static ExecuteResponse.ongoing(requireInput:)();

      goto LABEL_106;
    }

    v65 = swift_slowAlloc();
    *v65 = 134217984;
    if (!(v9 >> 62))
    {
      v155 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
LABEL_104:
      *(v65 + 4) = v155;

      _os_log_impl(&dword_0, v78, v17, "needs disambigaution %ld", v65, 0xCu);

      goto LABEL_105;
    }

LABEL_152:
    v155 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_104;
  }

  if (v77 == &dword_0 + 1)
  {
    if (v66)
    {
      v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v104 = *(v17 + 32);
    }

    v132 = v104;
    v2 = v1;
    v133 = *(v1 + 80);

    v134 = [v132 person];

    v135 = static os_log_type_t.default.getter();
    v136 = *(v133 + 16);
    if (os_log_type_enabled(v136, v135))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v187[0] = v138;
      *v137 = 136315138;
      v139 = v134;
      v140 = v134;
      v141 = [v139 description];
      v142 = v2;
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v134 = v140;
      v146 = v143;
      v2 = v142;
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v145, v187);

      *(v137 + 4) = v147;
      _os_log_impl(&dword_0, v136, v135, "needs confirmation %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    v148 = *(v2 + 248);
    v149 = *(v2 + 96);
    v150 = *(v2 + 80);
    *v148 = v186;
    v148[1] = v134;
    swift_storeEnumTagMultiPayload();
    v151 = *(*v150 + 216);
    v152 = v186;
    v153 = v134;
    v151(v148);
    static ExecuteResponse.ongoing(requireInput:)();

    goto LABEL_133;
  }

  if (v77)
  {
    v2 = v1;
    v105 = *(v1 + 248);
    v106 = *(v1 + 96);
    v107 = *(v1 + 80);

    swift_storeEnumTagMultiPayload();
    (*(*v107 + 216))(v105);
    (*(*v107 + 192))(0, 4, 1);
    static ExecuteResponse.complete()();

    goto LABEL_109;
  }

  if (v184)
  {
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v78 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  }

  v112 = &_swiftEmptyArrayStorage;
  v2 = v1;
  if (!v78)
  {
    goto LABEL_92;
  }

  v187[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v78 < 0)
  {
    goto LABEL_151;
  }

  v113 = 0;
  do
  {
    if (v66)
    {
      v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v114 = *(v17 + 8 * v113 + 32);
    }

    v115 = v114;
    ++v113;
    v116 = [v114 person];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v78 != v113);
  v112 = v187[0];
LABEL_92:
  specialized ContactResolutionFlow.handleDisambiguationCase(_:)(v17);
  v118 = v117;

  v119 = v186;
  if (v118)
  {
    v120 = *(v2 + 248);
    v121 = *(v2 + 96);
    v122 = *(v2 + 80);
    *v120 = v112;
    *(v120 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    (*(*v122 + 216))(v120);
    static ExecuteResponse.ongoing(requireInput:)();

LABEL_106:
    v158 = v121;
    goto LABEL_134;
  }

  v123 = *(v2 + 80);
  v124 = static os_log_type_t.default.getter();
  v125 = *(v123 + 16);
  if (os_log_type_enabled(v125, v124))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v187[0] = v127;
    *v126 = 136315138;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v128 = Array.description.getter();
    v130 = v129;

    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, v187);
    v119 = v186;

    *(v126 + 4) = v131;
    _os_log_impl(&dword_0, v125, v124, "Confident %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v127);
  }

  else
  {
  }

  v159 = *(v2 + 248);
  v106 = *(v2 + 96);
  v160 = *(v2 + 80);
  v161 = *(*v160 + 192);
  v162 = v119;
  v161(v119, 0, 0);
  swift_storeEnumTagMultiPayload();
  (*(*v160 + 216))(v159);
  static ExecuteResponse.complete()();

LABEL_109:
  v158 = v106;
LABEL_134:
  outlined destroy of Mirror.DisplayStyle?(v158, &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
LABEL_135:

  v179 = *(v2 + 8);

  return v179();
}

uint64_t closure #1 in ContactResolutionFlow.executeState()(uint64_t a1, void *a2, void *a3)
{
  v59 = a3;
  v5 = *a2;
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin();
  v65 = &v57 - v7;
  v8 = type metadata accessor for ConfirmationResponse();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin();
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v57 - v10;
  v11 = *(v5 + 104);
  v12 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v66 = &v57 - v14;
  *&v15 = *(v6 + 96);
  *&v16 = *(v6 + 80);
  v63 = v12;
  v64 = v11;
  *(&v16 + 1) = v12;
  *(&v15 + 1) = v11;
  v74[1] = v15;
  v74[0] = v16;
  v17 = type metadata accessor for ContactResolutionFlow.State(0, v74);
  __chkstk_darwin();
  v69 = &v57 - v18;
  v19 = type metadata accessor for PromptResult();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v70 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v57 - v22;
  v24 = static os_log_type_t.info.getter();
  v25 = a2[2];
  v26 = *(v20 + 16);
  v71 = a1;
  v68 = v26;
  v26(v23, a1, v19);
  v62 = v25;
  if (os_log_type_enabled(v25, v24))
  {
    v27 = swift_slowAlloc();
    v58 = AssociatedTypeWitness;
    v28 = v27;
    v29 = swift_slowAlloc();
    *&v74[0] = v29;
    *v28 = 136315138;
    WitnessTable = swift_getWitnessTable();
    v31 = specialized String.init<A>(describing:)(v23, v19, WitnessTable);
    v57 = v17;
    v32 = v31;
    v34 = v33;
    v35 = v23;
    v36 = *(v20 + 8);
    v36(v35, v19);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v74);

    *(v28 + 4) = v37;
    _os_log_impl(&dword_0, v62, v24, "PromptForConfirmation childCompletion %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);

    AssociatedTypeWitness = v58;
  }

  else
  {
    v38 = v23;
    v36 = *(v20 + 8);
    v36(v38, v19);
  }

  v39 = v69;
  swift_storeEnumTagMultiPayload();
  (*(*a2 + 216))(v39);
  v40 = v70;
  v68(v70, v71, v19);
  v41 = (*(v20 + 88))(v40, v19);
  if (v41 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v20 + 96))(v40, v19);
    v43 = v66;
    v42 = v67;
    (*(v67 + 32))(v66, v40, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v44 = v65;
    dispatch thunk of ConfirmationResponseProviding.confirmationResponse.getter();
    if ((*(v72 + 48))(v44, 1, v73) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v44, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      (*(*a2 + 192))(0, 5, 1);
      return (*(v42 + 8))(v43, AssociatedTypeWitness);
    }

    else
    {
      v48 = v72;
      v49 = v73;
      v50 = v61;
      (*(v72 + 32))(v61, v44, v73);
      v51 = v60;
      (*(v48 + 16))(v60, v50, v49);
      if ((*(v48 + 88))(v51, v49) == enum case for ConfirmationResponse.confirmed(_:))
      {
        v52 = *(*a2 + 192);
        v53 = v59;
        v54 = v59;
        v52(v53, 0, 0);
        (*(v72 + 8))(v50, v73);
        return (*(v42 + 8))(v43, AssociatedTypeWitness);
      }

      else
      {
        (*(*a2 + 192))(0, 6, 1);
        v55 = v73;
        v56 = *(v72 + 8);
        v56(v50, v73);
        (*(v42 + 8))(v43, AssociatedTypeWitness);
        return (v56)(v51, v55);
      }
    }
  }

  else
  {
    v46 = *(*a2 + 192);
    if (v41 == enum case for PromptResult.cancelled<A>(_:) || v41 == enum case for PromptResult.unanswered<A>(_:))
    {
      return v46(0, 7, 1);
    }

    else
    {
      v46(0, 4, 1);
      return (v36)(v40, v19);
    }
  }
}

void closure #3 in ContactResolutionFlow.executeState()(uint64_t a1, void *a2, int a3)
{
  v40 = a3;
  v5 = *(*a2 + 96);
  v43[0] = *(*a2 + 80);
  v43[1] = v5;
  v41 = type metadata accessor for ContactResolutionFlow.State(0, v43);
  __chkstk_darwin();
  v7 = (&v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo8INPersonCGMd, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = static os_log_type_t.info.getter();
  v15 = a2[2];
  v42 = *(v9 + 16);
  v42(v13, a1, v8);
  v38 = v14;
  v39 = v15;
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v34 = v16;
    v35 = swift_slowAlloc();
    *&v43[0] = v35;
    *v16 = 136315138;
    lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<INPerson> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMd, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMR, &protocol conformance descriptor for PromptResult<A>);
    v17 = v7;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v9 + 8);
    v36 = a1;
    v37 = v21;
    v21(v13, v8);
    v22 = v18;
    v7 = v17;
    a1 = v36;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v20, v43);

    v24 = v34;
    *(v34 + 1) = v23;
    _os_log_impl(&dword_0, v39, v38, "prompt output %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  else
  {
    v37 = *(v9 + 8);
    v37(v13, v8);
  }

  v42(v11, a1, v8);
  v25 = (*(v9 + 88))(v11, v8);
  if (v25 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v9 + 96))(v11, v8);
    v26 = *v11;
    if (v40)
    {
      swift_storeEnumTagMultiPayload();
      (*(*a2 + 216))(v7);
      v27 = *(*a2 + 192);
      v28 = v26;
      v27(v26, 0, 0);
    }

    else
    {
      *v7 = v26;
      swift_storeEnumTagMultiPayload();
      v32 = *(*a2 + 216);
      v28 = v26;
      v32(v7);
    }
  }

  else
  {
    v29 = v25;
    v30 = enum case for PromptResult.cancelled<A>(_:);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 216))(v7);
    v31 = *(*a2 + 192);
    if (v29 == v30)
    {
      v31(0, 8, 1);
    }

    else
    {
      v31(0, 3, 1);
      v37(v11, v8);
    }
  }
}

uint64_t closure #2 in ContactResolutionFlow.executeState()(void **a1, uint64_t a2, char *a3, ...)
{
  v5 = *a1;
  v6 = static os_log_type_t.info.getter();
  v7 = *(a2 + 16);
  result = os_log_type_enabled(v7, v6);
  if (result)
  {
    format = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v7, v6, format, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return result;
}

uint64_t *ContactResolutionFlow.deinit()
{
  v1 = *v0;

  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v0[3], v0[4], *(v0 + 40), outlined consume of ContactResolutionOutput, outlined consume of ContactResolutionFlowError);
  v2 = *(*v0 + 128);
  v3 = *(v1 + 96);
  v10[0] = *(v1 + 80);
  v10[1] = v3;
  v4 = type metadata accessor for ContactResolutionFlow.State(0, v10);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 152)));
  outlined destroy of Mirror.DisplayStyle?(v0 + *(*v0 + 160), &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  v5 = *(*v0 + 168);
  v6 = type metadata accessor for ContactResolverConfig();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 176);
  v8 = type metadata accessor for SiriKitContactResolver();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t ContactResolutionFlow.__deallocating_deinit()
{
  ContactResolutionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance ContactResolutionFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 272) + **(**v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactResolutionFlow<A, B>@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 184))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactResolutionFlow<A1, B1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void specialized ContactResolutionFlow.handleDisambiguationCase(_:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v3 > 1)
  {
    while (2)
    {
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v3 == v4)
        {
          if (v5)
          {
            goto LABEL_46;
          }

          if (!*(v2 + 16))
          {
            __break(1u);
            return;
          }

          v9 = *(a1 + 32);
LABEL_15:
          v10 = v9;
          v11 = [v9 person];

          v12 = [v11 contactIdentifier];
          if (v12)
          {
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            if (!v3)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v27 = 0;
            v14 = 0;
            if (!v3)
            {
LABEL_34:

              return;
            }
          }

          v15 = 0;
          v28 = v5;
          while (1)
          {
            if (v5)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *(v2 + 16))
              {
                __break(1u);
LABEL_46:
                v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                goto LABEL_15;
              }

              v16 = *(a1 + 8 * v15 + 32);
            }

            v17 = v16;
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_42;
            }

            v19 = v2;
            v20 = [v16 person];
            v21 = [v20 contactIdentifier];

            if (v21)
            {
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v23;

              if (!v14)
              {

                return;
              }

              if (v22 == v27 && v14 == v24)
              {
              }

              else
              {
                v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v26 & 1) == 0)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {

              if (v14)
              {
                swift_bridgeObjectRelease_n();
                return;
              }
            }

            ++v15;
            v2 = v19;
            v5 = v28;
            if (v18 == v3)
            {
              goto LABEL_34;
            }
          }
        }

        if (v5)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_41;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v6 recommendation];

        ++v4;
        if (v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      break;
    }
  }
}

uint64_t *specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v50 = a7;
  v51 = a8;
  v40 = a6;
  v44 = a5;
  v36 = a4;
  v52 = a1;
  v13 = *v8;
  v14 = type metadata accessor for RecommenderType();
  v48 = *(v14 - 8);
  v49 = v14;
  __chkstk_darwin();
  v47 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin();
  v43 = &v33 - v16;
  v17 = type metadata accessor for SearchSuggestedContacts();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin();
  v39 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v37 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactResolverDomain();
  __chkstk_darwin();
  v20 = type metadata accessor for ContactResolverConfig();
  v45 = *(v20 - 8);
  v46 = v20;
  __chkstk_darwin();
  v38 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v8[2] = OS_os_log.init(subsystem:category:)();
  *(v8 + 3) = 0u;
  *(v8 + 40) = 1;
  v22 = *(*v8 + 176);
  v35 = type metadata accessor for SiriKitContactResolver();
  v23 = *(v35 - 8);
  (*(v23 + 16))(v8 + v22, a4, v35);
  *(v8 + *(*v8 + 136)) = a2;
  *(v8 + *(*v8 + 144)) = a3;
  v24 = *(*v8 + 128);
  v34 = type metadata accessor for OccupantIntentNode();
  v25 = *(v34 - 8);
  (*(v25 + 16))(v8 + v24, v52, v34);
  v26 = *(v13 + 96);
  v53[0] = *(v13 + 80);
  v53[1] = v26;
  type metadata accessor for ContactResolutionFlow.State(0, v53);
  swift_storeEnumTagMultiPayload();
  v27 = v44;
  outlined init with copy of DeviceState(v44, v9 + *(*v9 + 152));
  v28 = v40;
  outlined init with copy of Mirror.DisplayStyle?(v40, v9 + *(*v9 + 160), &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  static ContactResolverDomain.all.getter();
  static Locale.current.getter();
  (*(v41 + 104))(v39, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v42);
  v29 = v43;
  static ContactHandleTypePreference.preferPhone.getter();
  v30 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  (*(v48 + 104))(v47, enum case for RecommenderType.mlRecommender(_:), v49);
  v31 = v38;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
  outlined destroy of Mirror.DisplayStyle?(v28, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  (*(v23 + 8))(v36, v35);
  (*(v25 + 8))(v52, v34);
  (*(v45 + 32))(v9 + *(*v9 + 168), v31, v46);
  return v8;
}

uint64_t outlined init with take of OccupantIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_56E90()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_56ED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t instantiation function for generic protocol witness table for ContactResolutionFlow<A, B>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_56F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_56FD0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(**a2 + 192);
  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(*a1, v3, v4, outlined copy of ContactResolutionOutput, outlined copy of ContactResolutionFlowError);
  return v5(v2, v3, v4);
}

__n128 sub_5707C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin017ContactResolutionB5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ContactResolutionFlowError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContactResolutionFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ContactResolutionFlowError(void *result, int a2)
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

uint64_t type metadata completion function for ContactResolutionFlow(uint64_t a1)
{
  v7 = &value witness table for Builtin.UnknownObject + 64;
  v8 = &unk_BB878;
  v1 = *(a1 + 96);
  v6[0] = *(a1 + 80);
  v6[1] = v1;
  result = type metadata accessor for ContactResolutionFlow.State(319, v6);
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v10 = &unk_BB890;
    v11 = &unk_BB890;
    v12 = &unk_BB8A8;
    v13 = &unk_BB8C0;
    result = type metadata accessor for ContactResolverConfig();
    if (v4 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      result = type metadata accessor for SiriKitContactResolver();
      if (v5 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void type metadata completion function for ContactResolutionFlow.State(uint64_t a1)
{
  type metadata accessor for OccupantIntentNode();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (INPerson, OccupantIntentNode?)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (parentContact: INPerson, confirmationCandidate: INPerson)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ([INPerson], Bool)(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (INPerson, OccupantIntentNode?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (INPerson, OccupantIntentNode?))
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (INPerson, OccupantIntentNode?));
    }
  }
}

void type metadata accessor for (parentContact: INPerson, confirmationCandidate: INPerson)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (parentContact: INPerson, confirmationCandidate: INPerson))
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (parentContact: INPerson, confirmationCandidate: INPerson));
    }
  }
}

void type metadata accessor for ([INPerson], Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([INPerson], Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([INPerson], Bool));
    }
  }
}

uint64_t lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t PommesResponse.firstGeoExperience.getter()
{
  v0 = dispatch thunk of PommesResponse.experiences.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      type metadata accessor for GeoExperience();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        return v8;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void *StopShareETAFlowDelegate.stopShareETAIntent.getter()
{
  v1 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void StopShareETAFlowDelegate.stopShareETAIntent.setter(uint64_t a1)
{
  v3 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t StopShareETAFlowDelegate.isPOMMES.getter()
{
  v1 = direct field offset for StopShareETAFlowDelegate.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StopShareETAFlowDelegate.isPOMMES.setter(char a1)
{
  v3 = direct field offset for StopShareETAFlowDelegate.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StopShareETAFlowDelegate.__allocating_init(stopShareETAIntent:isPOMMES:)(void *a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  v4 = specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(a1, v2);

  return v4;
}

uint64_t StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(void *a1, uint64_t a2)
{
  v3 = specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(a1, a2);

  return v3;
}

uint64_t StopShareETAFlowDelegate.__allocating_init(deviceState:isPOMMES:)(void *a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return StopShareETAFlowDelegate.init(deviceState:isPOMMES:)(a1, v2);
}

uint64_t StopShareETAFlowDelegate.init(deviceState:isPOMMES:)(void *a1, char a2)
{
  v5 = direct field offset for StopShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + v5) = OS_os_log.init(subsystem:category:)();
  *(v2 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent) = 0;
  outlined init with copy of DeviceState(a1, v2 + direct field offset for StopShareETAFlowDelegate.currentDeviceState);
  *(v2 + direct field offset for StopShareETAFlowDelegate.isPOMMES) = a2;
  v6 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t StopShareETAFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(void *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *(v3 + direct field offset for StopShareETAFlowDelegate.logObject);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    [a2 unsupportedReason];
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "makeUnsupportedValueBehavior with result %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v13 = enum case for UnsupportedValueBehavior.dialogAndStop(_:);
  v14 = type metadata accessor for UnsupportedValueBehavior();
  return (*(*(v14 - 8) + 104))(a3, v13, v14);
}

uint64_t StopShareETAFlowDelegate.makeAppResolution()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for StopShareETAFlowDelegate.logObject), "makeAppResolution executed", 26, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo20INStopShareETAIntentCGMd, &_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo20INStopShareETAIntentCGMR);
  swift_allocObject();
  return AppResolutionService.init()();
}

uint64_t StopShareETAFlowDelegate.makeDialogTemplating()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  v3 = os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for StopShareETAFlowDelegate.logObject), "makeDialogTemplating executed", 29, 2, &_swiftEmptyArrayStorage);
  (*(*v1 + class metadata base offset for StopShareETAFlowDelegate + 32))(v5, v3);
  type metadata accessor for StopShareETATemplatingService(0);
  swift_allocObject();
  return StopShareETATemplatingService.init(deviceState:)(v5);
}

BOOL StopShareETAFlowDelegate.shouldConfirmIntentWithUser(intent:intentResponse:)(void *a1, void *a2)
{
  v5 = static os_log_type_t.info.getter();
  v6 = *(v2 + direct field offset for StopShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)(v5, &dword_0, v6, "shouldConfirmIntentWithUser", 27, 2, &_swiftEmptyArrayStorage);
  v7 = [a1 recipients];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));

    if (v10)
    {
      v11 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v6, v11);
      if (!result)
      {
        return result;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v6, v11, "specific contact in intent", v13, 2u);

      return 0;
    }
  }

  v14 = [a2 recipients];
  if (!v14)
  {
    v20 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v20, &dword_0, v6, "recipients nil", 14, 2, &_swiftEmptyArrayStorage);
    return 0;
  }

  v15 = v14;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  }

  if (v17 < 2)
  {
    return 0;
  }

  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v6, v18, "stop sharing ETA - recipients should confirm with user", v19, 2u);
  }

  return 1;
}

uint64_t StopShareETAFlowDelegate.makeConfirmationStateFromParse(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NLIntent();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v15, &dword_0, *(v2 + direct field offset for StopShareETAFlowDelegate.logObject), "stop sharing ETA makeConfirmationStateFromParse", 47, 2, &_swiftEmptyArrayStorage);
  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v6 + 96))(v8, v5);
  }

  else
  {
    if (v16 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v16 != enum case for Parse.pommesResponse(_:))
      {
        v29 = enum case for SiriKitConfirmationState.unset(_:);
        v30 = type metadata accessor for SiriKitConfirmationState();
        (*(*(v30 - 8) + 104))(a2, v29, v30);
        return (*(v6 + 8))(v8, v5);
      }

      (*(v6 + 96))(v8, v5);
      v25 = *v8;
      type metadata accessor for LocationSearchIntent(0);
      swift_allocObject();
      v26 = v25;
      v27 = LocationSearchIntent.init(from:)(v26);
      v28 = (*(*v27 + 152))(v27);

      v22 = type metadata accessor for SiriKitConfirmationState();
      v23 = *(*(v22 - 8) + 104);
      if (v28 <= 1u)
      {
        if (!v28)
        {
          goto LABEL_11;
        }

LABEL_17:
        v24 = &enum case for SiriKitConfirmationState.rejected(_:);
        return v23(a2, *v24, v22);
      }

      if (v28 == 2)
      {
LABEL_13:
        v24 = &enum case for SiriKitConfirmationState.cancelled(_:);
        return v23(a2, *v24, v22);
      }

LABEL_20:
      v24 = &enum case for SiriKitConfirmationState.unset(_:);
      return v23(a2, *v24, v22);
    }

    (*(v6 + 96))(v8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");
  }

  v17 = *(v10 + 32);
  v17(v14, v8, v9);
  v17(v12, v14, v9);
  type metadata accessor for LocationSearchIntent(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v18 + v19) = static LocationSearchIntent.domainNode;
  v17((v18 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v12, v9);
  v32 = v18;
  v20 = one-time initialization token for confirmationNode;

  if (v20 != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent();
  IntentNodeTraversable.value<A>(forNode:)();

  v21 = v33;
  v22 = type metadata accessor for SiriKitConfirmationState();
  v23 = *(*(v22 - 8) + 104);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (v21)
  {
    goto LABEL_17;
  }

LABEL_11:
  v24 = &enum case for SiriKitConfirmationState.confirmed(_:);
  return v23(a2, *v24, v22);
}

uint64_t StopShareETAFlowDelegate.makeNLContextProvider()(uint64_t a1)
{
  v2 = static os_log_type_t.info.getter();
  v3 = os_log(_:dso:log:_:_:)(v2, &dword_0, *(v1 + direct field offset for StopShareETAFlowDelegate.logObject), "Returning StopShareETAContextProvider", 37, 2, &_swiftEmptyArrayStorage);
  v4 = (*(*v1 + class metadata base offset for StopShareETAFlowDelegate + 80))(v3);
  type metadata accessor for StopShareETAContextProvider(0);
  v5 = swift_allocObject();
  v6 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + v6) = OS_os_log.init(subsystem:category:)();
  *(v5 + direct field offset for StopShareETAContextProvider.isPOMMES) = v4 & 1;
  return DefaultNLContextProvider.init()();
}

uint64_t StopShareETAContextProvider.__allocating_init(isPOMMES:)(char a1)
{
  v2 = swift_allocObject();
  v3 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + v3) = OS_os_log.init(subsystem:category:)();
  *(v2 + direct field offset for StopShareETAContextProvider.isPOMMES) = a1;
  return DefaultNLContextProvider.init()();
}

void StopShareETAFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETAFlowDelegate.currentDeviceState));

  v1 = *(v0 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent);
}

uint64_t StopShareETAFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETAFlowDelegate.currentDeviceState));

  return v0;
}

uint64_t StopShareETAFlowDelegate.__deallocating_deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  v1 = direct field offset for StopShareETAFlowDelegate.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));

  v3 = *(v0 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent);

  return swift_deallocClassInstance();
}

uint64_t StopShareETAContextProvider.isPOMMES.getter()
{
  v1 = direct field offset for StopShareETAContextProvider.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StopShareETAContextProvider.isPOMMES.setter(char a1)
{
  v3 = direct field offset for StopShareETAContextProvider.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StopShareETAContextProvider.init(isPOMMES:)(char a1)
{
  v3 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + v3) = OS_os_log.init(subsystem:category:)();
  *(v1 + direct field offset for StopShareETAContextProvider.isPOMMES) = a1;

  return DefaultNLContextProvider.init()();
}

uint64_t StopShareETAContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v28 = type metadata accessor for PommesContext.Source();
  v26 = *(v28 - 8);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v27 = &v23 - v8;
  v9 = type metadata accessor for NLContextUpdate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + direct field offset for StopShareETAContextProvider.logObject);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v10;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "makeContextForHandleIntent", v15, 2u);
    v10 = v24;
  }

  v16 = NLContextUpdate.init()();
  if ((*(*v3 + class metadata base offset for StopShareETAContextProvider + 16))(v16))
  {
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v13, v17, "makeContextForHandleIntent adding pommesContext", v18, 2u);
    }

    (*(v26 + 104))(v25, enum case for PommesContext.Source.pluginDefined(_:), v28);
    v19 = v27;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v20 = type metadata accessor for PommesContext();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    NLContextUpdate.pommesContext.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_B8FB0;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETAIntent, INStopShareETAIntent_ptr);
  *(v21 + 32) = static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)();
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v10 + 16))(v6, v12, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  a3(v6);
  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v10 + 8))(v12, v9);
}

uint64_t StopShareETAContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v26 = type metadata accessor for PommesContext.Source();
  v8 = *(v26 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = type metadata accessor for NLContextUpdate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static os_log_type_t.info.getter();
  v18 = *(v4 + direct field offset for StopShareETAContextProvider.logObject);
  os_log(_:dso:log:_:_:)(v17, &dword_0, v18, "stop sharing ETA makeContextForConfirmIntent", 44, 2, &_swiftEmptyArrayStorage);
  v19 = NLContextUpdate.init()();
  if ((*(*v4 + class metadata base offset for StopShareETAContextProvider + 16))(v19))
  {
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v20))
    {
      v21 = swift_slowAlloc();
      v25 = a3;
      *v21 = 0;
      _os_log_impl(&dword_0, v18, v20, "makeContextForConfirmIntent adding pommesContext", v21, 2u);
      a3 = v25;
    }

    (*(v8 + 104))(v10, enum case for PommesContext.Source.pluginDefined(_:), v26);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v22 = type metadata accessor for PommesContext();
    (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
    NLContextUpdate.pommesContext.setter();
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  (*(v14 + 16))(v7, v16, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  a3(v7);
  outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v14 + 8))(v16, v13);
}

uint64_t StopShareETAContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();

  return v0;
}

uint64_t StopShareETAContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StopShareETAFlowDelegate.currentDeviceState.setter(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v4));
  outlined init with take of GeoRCHFlowFactory(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t StopShareETATemplatingService.init(deviceState:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin();
  v24 = &v23 - v4;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for StopShareETATemplatingService.catService;
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + v9) = v10;
  *(v10 + 16) = 0;
  v12 = direct field offset for StopShareETATemplatingService.logObject;
  v13 = OS_os_log.init(subsystem:category:)();
  *(v2 + v12) = v13;
  v14 = v13;
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "initializing", v16, 2u);
  }

  outlined init with copy of DeviceState(a1, v2 + direct field offset for StopShareETATemplatingService.device);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v17 = Locale.identifier.getter();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v27 = v17;
  v28 = v19;
  v25 = 45;
  v26 = 0xE100000000000000;
  v29 = 95;
  v30 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  static Device.current.getter();
  v20 = type metadata accessor for DucTemplatingLocalContext();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21INIntentSlotValueTypeV_SSTt0gq5Tf4g_n(&_swiftEmptyArrayStorage);
  static AceService.current.getter();
  v21 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v21;
}

uint64_t StopShareETATemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v37 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v13 = (&v36 - v12);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v14 = *(v9 + direct field offset for StopShareETATemplatingService.logObject);
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "makeParameterValueUnsupportedDialog", v16, 2u);
  }

  if ([a4 resolutionResultCode] != &dword_0 + 1)
  {
LABEL_16:
    v20 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
    v40 = type metadata accessor for ShareETA(0);
    v41 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v39) = 1;
    goto LABEL_17;
  }

  v17 = [a4 unsupportedReason];
  v18 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_B89E0;
  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  *(v19 + 32) = v17;
  os_log(_:dso:log:_:_:)(v18, &dword_0, v14, "unsupported reason %d", v36);

  if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v20 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
    v40 = type metadata accessor for ShareETA(0);
    v41 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v39);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v32 = static DialogHelper.globals.getter();
    (*(*v20 + 120))(v39, v32, v37, a9);

    return __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  v21 = [a5 recipients];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  result = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_20:

LABEL_21:
    v33 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v33, &dword_0, v14, "recipients can't be nil or empty", 32, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v34 = swift_allocError();
    *v35 = 0xD000000000000020;
    v35[1] = 0x80000000000C2100;
    *v13 = v34;
    swift_storeEnumTagMultiPayload();
    v37(v13);
    return outlined destroy of Mirror.DisplayStyle?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

LABEL_9:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v26 = v25;

    if (v17 == 1 || v17 == 4)
    {
      v27 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
      v40 = type metadata accessor for ShareETA(0);
      v41 = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
      type metadata accessor for DialogPerson();
      v29 = v26;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v30 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      *boxed_opaque_existential_0 = v30;
      swift_storeEnumTagMultiPayload();
      v31 = static DialogHelper.globals.getter();
      (*(*v27 + 120))(v39, v31, v37, a9);

      return __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    goto LABEL_16;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    v25 = *(v23 + 32);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t StopShareETATemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v10 = (&v28[-1] - v9);
  v11 = [a2 recipients];
  if (v11 && ((v12 = v11, type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr), v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v12, v13 >> 62) ? (v14 = _CocoaArrayWrapper.endIndex.getter()) : (v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8))), , v14))
  {
    v15 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_0, *(v5 + direct field offset for StopShareETATemplatingService.logObject), "stop sharing ETA - shouldn't need confirmation dialog with specific recipient", 77, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v16 = swift_allocError();
    *v17 = 0xD000000000000043;
    v17[1] = 0x80000000000C2180;
    *v10 = v16;
    swift_storeEnumTagMultiPayload();
    a4(v10);
    return outlined destroy of Mirror.DisplayStyle?(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    v19 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "stop sharing ETA - makeIntentConfirmationDialog", v21, 2u);
    }

    v22 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v28[3] = type metadata accessor for ShareETA(0);
    v28[4] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    v24 = enum case for BehaviorAfterSpeaking.listen(_:);
    v25 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_0, v24, v25);
    swift_storeEnumTagMultiPayload();
    v26 = static DialogHelper.globals.getter();
    (*(*v22 + 120))(v28, v26, a4, a5);

    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }
}

uint64_t StopShareETATemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeFailureHandlingIntentDialog", v11, 2u);
  }

  if (a3 && ((v12 = [a3 code], v12 == (&dword_C + 3)) || v12 == (&dword_C + 1) || v12 == &dword_C))
  {
    v13 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v16) = 1;
  }

  swift_storeEnumTagMultiPayload();
  v14 = static DialogHelper.globals.getter();
  (*(*v13 + 120))(v16, v14, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void StopShareETATemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v10 = (&v44 - v9);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v11 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "stop sharing ETA - makeIntentHandledDialog", v13, 2u);
  }

  if (!a3)
  {
    v34 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v34, &dword_0, v11, "stop sharing ETA - intent response can't be nil", 47, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v35 = swift_allocError();
    *v36 = 0xD000000000000015;
    v36[1] = 0x80000000000C1360;
    *v10 = v35;
    swift_storeEnumTagMultiPayload();
    a4(v10);
    outlined destroy of Mirror.DisplayStyle?(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return;
  }

  v14 = a3;
  v15 = [v14 recipients];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v14;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v18 = *(v17 + 32);
    }

    v19 = v18;
    v46 = a5;

    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = a4;
      v23 = v22;
      v49[0] = v22;
      *v21 = 136315138;
      v24 = [v19 displayName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v49);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_0, v11, v20, "stop sharing ETA - stop sharing ETA to %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      a4 = v45;
    }

    v29 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v50 = type metadata accessor for ShareETA(0);
    v51 = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
    type metadata accessor for DialogPerson();
    v31 = v19;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v32 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    *boxed_opaque_existential_0 = 1;
    boxed_opaque_existential_0[1] = v32;
    boxed_opaque_existential_0[2] = 0;
    swift_storeEnumTagMultiPayload();
    v33 = static DialogHelper.globals.getter();
    (*(*v29 + 120))(v49, v33, a4, v46);
  }

  else
  {
    v37 = a5;
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v11, v38, "recipients nil - stop sharing ETA for all", v39, 2u);
    }

    v40 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v50 = type metadata accessor for ShareETA(0);
    v51 = &protocol witness table for ShareETA;
    v41 = __swift_allocate_boxed_opaque_existential_0(v49);
    type metadata accessor for DialogPerson.Builder();
    swift_allocObject();
    DialogPerson.Builder.init()();
    v42 = dispatch thunk of DialogPerson.Builder.build()();

    *v41 = 1;
    v41[1] = v42;
    v41[2] = 0;
    swift_storeEnumTagMultiPayload();
    v43 = static DialogHelper.globals.getter();
    (*(*v40 + 120))(v49, v43, a4, v37);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t StopShareETATemplatingService.makeIntentConfirmationCancelledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "makeIntentConfirmationCancelledDialog", v10, 2u);
  }

  v11 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
  v15[3] = type metadata accessor for ShareETA(0);
  v15[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  *boxed_opaque_existential_0 = 1;
  boxed_opaque_existential_0[1] = 0;
  swift_storeEnumTagMultiPayload();
  v13 = static DialogHelper.globals.getter();
  (*(*v11 + 120))(v15, v13, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t StopShareETATemplatingService.__ivar_destroyer()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));
}

uint64_t StopShareETATemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));
  return v0;
}

uint64_t StopShareETATemplatingService.__deallocating_deinit()
{
  v0 = DucTemplatingService.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));

  return swift_deallocClassInstance();
}

uint64_t specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(void *a1, char a2)
{
  v3 = v2;
  v6 = direct field offset for StopShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + v6) = OS_os_log.init(subsystem:category:)();
  v7 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  *(v3 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent) = 0;
  swift_beginAccess();
  *(v3 + v7) = a1;
  v8 = a1;
  static Device.current.getter();
  outlined init with take of GeoRCHFlowFactory(&v10, v3 + direct field offset for StopShareETAFlowDelegate.currentDeviceState);
  *(v3 + direct field offset for StopShareETAFlowDelegate.isPOMMES) = a2;
  return BaseRCHFlowDelegate.init()();
}

unint64_t lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError()
{
  result = lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError;
  if (!lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError);
  }

  return result;
}

uint64_t sub_5AEC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAFlowDelegate + 56))();
  *a2 = result;
  return result;
}

uint64_t sub_5AF2C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for StopShareETAFlowDelegate + 64);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_5AFA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAFlowDelegate + 80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_5B070@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAContextProvider + 16))();
  *a2 = result & 1;
  return result;
}

uint64_t GeoAppResolutionService.resolveApp(intent:appResolutionState:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, _ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  type metadata accessor for App();
  swift_allocObject();
  *v5 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  v6 = enum case for AppResolutionResult.selected(_:);
  v7 = type metadata accessor for AppResolutionResult();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  swift_storeEnumTagMultiPayload();
  a3(v5);
  return outlined destroy of Result<AppResolutionResult, Error>(v5);
}

uint64_t outlined destroy of Result<AppResolutionResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, _ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GeoAppResolutionService.__deallocating_deinit()
{
  AppResolutionService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6386789;
  if (a1 != 6)
  {
    v5 = 0x6574756F72;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x63696666617274;
  if (a1 != 4)
  {
    v7 = 0x746E656469636E69;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65636E6174736964;
  if (a1 != 2)
  {
    v9 = 0x6F69746365726964;
    v8 = 0xEA0000000000736ELL;
  }

  v10 = 0x6E6F697461727564;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 7958113;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE300000000000000;
        if (v11 != 6386789)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6574756F72)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x63696666617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x746E656469636E69)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x65636E6174736964)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA0000000000736ELL;
      if (v11 != 0x6F69746365726964)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6E6F697461727564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7958113)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t FlowSelector.FlowSelectorKey.hash(into:)(uint64_t a1, uint64_t a2)
{
  LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(a2);
  String.hash(into:)();

  String.hash(into:)();
}

uint64_t static FlowSelector.FlowSelectorKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = BYTE1(a1);
  v4 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(a1);
  v6 = v5;
  if (v4 == LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v2) && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return specialized == infix<A>(_:_:)(v3, HIBYTE(v2));
}

Swift::Int FlowSelector.FlowSelectorKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowSelector.FlowSelectorKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowSelector.FlowSelectorKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowSelector.FlowSelectorKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a2;
  v5 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t FlowSelector.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized FlowSelector.init(with:)(v6, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t FlowSelector.init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized FlowSelector.init(with:)(v6, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t closure #1 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of DeviceState(a2, v5);
  type metadata accessor for TrafficIncidentBaseFlow(0);
  swift_allocObject();

  v5[0] = TrafficIncidentBaseFlow.init(with:flowHelper:)(v2, v5);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow, &protocol conformance descriptor for TrafficIncidentBaseFlow);
  v3 = Flow.eraseToAnyFlow()();

  return v3;
}

uint64_t closure #2 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2, char a3)
{
  outlined init with copy of DeviceState(a2, v12);
  type metadata accessor for ShareETABaseFlow();
  v5 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  v8 = static os_log_type_t.info.getter();
  v9 = *(v5 + 16);
  os_log(_:dso:log:_:_:)(v8, &dword_0, v9, "ShareETABaseFlow initialized", 28, 2, &_swiftEmptyArrayStorage);

  *(v5 + 32) = a1;
  *(v5 + 40) = 0;
  *(v5 + 41) = a3;
  outlined init with take of CATType(v12, v5 + 48);
  *(v5 + 96) = &type metadata for AssistantProperties;
  *(v5 + 104) = &protocol witness table for AssistantProperties;
  *&v12[0] = v5;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, type metadata accessor for ShareETABaseFlow, &protocol conformance descriptor for ShareETABaseFlow);

  v10 = Flow.eraseToAnyFlow()();

  return v10;
}

uint64_t closure #4 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 184))(a1) == 9)
  {
    return 0;
  }

  outlined init with copy of DeviceState(a2, v6);
  type metadata accessor for TrafficIncidentBaseFlow(0);
  swift_allocObject();

  v6[0] = TrafficIncidentBaseFlow.init(with:flowHelper:)(v4, v6);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow, &protocol conformance descriptor for TrafficIncidentBaseFlow);
  v5 = Flow.eraseToAnyFlow()();

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t FlowSelector.chooseFlow(nlIntent:)(uint64_t a1)
{
  v3 = type metadata accessor for NLIntent();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v61 - v7;
  v9 = static os_log_type_t.info.getter();
  v64 = v1;
  v10 = *(v1 + 16);
  v11 = *(v4 + 16);
  v11(v8, a1, v3);
  v12 = os_log_type_enabled(v10, v9);
  v65 = v10;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v63 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v62 = a1;
    v16 = v15;
    v68 = v15;
    *v14 = 136315138;
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v61 = v11;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v4 + 8))(v8, v3);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v68);

    *(v14 + 4) = v20;
    v11 = v61;
    _os_log_impl(&dword_0, v65, v9, "chooseFlow - receives NL intent: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    a1 = v62;

    v6 = v63;
  }

  else
  {
    (*(v4 + 8))(v8, v3);
  }

  v11(v6, a1, v3);
  type metadata accessor for LocationSearchIntent(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v21 + v22) = static LocationSearchIntent.domainNode;
  (*(v4 + 32))(v21 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v6, v3);

  v23 = static os_log_type_t.default.getter();
  v24 = v65;
  if (os_log_type_enabled(v65, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67 = v21;
    v68 = v26;
    *v25 = 136315394;
    if (one-time initialization token for verbNode != -1)
    {
      swift_once();
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    v27 = v66;
    if (v66 == 10)
    {
      v27 = 0;
    }

    LOBYTE(v67) = v27;
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v68);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v67 = v21;
    if (one-time initialization token for nounNode != -1)
    {
      swift_once();
    }

    IntentNodeTraversable.value<A>(forNode:)();
    v31 = v66;
    if (v66 == 8)
    {
      v31 = 0;
    }

    LOBYTE(v67) = v31;
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v68);

    *(v25 + 14) = v34;
    v24 = v65;
    _os_log_impl(&dword_0, v65, v23, "chooseFlow - receives NL intent with Verb: %s, Noun: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v68 = v21;
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v67 == 10)
  {
    v35 = 0;
  }

  else
  {
    v35 = v67;
  }

  v68 = v21;
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v67 == 8)
  {
    v36 = 0;
  }

  else
  {
    v36 = v67;
  }

  v37 = *(v64 + 24);
  if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35 | (v36 << 8)), (v39 & 1) != 0))
  {
    v40 = *(*(v37 + 56) + 16 * v38);
    v68 = v21;

    v40(&v67, &v68);

    return v67;
  }

  else
  {
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v42))
    {
      v43 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v43 = 136315650;
      v44 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v35);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v68);

      v47 = 0xE300000000000000;
      *(v43 + 4) = v46;
      v48 = 7958113;
      *(v43 + 12) = 2080;
      v49 = 0xE300000000000000;
      v50 = 6386789;
      if (v36 != 6)
      {
        v50 = 0x6574756F72;
        v49 = 0xE500000000000000;
      }

      v51 = 0xE700000000000000;
      v52 = 0x63696666617274;
      if (v36 != 4)
      {
        v52 = 0x746E656469636E69;
        v51 = 0xE800000000000000;
      }

      if (v36 <= 5)
      {
        v50 = v52;
        v49 = v51;
      }

      v53 = 0xE800000000000000;
      v54 = 0x65636E6174736964;
      if (v36 != 2)
      {
        v54 = 0x6F69746365726964;
        v53 = 0xEA0000000000736ELL;
      }

      if (v36)
      {
        v48 = 0x6E6F697461727564;
        v47 = 0xE800000000000000;
      }

      if (v36 > 1)
      {
        v48 = v54;
        v47 = v53;
      }

      if (v36 <= 3)
      {
        v55 = v48;
      }

      else
      {
        v55 = v50;
      }

      if (v36 <= 3)
      {
        v56 = v47;
      }

      else
      {
        v56 = v49;
      }

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v68);

      *(v43 + 14) = v57;
      *(v43 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSg03GeoC14DelegatePlugin20LocationSearchIntentCcMd, &_s11SiriKitFlow03AnyC0CSg03GeoC14DelegatePlugin20LocationSearchIntentCcMR);
      lazy protocol witness table accessor for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey();
      v58 = Dictionary.description.getter();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v68);

      *(v43 + 24) = v60;
      _os_log_impl(&dword_0, v24, v42, "chooseFlow no flow found for (%s, %s) current dictionary %s", v43, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }
}

uint64_t FlowSelector.chooseFlow(pommesResponse:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = PommesResponse.firstGeoExperience.getter();
  if (v8)
  {
    v9 = v8;
    v10 = static os_log_type_t.info.getter();
    v11 = v2[2];
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v24 = v11;
      v13 = v12;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v13 = 136315138;
      v14 = a1;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v4;
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);
      v4 = v25;

      *(v13 + 4) = v19;
      _os_log_impl(&dword_0, v24, v10, "chooseFlow - receives POMMES response: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    GeoExperience.geoClientComponent.getter();
    v20 = (*(*v2 + 128))(v7);

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v21, &dword_0, v1[2], "chooseFlow - receieves no geoExperience from PommesResponse", 59, 2, &_swiftEmptyArrayStorage);
    return 0;
  }

  return v20;
}

uint64_t FlowSelector.chooseFlow(geoClientComponent:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType();
  isa = v0[-1].isa;
  v79 = v0;
  __chkstk_darwin();
  v77 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction();
  v75 = *(v2 - 8);
  v76 = v2;
  __chkstk_darwin();
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v72 - v4;
  v6 = type metadata accessor for NLIntent();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin();
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v80 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  __chkstk_darwin();
  v84 = &v72 - v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoExperienceType();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v72 - v16;
  (*(v13 + 104))(&v72 - v16, enum case for Apple_Parsec_Siri_V2alpha_GeoExperienceType.geoExperienceWhereAmI(_:), v12);
  Apple_Parsec_Siri_V2alpha_GeoClientComponent.experienceType.getter();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoExperienceType and conformance Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoExperienceType, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoExperienceType);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v13 + 8);
  v19(v15, v12);
  v19(v17, v12);
  if (v18)
  {
    static Device.current.getter();
    v20 = type metadata accessor for GeoRCHFlowFactoryImpl();
    v21 = swift_allocObject();
    v90 = v20;
    v91 = &protocol witness table for GeoRCHFlowFactoryImpl;
    v89 = v21;
    v92 = static DialogHelper.globals.getter();
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for CATService();
    v22 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v22 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log();
    *(v22 + 32) = OS_os_log.init(subsystem:category:)();
    *(v22 + 16) = 0;
    v93 = v22;
    type metadata accessor for WhereAmIFlow();
    v24 = swift_allocObject();
    outlined init with copy of FlowHelperImpl(v88, v87);
    v25 = specialized WhereAmIFlow.init(with:)(v87, v24);
    outlined destroy of FlowHelperImpl(v88);
    *&v88[0] = v25;
    v26 = &lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow;
    v27 = type metadata accessor for WhereAmIFlow;
    v28 = &protocol conformance descriptor for WhereAmIFlow;
LABEL_3:
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(v26, v27, v28);
    v29 = Flow.eraseToAnyFlow()();

    return v29;
  }

  if ((Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter() & 1) == 0)
  {
    if ((Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasParkingLocationAction.getter() & 1) == 0)
    {
      return 0;
    }

    Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
    Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.getter();
    v43 = v76;
    v44 = *(v75 + 8);
    v44(v5, v76);
    v45 = v74;
    Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
    v46 = v77;
    Apple_Parsec_Siri_V2alpha_ParkingLocationAction.parkingLocationActionType.getter();
    v44(v45, v43);
    v48 = isa;
    v47 = v79;
    v49 = (*(isa + 11))(v46, v79);
    if (v49 == enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.save(_:))
    {
      v50 = objc_allocWithZone(INSaveParkingLocationIntent);
      v51 = String._bridgeToObjectiveC()();

      v52 = [v50 initWithParkingLocation:0 parkingNote:v51];

      outlined init with copy of DeviceState((v86 + 4), v88);
      type metadata accessor for SaveParkingLocationBaseFlow(0);
      v53 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v54 = v52;
      *(v53 + 16) = OS_os_log.init(subsystem:category:)();
      *(v53 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v88, v53 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
      *(v53 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = v54;
      type metadata accessor for SaveParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v88[0] = v53;
      v55 = &lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow;
      v56 = type metadata accessor for SaveParkingLocationBaseFlow;
      v57 = &protocol conformance descriptor for SaveParkingLocationBaseFlow;
    }

    else if (v49 == enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.retrieve(_:))
    {

      v63 = [objc_allocWithZone(INRetrieveParkingLocationIntent) init];
      outlined init with copy of DeviceState((v86 + 4), v88);
      type metadata accessor for RetrieveParkingLocationBaseFlow(0);
      v64 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v54 = v63;
      *(v64 + 16) = OS_os_log.init(subsystem:category:)();
      *(v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v88, v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
      *(v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = v54;
      type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v88[0] = v64;
      v55 = &lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow;
      v56 = type metadata accessor for RetrieveParkingLocationBaseFlow;
      v57 = &protocol conformance descriptor for RetrieveParkingLocationBaseFlow;
    }

    else
    {
      v65 = enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.delete(_:);
      v66 = v49;

      if (v66 != v65)
      {
        v70 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v70, &dword_0, v86[2], "chooseParkingLocationFlow - unsupported parking action type", 59, 2, &_swiftEmptyArrayStorage);
        (*(v48 + 1))(v46, v47);
        type metadata accessor for UnsupportedRequestFlow();
        v71 = swift_allocObject();
        type metadata accessor for OS_os_log();
        *(v71 + 16) = OS_os_log.init(subsystem:category:)();
        *&v88[0] = v71;
        v26 = &lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow;
        v27 = type metadata accessor for UnsupportedRequestFlow;
        v28 = &protocol conformance descriptor for UnsupportedRequestFlow;
        goto LABEL_3;
      }

      v67 = [objc_allocWithZone(INDeleteParkingLocationIntent) init];
      outlined init with copy of DeviceState((v86 + 4), v88);
      type metadata accessor for DeleteParkingLocationBaseFlow(0);
      v68 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v54 = v67;
      *(v68 + 16) = OS_os_log.init(subsystem:category:)();
      *(v68 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v88, v68 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
      *(v68 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = v54;
      type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v88[0] = v68;
      v55 = &lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow;
      v56 = type metadata accessor for DeleteParkingLocationBaseFlow;
      v57 = &protocol conformance descriptor for DeleteParkingLocationBaseFlow;
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(v55, v56, v57);
    v29 = Flow.eraseToAnyFlow()();

    return v29;
  }

  v30 = v84;
  Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = v85;
  v33 = v86[2];
  v34 = v80;
  v35 = *(v80 + 16);
  v35(v10, v30, v85);
  v79 = v33;
  if (os_log_type_enabled(v33, v31))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v88[0] = v37;
    *v36 = 136315138;
    v35(v73, v10, v32);
    v38 = String.init<A>(describing:)();
    v40 = v39;
    v41 = *(v34 + 8);
    v41(v10, v85);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v88);

    *(v36 + 4) = v42;
    v32 = v85;
    _os_log_impl(&dword_0, v79, v31, "chooseFlow - receives POMMES intent: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    v41 = *(v34 + 8);
    v41(v10, v32);
  }

  type metadata accessor for LocationSearchIntentBuilder();
  swift_allocObject();
  v58 = *LocationSearchIntentBuilder.init()();
  v59 = v84;
  v60 = (*(v58 + 376))(v84);

  v62 = v81;
  (*(*v60 + 456))(v61);

  v29 = (*(*v86 + 112))(v62);
  (*(v82 + 8))(v62, v83);
  v41(v59, v32);
  return v29;
}

uint64_t FlowSelector.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t FlowSelector.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t specialized WhereAmIFlow.init(with:)(_OWORD *a1, uint64_t a2)
{
  v13[3] = &type metadata for FlowHelperImpl;
  v13[4] = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  v13[0] = v4;
  v5 = a1[9];
  *(v4 + 144) = a1[8];
  *(v4 + 160) = v5;
  *(v4 + 176) = a1[10];
  v6 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v6;
  v7 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  v9 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  outlined init with copy of DeviceState(v13, a2 + 40);
  *(a2 + 80) = *(v4 + 184);

  v10 = static os_log_type_t.default.getter();
  v11 = *(a2 + 16);
  os_log(_:dso:log:_:_:)(v10, &dword_0, v11, "WhereAmIFlow has been initalized with .guardFlows", 49, 2, &_swiftEmptyArrayStorage);

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return a2;
}

uint64_t specialized FlowSelector.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  v59 = a2;
  outlined init with copy of DeviceState(&v74, v72);
  v8 = swift_allocObject();
  outlined init with take of CATType(v72, v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in FlowSelector.init(with:);
  *(v9 + 24) = v8;
  v73[0] = &outlined read-only object #0 of specialized FlowSelector.init(with:);
  v73[1] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v73[2] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?);
  v73[3] = v9;
  outlined init with copy of DeviceState(&v74, v71);
  v10 = swift_allocObject();
  outlined init with take of CATType(v71, v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #2 in FlowSelector.init(with:);
  *(v11 + 24) = v10;
  v73[4] = &outlined read-only object #1 of specialized FlowSelector.init(with:);
  v73[5] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v73[6] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v73[7] = v11;
  outlined init with copy of DeviceState(&v74, v70);
  v12 = swift_allocObject();
  outlined init with take of CATType(v70, v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #3 in FlowSelector.init(with:);
  *(v13 + 24) = v12;
  v73[8] = &outlined read-only object #2 of specialized FlowSelector.init(with:);
  v73[9] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v73[10] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v73[11] = v13;
  outlined init with copy of DeviceState(&v74, v69);
  v14 = swift_allocObject();
  outlined init with take of CATType(v69, v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #4 in FlowSelector.init(with:);
  *(v15 + 24) = v14;
  v73[12] = &outlined read-only object #3 of specialized FlowSelector.init(with:);
  v73[13] = &outlined read-only object #4 of specialized FlowSelector.init(with:);
  v73[14] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v73[15] = v15;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV_07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v17 = 0;
  while (1)
  {
    v60 = v17;
    v18 = &v73[4 * v17];
    v19 = *v18;
    v20 = v18[1];
    v22 = v18[2];
    v21 = v18[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    v63 = *(v19 + 16);
    if (v63)
    {
      break;
    }

LABEL_41:
    v17 = v60 + 1;
    if (v60 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMd, &_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMR);
      swift_arrayDestroy();
      *(v59 + 24) = v16;
      outlined init with take of CATType(&v74, v59 + 32);
      return v59;
    }
  }

  v62 = v19 + 32;
  v66 = v20 + 32;
  v67 = *(v20 + 16);
  swift_bridgeObjectRetain_n();

  v24 = 0;
  v61 = v19;
  v65 = v20;
  while (v24 < *(v19 + 16))
  {
    if (v67)
    {
      v64 = v24;
      v68 = *(v62 + v24);

      v25 = 0;
      while (1)
      {
        if (v25 >= *(v20 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v27 = *(v66 + v25);
        v28 = swift_allocObject();
        *(v28 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?);
        *(v28 + 24) = v23;
        v29 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v16;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v68 | (v27 << 8));
        v33 = *(v16 + 16);
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_44;
        }

        v36 = v31;
        if (*(v16 + 24) >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v23 = v29;
            if (v31)
            {
              goto LABEL_9;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
            v58 = static _DictionaryStorage.copy(original:)();
            if (*(v16 + 16))
            {
              v44 = (v58 + 64);
              v45 = ((1 << *(v58 + 32)) + 63) >> 6;
              if (v58 != v16 || v44 >= v16 + 64 + 8 * v45)
              {
                memmove(v44, (v16 + 64), 8 * v45);
              }

              v46 = 0;
              *(v58 + 16) = *(v16 + 16);
              v47 = 1 << *(v16 + 32);
              v48 = *(v16 + 64);
              if (v47 < 64)
              {
                v49 = ~(-1 << v47);
              }

              else
              {
                v49 = -1;
              }

              v50 = v49 & v48;
              v51 = (v47 + 63) >> 6;
              if ((v49 & v48) != 0)
              {
                do
                {
                  v52 = __clz(__rbit64(v50));
                  v50 &= v50 - 1;
LABEL_35:
                  v55 = v52 | (v46 << 6);
                  v56 = *(*(v16 + 56) + 16 * v55);
                  *(*(v58 + 48) + 2 * v55) = *(*(v16 + 48) + 2 * v55);
                  *(*(v58 + 56) + 16 * v55) = v56;
                }

                while (v50);
              }

              v53 = v46;
              while (1)
              {
                v46 = v53 + 1;
                if (__OFADD__(v53, 1))
                {
                  goto LABEL_47;
                }

                if (v46 >= v51)
                {
                  break;
                }

                v54 = *(v16 + 64 + 8 * v46);
                ++v53;
                if (v54)
                {
                  v52 = __clz(__rbit64(v54));
                  v50 = (v54 - 1) & v54;
                  goto LABEL_35;
                }
              }
            }

            v16 = v58;
            v23 = v29;
            if (v36)
            {
LABEL_9:
              v26 = (*(v16 + 56) + 16 * v32);
              *v26 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
              v26[1] = v28;

              goto LABEL_10;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
          v16 = *&v69[0];
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v68 | (v27 << 8));
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_48;
          }

          v32 = v37;
          v23 = v29;
          if (v36)
          {
            goto LABEL_9;
          }
        }

        *(v16 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v39 = (*(v16 + 48) + 2 * v32);
        *v39 = v68;
        v39[1] = v27;
        v40 = (*(v16 + 56) + 16 * v32);
        *v40 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
        v40[1] = v28;
        v41 = *(v16 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_45;
        }

        *(v16 + 16) = v43;
LABEL_10:
        ++v25;
        v20 = v65;
        if (v25 == v67)
        {

          v19 = v61;
          v24 = v64;
          break;
        }
      }
    }

    if (++v24 == v63)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey()
{
  result = lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey;
  if (!lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey;
  if (!lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowSelector.FlowSelectorKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowSelector.FlowSelectorKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5E68C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_5E6F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5E734()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t RuntimeError.__allocating_init(message:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t RuntimeError.init(message:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t RuntimeError.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static RuntimeError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RuntimeError(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin6ErrorsO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Errors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for Errors(uint64_t result, unsigned int a2)
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

uint64_t RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t key path setter for RetrieveParkingLocationBaseFlow.flowState : RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RetrieveParkingLocationBaseFlow.State(a1, v5);
  return (*(**a2 + 120))(v5);
}

uint64_t RetrieveParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of RetrieveParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t RetrieveParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of RetrieveParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RetrieveParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t RetrieveParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RetrieveParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RetrieveParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(v8, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t RetrieveParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v3 = __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *v5;
      *(a1 + 8) = 0;
      v7 = enum case for RCHFlowResult.error<A, B>(_:);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v8 - 8) + 104))(a1, v7, v8);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v14 - 8) + 32))(a1, v5, v14);
    }
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v10 = swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    *a1 = v10;
    *(a1 + 8) = 0;
    v12 = enum case for RCHFlowResult.error<A, B>(_:);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v13 - 8) + 104))(a1, v12, v13);
    return outlined destroy of RetrieveParkingLocationBaseFlow.State(v5);
  }
}

uint64_t RetrieveParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v9 + 96))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    v13 = v2[2];
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "RetrieveParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v15, 2u);
    }

    v16 = type metadata accessor for NLIntent();
    (*(*(v16 - 8) + 8))(v11, v16);
    return 1;
  }

  else if (v12 == enum case for Parse.pommesResponse(_:))
  {
    (*(v9 + 8))(v11, v8);
    (*(*v2 + 168))(1);
    v18 = v2[2];
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    result = 1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v18, v19, "RetrieveParkingLocationBaseFlow onInput returns true for Pommes response.", v21, 2u);

      return 1;
    }
  }

  else
  {
    v22 = v2[2];
    (*(v5 + 16))(v7, a1, v4);
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v22;
      v25 = v24;
      v31 = swift_slowAlloc();
      v33 = v31;
      *v25 = 136315138;
      v26 = Input.description.getter();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v32, v23, "SiriGeo currently doesn't support parse type: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return result;
}

uint64_t RetrieveParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t RetrieveParkingLocationBaseFlow.executeState()()
{
  v47 = v0;
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 88);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(v0 + 32);
      v4 = *v2;
      v5 = static os_log_type_t.error.getter();
      v6 = *(v3 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v46 = v8;
        *v7 = 136315138;
        *(v0 + 16) = v4;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v46);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "RetrieveParkingLocationBaseFlow execute requestUnsupported with error %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      static ExecuteResponse.complete()();
    }

    else
    {
      v21 = *(v0 + 64);
      v20 = *(v0 + 72);
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      v24 = *(v0 + 32);
      (*(v23 + 32))(v20, v2, v22);
      v25 = static os_log_type_t.info.getter();
      v26 = *(v24 + 16);
      v27 = *(v23 + 16);
      v27(v21, v20, v22);
      v28 = os_log_type_enabled(v26, v25);
      v29 = *(v0 + 64);
      if (v28)
      {
        v45 = v25;
        v30 = *(v0 + 48);
        v31 = *(v0 + 56);
        v32 = *(v0 + 40);
        v33 = swift_slowAlloc();
        log = v26;
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136315138;
        v27(v31, v29, v32);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        v38 = *(v30 + 8);
        v38(v29, v32);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v46);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_0, log, v45, "RetrieveParkingLocationBaseFlow execute rchComplete with result %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      else
      {
        v38 = *(*(v0 + 48) + 8);
        v38(*(v0 + 64), *(v0 + 40));
      }

      v40 = *(v0 + 72);
      v41 = *(v0 + 40);
      static ExecuteResponse.complete()();
      v38(v40, v41);
    }

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v12 = *(v0 + 32);
    v13 = *v2;
    *(v0 + 96) = *v2;
    v14 = *(v12 + 16);
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "RetrieveParkingLocationBaseFlow execute state handle.", v16, 2u);
    }

    v44 = (*(**(v0 + 32) + 216) + **(**(v0 + 32) + 216));
    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    *v17 = v0;
    v17[1] = DeleteParkingLocationBaseFlow.executeState();
    v18 = *(v0 + 24);

    return v44(v18, v13);
  }
}

uint64_t RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo31INRetrieveParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo31INRetrieveParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1)
{
  v2 = *(*(v1 + 168) + 16);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RetrieveParkingLocationBaseFlow makeRCHflow.", v4, 2u);
  }

  v5 = *(v1 + 192);
  v7 = *(v1 + 168);
  v6 = *(v1 + 176);
  v25 = *(v1 + 160);
  v26 = *(v1 + 184);
  v8 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_0, v2, "RetrieveParkingLocationBaseFlow makeRCHFlow", 43, 2, &_swiftEmptyArrayStorage);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INRetrieveParkingLocationIntentResponse, INRetrieveParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  swift_allocObject();
  v24 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v23 = v6;
  v21 = v5;
  v9 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v22 = *(*v7 + 136);
  (v22)(v9);
  type metadata accessor for RetrieveParkingHandleIntentStrategy();
  v10 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v10 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v1 + 16), v10 + 24);
  *(v10 + 64) = 0;
  *(v1 + 136) = v10;
  lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy, type metadata accessor for RetrieveParkingHandleIntentStrategy, &protocol conformance descriptor for RetrieveParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  v12 = swift_allocObject();
  *(v12 + 16) = OS_os_log.init(subsystem:category:)();
  v22();
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v14);
  (*(v13 + 56))(v14, v13);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
  v15 = *(v1 + 120);
  v16 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v15);
  *(v1 + 144) = v12;
  v17 = *(v16 + 8);
  ParkingHandleIntentStrategy = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingBaseRCHStrategy and conformance RetrieveParkingBaseRCHStrategy, type metadata accessor for RetrieveParkingBaseRCHStrategy, &protocol conformance descriptor for RetrieveParkingBaseRCHStrategy);
  v17(v1 + 144, v21, v24, v25, ParkingBaseRCHStrategy, ParkingHandleIntentStrategy, v15, v16);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v26 + 8))(v21, v23);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  v19 = *(v1 + 8);

  return v19();
}

uint64_t closure #1 in RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v5);
}

uint64_t RetrieveParkingLocationBaseFlow.deinit()
{
  outlined destroy of RetrieveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t RetrieveParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of RetrieveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RetrieveParkingLocationBaseFlow(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(v11, a2, v12, a4, a5);
}

uint64_t outlined init with copy of RetrieveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 16))(a2, a1, ParkingLocationBase);
  return a2;
}

uint64_t outlined assign with take of RetrieveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 40))(a2, a1, ParkingLocationBase);
  return a2;
}

uint64_t outlined destroy of RetrieveParkingLocationBaseFlow.State(uint64_t a1)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 8))(a1, ParkingLocationBase);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow, type metadata accessor for RetrieveParkingLocationBaseFlow, &protocol conformance descriptor for RetrieveParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow, type metadata accessor for RetrieveParkingLocationBaseFlow, &protocol conformance descriptor for RetrieveParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_60D4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  result = type metadata accessor for RetrieveParkingLocationBaseFlow.State(319);
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

void type metadata completion function for RetrieveParkingLocationBaseFlow.State(uint64_t a1)
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INRetrieveParkingLocationIntentResponse, INRetrieveParkingLocationIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>);
    }
  }
}

unint64_t EndNavigationFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of EndNavigationFlow.State(v1);
  return v1;
}

unint64_t outlined copy of EndNavigationFlow.State(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t EndNavigationFlow.flowState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return outlined consume of EndNavigationFlow.State(v3);
}

unint64_t outlined consume of EndNavigationFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t EndNavigationFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void *EndNavigationFlow.__allocating_init(with:checkNavigation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized EndNavigationFlow.init(with:checkNavigation:)(v10, a2, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

void *EndNavigationFlow.init(with:checkNavigation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized EndNavigationFlow.init(with:checkNavigation:)(v10, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t EndNavigationFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 192))(v2, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties);
}

uint64_t EndNavigationFlow.executeState()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(EndNavigationFlow.executeState(), 0, 0);
}

uint64_t EndNavigationFlow.executeState()()
{
  v23 = v0;
  v1 = (*(**(v0 + 40) + 120))();
  v2 = *(v0 + 40);
  switch(v1)
  {
    case 0:
      v21 = (*(*v2 + 216) + **(*v2 + 216));
      v8 = swift_task_alloc();
      *(v0 + 48) = v8;
      *v8 = v0;
      v8[1] = AnswerETAFlow.executeState();
      v4 = *(v0 + 32);
      v5 = v21;

      return v5(v4);
    case 1:
      v20 = (*(*v2 + 240) + **(*v2 + 240));
      v7 = swift_task_alloc();
      *(v0 + 56) = v7;
      *v7 = v0;
      v7[1] = EndNavigationFlow.executeState();

      return v20();
    case 2:
      v19 = (*(*v2 + 232) + **(*v2 + 232));
      v3 = swift_task_alloc();
      *(v0 + 72) = v3;
      *v3 = v0;
      v3[1] = AnswerETAFlow.executeState();
      v4 = *(v0 + 32);
      v5 = v19;

      return v5(v4);
    default:
      v9 = v1;
      v10 = static os_log_type_t.default.getter();
      v11 = v2[2];
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v22 = v13;
        *v12 = 136315138;
        *(v0 + 24) = v9;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v14 = String.init<A>(describing:)();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v11, v10, "EndNavigationFlow execute request unsupported with err: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
      }

      type metadata accessor for UnsupportedRequestFlow();
      v17 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v17 + 16) = OS_os_log.init(subsystem:category:)();
      *(v0 + 16) = v17;
      lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of EndNavigationFlow.State(v9);

      v18 = *(v0 + 8);

      return v18();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v7 = (*(*v2 + 208) + **(*v2 + 208));
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = AnswerETAFlow.executeState();
  v5 = *(v1 + 32);

  return v7(v5);
}

uint64_t EndNavigationFlow.preChecks()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(EndNavigationFlow.preChecks(), 0, 0);
}

uint64_t EndNavigationFlow.preChecks()()
{
  (*(**(v0 + 192) + 168))();
  if ((*(v1 + 8))())
  {
    (*(**(v0 + 192) + 128))(1);
    static ExecuteResponse.ongoing(requireInput:)();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 192);
    v5 = v4[3];
    *(v0 + 40) = &type metadata for NavigationControl;
    *(v0 + 48) = &protocol witness table for NavigationControl;
    *(v0 + 16) = 0;
    v6 = *(*v4 + 144);
    v7 = (*v4 + 144) & 0xFFFFFFFFFFFFLL | 0x722A000000000000;
    *(v0 + 240) = v6;
    *(v0 + 248) = v7;
    v6();
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    v10 = (*(v9 + 80))(v8, v9);
    *(v0 + 256) = v10;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v13 = (*(*v5 + 112) + **(*v5 + 112));
    v11 = swift_task_alloc();
    *(v0 + 264) = v11;
    *v11 = v0;
    v11[1] = EndNavigationFlow.preChecks();
    v12 = *(v0 + 232);

    return v13(v12, v0 + 16, v10);
  }
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = EndNavigationFlow.preChecks();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = EndNavigationFlow.preChecks();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error while building NotNavigating", 48, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 128);
  swift_errorRetain();
  v4(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v5 = v0[1];

  return v5();
}

uint64_t EndNavigationFlow.handleDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(EndNavigationFlow.handleDialog(), 0, 0);
}

uint64_t EndNavigationFlow.handleDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = 2;
  v3 = *(*v1 + 144);
  v4 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x722A000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v11 = (*(*v2 + 112) + **(*v2 + 112));
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = EndNavigationFlow.handleDialog();
  v9 = v0[29];

  return v11(v9, v0 + 2, v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = EndNavigationFlow.handleDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = EndNavigationFlow.handleDialog();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error when building EndNavigation experience", 58, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 128);
  swift_errorRetain();
  v4(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v5 = v0[1];

  return v5();
}

uint64_t EndNavigationFlow.endNavigation()()
{
  *(v1 + 104) = v0;
  return _swift_task_switch(EndNavigationFlow.endNavigation(), 0, 0);
}

{
  v1 = v0[13];
  v2 = [objc_allocWithZone(SALocalSearchNavigationEnd) init];
  v0[14] = v2;
  (*(*v1 + 144))();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v7 = v0;
  v7[1] = EndNavigationFlow.endNavigation();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v5, v8, v6);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  if (v1)
  {
    v5 = static os_log_type_t.default.getter();
    v6 = 2;
    os_log(_:dso:log:_:_:)(v5, &dword_0, v3[2], "End Navigation results in SALocalSearchNavigationEndCompleted", 61, 2, &_swiftEmptyArrayStorage);
    v7 = v4;
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v6 = swift_allocError();
    *v8 = xmmword_B9350;
    *(v8 + 16) = 3;
    v7 = v2;
    v2 = v4;
  }

  (*(*v3 + 128))(v6);

  v9 = v0[1];

  return v9();
}

{
  v16 = v0;
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = static os_log_type_t.error.getter();
  v3 = *(v1 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v0[12] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v2, "Ace Command submission failed with error: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[17];
  v11 = v0[14];
  v12 = *(*v0[13] + 128);
  swift_errorRetain();
  v12(v10);

  v13 = v0[1];

  return v13();
}

uint64_t EndNavigationFlow.endNavigation()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = EndNavigationFlow.endNavigation();
  }

  else
  {
    v4 = EndNavigationFlow.endNavigation();
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t EndNavigationFlow.deinit()
{

  outlined consume of EndNavigationFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t EndNavigationFlow.__deallocating_deinit()
{

  outlined consume of EndNavigationFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance EndNavigationFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance EndNavigationFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance EndNavigationFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EndNavigationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EndNavigationFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

void *specialized EndNavigationFlow.init(with:checkNavigation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  a4[2] = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  a4[3] = v12;
  a4[4] = 0;
  a4[10] = a2;
  a4[11] = a3;
  outlined init with copy of DeviceState(v16, (a4 + 5));
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_0, a4[2], "EndNavigationFlow init with prechecks", 37, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return a4;
}

uint64_t sub_63524()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t instantiation function for generic protocol witness table for EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow, a2, type metadata accessor for EndNavigationFlow, &protocol conformance descriptor for EndNavigationFlow);
  result = lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow, v3, type metadata accessor for EndNavigationFlow, &protocol conformance descriptor for EndNavigationFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_63678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_636C4(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  outlined copy of EndNavigationFlow.State(*a1);
  return v3(v2);
}

uint64_t sub_637C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin013EndNavigationB0C5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StandardMapData.CodingKeys()
{
  v1 = 0x656475746974616CLL;
  if (*v0 != 1)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StandardMapData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized StandardMapData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StandardMapData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

void protocol witness for Decodable.init(from:) in conformance StandardMapData(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = specialized StandardMapData.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
    a1[3] = v7;
  }
}

uint64_t StandardMapData.makeAppPunchout(idiom:)(double a1, double a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = VRXIdiom.isWatchOS.getter();
  v10 = StandardMapData.makePunchoutURI(includeLabel:)((v9 & 1) == 0, a4, a5, a1, a2);

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)(v10);
}

uint64_t StandardMapData.makePunchoutURI(includeLabel:)(char a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_B89E0;
  *(v10 + 56) = &type metadata for Double;
  *(v10 + 64) = &protocol witness table for Double;
  *(v10 + 32) = a4;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_B89E0;
  *(v13 + 56) = &type metadata for Double;
  *(v13 + 64) = &protocol witness table for Double;
  *(v13 + 32) = a5;
  v14 = String.init(format:_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  if ((a1 & 1) != 0 && (a2 || a3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v20._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 15729;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 1030515750;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
  }

  else
  {
    v18._countAndFlagsBits = 1030515750;
    v18._object = 0xE400000000000000;
    String.append(_:)(v18);
  }

  return 0xD000000000000017;
}

uint64_t StandardMapData.makePunchoutURL(idiom:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = VRXIdiom.isWatchOS.getter();
  v21[0] = StandardMapData.makePunchoutURI(includeLabel:)((v15 & 1) == 0, a2, a3, a5, a6);
  v21[1] = v16;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v18 = v17;
  (*(v12 + 8))(v14, v11);

  if (v18)
  {
    URL.init(string:)();
  }

  else
  {
    v20 = type metadata accessor for URL();
    return (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

id static StandardMapData.blueTint.getter()
{
  v0 = [objc_allocWithZone(RFColor) init];
  [v0 setName:8];
  return v0;
}

uint64_t specialized StandardMapData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double specialized StandardMapData.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v9;
    v10[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StandardMapData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StandardMapData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ParkingCommon.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t ParkingCommon.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  type metadata accessor for DialogPhase();
  v6[57] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v6[58] = v7;
  v6[59] = *(v7 - 8);
  v6[60] = swift_task_alloc();

  return _swift_task_switch(ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:), 0, 0);
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)()
{
  v1 = v0[56];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = (*(v3 + 128))(v2, v3);
  v0[61] = v4;
  v5 = v1[6];
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[62] = v7;
  v11 = (*(*v4 + 152) + **(*v4 + 152));
  v8 = swift_task_alloc();
  v0[63] = v8;
  *v8 = v0;
  v8[1] = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  v9 = v0[52];

  return v11(v9, v7);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 328));

  return _swift_task_switch(ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:), 0, 0);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 408);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)(uint64_t a1)
{
  *(*v2 + 512) = a1;

  if (v1)
  {

    v3 = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  }

  else
  {

    v3 = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v78 = v1;
  v2 = *(v1 + 448);
  v3 = static os_log_type_t.default.getter();
  v71 = v2[2];
  os_log(_:dso:log:_:_:)(v3, &dword_0, v71, "RF: dialogResult success", 24, 2, &_swiftEmptyArrayStorage);
  static DialogPhase.summary.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  v6 = (*(v5 + 128))(v4, v5);
  *(v1 + 208) = 0;
  *(v1 + 232) = &type metadata for GeoLabel;
  *(v1 + 240) = &protocol witness table for GeoLabel;
  *(v1 + 216) = 0;
  *(v1 + 224) = 2;
  v7 = (*(*v6 + 136))(v1 + 208);
  v9 = v8;
  LOBYTE(v4) = v10;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 208));
  if (v4)
  {
    outlined consume of Result<String, Error>(v7, v9, 1);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = *(v1 + 440);
  v67 = v9;
  v68 = v7;
  if (v11)
  {
    v12 = *(v1 + 432);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(v1 + 448);
      v15 = v14[6];
      v16 = v14[7];
      __swift_project_boxed_opaque_existential_1(v14 + 3, v15);
      v17 = *(v16 + 128);

      v18 = v17(v15, v16);
      *(v1 + 392) = &type metadata for GeoLabel;
      *(v1 + 400) = &protocol witness table for GeoLabel;
      *(v1 + 368) = v12;
      *(v1 + 376) = v11;
      *(v1 + 384) = 0;
      v19 = (*(*v18 + 136))(v1 + 368);
      v21 = v20;
      v23 = v22;

      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 368));
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      outlined consume of Result<String, Error>(v19, v21, 1);
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_10:
  v24 = *(v1 + 448);
  v25 = v24[6];
  v26 = v24[7];
  __swift_project_boxed_opaque_existential_1(v24 + 3, v25);
  v27 = (*(v26 + 128))(v25, v26);
  *(v1 + 272) = &type metadata for GeoLabel;
  *(v1 + 280) = &protocol witness table for GeoLabel;
  *(v1 + 248) = xmmword_BC400;
  *(v1 + 264) = 2;
  v28 = (*(*v27 + 136))(v1 + 248);
  v30 = v29;
  LOBYTE(v25) = v31;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 248));
  if (v25)
  {
    outlined consume of Result<String, Error>(v28, v30, 1);
    v69 = 0xE000000000000000;
    v70 = 0;
  }

  else
  {
    v69 = v30;
    v70 = v28;
  }

  v32 = *(v1 + 448);
  v33 = v32[6];
  v34 = v32[7];
  __swift_project_boxed_opaque_existential_1(v32 + 3, v33);
  v35 = (*(v34 + 128))(v33, v34);
  v36 = CLPlacemark.makeDialogLocation()();
  *(v1 + 312) = &type metadata for GeoLabel;
  *(v1 + 320) = &protocol witness table for GeoLabel;
  *(v1 + 288) = v36;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  v37 = (*(*v35 + 136))(v1 + 288);
  v39 = v38;
  v41 = v40;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 288));
  if (v41)
  {
    outlined consume of Result<String, Error>(v37, v39, 1);
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v42 = [*(v1 + 424) location];
  v43 = 0;
  v44 = 0;
  if (v42)
  {
    v45 = v42;
    [v42 coordinate];
    v44 = v46;
  }

  v47 = (v1 + 16);
  v48 = [*(v1 + 424) location];
  if (v48)
  {
    v49 = v48;
    [v48 coordinate];
    v43 = v50;
  }

  *(v1 + 16) = v19;
  *(v1 + 24) = v21;
  *(v1 + 32) = v37;
  *(v1 + 40) = v39;
  *(v1 + 48) = v68;
  *(v1 + 56) = v67;
  *(v1 + 64) = v44;
  *(v1 + 72) = v43;
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v77 = v53;
    *v52 = 136315138;
    v54 = *(v1 + 32);
    *(v1 + 80) = *v47;
    *(v1 + 96) = v54;
    v55 = *(v1 + 64);
    *(v1 + 112) = *(v1 + 48);
    *(v1 + 128) = v55;
    outlined init with copy of GeoParkedCar(v1 + 16, v1 + 144);
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v77);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_0, v71, v51, "RF: parking model car: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  v59 = *(v1 + 512);
  v73 = *v47;
  v74 = *(v1 + 32);
  v75 = *(v1 + 48);
  v76 = *(v1 + 64);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v1 + 520) = ResponseFactory.init()();
  *(v1 + 352) = &type metadata for GeoDataModels;
  *(v1 + 360) = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
  v60 = swift_allocObject();
  *(v1 + 328) = v60;
  *(v60 + 16) = v73;
  *(v60 + 32) = v74;
  *(v60 + 48) = v75;
  *(v60 + 64) = v76;
  *(v60 + 80) = v70;
  *(v60 + 88) = v69;
  *(v60 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v61 = swift_allocObject();
  *(v1 + 528) = v61;
  *(v61 + 16) = xmmword_B8FB0;
  *(v61 + 32) = v59;
  v72 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v62 = v59;
  v63 = swift_task_alloc();
  *(v1 + 536) = v63;
  *v63 = v1;
  v63[1] = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  v64 = *(v1 + 480);
  v65 = *(v1 + 408);

  return v72(v65, v1 + 328, v61, v64);
}

uint64_t RetrieveParkingHandleIntentStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t CLLocation.makeDialogLocation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin();
  v2 = &v9 - v1;
  type metadata accessor for DialogLocation.Builder();
  swift_allocObject();
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B8FB0;
  type metadata accessor for DialogLocationValue.Builder();
  swift_allocObject();
  DialogLocationValue.Builder.init()();
  type metadata accessor for DialogLocationAddress.Builder();
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  v4 = [v0 shortDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.toSpeakableString.getter();

  v5 = type metadata accessor for SpeakableString();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of SpeakableString?(v2);
  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v6 = dispatch thunk of DialogLocationValue.Builder.build()();

  *(v3 + 32) = v6;
  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v7 = dispatch thunk of DialogLocation.Builder.build()();

  return v7;
}

uint64_t sub_65768()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  return v2;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v1 + 24);
  return v1;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for SaveParkingLocation;
  v0[6] = &protocol witness table for SaveParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo27INSaveParkingLocationIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo27INSaveParkingLocationIntentCGMR);
  v1 = ParameterResolutionRecord.intent.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 104) + **(**v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v6(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingLocationUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t GeoRCHFlowFactoryImpl.makeRCHFlow<A>(strategy:childProducers:resolvedApp:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a4;
  v21 = a1;
  v22 = a2;
  v20[0] = a6;
  v20[1] = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for RCHChildFlowProducersAsync();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v20 - v9;
  v11 = *(a5 - 8);
  __chkstk_darwin();
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RCHFlowFactory();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v20 - v16;
  (*(v11 + 16))(v13, v21, a5);
  type metadata accessor for RCHChildFlowFactory();
  (*(v8 + 16))(v10, v22, v7);
  RCHChildFlowFactory.__allocating_init(producers:)();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v18 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();
  (*(v15 + 8))(v17, v14);
  return v18;
}

uint64_t UnsupportedRequestFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t UnsupportedRequestFlow.execute()(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for TemplatingResult();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v1[20] = *(v3 + 64);
  v1[21] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[22] = v4;
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v1;
  v5[1] = UnsupportedRequestFlow.execute();

  return static ErrorTemplates.genericErrorLegacy()(v4);
}

{
  static ExecuteResponse.complete()();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t UnsupportedRequestFlow.execute()()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = UnsupportedRequestFlow.execute();
  }

  else
  {
    v2 = UnsupportedRequestFlow.execute();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  *(v0 + 40) = &type metadata for FlowHelperImpl;
  *(v0 + 48) = &protocol witness table for FlowHelperImpl;
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v6 + 16);
  outlined init with copy of DeviceState(v6 + 144, v0 + 56);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 16, v0 + 96);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v5);
  outlined init with take of CATType((v0 + 96), v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 200) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  (*(v3 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = UnsupportedRequestFlow.execute();
  v10 = *(v0 + 136);

  return SimpleOutputFlowAsync.execute()(v10);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t UnsupportedRequestFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedRequestFlow();
  lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t UnsupportedRequestFlow.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t sub_66A40()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t protocol witness for Flow.execute() in conformance UnsupportedRequestFlow(uint64_t a1)
{
  v6 = (*(**v1 + 96) + **(**v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance UnsupportedRequestFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedRequestFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_66C8C()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow()
{
  result = lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow;
  if (!lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow)
  {
    type metadata accessor for UnsupportedRequestFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow);
  }

  return result;
}

uint64_t RetrieveParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v42 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v41 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v41);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v0[6] + 96))(v0[7], v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");
    v17 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();

    v19 = v0[7];
    if (v18)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v20 = type metadata accessor for NLIntent();
      (*(*(v20 - 8) + 8))(v19, v20);
LABEL_10:

      v27 = v0[1];

      return v27(v3);
    }

    type metadata accessor for RuntimeError();
    v33 = swift_allocObject();
    *(v33 + 16) = 0xD000000000000039;
    *(v33 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
    swift_allocError();
    *v34 = v33;
    swift_willThrow();

    v35 = type metadata accessor for NLIntent();
    (*(*(v35 - 8) + 8))(v19, v35);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v22 + 96))(v0[7], v0[5]);
      v24 = *v21;
      v25 = PommesResponse.firstGeoExperience.getter();
      if (v25)
      {
        v26 = v25;
        v3 = [objc_allocWithZone(INRetrieveParkingLocationIntent) init];

        goto LABEL_10;
      }

      v36 = v0[4];
      v37 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v37, &dword_0, *(v36 + 16), "Received pommes response but no geo experience is present", 57, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v38 = swift_allocObject();
      *(v38 + 16) = 0xD00000000000002BLL;
      *(v38 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v39 = v38;
      swift_willThrow();
    }

    else
    {
      v29 = v0[4];
      v30 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v30, &dword_0, *(v29 + 16), "makeIntentFromParse should have INRetrieveParkingLocationIntent passed in", 73, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v31 = swift_allocObject();
      *(v31 + 16) = 0xD000000000000049;
      *(v31 + 24) = 0x80000000000C27B0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v32 = v31;
      swift_willThrow();
      (*(v22 + 8))(v21, v23);
    }
  }

  v40 = v0[1];

  return v40();
}

uint64_t RetrieveParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  Input.parse.getter();
  (*(v2 + 16))(v4, v6, v1);
  v7 = (*(v2 + 88))(v4, v1);
  if (v7 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    static ActionForInput.handle()();
    (*(v2 + 8))(v6, v1);
    v8 = type metadata accessor for NLIntent();
    return (*(*(v8 - 8) + 8))(v4, v8);
  }

  else if (v7 == enum case for Parse.pommesResponse(_:))
  {
    v10 = *(v2 + 8);
    v10(v4, v1);
    v11 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, *(v0 + 16), "actionForInput - pommesResponse", 31, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.handle()();
    return (v10)(v6, v1);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v12, &dword_0, *(v0 + 16), "actionForInput - shouldn't hit default case", 43, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.cancel()();
    v13 = *(v2 + 8);
    v13(v6, v1);
    return (v13)(v4, v1);
  }
}

uint64_t RetrieveParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, ParkingBaseRCHStrategy, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, ParkingBaseRCHStrategy, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, ParkingBaseRCHStrategy, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, ParkingBaseRCHStrategy, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void __swiftcall GeoParkedCar.init(note:localizedAddress:locationInfo:)(GeoFlowDelegatePlugin::GeoParkedCar *__return_ptr retstr, Swift::String_optional note, Swift::String_optional localizedAddress, GeoFlowDelegatePlugin::StandardMapData locationInfo)
{
  retstr->note = note;
  retstr->localizedAddress = localizedAddress;
  retstr->locationInfo = locationInfo;
}

double GeoParkedCar.locationInfo.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoParkedCar.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoParkedCar.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoParkedCar.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 48);
    v12 = *(v3 + 32);
    v13 = v10;
    v11[15] = 2;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

double GeoParkedCar.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized GeoParkedCar.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t specialized GeoParkedCar.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000C16A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized GeoParkedCar.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v24 = v9;
  LOBYTE(v29[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v23 = v12;
  v34 = 2;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v32;
  v16 = v33;
  v17 = v24;
  *&v25 = v24;
  v18 = v23;
  *(&v25 + 1) = v11;
  *&v26 = v23;
  *(&v26 + 1) = v14;
  v27 = v32;
  v28 = v33;
  outlined init with copy of GeoParkedCar(&v25, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v29[0] = v17;
  v29[1] = v11;
  v29[2] = v18;
  v29[3] = v14;
  v30 = v15;
  v31 = v16;
  result = outlined destroy of GeoParkedCar(v29);
  v20 = v26;
  *a2 = v25;
  a2[1] = v20;
  v21 = v28;
  a2[2] = v27;
  a2[3] = v21;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoParkedCar(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoParkedCar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TrafficIncidentUnsupportedValueStrategy.init(with:)(a1);
  return v2;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v3 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v3 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v3 + 32) = OS_os_log.init(subsystem:category:)();
  *(v3 + 16) = 1;
  *(v1 + 24) = v3;
  outlined init with take of CATType(a1, v1 + 32);
  return v1;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for AceOutput();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[45] = v5;
  v3[46] = *(v5 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

char *TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v72 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v1 = ParameterResolutionRecord.result.getter();
  *(v0 + 392) = v1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 280);
  if (!v2)
  {

    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v31, &dword_0, *(v3 + 16), "resolutionResult is not INReportIncidentIncidentTypeResolutionResult", 68, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for RuntimeError();
    v32 = swift_allocObject();
    *(v32 + 16) = 0xD00000000000005CLL;
    *(v32 + 24) = 0x80000000000C2990;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    swift_allocError();
    *v33 = v32;
    swift_willThrow();
LABEL_43:

    v66 = *(v0 + 8);

    return v66();
  }

  v4 = v2;
  v5 = *(v3 + 16);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v71 = v8;
    *v7 = 136315138;
    *(v0 + 256) = [v4 unsupportedReason];
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v5;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v71);

    *(v7 + 4) = v12;
    v5 = v11;
    _os_log_impl(&dword_0, v11, v6, "INReportIncidentIncidentTypeUnsupportedReason is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v13 = v1;
  if ([v4 unsupportedReason] == &dword_0 + 2)
  {
    v14 = [v4 alternatives];

    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = specialized _arrayConditionalCast<A, B>(_:)(v15);

    if (v16)
    {
      if (v16 >> 62)
      {
LABEL_47:
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
      }

      v68 = v0;
      v69 = v13;
      v67 = v5;
      if (v17)
      {
        v71 = &_swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return result;
        }

        v0 = v17;
        v19 = 0;
        v20 = v71;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v16 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = [v21 localizedDisplayString];
          if (v23)
          {
            v24 = v23;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;
          }

          else
          {

            v25 = 0;
            v27 = 0xE000000000000000;
          }

          v71 = v20;
          isa = v20[2].isa;
          v28 = v20[3].isa;
          if (isa >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), isa + 1, 1);
            v20 = v71;
          }

          ++v19;
          v20[2].isa = (isa + 1);
          v30 = &v20[2 * isa];
          v30[4].isa = v25;
          v30[5].isa = v27;
        }

        while (v17 != v19);
      }

      else
      {

        v20 = &_swiftEmptyArrayStorage;
      }

      v46 = 0;
      v13 = v20[2].isa;
      v5 = v20 + 5;
      v16 = &_swiftEmptyArrayStorage;
LABEL_26:
      v47 = &v5[2 * v46];
      while (v13 != v46)
      {
        if (v46 >= v20[2].isa)
        {
          __break(1u);
          goto LABEL_47;
        }

        v49 = v47[-1].isa;
        v48 = v47->isa;
        v47 += 2;
        v46 = (v46 + 1);
        v50 = (v48 >> 56) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v50 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (v50)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
            v16 = v71;
          }

          v0 = *(v16 + 16);
          v52 = *(v16 + 24);
          if (v0 >= v52 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v0 + 1, 1);
            v16 = v71;
          }

          *(v16 + 16) = v0 + 1;
          v53 = (v16 + 16 * v0);
          v53[4] = v49;
          v53[5] = v48;
          goto LABEL_26;
        }
      }

      if (*(v16 + 16))
      {
        v54 = v68[35];
        v55 = v54[3];
        v68[20] = type metadata accessor for TrafficIncident(0);
        v68[21] = &protocol witness table for TrafficIncident;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v68 + 17);
        v57 = ParameterResolutionRecord.intent.getter();
        v58 = specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(v57);

        *boxed_opaque_existential_0 = v16;
        *(boxed_opaque_existential_0 + 8) = v58 & 1;
        swift_storeEnumTagMultiPayload();
        v59 = v54[7];
        v60 = v54[8];
        __swift_project_boxed_opaque_existential_1(v54 + 4, v59);
        v61 = (*(v60 + 80))(v59, v60);
        v68[50] = v61;
        v70 = (*(*v55 + 112) + **(*v55 + 112));
        v62 = swift_task_alloc();
        v68[51] = v62;
        *v62 = v68;
        v62[1] = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        v40 = v68[48];
        v41 = v68 + 17;
        v42 = v61;
        goto LABEL_39;
      }

      v63 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v63, &dword_0, v67, "unsupportedIncidentTypes should not be empty list of strings", 60, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v64 = swift_allocObject();
      *(v64 + 16) = 0xD000000000000042;
      *(v64 + 24) = 0x80000000000C2AC0;
      lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
      swift_allocError();
      *v65 = v64;
      swift_willThrow();

      v0 = v68;
    }

    else
    {
      v43 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v43, &dword_0, v5, "unsupportedIncidentTypes is not INSupportedTrafficIncidentType", 62, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v44 = swift_allocObject();
      *(v44 + 16) = 0xD000000000000046;
      *(v44 + 24) = 0x80000000000C2A30;
      lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
      swift_allocError();
      *v45 = v44;
      swift_willThrow();
    }

    goto LABEL_43;
  }

  v34 = *(v0 + 280);

  v35 = v34[3];
  *(v0 + 40) = type metadata accessor for TrafficIncident(0);
  *(v0 + 48) = &protocol witness table for TrafficIncident;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  swift_storeEnumTagMultiPayload();
  v36 = v34[7];
  v37 = v34[8];
  __swift_project_boxed_opaque_existential_1(v34 + 4, v36);
  v38 = (*(v37 + 80))(v36, v37);
  *(v0 + 424) = v38;
  v70 = (*(*v35 + 112) + **(*v35 + 112));
  v39 = swift_task_alloc();
  *(v0 + 432) = v39;
  *v39 = v0;
  v39[1] = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v40 = *(v0 + 376);
  v41 = (v0 + 16);
  v42 = v38;
LABEL_39:

  return v70(v40, v41, v42);
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v3 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v42 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 216) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  v6 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v39 = v6;
    swift_once();
    v6 = v39;
  }

  v7 = logObject;
  os_log(_:dso:log:_:_:)(v6, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "sendCompletionViewOutputSuccess", v9, 2u);
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 288);
  v13 = *(v0 + 296);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v14 = static os_log_type_t.info.getter();
  v15 = *(v13 + 16);
  v15(v11, v10, v12);
  v16 = os_log_type_enabled(v7, v14);
  v17 = *(v0 + 328);
  if (v16)
  {
    v18 = *(v0 + 320);
    v40 = v14;
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315138;
    v15(v18, v17, v20);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v19 + 8))(v17, v20);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v41);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v7, v40, "sendCompletionViewOutput dialog final output is: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 328), *(v0 + 288));
  }

  v27 = *(v0 + 384);
  v28 = *(v0 + 392);
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);
  v31 = *(v0 + 352);
  v32 = *(v0 + 336);
  v33 = *(v0 + 288);
  v34 = *(v0 + 296);
  v35 = *(v0 + 264);
  v35[3] = v33;
  v35[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
  (*(v34 + 32))(boxed_opaque_existential_0, v32, v33);

  outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  (*(v30 + 8))(v27, v29);

  v37 = *(v0 + 8);

  return v37();
}

{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 96) = 0u;
  v6 = v0 + 96;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  v7 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v40 = v7;
    swift_once();
    v7 = v40;
  }

  v8 = logObject;
  os_log(_:dso:log:_:_:)(v7, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "sendCompletionViewOutputSuccess", v10, 2u);
  }

  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 288);
  v14 = *(v0 + 296);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15 = static os_log_type_t.info.getter();
  v16 = *(v14 + 16);
  v16(v12, v11, v13);
  if (os_log_type_enabled(v8, v15))
  {
    v17 = *(v0 + 320);
    v41 = v15;
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 288);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v22;
    *v21 = 136315138;
    v16(v17, v18, v20);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = v18;
    v6 = v0 + 96;
    (*(v19 + 8))(v26, v20);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_0, v8, v41, "sendCompletionViewOutput dialog final output is: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  }

  v28 = *(v0 + 392);
  v30 = *(v0 + 368);
  v29 = *(v0 + 376);
  v31 = *(v0 + 360);
  v32 = *(v0 + 344);
  v33 = *(v0 + 312);
  v34 = *(v0 + 288);
  v35 = *(v0 + 296);
  v36 = *(v0 + 264);
  v36[3] = v34;
  v36[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(v35 + 32))(boxed_opaque_existential_0, v33, v34);

  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v30 + 8))(v29, v31);

  v38 = *(v0 + 8);

  return v38();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v1 = ParameterResolutionRecord.intent.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v6(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t static MapsAppProperties.getBundleID(idiom:)(uint64_t a1)
{
  if (a1 == 6)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t *TrafficIncidentUtils.siriSupportedIncidents.unsafeMutableAddressor()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  return &static TrafficIncidentUtils.siriSupportedIncidents;
}

uint64_t static TrafficIncidentUtils.sendCompletionViewOutput(result:snippets:device:listenAfterSpeaking:ttsEnabled:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)@<X0>(uint64_t a1@<X0>, int a4@<W3>, int a5@<W4>, uint64_t *a9@<X8>, uint64_t a10)
{
  v35 = a5;
  v36 = a4;
  v37 = a1;
  v38 = a9;
  v10 = type metadata accessor for AceOutput();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v32 - v13;
  __chkstk_darwin();
  v39 = &v32 - v15;
  v16 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v34 = a10;
  v17 = logObject;
  os_log(_:dso:log:_:_:)(v16, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v14;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "sendCompletionViewOutputSuccess", v19, 2u);
    v14 = v32;
  }

  v20 = v39;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v21 = static os_log_type_t.info.getter();
  v22 = *(v11 + 16);
  v22(v14, v20, v10);
  if (os_log_type_enabled(v17, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    v22(v33, v14, v10);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_0, v17, v21, "sendCompletionViewOutput dialog final output is: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  v29 = v38;
  v38[3] = v10;
  v29[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  return (*(v11 + 32))(boxed_opaque_existential_0, v39, v10);
}

uint64_t one-time initialization function for siriSupportedIncidents()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21INTrafficIncidentTypeV_SayAEGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for siriSupportedIncidents);
  static TrafficIncidentUtils.siriSupportedIncidents = result;
  return result;
}

uint64_t static TrafficIncidentUtils.siriSupportedIncidents.getter()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TrafficIncidentUtils.siriSupportedIncidents.setter(uint64_t a1)
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TrafficIncidentUtils.siriSupportedIncidents = a1;
}

uint64_t (*static TrafficIncidentUtils.siriSupportedIncidents.modify(uint64_t a1))()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ShareETAPromptForContactStrategy.catService.modify;
}

uint64_t key path getter for static TrafficIncidentUtils.siriSupportedIncidents : TrafficIncidentUtils.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static TrafficIncidentUtils.siriSupportedIncidents;
}

uint64_t key path setter for static TrafficIncidentUtils.siriSupportedIncidents : TrafficIncidentUtils.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for siriSupportedIncidents;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TrafficIncidentUtils.siriSupportedIncidents = v1;
}

uint64_t static TrafficIncidentUtils.convertINTrafficIncidentToLocationSearchValue(incidentType:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 1;
  }

  else
  {
    return (0x40103020001uLL >> (8 * a1));
  }
}

uint64_t static TrafficIncidentUtils.sendCompletionViewOutput(result:snippets:device:listenAfterSpeaking:ttsEnabled:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v49 = a4;
  v50 = a6;
  v48 = a5;
  v51 = a3;
  v52 = a2;
  v12 = type metadata accessor for AceOutput();
  v56 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v44 - v15;
  __chkstk_darwin();
  v59 = &v44 - v16;
  v17 = type metadata accessor for TemplatingResult();
  v58 = *(v17 - 8);
  __chkstk_darwin();
  v57 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v20 = (&v44 - v19);
  v21 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v22 = logObject;
  os_log(_:dso:log:_:_:)(v21, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  outlined init with copy of Result<TemplatingResult, Error>(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v20;
    v24 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v24, &dword_0, v22, "sendCompletionViewOutputFail", 28, 2, &_swiftEmptyArrayStorage);
    v60[0] = v23;
    v61 = 1;
    swift_errorRetain();
    a10(v60);
  }

  else
  {
    v46 = a11;
    v47 = a10;
    v25 = v57;
    (*(v58 + 32))(v57, v20, v17);
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v22, v26, "sendCompletionViewOutputSuccess", v27, 2u);
    }

    v45 = v17;
    v28 = v59;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v29 = static os_log_type_t.info.getter();
    v31 = v55;
    v30 = v56;
    v32 = *(v56 + 16);
    v32(v55, v28, v12);
    if (os_log_type_enabled(v22, v29))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v32;
      v35 = v34;
      v60[0] = v34;
      *v33 = 136315138;
      v54(v14, v31, v12);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      LODWORD(v53) = v29;
      v39 = *(v30 + 8);
      v39(v31, v12);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v60);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v22, v53, "sendCompletionViewOutput dialog final output is: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v32 = v54;

      v25 = v57;
    }

    else
    {
      v39 = *(v30 + 8);
      v39(v31, v12);
    }

    v60[3] = v12;
    v60[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
    v42 = v59;
    v32(boxed_opaque_existential_0, v59, v12);
    v61 = 0;
    v47(v60);
    v39(v42, v12);
    (*(v58 + 8))(v25, v45);
  }

  return outlined destroy of Result<Output, Error>(v60);
}