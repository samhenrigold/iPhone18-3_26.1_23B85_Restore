uint64_t SearchFlow.nlContextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  swift_beginAccess();
  return outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v3, a1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t SearchFlow.nlContextUpdate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  swift_beginAccess();
  outlined assign with take of NLContextUpdate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SearchFlow.targetedRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for SearchFlow.state : SearchFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFlow.State(a1, v6, type metadata accessor for SearchFlow.State);
  return (*(**a2 + 208))(v6);
}

void SearchFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFlow.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);

  v15 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
    swift_beginAccess();
    outlined init with copy of SearchFlow.State(v1 + v9, v4, type metadata accessor for SearchFlow.State);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v15, v6, "#InformationSearchFlow transitioning to state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v13 = v15;
  }
}

uint64_t SearchFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  swift_beginAccess();
  return outlined init with copy of SearchFlow.State(v1 + v3, a1, type metadata accessor for SearchFlow.State);
}

uint64_t SearchFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  swift_beginAccess();
  outlined assign with copy of SearchFlow.State(a1, v1 + v3);
  swift_endAccess();
  SearchFlow.state.didset();
  return outlined destroy of SearchFlow.State(a1, type metadata accessor for SearchFlow.State);
}

uint64_t outlined assign with copy of SearchFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*SearchFlow.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SearchFlow.state.modify;
}

void SearchFlow.state.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    SearchFlow.state.didset();
  }
}

uint64_t SearchFlow.exitValue.getter@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for CompositionResolutionError();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchFlow.State(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for RREntity();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v1 + 200);
  v16(v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(v12 + 32);
    v17(v15, v10, v11);
    v17(v26, v15, v11);
  }

  else
  {
    v18 = v26;
    v19 = outlined destroy of SearchFlow.State(v10, type metadata accessor for SearchFlow.State);
    v16(v19);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v20 = v25;
      v21 = *(v24 + 32);
      v21(v4, v8, v25);
      v21(v18, v4, v20);
    }

    else
    {
      outlined destroy of SearchFlow.State(v8, type metadata accessor for SearchFlow.State);
      (*(v24 + 104))(v18, enum case for CompositionResolutionError.unknownError(_:), v25);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RREntityV0B7KitFlow011CompositionD5ErrorOGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RREntityV0B7KitFlow011CompositionD5ErrorOGMR);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SearchFlow.__allocating_init(parse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v10 = swift_allocObject();
  v11 = [objc_opt_self() sharedPreferences];
  v12 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v13 = PommesServerFallbackPreferences.init(_:)();
  v10[11] = v12;
  v10[12] = &protocol witness table for PommesServerFallbackPreferences;
  v10[8] = v13;
  outlined init with take of SiriSuggestionsBroker(v21, (v10 + 3));
  v10[2] = v9;
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v14 = PommesDialogStateManager.init(suiteName:)();
  type metadata accessor for RenderComponentFlowFactory();
  v15 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(&v22, v15 + 16);
  *(v15 + 56) = v10;
  *(v15 + 64) = v14;
  v16 = type metadata accessor for PommesSearchClient();
  swift_allocObject();
  v17 = PommesSearchClient.init()();
  if (v17)
  {
    v18 = &protocol witness table for PommesSearchClient;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    *(&v22 + 1) = 0;
    v23 = 0;
  }

  *&v22 = v17;
  v24 = v16;
  v25 = v18;
  v19 = (*(v2 + 232))(v8, v15, &v22);
  (*(v6 + 8))(a1, v5);
  return v19;
}

uint64_t SearchFlow.__allocating_init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3);

  return v6;
}

uint64_t SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3);

  return v3;
}

uint64_t SearchFlow.setState(_:)(uint64_t a1)
{
  v3 = type metadata accessor for SearchFlow.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFlow.State(a1, v5, type metadata accessor for SearchFlow.State);
  return (*(*v1 + 208))(v5);
}

uint64_t SearchFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SearchFlow.State(0);
  v7 = __chkstk_darwin(v6);
  v42 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v41 = &v36[-v9];
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);
  (*(v11 + 16))(v13, a1, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = v4;
    v18 = v17;
    v38 = swift_slowAlloc();
    v45 = v38;
    *v18 = 136315394;
    v19 = *v1;
    v37 = v16;
    v20 = *(v19 + 200);
    v39 = a1;
    v20();
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v45);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = Input.description.getter();
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v45);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_0, v15, v37, "#InformationSearchFlow entering on with state: %s, input: %s", v18, 0x16u);
    swift_arrayDestroy();

    v4 = v40;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v28 = v42;
  (*(*v2 + 200))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of SearchFlow.State(v28, type metadata accessor for SearchFlow.State);
  v30 = v43;
  if (EnumCaseMultiPayload == 4)
  {
    Input.parse.getter();
    if ((*(v44 + 88))(v30, v4) == enum case for Parse.pommesResponse(_:))
    {
      (*(v44 + 96))(v30, v4);
      v31 = *v30;
      if (specialized SearchFlow.hasDelayedAction(pommesResponse:)())
      {
        v32 = v41;
        *v41 = v31;
        swift_storeEnumTagMultiPayload();
        v33 = *(*v2 + 208);
        v34 = v31;
        v33(v32);

        return 1;
      }
    }

    else
    {
      (*(v44 + 8))(v30, v4);
    }
  }

  return 0;
}

uint64_t SearchFlow.execute()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for USOParse();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for SearchFlow.State(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = SearchFlow.execute();
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = SearchFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t SearchFlow.execute()()
{
  v37 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    (*(*v4 + 200))();
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v36);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "#InformationSearchFlow entering execute with state: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    v4 = v0[12];
  }

  v0[20] = v4;
  (*(*v0[12] + 200))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v11 = v0[17];
      static ExecuteResponse.complete()();
      outlined destroy of SearchFlow.State(v11, type metadata accessor for SearchFlow.State);
    }

    else
    {
      static ExecuteResponse.ongoing(requireInput:)();
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[12];
    (*(v0[14] + 32))(v13, v0[17], v0[13]);
    swift_storeEnumTagMultiPayload();
    v15 = *(*v14 + 208);
    v16 = (*v14 + 208) & 0xFFFFFFFFFFFFLL | 0x45B000000000000;
    v0[21] = v15;
    v0[22] = v16;
    v15(v12);
    v17 = (*(*v14 + 280))(v13);
    v0[23] = v17;
    if (v17)
    {
      v18 = v17;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v0[12] + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, (v0 + 2), &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
      v19 = v0[5];
      if (v19)
      {
        v20 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v21 = swift_task_alloc();
        v0[24] = v21;
        *v21 = v0;
        v21[1] = SearchFlow.execute();

        return dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(v18, v19, v20);
      }

      outlined destroy of Any?((v0 + 2), &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
    }

    v26 = v0[21];
    v27 = v0[18];
    v35 = v0[15];
    v29 = v0[13];
    v28 = v0[14];
    v30 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v31 = type metadata accessor for CompositionResolutionError();
    (*(*(v31 - 8) + 104))(v27, v30, v31);
    swift_storeEnumTagMultiPayload();
    v26(v27);
    static ExecuteResponse.complete()();
    (*(v28 + 8))(v35, v29);
LABEL_22:

    v32 = v0[1];

    return v32();
  }

  v22 = v0[12];
  v23 = *v0[17];
  v0[28] = v23;
  v34 = (*(*v22 + 272) + **(*v22 + 272));
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = SearchFlow.execute();
  v25 = v0[11];

  return v34(v25, v23);
}

{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[12];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v2(v3);
  v10 = (*(*v4 + 272) + **(*v4 + 272));
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = SearchFlow.execute();
  v7 = v0[26];
  v8 = v0[11];

  return v10(v8, v7);
}

{

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 184);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v18 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v17);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "#InformationSearchFlow requestInfiEntityResolution call has an error %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v16 = *(v0 + 120);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
  v13 = type metadata accessor for CompositionResolutionError();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  swift_storeEnumTagMultiPayload();
  v8(v9);
  static ExecuteResponse.complete()();
  (*(v10 + 8))(v16, v11);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t SearchFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchFlow(0);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, type metadata accessor for SearchFlow, &protocol conformance descriptor for SearchFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SearchFlow.handlePommesResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for RREntity();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for SearchFlow.State(0);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.handlePommesResponse(_:), 0, 0);
}

uint64_t SearchFlow.handlePommesResponse(_:)()
{
  if (one-time initialization token for information != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.information);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#InformationSearchFlow going to handlePommesResponse...", v4, 2u);
    }

    v5 = *(v0 + 80);

    if ((specialized SearchFlow.supportedOnDevice(pommesResponse:)(v5) & 1) == 0)
    {
      v6 = *(v0 + 168);
      v7 = *(v0 + 88);
      v8 = &enum case for CompositionResolutionError.featureDisabled(_:);
      goto LABEL_8;
    }

    if (specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)(*(v0 + 80)))
    {
      v6 = *(v0 + 168);
      v7 = *(v0 + 88);
      v8 = &enum case for CompositionResolutionError.userCanceled(_:);
LABEL_8:
      v9 = *v8;
      v10 = type metadata accessor for CompositionResolutionError();
      (*(*(v10 - 8) + 104))(v6, v9, v10);
      swift_storeEnumTagMultiPayload();
      (*(*v7 + 208))(v6);
LABEL_9:
      static ExecuteResponse.complete()();
LABEL_10:

      v11 = *(v0 + 8);

      return v11();
    }

    v75 = v0;
    v13 = dispatch thunk of PommesResponse.experiences.getter();
    v0 = v13;
    if (!(v13 >> 62))
    {
      v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (!v14)
      {
        break;
      }

      goto LABEL_15;
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      break;
    }

LABEL_15:
    v15 = 0;
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v17 = *(v0 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = dispatch thunk of Experience.associatedEntities.getter();

      v21 = *(v20 + 16);
      v22 = v16[2];
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= v16[3] >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v16);
        if (*(v20 + 16))
        {
LABEL_31:
          if ((v16[3] >> 1) - v16[2] < v21)
          {
            goto LABEL_40;
          }

          swift_arrayInitWithCopy();

          if (v21)
          {
            v26 = v16[2];
            v27 = __OFADD__(v26, v21);
            v28 = v26 + v21;
            if (v27)
            {
              goto LABEL_41;
            }

            v16[2] = v28;
          }

          goto LABEL_17;
        }
      }

      if (v21)
      {
        goto LABEL_39;
      }

LABEL_17:
      ++v15;
      if (v19 == v14)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_45:

  v29 = v16[2];
  if (v29)
  {
    v30 = v75[18];
    v31 = v75[14];
    v73 = *(v30 + 16);
    v32 = v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v71 = (v30 + 8);
    v72 = *(v30 + 72);
    v33 = (v31 + 48);
    v69 = v31;
    v70 = (v31 + 32);
    v34 = _swiftEmptyArrayStorage;
    do
    {
      v35 = v34;
      v36 = v75[19];
      v37 = v75[17];
      v38 = v75[12];
      v39 = v75[13];
      v73(v36, v32, v37);
      Apple_Parsec_Siri_Context_ResultEntity.toRREntity()(v38);
      (*v71)(v36, v37);
      if ((*v33)(v38, 1, v39) == 1)
      {
        outlined destroy of Any?(v75[12], &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
        v34 = v35;
      }

      else
      {
        v40 = *v70;
        (*v70)(v75[16], v75[12], v75[13]);
        v34 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        }

        v42 = v34[2];
        v41 = v34[3];
        if (v42 >= v41 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v34);
        }

        v43 = v75[16];
        v44 = v75[13];
        v34[2] = v42 + 1;
        v40(v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v42, v43, v44);
      }

      v32 += v72;
      --v29;
    }

    while (v29);
  }

  else
  {

    v34 = _swiftEmptyArrayStorage;
  }

  v0 = v75;
  v75[22] = v34;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = v34[2];

    _os_log_impl(&dword_0, v45, v46, "#InformationSearchFlow extracted %ld rrEntities", v47, 0xCu);
  }

  else
  {
  }

  *(v75 + 1) = 0u;
  *(v75 + 2) = 0u;
  v75[6] = 0;
  static CurareDonation.donateCurareResponseUsedMarker(from:into:)();
  outlined destroy of Any?((v75 + 2), &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v48 = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  if (v49)
  {
    v75[7] = v48;
    v75[8] = v49;
    v50 = swift_task_alloc();
    *(v50 + 16) = v75 + 7;
    v51 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v50, &outlined read-only object #0 of one-time initialization function for defaultPegasusBundleIdentifiers);

    if ((v51 & 1) == 0)
    {
      v55 = v34[2];
      if (v55 >= 2)
      {
        v56 = v75[10];

        SearchFlow.handleClientDrivenExperience(pommesResponse:)(v56);
        goto LABEL_10;
      }

      goto LABEL_69;
    }
  }

  if ((dispatch thunk of PommesResponse.listenAfterSpeaking.getter() & 1) == 0)
  {
    v55 = v34[2];
LABEL_69:
    v57 = v75[21];
    if (v55 == 1)
    {
      v60 = v75[14];
      v74 = v75[15];
      v61 = v75[13];
      v62 = v75[11];
      v63 = *(v60 + 16);
      v63();
      v64 = dispatch thunk of ReferenceResolutionClient.siriMentioned(entities:)();
      v66 = v65;

      outlined consume of Result<(), Error>(v64, v66 & 1);
      (v63)(v57, v74, v61);
      swift_storeEnumTagMultiPayload();
      (*(*v62 + 208))(v57);
      (*(v60 + 8))(v74, v61);
    }

    else
    {
      v58 = v75[11];
      if (v55)
      {

        v59 = &enum case for CompositionResolutionError.invalidState(_:);
      }

      else
      {

        v59 = &enum case for CompositionResolutionError.noSearchResult(_:);
      }

      v67 = *v59;
      v68 = type metadata accessor for CompositionResolutionError();
      (*(*(v68 - 8) + 104))(v57, v67, v68);
      swift_storeEnumTagMultiPayload();
      (*(*v58 + 208))(v57);
    }

    goto LABEL_9;
  }

  v52 = swift_task_alloc();
  v75[23] = v52;
  *v52 = v75;
  v52[1] = SearchFlow.handlePommesResponse(_:);
  v53 = v75[10];
  v54 = v75[9];

  return SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(v54, v53, v34);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.toRREntity()@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  __chkstk_darwin(v1 - 8);
  v40 = v31 - v2;
  v39 = type metadata accessor for Typespb_Domain();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupIdentifier();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  Message.init(serializedData:extensions:partial:options:)();
  v35 = v9;
  v36 = v10;
  v13 = v39;
  v14 = v40;
  v34 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v23 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
  v33 = v23;
  if (v23)
  {
    v32 = v12;
    Apple_Parsec_Siri_Context_ResultEntity.groupID.getter();
    Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.getter();
    GroupIdentifier.init(id:seq:)();
    v24 = Apple_Parsec_Siri_Context_ResultEntity.id.getter();
    v31[1] = v25;
    v31[2] = v24;
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v26._object = 0x80000000000BEBF0;
    v26._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v26);
    Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v37 + 8))(v4, v13);
    v27 = v38;
    v28 = v7;
    (*(v38 + 16))(v14, v7, v5);
    (*(v27 + 56))(v14, 0, 1, v5);
    v15 = v41;
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*(v27 + 8))(v28, v5);
    (*(v36 + 8))(v32, v35);
    v20 = 0;
  }

  else
  {
    v29 = type metadata accessor for CompositionResolutionError();
    lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type CompositionResolutionError and conformance CompositionResolutionError, &type metadata accessor for CompositionResolutionError, &protocol conformance descriptor for CompositionResolutionError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for CompositionResolutionError.usoError(_:), v29);
    swift_willThrow();

    (*(v36 + 8))(v12, v35);
    v15 = v41;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.information);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#InformationSearchFlow failed to convert ContextResultEntity to RREntity", v19, 2u);
    }

    v20 = 1;
  }

  v21 = type metadata accessor for RREntity();
  return (*(*(v21 - 8) + 56))(v15, v20, 1, v21);
}

uint64_t SearchFlow.buildPommesSearchRequest(parse:)(uint64_t a1)
{
  v147 = a1;
  v2 = type metadata accessor for DeviceRestrictions();
  v143 = *(v2 - 8);
  v144 = v2;
  __chkstk_darwin(v2);
  v142 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for InputOrigin();
  v150 = *(v141 - 8);
  v4 = __chkstk_darwin(v141);
  v128 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v140 = v109 - v7;
  v8 = __chkstk_darwin(v6);
  v139 = v109 - v9;
  __chkstk_darwin(v8);
  v148 = v109 - v10;
  v138 = type metadata accessor for ResponseMode();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __chkstk_darwin(v12 - 8);
  v135 = v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __chkstk_darwin(v14 - 8);
  v134 = v109 - v15;
  v16 = type metadata accessor for MultiUserState();
  __chkstk_darwin(v16 - 8);
  v133 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ParseStateXPC();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = (v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v152 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v151 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v129 = v109 - v22;
  v149 = type metadata accessor for Siri_Nlu_External_UserParse();
  v146 = *(v149 - 8);
  v23 = __chkstk_darwin(v149);
  v145 = v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v109 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v27 - 8);
  v29 = v109 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin(v30 - 8);
  v32 = v109 - v31;
  v33 = type metadata accessor for PommesContext();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (*(*v1 + 176))(v35);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    v39 = SiriEnvironment.currentRequest.getter();
  }

  (*(*v1 + 152))();
  v40 = type metadata accessor for NLContextUpdate();
  if ((*(*(v40 - 8) + 48))(v29, 1, v40))
  {
    outlined destroy of Any?(v29, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v34 + 56))(v32, 1, 1, v33);
LABEL_7:
    outlined destroy of Any?(v32, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.information);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "#InformationSearchFlow PommesContext is not available, cannot construct PommesSearchRequestXPC", v44, 2u);
    }

    return 0;
  }

  NLContextUpdate.pommesContext.getter();
  outlined destroy of Any?(v29, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    goto LABEL_7;
  }

  (*(v34 + 32))(v37, v32, v33);
  v46 = PommesContext.domain.getter();
  if (!v47)
  {
    v69 = v37;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.information);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_40;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "#InformationSearchFlow domain is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_39;
  }

  v48 = v46;
  v49 = v47;
  v50 = CurrentRequest.executionRequestId.getter();
  if (!v51)
  {
    v69 = v37;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.information);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_40;
    }

LABEL_38:
    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "#InformationSearchFlow utterance is not available, cannot construct PommesSearchRequestXPC";
LABEL_39:
    _os_log_impl(&dword_0, v71, v72, v74, v73, 2u);

LABEL_40:

    (*(v34 + 8))(v69, v33);
    return 0;
  }

  v52 = v51;
  v122 = v50;
  v53 = CurrentRequest.resultCandidateId.getter();
  if (!v54)
  {
    v69 = v37;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.information);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_40;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "#InformationSearchFlow resultCandidateId is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_39;
  }

  v118 = v53;
  v121 = v54;
  v55 = CurrentRequest.utterance.getter();
  if (!v56)
  {
    v69 = v37;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.information);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v113 = v56;
  v114 = v55;
  v115 = v48;
  v116 = v52;
  v120 = v37;
  v112 = v34;
  USOParse.userParse.getter();
  v57 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v58 = *(v146 + 8);
  v111 = v146 + 8;
  v110 = v58;
  v58(v26, v149);
  v59 = *(v57 + 16);
  v117 = v33;
  v119 = v39;
  if (v59)
  {
    v109[1] = v49;
    v157 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v60 = v157;
    v127 = *(v152 + 16);
    v61 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v109[0] = v57;
    v126 = v61;
    v62 = v57 + v61;
    v125 = *(v152 + 72);
    v124 = (v152 + 8);
    v152 += 16;
    v123 = (v152 + 16);
    v63 = v129;
    do
    {
      v64 = v151;
      v65 = v127(v151, v62, v19);
      __chkstk_darwin(v65);
      lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
      static Message.with(_:)();
      (*v124)(v64, v19);
      v157 = v60;
      v67 = v60[2];
      v66 = v60[3];
      if (v67 >= v66 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
        v60 = v157;
      }

      v60[2] = v67 + 1;
      v68 = v125;
      (*v123)(v60 + v126 + v67 * v125, v63, v19);
      v62 += v68;
      --v59;
    }

    while (v59);
  }

  __chkstk_darwin(v78);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  v79 = v145;
  v80 = v149;
  static Message.with(_:)();

  CurrentRequest.currentDeviceAssistantId.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR);
  v81 = v146;
  v82 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_B8690;
  (*(v81 + 16))(v83 + v82, v79, v80);
  v84 = v132;
  v85 = v121;
  *v132 = v118;
  v84[1] = v85;
  v84[2] = v83;
  *(v84 + 24) = 1;
  (*(v130 + 104))(v84, enum case for ParseStateXPC.rc(_:), v131);
  type metadata accessor for PommesSearchRequestXPCBuilder();
  swift_allocObject();
  PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
  PommesContext.listenAfterSpeaking.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)();

  v86 = v133;
  CurrentRequest.multiUserState.getter();
  MultiUserState.isEnabled.getter();
  outlined destroy of SearchFlow.State(v86, &type metadata accessor for MultiUserState);
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsMultiUser(_:)();

  v87 = v134;
  CurrentRequest.audioSource.getter();
  v88 = type metadata accessor for AudioSource();
  v89 = *(v88 - 8);
  if ((*(v89 + 48))(v87, 1, v88) == 1)
  {
    outlined destroy of Any?(v87, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    AudioSource.aceValue.getter();
    (*(v89 + 8))(v87, v88);
  }

  v90 = v141;
  v91 = v135;
  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioSource(_:)();

  CurrentRequest.audioDestination.getter();
  v92 = type metadata accessor for AudioDestination();
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v91, 1, v92) == 1)
  {
    outlined destroy of Any?(v91, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    AudioDestination.aceValue.getter();
    (*(v93 + 8))(v91, v92);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioDestination(_:)();

  v94 = v136;
  CurrentRequest.responseMode.getter();
  ResponseMode.aceValue.getter();
  (*(v137 + 8))(v94, v138);
  dispatch thunk of PommesSearchRequestXPCBuilder.withResponseMode(_:)();

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  dispatch thunk of DeviceState.isEyesFree.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsEyesFree(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsVoiceTriggerEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v152 = dispatch thunk of PommesSearchRequestXPCBuilder.withIsTextToSpeechEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  dispatch thunk of DeviceState.inputOrigin.getter();
  v95 = *(v150 + 104);
  v96 = v139;
  v95(v139, enum case for InputOrigin.clientGenerated(_:), v90);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v155 == v153 && v156 == v154)
  {
    v97 = 1;
  }

  else
  {
    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v99 = v150 + 8;
  v98 = *(v150 + 8);
  v98(v96, v90);
  v150 = v99;
  v98(v148, v90);

  __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  if (v97)
  {
    v100 = v117;
  }

  else
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v157, v158);
    dispatch thunk of DeviceState.inputOrigin.getter();
    v101 = v128;
    v95(v128, enum case for InputOrigin.triggerlessFollowup(_:), v90);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v155 != v153 || v156 != v154)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v100 = v117;
    v98(v101, v90);
    v98(v140, v90);

    __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsTriggerlessFollowup(_:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v102 = v142;
  dispatch thunk of CurrentDevice.restrictions.getter();

  v103 = DeviceRestrictions.aceSet.getter();
  (*(v143 + 8))(v102, v144);
  v104 = *(v103 + 16);
  if (!v104)
  {
    goto LABEL_60;
  }

  v105 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v103 + 16), 0);
  v106 = specialized Sequence._copySequenceContents(initializing:)(&v157, v105 + 4, v104, v103);
  outlined consume of Set<String>.Iterator._Variant(v157);
  if (v106 != v104)
  {
    __break(1u);
LABEL_60:
  }

  v107 = v112;
  dispatch thunk of PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)();

  v108 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();

  v110(v145, v149);
  (*(v107 + 8))(v120, v100);
  return v108;
}

uint64_t closure #1 in closure #1 in SearchFlow.buildPommesSearchRequest(parse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  __chkstk_darwin(v7 - 8);
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  Siri_Nlu_External_DelegatedUserDialogAct.init()();
  static PommesSearchRequest.PommesParserId.getter();
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  (*(v1 + 16))(v4, v6, v0);
  Siri_Nlu_External_UserDialogAct.delegated.setter();
  return (*(v1 + 8))(v6, v0);
}

uint64_t closure #2 in SearchFlow.buildPommesSearchRequest(parse:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  Siri_Nlu_External_UserParse.userDialogActs.setter();
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.parser.getter();
  (*(v4 + 8))(v6, v3);
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

uint64_t SearchFlow.handleClientDrivenExperience(pommesResponse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchFlow.State(0);
  __chkstk_darwin(v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v1;
  type metadata accessor for SearchFlow(0);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, type metadata accessor for SearchFlow, &protocol conformance descriptor for SearchFlow);
  v7 = CompositionSearchFlow.findFlowForPommesResponse(_:)();
  if (v7)
  {
    v8 = v7;
    v18[3] = type metadata accessor for AnyFlow();
    v18[4] = &protocol witness table for AnyFlow;
    v18[0] = v8;
    v9 = *(*v1 + 304);

    v9(a1, v18);

    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.information);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#InformationSearchFlow failed to render a client-driven experience", v14, 2u);
    }

    v15 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v16 = type metadata accessor for CompositionResolutionError();
    (*(*(v16 - 8) + 104))(v6, v15, v16);
    swift_storeEnumTagMultiPayload();
    (*(*v2 + 208))(v6);
    return static ExecuteResponse.complete()();
  }
}

uint64_t SearchFlow.handleClientDrivenExperience(pommesResponse:renderFlow:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = type metadata accessor for Date();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SearchFlow.State(0);
  __chkstk_darwin(v43);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v39 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  *v11 = a1;
  (*(v9 + 104))(v11, enum case for Parse.pommesResponse(_:), v8);
  v17 = a1;
  Input.init(parse:)();
  LOBYTE(v11) = dispatch thunk of Flow.on(input:)();
  (*(v13 + 8))(v15, v12);
  if (v11)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.information);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#InformationSearchFlow pushing render component flow for client-driven experience", v21, 2u);
    }

    v22 = v44;
    swift_storeEnumTagMultiPayload();
    (*(*v45 + 208))(v22);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    return static ExecuteResponse.ongoing<A>(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.information);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#InformationSearchFlow render flow refused input, returning error flow", v27, 2u);
    }

    v28 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v29 = type metadata accessor for CompositionResolutionError();
    v30 = v44;
    (*(*(v29 - 8) + 104))(v44, v28, v29);
    swift_storeEnumTagMultiPayload();
    v31 = v45;
    (*(*v45 + 208))(v30);
    v47 = v31;
    type metadata accessor for PerformanceUtil();
    v32 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v32);
    v35 = &v47;
    v33 = v40;
    Date.init()();
    v37 = v34;
    v38 = type metadata accessor for ExecuteResponse();
    v36 = partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:);
    LOBYTE(v35) = 2;
    v34[0] = "makeResponse(forErrorMessage:)";
    v34[1] = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (*(v41 + 8))(v33, v42);
  }
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = type metadata accessor for SearchFlow.State(0);
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for PerformanceUtil.Ticket();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for PegasusExperience(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:), 0, 0);
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[23];
  v33 = v0[22];
  v34 = v0[26];
  v4 = v0[15];
  v5 = v0[13];
  v0[28] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v3 + 8))(v2, v33);

  outlined init with copy of SearchFlow.State(v1, v34, type metadata accessor for PegasusExperience);
  if (!swift_getEnumCaseMultiPayload())
  {
    v19 = v0[26];
    v20 = v0[21];
    v21 = v0[15];
    v22 = v0[13];
    v0[29] = *v19;
    v0[30] = v19[1];
    v0[31] = v19[2];
    v0[32] = v19[3];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v24 = v23[24];
    v0[33] = *(v19 + v23[28]);
    v0[34] = *(v19 + v23[32]);
    v0[35] = *(v19 + v23[36]);
    v0[36] = *(v19 + v23[40]);
    outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(v19 + v24, v20);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v25 = *(v21 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_renderComponentFlowFactory);
    static SiriKitEventSender.current.getter();
    type metadata accessor for PegasusFlowEventLogger();
    v26 = swift_allocObject();
    v0[37] = v26;
    *(v26 + 16) = v22;
    outlined init with copy of OutputPublisherAsync((v0 + 2), v26 + 24);
    v27 = v22;
    v28 = PommesResponse.metadataDomainName.getter();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    *(v26 + 64) = v28;
    *(v26 + 72) = v30;
    *(v26 + 80) = 1;
    static AceService.currentAsync.getter();
    v32 = *(*v25 + 112) + **(*v25 + 112);
    v31 = swift_task_alloc();
    v0[38] = v31;
    *v31 = v0;
    v31[1] = SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:);

    __asm { BRAA            X8, X16 }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.information);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#InformationSearchFlow failed to render a server-driven experience", v10, 2u);
  }

  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[17];
  v14 = v0[15];

  v15 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
  v16 = type metadata accessor for CompositionResolutionError();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  swift_storeEnumTagMultiPayload();
  (*(*v14 + 208))(v13);
  static ExecuteResponse.complete()();
  outlined destroy of SearchFlow.State(v11, type metadata accessor for PegasusExperience);
  outlined destroy of SearchFlow.State(v12, type metadata accessor for PegasusExperience);

  v17 = v0[1];

  return v17();
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 312) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));

  return _swift_task_switch(SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:), 0, 0);
}

{
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#InformationSearchFlow pushing render component flow for server-driven experience", v5, 2u);
  }

  v6 = v1[36];
  v14 = v1[21];
  v15 = v1[27];
  v13 = v1[20];
  v8 = v1[18];
  v7 = v1[19];
  v9 = v1[17];
  v10 = v1[15];

  swift_storeEnumTagMultiPayload();
  (*(*v10 + 208))(v9);
  static ExecuteResponse.ongoing(next:)();

  (*(v7 + 8))(v13, v8);
  outlined destroy of Any?(v14, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  outlined destroy of SearchFlow.State(v15, type metadata accessor for PegasusExperience);

  v11 = v1[1];

  return v11();
}

uint64_t SearchFlow.deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher));

  outlined destroy of SearchFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state, type metadata accessor for SearchFlow.State);
  return v0;
}

uint64_t SearchFlow.__deallocating_deinit()
{
  SearchFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 168))();
  return protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 192))();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t protocol witness for Flow.execute() in conformance SearchFlow(uint64_t a1)
{
  v6 = (*(**v1 + 256) + **(**v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidateVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI17Moviespb_CoverArtVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI17Moviespb_CoverArtVGMR, &type metadata accessor for Moviespb_CoverArt);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI13Tvpb_CoverArtVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI13Tvpb_CoverArtVGMR, &type metadata accessor for Tvpb_CoverArt);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMR, &type metadata accessor for Searchfoundation_Card);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMR, &type metadata accessor for SportsPersonalizationEntity);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyytGMd, &_ss23_ContiguousArrayStorageCyytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin20GenericResultSetItemVGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin20GenericResultSetItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized static SearchFlow.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v2 = type metadata accessor for CompositionResolutionError();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = __chkstk_darwin(v2);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v55 - v5;
  v6 = type metadata accessor for RREntity();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = __chkstk_darwin(v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v55 - v9;
  v10 = type metadata accessor for USOParse();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = type metadata accessor for SearchFlow.State(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v55 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = (&v55 - v24);
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin06SearchB0C5StateO_AEtMd, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMR);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v55 - v30;
  v32 = *(v29 + 56);
  outlined init with copy of SearchFlow.State(v65, &v55 - v30, type metadata accessor for SearchFlow.State);
  outlined init with copy of SearchFlow.State(v66, &v31[v32], type metadata accessor for SearchFlow.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v15;
    v43 = v63;
    v42 = v64;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of SearchFlow.State(v31, v25, type metadata accessor for SearchFlow.State);
      v50 = *v25;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = *&v31[v32];
        type metadata accessor for NSObject();
        v39 = static NSObject.== infix(_:_:)();

        goto LABEL_21;
      }
    }

    else
    {
      outlined init with copy of SearchFlow.State(v31, v27, type metadata accessor for SearchFlow.State);
      if (!swift_getEnumCaseMultiPayload())
      {
        v52 = *(v43 + 32);
        v52(v41, v27, v42);
        v52(v13, &v31[v32], v42);
        v39 = static USOParse.== infix(_:_:)();
        v53 = *(v43 + 8);
        v53(v13, v42);
        v53(v41, v42);
        goto LABEL_21;
      }

      (*(v43 + 8))(v27, v42);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of SearchFlow.State(v31, v22, type metadata accessor for SearchFlow.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = v59;
      v44 = v60;
      v46 = *(v59 + 32);
      v47 = v55;
      v46(v55, v22, v60);
      v48 = v56;
      v46(v56, &v31[v32], v44);
      v39 = static RREntity.== infix(_:_:)();
      v49 = *(v45 + 8);
      v49(v48, v44);
      v49(v47, v44);
      goto LABEL_21;
    }

    (*(v59 + 8))(v22, v60);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    outlined init with copy of SearchFlow.State(v31, v19, type metadata accessor for SearchFlow.State);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v61;
      v34 = v62;
      v36 = *(v61 + 32);
      v37 = v57;
      v36(v57, v19, v62);
      v38 = v58;
      v36(v58, &v31[v32], v34);
      v39 = static CompositionResolutionError.== infix(_:_:)();
      v40 = *(v35 + 8);
      v40(v38, v34);
      v40(v37, v34);
LABEL_21:
      outlined destroy of SearchFlow.State(v31, type metadata accessor for SearchFlow.State);
      return v39 & 1;
    }

    (*(v61 + 8))(v19, v62);
    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    outlined destroy of Any?(v31, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMd, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMR);
    v39 = 0;
    return v39 & 1;
  }

  outlined destroy of SearchFlow.State(v31, type metadata accessor for SearchFlow.State);
  v39 = 1;
  return v39 & 1;
}

unint64_t specialized SearchFlow.hasDelayedAction(pommesResponse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_26:

    return 0;
  }

  v33 = result;
  v34 = _CocoaArrayWrapper.endIndex.getter();
  result = v33;
  if (!v34)
  {
    goto LABEL_26;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v15 = *(result + 32);
  }

  v16 = v15;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {

    return 0;
  }

  v17 = GenericExperience.components.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v35 = v17;
    v36 = v16;
    v38 = v3;
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v43 = *(v19 + 56);
    v44 = v20;
    v45 = v19;
    v42 = (v19 - 8);
    v48 = (v39 + 32);
    v40 = (v39 + 48);
    v41 = (v39 + 56);
    v22 = _swiftEmptyArrayStorage;
    v37 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.delayedActionComponent(_:);
    do
    {
      v23 = v46;
      v44(v13, v21, v46);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*v42)(v13, v23);
      v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v25 = *(v24 - 8);
      v26 = 1;
      if ((*(v25 + 48))(v5, 1, v24) != 1)
      {
        v27 = v38;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v5, v38, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
        v28 = (*(v25 + 88))(v27, v24);
        if (v28 == v37)
        {
          (*(v25 + 96))(v27, v24);
          (*v48)(v8, v27, v9);
          v26 = 0;
        }

        else
        {
          (*(v25 + 8))(v27, v24);
          v26 = 1;
        }
      }

      (*v41)(v8, v26, 1, v9);
      outlined destroy of Any?(v5, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
      if ((*v40)(v8, 1, v9) == 1)
      {
        outlined destroy of Any?(v8, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMR);
      }

      else
      {
        v29 = *v48;
        (*v48)(v47, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v31 = *(v22 + 2);
        v30 = *(v22 + 3);
        if (v31 >= v30 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v22);
        }

        *(v22 + 2) = v31 + 1;
        v29(&v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31], v47, v9);
      }

      v21 += v43;
      --v18;
    }

    while (v18);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v32 = *(v22 + 2);

  return v32 != 0;
}

uint64_t specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  v10 = type metadata accessor for NLContextUpdate();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest) = 0;
  type metadata accessor for ExperienceSelector();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_experienceSelector) = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_renderComponentFlowFactory) = a2;
  type metadata accessor for ReferenceResolutionClient();

  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_rrClient) = ReferenceResolutionClient.__allocating_init()();
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a3, v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with take of SiriSuggestionsBroker(v19, v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher);
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v12 = swift_allocObject();
  v13 = [objc_opt_self() sharedPreferences];
  v14 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v15 = PommesServerFallbackPreferences.init(_:)();
  v12[11] = v14;
  v12[12] = &protocol witness table for PommesServerFallbackPreferences;
  v12[8] = v15;
  outlined destroy of Any?(a3, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  outlined init with take of SiriSuggestionsBroker(v19, (v12 + 3));
  v12[2] = v11;
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_informationViewFactory) = v12;
  v16 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  v17 = type metadata accessor for USOParse();
  (*(*(v17 - 8) + 32))(v4 + v16, a1, v17);
  type metadata accessor for SearchFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

unint64_t specialized SearchFlow.supportedOnDevice(pommesResponse:)(uint64_t a1)
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    goto LABEL_15;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v2 = *(result + 32);
      }

      v3 = v2;

      type metadata accessor for GenericExperience();
      if (!swift_dynamicCastClass())
      {
LABEL_13:

        return 1;
      }

      result = dispatch thunk of Experience.catIds.getter();
      v4 = result;
      v5 = result + 40;
      v6 = -*(result + 16);
      v7 = -1;
      while (1)
      {
        if (v6 + v7 == -1)
        {

          goto LABEL_13;
        }

        if (++v7 >= *(v4 + 16))
        {
          break;
        }

        v8 = v5 + 16;
        lazy protocol witness table accessor for type String and conformance String();
        result = StringProtocol.contains<A>(_:)();
        v5 = v8;
        if (result)
        {

          return 0;
        }
      }

      __break(1u);
LABEL_15:
      v9 = result;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      result = v9;
    }

    while (v10);
  }

  return 1;
}

uint64_t outlined consume of Result<(), Error>(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of SearchFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for SearchFlow(uint64_t a1)
{
  type metadata accessor for NLContextUpdate?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchFlow.State(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for SearchFlow.State(uint64_t a1)
{
  result = type metadata accessor for USOParse();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PommesResponse();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for RREntity();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CompositionResolutionError();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of SearchFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *PegasusComponents.__allocating_init(dialogs:layouts:catDialogs:buttonViews:directExecutions:delayedActions:sayItComponents:disambiguationLists:domainObjectComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.information);

  v18 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v24))
  {
    v25 = a3;
    v19 = a4;
    v20 = a6;
    v21 = a8;
    v22 = swift_slowAlloc();
    *v22 = 134220032;
    *(v22 + 4) = *(a1 + 16);

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(a2 + 16);

    *(v22 + 22) = 2048;
    *(v22 + 24) = *(v25 + 16);

    *(v22 + 32) = 2048;
    *(v22 + 34) = *(v19 + 16);

    *(v22 + 42) = 2048;
    *(v22 + 44) = *(a5 + 16);

    *(v22 + 52) = 2048;
    *(v22 + 54) = *(v20 + 16);

    *(v22 + 62) = 2048;
    *(v22 + 64) = *(a7 + 16);

    *(v22 + 72) = 2048;
    *(v22 + 74) = *(v21 + 16);

    *(v22 + 82) = 2048;
    *(v22 + 84) = *(a9 + 16);

    _os_log_impl(&dword_0, v18, v24, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v22, 0x5Cu);
    a8 = v21;
    a6 = v20;
    a4 = v19;
    a3 = v25;
  }

  else
  {
  }

  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v16[10] = a9;
  return v16;
}

void *PegasusComponents.init(dialogs:layouts:catDialogs:buttonViews:directExecutions:delayedActions:sayItComponents:disambiguationLists:domainObjectComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);

  v19 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v25))
  {
    v26 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a8;
    v23 = swift_slowAlloc();
    *v23 = 134220032;
    *(v23 + 4) = *(a1 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = *(a2 + 16);

    *(v23 + 22) = 2048;
    *(v23 + 24) = *(v26 + 16);

    *(v23 + 32) = 2048;
    *(v23 + 34) = *(v20 + 16);

    *(v23 + 42) = 2048;
    *(v23 + 44) = *(a5 + 16);

    *(v23 + 52) = 2048;
    *(v23 + 54) = *(v21 + 16);

    *(v23 + 62) = 2048;
    *(v23 + 64) = *(a7 + 16);

    *(v23 + 72) = 2048;
    *(v23 + 74) = *(v22 + 16);

    *(v23 + 82) = 2048;
    *(v23 + 84) = *(a9 + 16);

    _os_log_impl(&dword_0, v19, v25, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v23, 0x5Cu);
    a8 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v26;
  }

  else
  {
  }

  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  return v10;
}

void *PegasusComponents.deinit()
{

  return v0;
}

uint64_t PegasusComponents.__deallocating_deinit()
{
  PegasusComponents.deinit();

  return swift_deallocClassInstance();
}

unint64_t static PegasusComponentsParser.parseAlternateComponents(pegasusResult:)()
{
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v42 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for Date();
  __chkstk_darwin(v1 - 8);
  v46 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PerformanceUtil.Ticket();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v45 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v14 + 8))(v16, v13);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v10 + 8))(v12, v9);
  v17 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.alternateExperiences.getter();
  (*(v6 + 8))(v8, v5);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.information);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v17 + 16);

    _os_log_impl(&dword_0, v20, v21, "PegasusResult: parseAlternateServerComponents : %ld", v22, 0xCu);
  }

  else
  {
  }

  v23 = v45;
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v49 = _swiftEmptyArrayStorage;
  v24 = *(v17 + 16);
  if (v24)
  {
    v25 = v42 + 16;
    v26 = *(v42 + 16);
    v27 = *(v42 + 80);
    v41[1] = v19;
    v42 = v17;
    v28 = v17 + ((v27 + 32) & ~v27);
    v29 = *(v25 + 56);
    v30 = (v25 - 8);
    v46 = _swiftEmptyArrayStorage;
    do
    {
      v31 = v47;
      v32 = v48;
      v26(v47, v28, v48);
      v33 = Apple_Parsec_Siri_V2alpha_SingleExperience.components.getter();
      v34 = specialized static PegasusComponentsParser.collateComponents(components:)(v33);

      (*v30)(v31, v32);
      if (v34)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v46 = v49;
      }

      v28 += v29;
      --v24;
    }

    while (v24);

    v23 = v45;
    v35 = v46;
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    if (v35 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    }

    *(v38 + 4) = v39;

    _os_log_impl(&dword_0, v36, v37, "PegasusResult: parseAlternateServerComponents found : %ld", v38, 0xCu);
  }

  else
  {
  }

  (*(v43 + 8))(v23, v44);
  return v35;
}

uint64_t specialized static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)()
{
  v0 = type metadata accessor for Date();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.information);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v6;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "PegasusResult: parseLegacyServerComponents", v15, 2u);
    v6 = v23;
  }

  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v9 + 8))(v11, v24);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v6 + 8))(v8, v5);
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.components.getter();
  (*(v2 + 8))(v4, v25);
  type metadata accessor for PerformanceUtil();
  v16 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v16);
  v17 = v26;
  Date.init()();
  v21 = &v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v20 = partial apply for closure #1 in static PegasusComponentsParser.parseLegacyComponents(pegasusResult:);
  LOBYTE(v19) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v27 + 8))(v17, v28);
  return v29;
}

void *specialized static PegasusComponentsParser.collateComponents(components:)(uint64_t a1)
{
  v231 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v230 = *(v231 - 8);
  v2 = __chkstk_darwin(v231);
  v229 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v228 = &v168 - v4;
  v195 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v216 = *(v195 - 8);
  v5 = __chkstk_darwin(v195);
  v7 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v194 = &v168 - v8;
  v198 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent();
  v217 = *(v198 - 8);
  v9 = __chkstk_darwin(v198);
  v197 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v196 = &v168 - v11;
  v201 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v218 = *(v201 - 8);
  v12 = __chkstk_darwin(v201);
  v200 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v199 = &v168 - v14;
  v211 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v220 = *(v211 - 8);
  v15 = __chkstk_darwin(v211);
  v210 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v209 = &v168 - v17;
  v215 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
  v225 = *(v215 - 8);
  v18 = __chkstk_darwin(v215);
  v214 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = &v168 - v20;
  v264 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v250 = *(v264 - 8);
  v21 = __chkstk_darwin(v264);
  v263 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v262 = &v168 - v23;
  v249 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v241 = *(v249 - 8);
  v24 = __chkstk_darwin(v249);
  v248 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v247 = &v168 - v26;
  v240 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v232 = *(v240 - 8);
  v27 = __chkstk_darwin(v240);
  v239 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v238 = &v168 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  __chkstk_darwin(v30 - 8);
  v32 = &v168 - v31;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v192 = &v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v168 - v38;
  v40 = __chkstk_darwin(v37);
  v254 = &v168 - v41;
  __chkstk_darwin(v40);
  v253 = &v168 - v42;
  v272 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v43 = *(v272 - 8);
  __chkstk_darwin(v272);
  v45 = &v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v47 = __swift_project_value_buffer(v46, static Logger.information);

  v265 = v47;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v193 = v39;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v48, v49, "PegasusResult: sorting pegasus components : %ld", v51, 0xCu);
  }

  else
  {
  }

  v53 = a1;
  v54 = *(a1 + 16);
  if (!v54)
  {
    return 0;
  }

  v179 = v7;
  v56 = *(v43 + 16);
  v55 = v43 + 16;
  v57 = v53 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
  v269 = (v34 + 48);
  v270 = v56;
  v260 = (v34 + 16);
  v261 = (v34 + 32);
  v259 = (v34 + 88);
  v258 = (v34 + 8);
  v268 = (v55 - 8);
  v255 = (v34 + 96);
  v178 = (v216 + 32);
  v174 = (v216 + 16);
  v173 = v216 + 8;
  v183 = (v217 + 32);
  v257 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.renderedDialog(_:);
  v177 = (v217 + 16);
  v176 = v217 + 8;
  v245 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.catDialog(_:);
  v187 = (v218 + 32);
  v182 = (v218 + 16);
  v236 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.layoutExperience(_:);
  v181 = v218 + 8;
  v191 = (v220 + 32);
  v224 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.domainObjectComponent(_:);
  v186 = (v220 + 16);
  v185 = v220 + 8;
  *&v52 = 136315138;
  v172 = v52;
  v207 = (v225 + 32);
  v206 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.directExecutionComponent(_:);
  v190 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.delayedActionComponent(_:);
  v184 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.sayItComponent(_:);
  v180 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.buttonViewComponent(_:);
  v175 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.disambiguationListComponent(_:);
  v189 = (v225 + 16);
  v188 = v225 + 8;
  v223 = (v230 + 32);
  v205 = (v230 + 16);
  v204 = v230 + 8;
  v235 = (v232 + 32);
  v246 = _swiftEmptyArrayStorage;
  v251 = _swiftEmptyArrayStorage;
  v271 = v55;
  v267 = *(v55 + 56);
  v212 = _swiftEmptyArrayStorage;
  v227 = _swiftEmptyArrayStorage;
  v219 = _swiftEmptyArrayStorage;
  v226 = _swiftEmptyArrayStorage;
  v208 = _swiftEmptyArrayStorage;
  v266 = _swiftEmptyArrayStorage;
  v237 = _swiftEmptyArrayStorage;
  v222 = (v232 + 16);
  v221 = v232 + 8;
  v244 = (v241 + 32);
  v234 = (v241 + 16);
  v233 = v241 + 8;
  v256 = (v250 + 32);
  v243 = (v250 + 16);
  v242 = v250 + 8;
  v58 = v253;
  v59 = v254;
  v252 = v32;
  v56(v45, v57, v272);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    if ((*v269)(v32, 1, v33) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component?(v32);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "PegasusResult component missing type", v62, 2u);
      }

      (*v268)(v45, v272);
    }

    else
    {
      (*v261)(v58, v32, v33);
      v63 = *v260;
      (*v260)(v59, v58, v33);
      v64 = (*v259)(v59, v33);
      if (v64 == v257)
      {
        (*v255)(v59, v33);
        v65 = *v256;
        v66 = v262;
        v67 = v264;
        (*v256)(v262, v59, v264);
        (*v243)(v263, v66, v67);
        v68 = v266;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
        }

        v69 = v258;
        v71 = v68[2];
        v70 = v68[3];
        if (v71 >= v70 >> 1)
        {
          v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v68);
        }

        else
        {
          v266 = v68;
        }

        v72 = v250;
        v73 = v264;
        (*(v250 + 8))(v262, v264);
        v74 = *v69;
        v75 = v253;
        v74(v253, v33);
        (*v268)(v45, v272);
        v76 = v266;
        v266[2] = v71 + 1;
        v77 = v76 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71;
        v78 = v263;
        v79 = v73;
        v58 = v75;
LABEL_26:
        v65(v77, v78, v79);
LABEL_27:
        v59 = v254;
        v32 = v252;
        goto LABEL_9;
      }

      if (v64 == v245)
      {
        (*v255)(v59, v33);
        v65 = *v244;
        v80 = v247;
        v81 = v249;
        (*v244)(v247, v59, v249);
        (*v234)(v248, v80, v81);
        v82 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82[2] + 1, 1, v82);
        }

        v84 = v82[2];
        v83 = v82[3];
        if (v84 >= v83 >> 1)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v82);
        }

        else
        {
          v251 = v82;
        }

        v85 = v241;
        v86 = v249;
        (*(v241 + 8))(v247, v249);
        v58 = v253;
        (*v258)(v253, v33);
        (*v268)(v45, v272);
        v87 = v251;
        v251[2] = v84 + 1;
        v77 = v87 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84;
        v78 = v248;
        v79 = v86;
        goto LABEL_26;
      }

      if (v64 == v236)
      {
        (*v255)(v59, v33);
        v88 = *v235;
        v89 = v238;
        v90 = v240;
        (*v235)(v238, v59, v240);
        (*v222)(v239, v89, v90);
        v91 = v246;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
        }

        v93 = v91[2];
        v92 = v91[3];
        if (v93 >= v92 >> 1)
        {
          v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v91);
        }

        else
        {
          v246 = v91;
        }

        v94 = v232;
        v95 = v240;
        (*(v232 + 8))(v238, v240);
        v58 = v253;
        (*v258)(v253, v33);
        (*v268)(v45, v272);
        v96 = v246;
        v246[2] = v93 + 1;
        v88(&v96[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93], v239, v95);
        goto LABEL_27;
      }

      if (v64 == v224)
      {
        (*v255)(v59, v33);
        v97 = v228;
        v98 = v231;
        v203 = *v223;
        v203(v228, v59, v231);
        (*v205)(v229, v97, v98);
        v99 = v237;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99[2] + 1, 1, v99);
        }

        v101 = v99[2];
        v100 = v99[3];
        v202 = (v101 + 1);
        if (v101 >= v100 >> 1)
        {
          v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99);
        }

        else
        {
          v237 = v99;
        }

        v102 = v230;
        v103 = v231;
        (*(v230 + 8))(v228, v231);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v104 = v237;
        v237[2] = v202;
        v105 = v104 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101;
        v106 = v229;
        v107 = v103;
LABEL_70:
        v203(v105, v106, v107);
        goto LABEL_9;
      }

      if (v64 == v206)
      {
        (*v255)(v59, v33);
        v108 = v213;
        v109 = v215;
        v203 = *v207;
        v203(v213, v59, v215);
        (*v189)(v214, v108, v109);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227[2] + 1, 1, v227);
        }

        v111 = v227[2];
        v110 = v227[3];
        v202 = (v111 + 1);
        if (v111 >= v110 >> 1)
        {
          v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v227);
        }

        v112 = v225;
        v113 = v215;
        (*(v225 + 8))(v213, v215);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v114 = v227;
        v227[2] = v202;
        v105 = v114 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v111;
        v106 = v214;
        v107 = v113;
        goto LABEL_70;
      }

      if (v64 == v190)
      {
        (*v255)(v59, v33);
        v115 = v209;
        v116 = v211;
        v203 = *v191;
        v203(v209, v59, v211);
        (*v186)(v210, v115, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v219 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v219[2] + 1, 1, v219);
        }

        v118 = v219[2];
        v117 = v219[3];
        v202 = (v118 + 1);
        if (v118 >= v117 >> 1)
        {
          v219 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v219);
        }

        v119 = v220;
        v120 = v211;
        (*(v220 + 8))(v209, v211);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v121 = v219;
        v219[2] = v202;
        v105 = v121 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v118;
        v106 = v210;
        v107 = v120;
        goto LABEL_70;
      }

      if (v64 == v184)
      {
        (*v255)(v59, v33);
        v122 = v199;
        v123 = v201;
        v203 = *v187;
        v203(v199, v59, v201);
        (*v182)(v200, v122, v123);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v226[2] + 1, 1, v226);
        }

        v125 = v226[2];
        v124 = v226[3];
        v202 = (v125 + 1);
        if (v125 >= v124 >> 1)
        {
          v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v226);
        }

        v126 = v218;
        v127 = v201;
        (*(v218 + 8))(v199, v201);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v128 = v226;
        v226[2] = v202;
        v105 = v128 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v125;
        v106 = v200;
        v107 = v127;
        goto LABEL_70;
      }

      if (v64 == v180)
      {
        (*v255)(v59, v33);
        v129 = v196;
        v130 = v198;
        v203 = *v183;
        v203(v196, v59, v198);
        (*v177)(v197, v129, v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212[2] + 1, 1, v212);
        }

        v132 = v212[2];
        v131 = v212[3];
        v202 = (v132 + 1);
        if (v132 >= v131 >> 1)
        {
          v212 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v212);
        }

        v133 = v217;
        v134 = v198;
        (*(v217 + 8))(v196, v198);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v135 = v212;
        v212[2] = v202;
        v105 = v135 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v132;
        v106 = v197;
        v107 = v134;
        goto LABEL_70;
      }

      if (v64 == v175)
      {
        (*v255)(v59, v33);
        v136 = v194;
        v137 = v195;
        v203 = *v178;
        v203(v194, v59, v195);
        (*v174)(v179, v136, v137);
        v138 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138[2] + 1, 1, v138);
        }

        v140 = v138[2];
        v139 = v138[3];
        v202 = (v140 + 1);
        if (v140 >= v139 >> 1)
        {
          v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v138);
        }

        else
        {
          v208 = v138;
        }

        v141 = v216;
        v142 = v195;
        (*(v216 + 8))(v194, v195);
        (*v258)(v58, v33);
        (*v268)(v45, v272);
        v143 = v208;
        v208[2] = v202;
        v105 = v143 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v140;
        v106 = v179;
        v107 = v142;
        goto LABEL_70;
      }

      v144 = v193;
      v63(v193, v58, v33);
      v145 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();
      v202 = v145;
      v146 = os_log_type_enabled(v145, v171);
      v147 = v258;
      v203 = (v258 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v146)
      {
        v148 = swift_slowAlloc();
        v170 = v148;
        v169 = swift_slowAlloc();
        v273 = v169;
        *v148 = v172;
        v63(v192, v144, v33);
        v58 = v253;
        v168 = String.init<A>(describing:)();
        v150 = v149;
        v151 = *v147;
        (*v147)(v144, v33);
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v150, &v273);

        v153 = v170;
        *(v170 + 1) = v152;
        v154 = v202;
        _os_log_impl(&dword_0, v202, v171, "PegasusResult unknown component %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v169);
      }

      else
      {

        v151 = *v147;
        (*v147)(v144, v33);
      }

      v151(v58, v33);
      (*v268)(v45, v272);
      v59 = v254;
      v151(v254, v33);
    }

LABEL_9:
    v57 += v267;
    if (!--v54)
    {
      break;
    }

    v270(v45, v57, v272);
  }

  type metadata accessor for PegasusComponents();
  v155 = swift_allocObject();

  v156 = v251;

  v157 = v212;

  v158 = v227;

  v159 = v219;

  v160 = v226;

  v161 = v208;

  v162 = v237;

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 134220032;
    *(v165 + 4) = v266[2];
    *(v165 + 12) = 2048;
    *(v165 + 14) = v246[2];
    *(v165 + 22) = 2048;
    *(v165 + 24) = v156[2];
    *(v165 + 32) = 2048;
    *(v165 + 34) = v157[2];
    *(v165 + 42) = 2048;
    *(v165 + 44) = v158[2];
    *(v165 + 52) = 2048;
    *(v165 + 54) = v159[2];
    *(v165 + 62) = 2048;
    *(v165 + 64) = v226[2];
    *(v165 + 72) = 2048;
    *(v165 + 74) = v161[2];
    *(v165 + 82) = 2048;
    *(v165 + 84) = v162[2];
    _os_log_impl(&dword_0, v163, v164, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v165, 0x5Cu);
    v160 = v226;
  }

  v166 = v246;
  v155[2] = v266;
  v155[3] = v166;
  v155[4] = v156;
  v155[5] = v157;
  v155[6] = v158;
  v155[7] = v159;
  v155[8] = v160;
  v155[9] = v161;
  v155[10] = v162;

  return v155;
}

uint64_t specialized static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)()
{
  v0 = type metadata accessor for Date();
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v34 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.information);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v6;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PegasusResult: parsePrimaryServerComponents", v18, 2u);
    v6 = v28;
  }

  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v29 + 8))(v11, v30);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v31 + 8))(v8, v6);
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for PerformanceUtil();
  v19 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v19);
  v20 = v34;
  Date.init()();
  v25 = &v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v24 = partial apply for closure #1 in static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:);
  LOBYTE(v23) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v35 + 8))(v20, v36);
  v21 = v37;
  (*(v32 + 8))(v14, v33);
  return v21;
}

uint64_t specialized static PegasusComponentsParser.parsePegasusRenderOptions(response:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.information);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "PegasusResult: parsePegasusRenderOptions", v11, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v5 + 8))(v7, v4);
  v12 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  v13 = (*(v1 + 8))(v3, v0);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  __chkstk_darwin(v13);
  *(&v16 - 16) = 1;
  v14 = objc_allocWithZone(type metadata accessor for PommesRenderOptions());
  return PommesRenderOptions.init(_:)();
}

uint64_t partial apply for closure #1 in static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)@<X0>(void *a2@<X8>)
{
  v3 = Apple_Parsec_Siri_V2alpha_SingleExperience.components.getter();
  v4 = specialized static PegasusComponentsParser.collateComponents(components:)(v3);

  *a2 = v4;
  return result;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for closure #1 in static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusComponentsParser.collateComponents(components:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t PegasusFlowEventLogger.__allocating_init(pommesResponse:domainName:eventType:eventSending:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(a5, v10 + 24);
  if (a1)
  {
    v11 = a1;
    a2 = PommesResponse.metadataDomainName.getter();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_0Tm(a5);

    a3 = v13;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a5);
  }

  *(v10 + 64) = a2;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  return v10;
}

void *PegasusFlowEventLogger.pommesResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PegasusFlowEventLogger.metadataDomainName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PegasusFlowEventLogger.init(pommesResponse:domainName:eventType:eventSending:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v6 = v5;
  *(v6 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(a5, v6 + 24);
  if (a1)
  {
    v12 = a1;
    a2 = PommesResponse.metadataDomainName.getter();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_0Tm(a5);

    a3 = v14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a5);
  }

  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  return v6;
}

uint64_t PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v32 = a5;
  v33 = a8;
  v30 = a2;
  v31 = a7;
  v29 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for ActivityType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.information);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v28 = v16;
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Logging generic SELF FlowStep event", v23, 2u);
    v16 = v28;
  }

  type metadata accessor for SiriKitEvent();
  (*(v17 + 16))(v19, a1, v16);
  outlined init with copy of SiriKitReliabilityCodes?(v29, v15);
  v24 = swift_allocObject();
  v25 = v30;
  v26 = v33;
  v24[2] = v31;
  v24[3] = v26;
  v24[4] = v25;
  v24[5] = a3;
  v24[6] = v32;
  v24[7] = a6;

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  __swift_project_boxed_opaque_existential_1((v9 + 24), *(v9 + 48));
  dispatch thunk of SiriKitEventSending.send(_:)();
}

uint64_t closure #1 in PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

Swift::tuple_taskType_String_optional_isTerminalStepLogged_Bool __swiftcall PegasusFlowEventLogger.logFlowEventsFromPommesResponse()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - v3;
  v4 = type metadata accessor for ActivityType();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PerformanceUtil.Ticket();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg8taskType_Sb20isTerminalStepLoggedtMd, &_sSSSg8taskType_Sb20isTerminalStepLoggedtMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v14 = v6;

  (*(v10 + 8))(v12, v9);
  v15 = v40;
  v16 = v42;
  v17 = v43;
  v41 = v44;
  if (v43)
  {

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    (*(*v0 + 144))(v16, v17);

    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    (*(v15 + 8))(v8, v14);
  }

  if (v0[2])
  {
    if ((v41 | dispatch thunk of PommesResponse.listenAfterSpeaking.getter()))
    {
      goto LABEL_12;
    }
  }

  else if (v41)
  {
    goto LABEL_12;
  }

  v35 = v14;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v33 = v16;
  v34 = v13;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "RenderPegasusFlow FlowTask logging completed", v21, 2u);
  }

  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v23 = v38;
  v22 = v39;
  v24 = v36;
  (*(v38 + 104))(v36, enum case for ActivityType.completed(_:), v39);
  v25 = enum case for SiriKitReliabilityCodes.normal(_:);
  v26 = type metadata accessor for SiriKitReliabilityCodes();
  v27 = *(v26 - 8);
  v28 = v37;
  (*(v27 + 104))(v37, v25, v26);
  (*(v27 + 56))(v28, 0, 1, v26);
  (*(*v1 + 120))(v24, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v28, 0, 0xE000000000000000, 0x54746E6572727543, 0xEB000000006B7361);
  outlined destroy of SiriKitReliabilityCodes?(v28);
  (*(v23 + 8))(v24, v22);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v40 + 8))(v8, v35);
  v16 = v33;
LABEL_12:
  v29 = v16;
  v30 = v17;
  v31 = v41;
  result.taskType.value._object = v30;
  result.taskType.value._countAndFlagsBits = v29;
  result.isTerminalStepLogged = v31;
  return result;
}

Swift::tuple_taskType_String_optional_isTerminalStepLogged_Bool __swiftcall PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()()
{
  v32 = 0;
  v1 = v0[2];
  if (!v1)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Pommes response is nil, no SELF Flow event could be logged from it", v25, 2u);
    }

    goto LABEL_20;
  }

  v2 = v0;
  v31 = _swiftEmptyArrayStorage;
  v3 = v1;
  v4 = dispatch thunk of PommesResponse.pegasusDomainFlowStepLog.getter();
  v6 = v5;
  v7 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWStep, FLOWSchemaFLOWStep_ptr);
  v8 = *(*v0 + 160);
  v9 = v8(v4, v6, v7, v7);
  outlined consume of Data?(v4, v6);
  if (!v9)
  {

LABEL_20:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v26 = v10;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = v31;
  v27 = v3;
  v12 = dispatch thunk of PommesResponse.taskStepLogs.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      outlined copy of Data?(v15, *v14);
      v17 = v8(v15, v16, v7, v7);
      if (v17)
      {
        v18 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        outlined consume of Data?(v15, v16);

        v11 = v31;
      }

      else
      {
        outlined consume of Data?(v15, v16);
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v29 = 0x54746E6572727543;
  v30 = 0xEB000000006B7361;
  v28 = 152;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18FLOWSchemaFLOWStepCG_yts5NeverOTg50127_s21InformationFlowPlugin07PegasusB11EventLoggerC03logdb4StepE18FromPommesResponseSSSg8taskType_Sb010isTerminalH6LoggedtyFySo18dE6CXEfU_SSSo0d9FLOWStateV0VSb0hI6Plugin0kimN0CTf1cn_nTf4nnnng_n(v11, &v29, &v28, &v32, v2);

  v19 = v29;
  v20 = v30;
  v21 = v32;
LABEL_21:
  result.taskType.value._object = v20;
  result.taskType.value._countAndFlagsBits = v19;
  result.isTerminalStepLogged = v21;
  return result;
}

BOOL FLOWSchemaFLOWStateType.isLastTaskStep.getter(unsigned int a1)
{
  result = 1;
  if (a1 > 5 || ((1 << a1) & 0x34) == 0)
  {
    return a1 == 128;
  }

  return result;
}

uint64_t closure #1 in closure #1 in PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 domainContexts];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, FLOWSchemaFLOWDomainContext_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_4:
      if ((v7 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 + 32);
      }
    }
  }

  else
  {
    result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }
  }

LABEL_9:
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();
  v10 = [a2 flowState];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 resolvedSlotName];

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  v13 = [a2 flowState];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 flowStateReasonDescription];

    if (v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

Swift::Void __swiftcall PegasusFlowEventLogger.logPegasusContextTier1Event(taskType:)(Swift::String taskType)
{
  v2 = v1;
  if (v1[2])
  {
    v3 = dispatch thunk of PommesResponse.pegasusDomainUserSensitiveTier1Log.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWPegasusContextTier1, FLOWSchemaFLOWPegasusContextTier1_ptr);
  v14 = (*(*v1 + 160))(v3, v5, v6, v6);
  outlined consume of Data?(v3, v5);
  if (v14)
  {
    v7 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
    if (v7)
    {
      v8 = v7;
      [v7 setPegasusContextTier1:v14];
      type metadata accessor for SiriKitEvent();

      v9 = v8;
      SiriKitEvent.__allocating_init(taskType:tierOneFlowEvent:_:)();
      __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
      dispatch thunk of SiriKitEventSending.send(_:)();
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.information);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "Unable to create FLOWSchemaFLOWClientEvent to log flowEntityContextTier1", v13, 2u);
      }
    }
  }
}

Swift::Void __swiftcall PegasusFlowEventLogger.logInformationPluginPreprocessEvent()()
{
  v1 = [objc_allocWithZone(FLOWSchemaFLOWInformationPluginContext) init];
  if (v1)
  {
    v13 = v1;
    v2 = String._bridgeToObjectiveC()();
    [v13 setExecutedPegasusDomain:v2];

    [v13 setEventType:*(v0 + 80)];
    v3 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
    if (v3)
    {
      v4 = v3;
      [v3 setInformationPluginContext:v13];
      type metadata accessor for SiriKitEvent();
      *(swift_allocObject() + 16) = v4;

      v5 = v4;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
      dispatch thunk of SiriKitEventSending.send(_:)();

      return;
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.information);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Unable to create FLOWSchemaFLOWDomainContext to log info plugin domain and type", v12, 2u);
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.information);
    v13 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v13, v7, "Unable to create FLOWSchemaFLOWInformationPluginContext to log info plugin domain and type", v8, 2u);
    }
  }
}

id PegasusFlowEventLogger.makeFlowObject<A>(from:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v16 = a1;
      v17 = a2;
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Data._bridgeToObjectiveC()().super.isa;
      v20 = [v18 initWithData:isa];

      outlined consume of Data?(v16, v17);
      return v20;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = a1;
    v15 = a2;
    outlined copy of Data?(a1, a2);
    a1 = v14;
    a2 = v15;
    goto LABEL_17;
  }

  if (v4 != 2)
  {
LABEL_9:
    outlined consume of Data?(a1, a2);
    goto LABEL_11;
  }

  if (*(a1 + 16) != *(a1 + 24))
  {
    goto LABEL_16;
  }

LABEL_11:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "No data of type %s included in the pommes response for SELF FlowTask logging", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  return 0;
}

uint64_t PegasusFlowEventLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return v0;
}

uint64_t PegasusFlowEventLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47EC4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in PegasusFlowEventLogger.logFlowEventsFromPommesResponse()@<X0>(uint64_t a1@<X8>)
{
  result = (*(*v1 + 136))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t outlined destroy of SiriKitReliabilityCodes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18FLOWSchemaFLOWStepCG_yts5NeverOTg50127_s21InformationFlowPlugin07PegasusB11EventLoggerC03logdb4StepE18FromPommesResponseSSSg8taskType_Sb010isTerminalH6LoggedtyFySo18dE6CXEfU_SSSo0d9FLOWStateV0VSb0hI6Plugin0kimN0CTf1cn_nTf4nnnng_n(unint64_t a1, uint64_t *a2, unsigned int *a3, _BYTE *a4, void *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    if (!v7)
    {
      return _swiftEmptyArrayStorage;
    }

    v8 = a1;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      break;
    }

    v38 = v5;
    v44 = v8 & 0xC000000000000001;
    a1 = type metadata accessor for SiriKitEvent();
    v10 = v8;
    v41 = v7;
    v11 = 0;
    v39 = v8 & 0xFFFFFFFFFFFFFF8;
    p_base_props = &SportsPersonalizationEntryPoint.base_props;
    v42 = v10;
    v43 = a3;
    while (!__OFADD__(v11, 1))
    {
      if (v44)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v39 + 16))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 p:v38 base:?props[221]];
      v47 = v11 + 1;
      if (v15 && (v16 = v15, v17 = [v15 currentTaskName], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0x54746E6572727543;
        v20 = 0xEB000000006B7361;
      }

      *a2 = v18;
      a2[1] = v20;

      v21 = [v14 p_base_props[221]];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 flowStateType];

        *a3 = v23;
        if (v23 <= 5 && ((1 << v23) & 0x34) != 0 || v23 == 128)
        {
          *a4 = 1;
        }
      }

      else
      {
        *a3 = 152;
      }

      v24 = [v14 p_base_props[221]];
      if (v24 && (v25 = v24, v26 = [v24 currentTaskType], v25, v26))
      {
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v46 = 0;
        v28 = 0;
      }

      v29 = [v14 p_base_props[221]];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 flowStateReason];

        if (v31)
        {
          [v31 statusReason];
        }
      }

      v32 = swift_allocObject();
      v32[2] = v14;
      v32[3] = v46;
      v32[4] = v28;

      v33 = v14;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      __swift_project_boxed_opaque_existential_1(a5 + 3, a5[6]);
      dispatch thunk of SiriKitEventSending.send(_:)();

      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        a1 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v36;
      ++v11;
      v10 = v42;
      a3 = v43;
      p_base_props = (&SportsPersonalizationEntryPoint + 64);
      if (v47 == v41)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v37 = a1;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_483E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4846C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t closure #1 in static ResultParamBuilder.displayPaginationParams.getter()
{
  WindowedPaginationParameters.isFirstWindow.setter();
  WindowedPaginationParameters.isConclusion.setter();
  WindowedPaginationParameters.isNextWindowLastWindow.setter();
  WindowedPaginationParameters.nextWindowItemCount.setter();
  return WindowedPaginationParameters.isLastWindow.setter();
}

uint64_t ResultParamBuilder.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ResultParamBuilder.init(parameters:content:contentFieldName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v10 = type metadata accessor for ResultParamBuilder(0, a5, a3, a4);
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Optional();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a2, v12);
  v14 = &a6[*(v10 + 32)];
  *v14 = a3;
  *(v14 + 1) = a4;
  return result;
}

uint64_t ResultParamBuilder.init(parameters:contentFieldName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v22 = a1;
  specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v17 = swift_dynamicCast();
  (*(*(a4 - 8) + 56))(v16, v17 ^ 1u, 1, a4);
  v18 = v22;
  (*(v11 + 16))(v14, v16, v10);
  ResultParamBuilder.init(parameters:content:contentFieldName:)(v18, v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v16, v10);
}

uint64_t ResultParamBuilder.patternParameters(for:)(uint64_t a1, uint64_t a2)
{
  v14 = *v2;
  v12 = *(a2 + 16);
  v5 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  v7 = (v2 + *(a2 + 32));
  v8 = *v7;
  v9 = v7[1];

  specialized Dictionary._Variant.updateValue(_:forKey:)(v11, v8, v9, v13);
  outlined destroy of Any?(v13);
  return v14;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  outlined init with take of Any((v12[7] + 32 * v13), a4);
  result = outlined init with take of Any(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

void type metadata completion function for ResultParamBuilder(uint64_t a1)
{
  type metadata accessor for [String : Any]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ResultParamBuilder(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ResultParamBuilder(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((a1 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (a1 + v10 + 8) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t one-time initialization function for kFlowEntryPoints()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0E10EntryPoint_pGMd, _ss23_ContiguousArrayStorageCy21InformationFlowPlugin0E10EntryPoint_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B9FF0;
  v1 = type metadata accessor for SportsPersonalizationEntryPoint();
  v2 = swift_allocObject();
  v8 = type metadata accessor for SportsResolver();
  v9 = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  SportsResolver.init()();
  outlined init with take of SiriSuggestionsBroker(&v7, v2 + 16);
  *(v2 + 80) = &type metadata for Features;
  *(v2 + 88) = &protocol witness table for Features;
  *(v2 + 56) = 1;
  v3 = type metadata accessor for IntentDonator();
  v4 = swift_allocObject();
  *(v2 + 120) = v3;
  *(v2 + 128) = &protocol witness table for IntentDonator;
  *(v2 + 96) = v4;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for SportsPersonalizationEntryPoint;
  *(v0 + 32) = v2;
  v5 = type metadata accessor for SuggestionsEntryPoint();
  result = SuggestionsEntryPoint.__allocating_init()();
  *(v0 + 96) = v5;
  *(v0 + 104) = &protocol witness table for SuggestionsEntryPoint;
  *(v0 + 72) = result;
  *(v0 + 136) = &type metadata for InformationRoutingEntryPoint;
  *(v0 + 144) = &protocol witness table for InformationRoutingEntryPoint;
  static InformationRootFlow.kFlowEntryPoints = v0;
  return result;
}

uint64_t InformationRootFlow.__allocating_init(flowEntryPoints:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  v7 = type metadata accessor for Input();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  swift_beginAccess();
  outlined assign with take of Input?(v4, v5 + v6);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = a1;
  return v5;
}

uint64_t InformationRootFlow.init(flowEntryPoints:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  v7 = type metadata accessor for Input();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v5, 1, 1, v7);
  swift_beginAccess();
  outlined assign with take of Input?(v5, v1 + v6);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = a1;
  return v1;
}

uint64_t outlined assign with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL InformationRootFlow.on(input:)(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v2 = __chkstk_darwin(v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v30 = &v26 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInitiated(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  aBlock[4] = closure #1 in InformationRootFlow.on(input:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v18 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v28);
  v19 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  swift_beginAccess();
  v20 = v30;
  outlined init with copy of Input?(v18 + v19, v30);
  v21 = type metadata accessor for Input();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v20, 1, v21);
  outlined destroy of Input?(v20);
  if (v23 == 1)
  {
    v24 = v27;
    (*(v22 + 16))(v27, v26, v21);
    (*(v22 + 56))(v24, 0, 1, v21);
    swift_beginAccess();
    outlined assign with take of Input?(v24, v18 + v19);
    swift_endAccess();
  }

  return v23 == 1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Input?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InformationRootFlow.execute()(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Input();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(InformationRootFlow.execute(), 0, 0);
}

{
  *(*v1 + 344) = a1;

  return _swift_task_switch(InformationRootFlow.execute(), 0, 0);
}

void InformationRootFlow.execute()()
{
  v51 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  swift_beginAccess();
  outlined init with copy of Input?(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Input?(v0[32]);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.information);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Information root flow not called as root flow", v9, 2u);
    }

    static ExecuteResponse.complete()();
LABEL_19:

    v43 = v0[1];

    v43();
    return;
  }

  (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  v14 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v14, static Logger.information);
  (*(v13 + 16))(v10, v11, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[33];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v21 = 136315138;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v50);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v15, v16, "InformationRootFlow executing with input: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
  }

  v0[38] = v25;
  v27 = *(v0[31] + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints);
  v0[39] = v27;
  v28 = *(v27 + 16);
  v0[40] = v28;
  if (!v28)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "InformationRootFlow not sure what to do with this input", v39, 2u);
    }

    v40 = v0[38];
    v41 = v0[36];
    v42 = v0[33];

    static ExecuteResponse.complete()();
    v40(v41, v42);
    goto LABEL_19;
  }

  v0[41] = 0;
  if (*(v27 + 16))
  {
    outlined init with copy of OutputPublisherAsync(v27 + 32, (v0 + 2));
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v50);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v29, v30, "Offering parse to entry point: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v44 = v0[5];
    v45 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v44);
    v49 = (*(v45 + 8) + **(v45 + 8));
    v46 = swift_task_alloc();
    v0[42] = v46;
    *v46 = v0;
    v46[1] = InformationRootFlow.execute();
    v47 = v0[36];

    v49(v47, v44, v45);
  }

  else
  {
    __break(1u);
  }
}

uint64_t InformationRootFlow.execute()()
{
  v38 = v0;
  if (v0[43])
  {
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 12));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v37 = v4;
      *v3 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v5 = String.init<A>(describing:)();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v37);

      *(v3 + 4) = v8;
      _os_log_impl(&dword_0, v1, v2, "Using entry point: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    }

    v18 = v0[38];
    v19 = v0[36];
    v20 = v0[33];
    static ExecuteResponse.complete(next:)();

    v18(v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
LABEL_10:

    v21 = v0[1];

    return v21();
  }

  v9 = v0[40];
  v10 = v0[41] + 1;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v10 == v9)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "InformationRootFlow not sure what to do with this input", v14, 2u);
    }

    v15 = v0[38];
    v16 = v0[36];
    v17 = v0[33];

    static ExecuteResponse.complete()();
    v15(v16, v17);
    goto LABEL_10;
  }

  v22 = v0[41] + 1;
  v0[41] = v22;
  v23 = v0[39];
  if (v22 >= *(v23 + 16))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of OutputPublisherAsync(v23 + 40 * v22 + 32, (v0 + 2));
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "Offering parse to entry point: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v32 = v0[5];
    v33 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v32);
    v36 = (*(v33 + 8) + **(v33 + 8));
    v34 = swift_task_alloc();
    v0[42] = v34;
    *v34 = v0;
    v34[1] = InformationRootFlow.execute();
    v35 = v0[36];

    return v36(v35, v32, v33);
  }

  return result;
}

uint64_t InformationRootFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InformationRootFlow(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type InformationRootFlow and conformance InformationRootFlow, type metadata accessor for InformationRootFlow, &protocol conformance descriptor for InformationRootFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t InformationRootFlow.deinit()
{
  outlined destroy of Input?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput);

  return v0;
}

uint64_t InformationRootFlow.__deallocating_deinit()
{
  outlined destroy of Input?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InformationRootFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance InformationRootFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InformationRootFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata accessor for InformationRootFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for InformationRootFlow;
  if (!type metadata singleton initialization cache for InformationRootFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

void type metadata completion function for InformationRootFlow(uint64_t a1)
{
  type metadata accessor for Input?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Input?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Input?);
    }
  }
}

void SportsProperty.apply(to:)(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = String._bridgeToObjectiveC()();
  [v5 *off_DD758[a4]];
}

uint64_t specialized Parse.DirectInvocation.get<A>(protoMessage:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = Parse.DirectInvocation.userData.getter();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v24);

      if (swift_dynamicCast())
      {
        v12 = v26;
        v11 = v27;
        v13 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        outlined copy of Data._Representation(v12, v11);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_Engagement_Context and conformance Apple_Parsec_Responseframework_Engagement_Context, &type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context, &protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_Context);
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v12, v11);
        v20 = *(*(v13 - 8) + 56);
        v21 = a3;
        v22 = 0;
        v23 = v13;
        return v20(v21, v22, 1, v23);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v24[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&dword_0, v15, v16, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  v23 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v20 = *(*(v23 - 8) + 56);
  v21 = a3;
  v22 = 1;
  return v20(v21, v22, 1, v23);
}

{
  v6 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = Parse.DirectInvocation.userData.getter();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v24);

      if (swift_dynamicCast())
      {
        v12 = v26;
        v11 = v27;
        Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        outlined copy of Data._Representation(v12, v11);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Search_PegasusQueryContext and conformance Apple_Parsec_Search_PegasusQueryContext, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, &protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v12, v11);
        v20 = *(*(Context - 8) + 56);
        v21 = a3;
        v22 = 0;
        v23 = Context;
        return v20(v21, v22, 1, v23);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v24[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&dword_0, v15, v16, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  v23 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v20 = *(*(v23 - 8) + 56);
  v21 = a3;
  v22 = 1;
  return v20(v21, v22, 1, v23);
}

uint64_t TapEngagementHandlingFlow.__allocating_init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = swift_allocObject();
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  __chkstk_darwin(v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(a1, v23, v12, v18, v7, v9, v15, v8, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v20;
}

uint64_t TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  __chkstk_darwin(v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(a1, a2, v12, v18, v22[1], v9, v15, v8, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v20;
}

uint64_t TapEngagementHandlingFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TapEngagementHandlingFlow: Processing Async Request in Execute method", v4, 2u);
  }

  static ExecuteResponse.complete()();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t TapEngagementHandlingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TapEngagementHandlingFlow(0);
  lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow, type metadata accessor for TapEngagementHandlingFlow, &protocol conformance descriptor for TapEngagementHandlingFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TapEngagementHandlingFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  (*(*(Context - 8) + 8))(v0 + v3, Context);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor));
  return v0;
}

uint64_t TapEngagementHandlingFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  (*(*(Context - 8) + 8))(v0 + v3, Context);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance TapEngagementHandlingFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance TapEngagementHandlingFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TapEngagementHandlingFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a5;
  v54 = a1;
  v55 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
  __chkstk_darwin(v14 - 8);
  v52 = &v48 - v15;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v50 = *(Context - 8);
  v51 = Context;
  __chkstk_darwin(Context);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v61 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v57 = a7;
  v58 = a9;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v56);
  (*(*(a7 - 8) + 32))(v26, a4, a7);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.information);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "TapEngagementHandlingFlow: Received Direct invocation", v30, 2u);
  }

  v31 = v54;
  specialized Parse.DirectInvocation.get<A>(protoMessage:)(0xD000000000000011, 0x80000000000BE1A0, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v32 = &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd;
    v33 = &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR;
    v34 = v20;
  }

  else
  {
    v35 = *(v22 + 32);
    v35(v24, v20, v21);
    v36 = v52;
    specialized Parse.DirectInvocation.get<A>(protoMessage:)(0x4373757361676570, 0xEE00747865746E6FLL, v52);
    v37 = v50;
    v38 = v51;
    if ((*(v50 + 48))(v36, 1, v51) != 1)
    {
      v44 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v44 - 8) + 8))(v31, v44);
      v45 = *(v37 + 32);
      v46 = v49;
      v45(v49, v36, v38);
      v47 = v53;
      v35((v53 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext), v24, v21);
      v45((v47 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext), v46, v38);
      outlined init with take of SiriSuggestionsBroker(v55, v47 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync);
      outlined init with take of SiriSuggestionsBroker(&v59, v47 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement);
      outlined init with take of SiriSuggestionsBroker(&v56, v47 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor);
      return v47;
    }

    (*(v22 + 8))(v24, v21);
    v32 = &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd;
    v33 = &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR;
    v34 = v36;
  }

  outlined destroy of Any?(v34, v32, v33);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "TapEngagementHandlingFlow: Unable to retrieve EngagementContext from DI Payload.", v41, 2u);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  v42 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v42 - 8) + 8))(v31, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(&v56);
  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  type metadata accessor for TapEngagementHandlingFlow(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for TapEngagementHandlingFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for TapEngagementHandlingFlow;
  if (!type metadata singleton initialization cache for TapEngagementHandlingFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TapEngagementHandlingFlow(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = v11;
  v8[72] = v10;
  v8[71] = a8;
  v8[70] = a7;
  v8[69] = a6;
  v8[68] = a5;
  v8[67] = a4;
  v8[66] = a3;
  v8[65] = a2;
  v8[64] = a1;
  return _swift_task_switch(static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v30 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);
    v6 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v29);
    *(v6 + 12) = 2080;
    v7 = Dictionary.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v29);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowFactory.makeDetailedResultFlow called with %s : %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 576);
  v11 = *(v0 + 560);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  static PatternFlowProvidingHelper.unwrap(_:with:)(*(v0 + 584), v11, (v0 + 264));
  outlined init with copy of OutputPublisherAsync(v11, v0 + 304);
  outlined init with copy of OutputPublisherAsync(v10, v0 + 344);
  outlined init with copy of OutputPublisherAsync(v0 + 264, v0 + 384);
  v15 = type metadata accessor for PatternExecutor();
  v16 = swift_allocObject();
  *(v0 + 448) = v15;
  *(v0 + 456) = &protocol witness table for PatternExecutor;
  *(v0 + 424) = v16;
  *(v0 + 248) = v14;
  *(v0 + 256) = v13;
  v29 = v12;

  specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, (v0 + 464));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v17 = swift_dynamicCast();
  v18 = 0uLL;
  if (v17)
  {
    v18 = *(v0 + 496);
  }

  v19 = *(v0 + 568);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  *(v0 + 16) = v29;
  *(v0 + 24) = v18;
  strcpy((v0 + 40), "detailedText");
  *(v0 + 53) = 0;
  *(v0 + 54) = -5120;
  *(v0 + 240) = v22;
  *(v0 + 136) = v21;
  *(v0 + 144) = v20;
  outlined init with copy of OutputPublisherAsync(v0 + 304, v0 + 56);
  outlined init with copy of OutputPublisherAsync(v0 + 344, v0 + 96);
  v23 = v22;
  outlined copy of Data?(v21, v20);
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 384, v0 + 304, (v0 + 152));
  outlined destroy of PatternFlowProviding?(v0 + 384);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 344));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 304));
  *(v0 + 192) = v19;
  outlined init with take of SiriSuggestionsBroker((v0 + 424), v0 + 200);
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), v24);

  v26 = swift_task_alloc();
  *(v0 + 592) = v26;
  v27 = lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider();
  *v26 = v0;
  v26[1] = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(v0 + 16, &type metadata for DetailedResultProvider, v27, v24, v25);
}

{
  outlined destroy of DetailedResultProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  v1 = v0[1];
  v2 = v0[76];

  return v1(v2);
}

{
  outlined destroy of DetailedResultProvider(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 264));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v5 = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 608) = a1;
    v5 = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t outlined destroy of PatternFlowProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider()
{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 528) = v11;
  *(v8 + 512) = v10;
  *(v8 + 496) = a7;
  *(v8 + 504) = a8;
  *(v8 + 480) = a5;
  *(v8 + 488) = a6;
  *(v8 + 464) = a3;
  *(v8 + 472) = a4;
  *(v8 + 456) = a2;
  return _swift_task_switch(static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v31 = v0;
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0[66], v0[63], v0 + 32);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[58];
    v5 = v0[57];
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v30);
    *(v6 + 12) = 2080;
    v7 = Dictionary.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v30);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[65];
  v12 = v0[63];
  v11 = v0[64];
  v14 = v0[61];
  v13 = v0[62];
  v15 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 32), v12, v0 + 37);
  outlined init with copy of OutputPublisherAsync(v12, (v0 + 42));
  outlined init with copy of OutputPublisherAsync(v10, (v0 + 47));
  outlined init with copy of OutputPublisherAsync((v0 + 37), (v0 + 52));
  v18 = type metadata accessor for PatternExecutor();
  v19 = swift_allocObject();
  v0[27] = v18;
  v0[28] = &protocol witness table for PatternExecutor;
  v0[24] = v19;
  v0[30] = v17;
  v0[31] = v16;

  v0[2] = specialized GenericResultSetParamBuilder.init(parameters:)(v20);
  v0[3] = v21;
  v0[4] = v22;
  v0[5] = v23;
  v0[29] = v15;
  v0[16] = v14;
  v0[17] = v13;
  outlined init with copy of OutputPublisherAsync((v0 + 42), (v0 + 6));
  outlined init with copy of OutputPublisherAsync((v0 + 47), (v0 + 11));
  v24 = v15;
  outlined copy of Data?(v14, v13);
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 52), (v0 + 42), v0 + 18);
  outlined destroy of PatternFlowProviding?((v0 + 52));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  v0[23] = v11;
  v25 = v0[40];
  v26 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v25);

  v27 = swift_task_alloc();
  v0[67] = v27;
  v28 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
  *v27 = v0;
  v27[1] = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 2, &type metadata for ContinuationResultSetFlowProvider, v28, v25, v26);
}

{
  outlined destroy of PatternFlowProviding?((v0 + 32));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  v1 = v0[1];
  v2 = v0[69];

  return v1(v2);
}

{
  outlined destroy of PatternFlowProviding?(v0 + 256);
  outlined destroy of ContinuationResultSetFlowProvider(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 552) = a1;
    v5 = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = v10;
  v8[61] = v11;
  v8[58] = a7;
  v8[59] = a8;
  v8[56] = a5;
  v8[57] = a6;
  v8[54] = a3;
  v8[55] = a4;
  v8[52] = a1;
  v8[53] = a2;
  return _swift_task_switch(static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v31 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[53];
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v30);
    *(v6 + 12) = 2080;
    v7 = Dictionary.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v30);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[60];
  v12 = v0[58];
  v11 = v0[59];
  v14 = v0[56];
  v13 = v0[57];
  v15 = v0[55];
  v17 = v0[52];
  v16 = v0[53];
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0[61], v12, v0 + 32);
  outlined init with copy of OutputPublisherAsync(v12, (v0 + 37));
  outlined init with copy of OutputPublisherAsync(v10, (v0 + 42));
  outlined init with copy of OutputPublisherAsync((v0 + 32), (v0 + 47));
  v18 = type metadata accessor for PatternExecutor();
  v19 = swift_allocObject();
  v0[27] = v18;
  v0[28] = &protocol witness table for PatternExecutor;
  v0[24] = v19;
  v0[30] = v17;
  v0[31] = v16;

  v0[2] = specialized GenericResultSetParamBuilder.init(parameters:)(v20);
  v0[3] = v21;
  v0[4] = v22;
  v0[5] = v23;
  v0[29] = v15;
  v0[16] = v14;
  v0[17] = v13;
  outlined init with copy of OutputPublisherAsync((v0 + 37), (v0 + 6));
  outlined init with copy of OutputPublisherAsync((v0 + 42), (v0 + 11));
  v24 = v15;
  outlined copy of Data?(v14, v13);
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 47), (v0 + 37), v0 + 18);
  outlined destroy of PatternFlowProviding?((v0 + 47));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  v0[23] = v11;
  v25 = v0[35];
  v26 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v25);

  v27 = swift_task_alloc();
  v0[62] = v27;
  v28 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
  *v27 = v0;
  v27[1] = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 2, &type metadata for ContinuationResultSetFlowProvider, v28, v25, v26);
}

{
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[1];
  v2 = v0[64];

  return v1(v2);
}

{
  outlined destroy of ContinuationResultSetFlowProvider(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 512) = a1;
    v5 = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider()
{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

uint64_t InformationFlowPlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v43 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for USOParse();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Parse();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v47 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v13;
    v49[0] = v40;
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v49);
    v43 = v19;
    v26 = v6;
    v27 = v25;

    *(v22 + 4) = v27;
    v6 = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000000000BF1F0, v49);
    v28 = v20;
    v29 = v43;
    _os_log_impl(&dword_0, v43, v28, "%s %s called", v22, 0x16u);
    swift_arrayDestroy();
    v13 = v41;

    v17 = v47;
  }

  else
  {
  }

  (*(v15 + 16))(v17, v46, v14);
  if ((*(v15 + 88))(v17, v14) == enum case for Parse.uso(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v9 + 32))(v13, v17, v8);
    v30 = v44;
    USOParse.userParse.getter();
    v38 = Siri_Nlu_External_UserParse.firstRecipeTask()();
    (*(v45 + 8))(v30, v6);
    if (v38)
    {
      type metadata accessor for PommesFallbackFlow();
      v49[0] = swift_allocObject();
      lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow, 255, type metadata accessor for PommesFallbackFlow, &protocol conformance descriptor for PommesFallbackFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
    }

    else
    {
      type metadata accessor for SearchFlow(0);
      v31 = v42;
      (*(v9 + 16))(v42, v13, v8);
      v49[0] = SearchFlow.__allocating_init(parse:)(v31);
      lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, 255, type metadata accessor for SearchFlow, &protocol conformance descriptor for SearchFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
    }

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    if (one-time initialization token for kFlowEntryPoints != -1)
    {
      swift_once();
    }

    v32 = static InformationRootFlow.kFlowEntryPoints;
    type metadata accessor for InformationRootFlow(0);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
    v35 = type metadata accessor for Input();
    v36 = *(*(v35 - 8) + 56);
    v36(v33 + v34, 1, 1, v35);
    v36(v5, 1, 1, v35);
    swift_beginAccess();

    outlined assign with take of Input?(v5, v33 + v34);
    swift_endAccess();
    *(v33 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = v32;
    v49[0] = v33;
    lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type InformationRootFlow and conformance InformationRootFlow, 255, type metadata accessor for InformationRootFlow, &protocol conformance descriptor for InformationRootFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    return (*(v15 + 8))(v47, v14);
  }
}

uint64_t protocol witness for FlowPlugin.init() in conformance InformationFlowPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = specialized SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(a1, v13, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v15;
}

uint64_t closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:)(uint64_t a1)
{
  static AceService.currentAsync.getter();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  started = dispatch thunk of AceServiceInvokerAsync.currentStartRequestId()();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return started;
}

void *SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:requestIdProvider:localeProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, (v12 + 2));
  outlined init with take of SiriSuggestionsBroker(a2, (v12 + 7));
  v12[12] = a3;
  v12[13] = a4;
  v12[14] = a5;
  v12[15] = a6;
  return v12;
}

void *SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:requestIdProvider:localeProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with take of SiriSuggestionsBroker(a1, (v6 + 2));
  outlined init with take of SiriSuggestionsBroker(a2, (v6 + 7));
  v6[12] = a3;
  v6[13] = a4;
  v6[14] = a5;
  v6[15] = a6;
  return v6;
}

uint64_t SuggestionsEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Parse();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(SuggestionsEntryPoint.flowFor(input:), 0, 0);
}

{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  Input.parse.getter();
  v5 = (*(v3 + 88))(v2, v4);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];
  if (v5 == enum case for Parse.pommesResponse(_:))
  {
    v9 = v1[3];
    v10 = (*(v6 + 96))(v1[6], v8);
    v11 = *v7;
    v1[7] = *v7;
    v12 = (*(v9 + 96))(v10);
    v1[8] = v13;
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = swift_task_alloc();
      v1[9] = v16;
      *v16 = v1;
      v16[1] = SuggestionsEntryPoint.flowFor(input:);

      return SuggestionsEntryPoint.donateToSuggestions(_:requestId:)(v11, v14, v15);
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.information);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "SuggestionsEntryPoint# No root requestId found, not donating to Siri Suggestions.", v24, 2u);
    }
  }

  else
  {
    (*(v6 + 8))(v1[6], v8);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.information);
    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v11, v19, "SuggestionsEntryPoint# Received a non-POMMES Response, not donating to Siri Suggestions.", v20, 2u);
    }
  }

  v25 = v1[1];

  return v25(0);
}

uint64_t SuggestionsEntryPoint.flowFor(input:)()
{

  return _swift_task_switch(SuggestionsEntryPoint.flowFor(input:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SiriSuggestions.Intent();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(SuggestionsEntryPoint.donateToSuggestions(_:requestId:), 0, 0);
}

unint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SuggestionsEntryPoint: donating intent to suggestions", v4, 2u);
  }

  v5 = *(v0 + 40);

  (*(v5 + 112))();
  v6 = PommesResponse.getINInformationUseCases(locale:)();
  *(v0 + 80) = v6;

  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_14:

    v10 = specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(0);
    v9 = 0;
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v12 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = v12;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(result + 32);
  }

  v9 = v8;

  v10 = specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(v9);
  if (!v9)
  {
    goto LABEL_15;
  }

  type metadata accessor for GenericExperience();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v9 = v9;
  }

LABEL_16:
  *(v0 + 96) = v9;
  *(v0 + 104) = v11;
  *(v0 + 88) = v10;
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 112) = result;
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    *(v0 + 112) = result;
    if (result)
    {
LABEL_18:
      v14 = enum case for SiriSuggestions.Intent.inIntent(_:);
      *(v0 + 152) = enum case for SiriSuggestions.Intent.inIntent(_:);
      v15 = *(v0 + 80);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = *(v0 + 152);
LABEL_22:
        *(v0 + 120) = v16;
        *(v0 + 128) = 1;
        v18 = *(v0 + 56);
        v17 = *(v0 + 64);
        v19 = *(v0 + 40);
        v20 = *(v0 + 48);
        v21 = v19[5];
        v22 = v19[6];
        __swift_project_boxed_opaque_existential_1(v19 + 2, v21);
        *v17 = v16;
        (*(v18 + 104))(v17, v14, v20);
        v23 = *(v22 + 8);
        v24 = v16;
        v35 = (v23 + *v23);
        v25 = swift_task_alloc();
        *(v0 + 136) = v25;
        *v25 = v0;
        v25[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
        v26 = *(v0 + 104);
        v27 = *(v0 + 88);
        v28 = *(v0 + 64);
        v29 = *(v0 + 32);
        v30 = *(v0 + 16);
        v31 = *(v0 + 24);

        return v35(v31, v29, v30, v26, v27, v28, v21, v22);
      }

      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        v16 = *(v15 + 32);
        goto LABEL_22;
      }

LABEL_31:
      __break(1u);
      return result;
    }
  }

  v33 = *(v0 + 96);
  v32 = *(v0 + 104);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  }

  else
  {
    v5 = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  }

  return _swift_task_switch(v5, 0, 0);
}

void SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "SuggestionsEntryPoint: donating intent to biome", v3, 2u);
    }

    v4 = *(v0 + 120);
    v5 = *(v0 + 40);

    v6 = v5[10];
    v7 = v5[11];
    __swift_project_boxed_opaque_existential_1(v5 + 7, v6);
    (*(v7 + 8))(v4, v6, v7);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 112);

  if (v8 == v9)
  {
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);

    v12 = *(v0 + 8);

    v12();
    return;
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 80);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v13 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v15 = *(v14 + 8 * v13 + 32);
  }

  v16 = v15;
  *(v0 + 120) = v15;
  *(v0 + 128) = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v0 + 152);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  v22 = v20[5];
  v23 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v22);
  *v18 = v16;
  (*(v19 + 104))(v18, v17, v21);
  v24 = *(v23 + 8);
  v25 = v16;
  v33 = (v24 + *v24);
  v26 = swift_task_alloc();
  *(v0 + 136) = v26;
  *v26 = v0;
  v26[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  v27 = *(v0 + 104);
  v28 = *(v0 + 88);
  v29 = *(v0 + 64);
  v30 = *(v0 + 32);
  v31 = *(v0 + 16);
  v32 = *(v0 + 24);

  v33(v32, v30, v31, v27, v28, v29, v22, v23);
}

{
  v1 = *(v0 + 120);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    *(v5 + 4) = v4;
    *v6 = v4;
    *(v5 + 12) = 2112;
    v7 = v4;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    v6[1] = v8;
    _os_log_impl(&dword_0, v2, v3, "SuggestionsEntryPoint: Unable to donate intent %@ to SiriSuggestions. Error: %@", v5, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "SuggestionsEntryPoint: donating intent to biome", v11, 2u);
    }

    v12 = *(v0 + 120);
    v13 = *(v0 + 40);

    v14 = v13[10];
    v15 = v13[11];
    __swift_project_boxed_opaque_existential_1(v13 + 7, v14);
    (*(v15 + 8))(v12, v14, v15);
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 112);

  if (v16 == v17)
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);

    v20 = *(v0 + 8);

    v20();
    return;
  }

  v21 = *(v0 + 128);
  v22 = *(v0 + 80);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v21 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v23 = *(v22 + 8 * v21 + 32);
  }

  v24 = v23;
  *(v0 + 120) = v23;
  *(v0 + 128) = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = *(v0 + 152);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  v30 = v28[5];
  v31 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v30);
  *v26 = v24;
  (*(v27 + 104))(v26, v25, v29);
  v32 = *(v31 + 8);
  v33 = v24;
  v41 = (v32 + *v32);
  v34 = swift_task_alloc();
  *(v0 + 136) = v34;
  *v34 = v0;
  v34[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  v35 = *(v0 + 104);
  v36 = *(v0 + 88);
  v37 = *(v0 + 64);
  v38 = *(v0 + 32);
  v39 = *(v0 + 16);
  v40 = *(v0 + 24);

  v41(v40, v38, v39, v35, v36, v37, v30, v31);
}

void *SuggestionsEntryPoint.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return v0;
}

uint64_t SuggestionsEntryPoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance SuggestionsEntryPoint(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return outlined consume of Data._Representation(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  outlined init with copy of OutputPublisherAsync(a1, v17);
  outlined init with copy of OutputPublisherAsync(v18, v16);
  v14 = (*(a5 + 112))(v17, v16, closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:), 0, a3, a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v14;
}

void (**specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(void *a1))(char *, unint64_t)
{
  v79 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v2 = *(v79 - 8);
  v3 = __chkstk_darwin(v79);
  v81 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v80 = &v58 - v5;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v82 = *(v75 - 8);
  v6 = __chkstk_darwin(v75);
  v77 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v78 = &v58 - v12;
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, "Џ");
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - v16;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (type metadata accessor for GenericExperience(), !swift_dynamicCastClass()))
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v22 = a1;
  dispatch thunk of GenericExperience.serverSuggestions.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Apple_Parsec_Siri_V2alpha_ServerSuggestion?(v17);
    v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);

    return v66;
  }

  (*(v19 + 32))(v21, v17, v18);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  v62 = Message.serializedData(partial:)();
  v63 = v24;
  if (one-time initialization token for information != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.information);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Suggestions found on POMMES Response, trying donation to Siri Suggestions.", v28, 2u);
    }

    v73 = v10;
    v59 = v22;
    v60 = v19;
    v61 = v18;

    v64 = v21;
    v29 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    v74 = *(v29 + 16);
    v65 = v2;
    if (v74)
    {
      v21 = 0;
      v71 = v82 + 16;
      v70 = enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
      v68 = (v2 + 8);
      v69 = (v2 + 104);
      v66 = (v82 + 8);
      v67 = (v82 + 32);
      v30 = _swiftEmptyArrayStorage;
      v2 = v75;
      v72 = v29;
      while (v21 < *(v29 + 16))
      {
        v76 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v18 = *(v82 + 72);
        (*(v82 + 16))(v14, v29 + v76 + v18 * v21, v2);
        v19 = v80;
        Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
        v31 = v81;
        v10 = v79;
        (*v69)(v81, v70, v79);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v22 = v68;
        v32 = *v68;
        (*v68)(v31, v10);
        v32(v19, v10);
        if (v84 == v83)
        {
          v33 = *v67;
          (*v67)(v78, v14, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1);
            v2 = v75;
            v30 = v85;
          }

          v19 = v30[2];
          v35 = v30[3];
          v22 = (v19 + 1);
          if (v19 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v19 + 1, 1);
            v2 = v75;
            v30 = v85;
          }

          v30[2] = v22;
          v33(v30 + v76 + v19 * v18, v78, v2);
        }

        else
        {
          (*v66)(v14, v2);
        }

        ++v21;
        v29 = v72;
        if (v74 == v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_25:

    v36 = v30[2];

    v66 = &_swiftEmptyDictionarySingleton;
    if (v36)
    {
      v37 = static SuggestionConstants.relatedQuestionsPayloadKey.getter();
      v39 = v38;
      v40 = v62;
      v41 = v63;
      outlined copy of Data._Representation(v62, v63);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v85 = &_swiftEmptyDictionarySingleton;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v41, v37, v39, v42);

      v66 = v85;
    }

    v10 = &enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
    v43 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    v74 = *(v43 + 16);
    if (!v74)
    {
      break;
    }

    v2 = 0;
    v71 = v82 + 16;
    v70 = enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
    v68 = (v65 + 1);
    v69 = (v65 + 13);
    v67 = (v82 + 32);
    v65 = (v82 + 8);
    v44 = _swiftEmptyArrayStorage;
    v18 = v75;
    v72 = v43;
    while (v2 < *(v43 + 16))
    {
      v78 = ((*(v82 + 80) + 32) & ~*(v82 + 80));
      v76 = *(v82 + 72);
      v10 = v73;
      (*(v82 + 16))(v73, &v78[v43 + v76 * v2], v18);
      v22 = v80;
      v45 = v81;
      Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
      v46 = v79;
      (*v69)(v45, v70, v79);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v14 = v68;
      v19 = *v68;
      (*v68)(v45, v46);
      (v19)(v22, v46);
      if (v21)
      {
        (*v65)(v10, v18);
      }

      else
      {
        v19 = *v67;
        (*v67)(v77, v10, v18);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v44;
        if ((v47 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1);
          v18 = v75;
          v44 = v85;
        }

        v10 = v78;
        v48 = v76;
        v14 = v44[2];
        v49 = v44[3];
        v22 = v14 + 1;
        if (v14 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), (v14 + 1), 1);
          v18 = v75;
          v44 = v85;
        }

        v44[2] = v22;
        (v19)(&v10[v44 + v14 * v48], v77, v18);
      }

      v43 = v72;
      if (v74 == ++v2)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_39:

  v50 = v44[2];

  if (v50)
  {
    v51 = static SuggestionConstants.serverPayloadKey.getter();
    v53 = v52;
    v54 = v62;
    v55 = v63;
    outlined copy of Data._Representation(v62, v63);
    v56 = v66;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v55, v51, v53, v57);

    outlined consume of Data._Representation(v54, v55);
    (*(v60 + 8))(v64, v61);
    return v85;
  }

  else
  {
    (*(v60 + 8))(v64, v61);
    outlined consume of Data._Representation(v62, v63);
  }

  return v66;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_ServerSuggestion?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, "Џ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void SportsIntentDonator.donateIfNeeded(parse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v13 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInferenceIntents21SearchForSportsIntentCSgMd, "ȏ");
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v5 + 8))(v7, v4);
  if (v14)
  {
    v8 = v14;
    v9 = String._bridgeToObjectiveC()();
    [v8 _setLaunchId:v9];

    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v10);
    (*(v11 + 8))(v8, v10, v11);
  }
}

uint64_t closure #1 in static SportsIntentDonator.toDonatableIntent(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse.PegasusResult();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for Parse.pegasusResults(_:))
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    (*(v5 + 8))(v7, v29);
    v17 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v30 + 8))(v4, v31);
    (*(v9 + 8))(v11, v8);
    return v17;
  }

  if (v16 != enum case for Parse.pommesResponse(_:))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.information);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "toDonatableIntent does not have pommesResponse or pegasusResults", v27, 2u);
    }

    (*(v13 + 8))(v15, v12);
    return 0;
  }

  (*(v13 + 96))(v15, v12);
  v18 = *v15;
  v19 = dispatch thunk of PommesResponse.experiences.getter();
  v20 = v19;
  if (!(v19 >> 62))
  {
    result = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
    v22 = *(v20 + 32);
LABEL_9:
    v23 = v22;

    v17 = dispatch thunk of Experience.associatedEntities.getter();

    return v17;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IntentDonator.donate(intent:)(INIntent intent)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Donating sports intent for parse. Will log on background queue...", v8, 2u);
  }

  static TaskPriority.background.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2].super.isa = 0;
  v10[3].super.isa = 0;
  v10[4].super.isa = intent.super.isa;
  v11 = intent.super.isa;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in IntentDonator.donate(intent:), v10);
}

uint64_t closure #1 in IntentDonator.donate(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(closure #1 in IntentDonator.donate(intent:), 0, 0);
}

void closure #1 in IntentDonator.donate(intent:)()
{
  v1 = [objc_allocWithZone(INInteraction) initWithIntent:v0[6] response:0];
  v0[10] = v1;
  type metadata accessor for PerformanceUtil();
  v0[11] = static PerformanceUtil.shared.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  Date.init()();
  v5 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = closure #1 in IntentDonator.donate(intent:);

  __asm { BR              X0 }
}

uint64_t closure #1 in IntentDonator.donate(intent:)()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = closure #1 in IntentDonator.donate(intent:);
  }

  else
  {

    v5 = closure #1 in IntentDonator.donate(intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v18 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v7 intent];
    v11 = INIntent.debugDescriptionLite.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "Sports intent that was successfully donated: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

{
  v20 = v0;

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = [v7 intent];
    v13 = INIntent.debugDescriptionLite.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_0, v4, v5, "Error when donating Sports intent: %s intent: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in closure #1 in IntentDonator.donate(intent:)()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = closure #1 in closure #1 in IntentDonator.donate(intent:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 donateInteractionWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = closure #1 in closure #1 in IntentDonator.donate(intent:);
  }

  else
  {
    v2 = closure #1 in closure #1 in IntentDonator.donate(intent:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in IntentDonator.donate(intent:)(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void (**partial apply for closure #1 in SportsIntentDonator.donateIfNeeded(parse:)@<X0>(void (***a1)(char *, unint64_t, uint64_t)@<X8>))(char *, unint64_t, uint64_t)
{
  result = specialized static SportsIntentDonator.toDonatableIntent(parse:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_52030()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in IntentDonator.donate(intent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in IntentDonator.donate(intent:)(a1, v4, v5, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsIntentDonator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsIntentDonator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in IntentDonator.donate(intent:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in closure #1 in IntentDonator.donate(intent:)(a1, v4);
}

void (**specialized static SportsIntentDonator.toDonatableIntent(parse:)(uint64_t a1))(char *, unint64_t, uint64_t)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = closure #1 in static SportsIntentDonator.toDonatableIntent(parse:)(a1);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = v6;
      v3[2](v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
      v8 = *(v7 + 16);

      if (v8 == 1)
      {
        if (one-time initialization token for information != -1)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v9 = type metadata accessor for Logger();
          v10 = __swift_project_value_buffer(v9, static Logger.information);
          v11 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(v5, v10);
          if (!v11)
          {
            goto LABEL_38;
          }

          v12 = v11;
          v13 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
          if (!v13)
          {
            (v3[1])(v5, v2);

            return 0;
          }

          v14 = v13;
          v30 = v5;
          v33 = v3;
          v3 = [objc_allocWithZone(type metadata accessor for SearchForSportsIntent()) init];
          v5 = (v14 & 0xFFFFFFFFFFFFFF8);
          v31 = v2;
          v32 = v12;
          if (v14 >> 62)
          {
            v2 = _CocoaArrayWrapper.endIndex.getter();
            if (!v2)
            {
LABEL_46:

              (v33[1])(v30, v31);
              return v3;
            }
          }

          else
          {
            v2 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
            if (!v2)
            {
              goto LABEL_46;
            }
          }

          v15 = 0;
          v34 = v2;
          v35 = v14 & 0xC000000000000001;
          while (v35)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_15:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v36)
            {
              v17 = v14;

              v19 = specialized static SportsProperty.from(entity:)(v18);
              v21 = v20;
              v23 = v22;

              if (v23 <= 3u)
              {
                if (v23 > 1u)
                {
                  v24 = String._bridgeToObjectiveC()();
                  if (v23 == 2)
                  {
                    [v3 setLeagueName:v24];

                    v25 = v19;
                    v26 = v21;
                    v27 = 2;
                  }

                  else
                  {
                    [v3 setLeagueQId:v24];

                    v25 = v19;
                    v26 = v21;
                    v27 = 3;
                  }
                }

                else
                {
                  v24 = String._bridgeToObjectiveC()();
                  if (v23)
                  {
                    [v3 setTeamQId:v24];

                    v25 = v19;
                    v26 = v21;
                    v27 = 1;
                  }

                  else
                  {
                    [v3 setTeamName:v24];

                    v25 = v19;
                    v26 = v21;
                    v27 = 0;
                  }
                }
              }

              else if (v23 <= 5u)
              {
                v24 = String._bridgeToObjectiveC()();
                if (v23 == 4)
                {
                  [v3 setSportName:v24];

                  v25 = v19;
                  v26 = v21;
                  v27 = 4;
                }

                else
                {
                  [v3 setSportQId:v24];

                  v25 = v19;
                  v26 = v21;
                  v27 = 5;
                }
              }

              else
              {
                if (v23 != 6)
                {
                  if (v23 == 7)
                  {
                    v24 = String._bridgeToObjectiveC()();
                    [v3 setAthleteQId:v24];

                    v25 = v19;
                    v26 = v21;
                    v27 = 7;
                    goto LABEL_33;
                  }

LABEL_34:
                  v14 = v17;
                  v2 = v34;
                  goto LABEL_11;
                }

                v24 = String._bridgeToObjectiveC()();
                [v3 setAthleteName:v24];

                v25 = v19;
                v26 = v21;
                v27 = 6;
              }

LABEL_33:
              outlined consume of SportsProperty?(v25, v26, v27);

              goto LABEL_34;
            }

LABEL_11:
            ++v15;
            if (v16 == v2)
            {
              goto LABEL_46;
            }
          }

          if (v15 < *(v5 + 2))
          {
            break;
          }

          __break(1u);
LABEL_44:
          swift_once();
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_37;
        }

        goto LABEL_15;
      }

LABEL_38:
      (v3[1])(v5, v2);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t outlined consume of SportsProperty?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SportsProperty(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

id IdentifiedUser.selectedUserAttributes.getter()
{
  v0 = type metadata accessor for IdentifiedUser.Classification();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = [objc_allocWithZone(SASelectedUserAttributes) init];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v7 setLowScoreThreshold:isa];

  v9 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v7 setScore:v9];

  v10 = [objc_allocWithZone(NSNumber) initWithBool:IdentifiedUser.meetsUserSessionThreshold.getter() & 1];
  [v7 setMeetsUserSessionThreshold:v10];

  v11 = [objc_allocWithZone(NSNumber) initWithBool:IdentifiedUser.meetsPersonalRequestThreshold.getter() & 1];
  [v7 setMeetsPersonalRequestThreshold:v11];

  IdentifiedUser.voiceConfidenceClassification.getter();
  static IdentifiedUser.Classification.confident.getter();
  lazy protocol witness table accessor for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v4, v0);
  if (v11)
  {
    v12(v6, v0);
    v13 = &SAUserIdentityClassificationConfidentValue;
  }

  else
  {
    static IdentifiedUser.Classification.known.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v4, v0);
    if (v14)
    {
      v12(v6, v0);
      v13 = &SAUserIdentityClassificationKnownValue;
    }

    else
    {
      static IdentifiedUser.Classification.unsure1.getter();
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v12(v4, v0);
      if (v15)
      {
        v12(v6, v0);
        v13 = &SAUserIdentityClassificationUnsure1Value;
      }

      else
      {
        static IdentifiedUser.Classification.unsureN.getter();
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v12(v4, v0);
        if (v16)
        {
          v12(v6, v0);
          v13 = &SAUserIdentityClassificationUnsureNValue;
        }

        else
        {
          static IdentifiedUser.Classification.unknown.getter();
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();
          v12(v4, v0);
          v12(v6, v0);
          if ((v17 & 1) == 0)
          {
            if (one-time initialization token for information != -1)
            {
              swift_once();
            }

            v18 = type metadata accessor for Logger();
            __swift_project_value_buffer(v18, static Logger.information);
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&dword_0, v19, v20, "Unknown voice confidence classification. Setting to unknown", v21, 2u);
            }
          }

          v13 = &SAUserIdentityClassificationUnknownValue;
        }
      }
    }
  }

  [v7 setUserIdentityClassification:*v13];
  return v7;
}

unint64_t lazy protocol witness table accessor for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification()
{
  result = lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification;
  if (!lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification)
  {
    type metadata accessor for IdentifiedUser.Classification();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification);
  }

  return result;
}

double static KnowledgeFallbackHelper.shared.getter@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v2 = type metadata accessor for KnowledgeFallbackHelper(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of CurrentDevice.siriLocale.getter();

  v4 = v2[5];
  v5 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v5 - 8) + 56))(boxed_opaque_existential_1 + v4, 1, 1, v5);
  result = 0.0;
  *(boxed_opaque_existential_1 + v2[6]) = xmmword_B86A0;
  *(boxed_opaque_existential_1 + v2[7]) = xmmword_B86A0;
  return result;
}

uint64_t KnowledgeFallbackHelper.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KnowledgeFallbackHelper.locale.setter(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for KnowledgeFallbackHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for KnowledgeFallbackHelper;
  if (!type metadata singleton initialization cache for KnowledgeFallbackHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KnowledgeFallbackHelper.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KnowledgeFallbackHelper(0);
  v5 = v4[5];
  v6 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + v4[6]) = xmmword_B86A0;
  *(a2 + v4[7]) = xmmword_B86A0;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 32);

  return v8(a2, a1, v7);
}

uint64_t KnowledgeFallbackHelper.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for KnowledgeFallbackHelper(0) + 20);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v6, v5, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v7 = type metadata accessor for GenerativeModelsAvailability();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  outlined destroy of Any?(v5, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  closure #1 in KnowledgeFallbackHelper.availability.getter(v1, a1);
  outlined destroy of Any?(v1 + v6, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  (*(v8 + 16))(v1 + v6, a1, v7);
  return (*(v8 + 56))(v1 + v6, 0, 1, v7);
}

uint64_t closure #1 in KnowledgeFallbackHelper.availability.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v34 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  (*(v11 + 16))(v13, v29, v10);
  Locale.language.getter();
  (*(v11 + 8))(v13, v10);
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  v20 = type metadata accessor for Locale.LanguageCode();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    outlined destroy of Any?(v5, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Couldn't determine language code for Siri Locale. Using system language instead.", v25, 2u);
    }

    v26 = &enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:);
  }

  else
  {
    (*(v21 + 32))(v19, v5, v20);
    v26 = &enum case for GenerativeModelsAvailability.LanguageOption.languageCode(_:);
  }

  (*(v15 + 104))(v19, *v26, v14);
  (*(v15 + 16))(v30, v19, v14);
  v27 = v31;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v32 + 8))(v27, v34);
  return (*(v15 + 8))(v19, v14);
}

Swift::Bool __swiftcall KnowledgeFallbackHelper.isEnabled()()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeModelsAvailability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFMontaraRestricted())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.information);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Knowledge fallback is restricted on this device.";
LABEL_16:
    _os_log_impl(&dword_0, v9, v10, v12, v11, 2u);

LABEL_17:

    return 0;
  }

  KnowledgeFallbackHelper.availability.getter(v7);
  GenerativeModelsAvailability.availability.getter();
  (*(v5 + 8))(v7, v4);
  v13 = (*(v1 + 88))(v3, v0);
  v14 = enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v1 + 8))(v3, v0);
  if (v13 != v14)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.information);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Knowledge fallback not enabled because the Generative Models use case is not available";
    goto LABEL_16;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.information);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Knowledge fallback is enabled on this device.", v18, 2u);
  }

  return 1;
}

InformationFlowPlugin::KnowledgeFallbackResponseType __swiftcall KnowledgeFallbackHelper.responseType()()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  v97 = *(v0 - 8);
  v98 = v0;
  __chkstk_darwin(v0);
  v96 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin(v2);
  v99 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v95 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v80 - v11;
  v13 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v92 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMd, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = type metadata accessor for GenerativeModelsAvailability();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  KnowledgeFallbackHelper.availability.getter(v21);
  GenerativeModelsAvailability.partner.getter();
  (*(v19 + 8))(v21, v18);
  v102 = v23;
  v103 = v22;
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    outlined destroy of Any?(v17, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMd, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMR);
LABEL_22:
    v56 = v96;
    v55 = v97;
    v57 = v98;
    (*(v97 + 104))(v96, enum case for GenerativeAssistantSettingsIntentHelper.RequestType.knowledgeFallback(_:), v98);
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.sessionId.getter();

    v58 = v99;
    static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();

    (*(v55 + 8))(v56, v57);
    v60 = v100;
    v59 = v101;
    v61 = (*(v100 + 88))(v58, v101);
    if (v61 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.siriXFallback(_:))
    {
      return 3;
    }

    if (v61 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.confirmationPrompt(_:))
    {
      return 1;
    }

    if (v61 != enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.enablementPrompt(_:))
    {
      if (v61 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.passThrough(_:))
      {
        return 2;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.information);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v76, v77, "Unhandled responseType; skipping knowledge fallback", v78, 2u);
      }

      (*(v60 + 8))(v58, v59);
      return 3;
    }

    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v63 = dispatch thunk of CurrentDevice.isCarPlay.getter();

    if ((v63 & 1) == 0)
    {
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      v64 = dispatch thunk of DeviceState.isEyesFree.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.information);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v62 = InformationFlowPlugin_KnowledgeFallbackResponseType_proceedWithoutConfirmation;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "Skipping enablement confirmation for car. Enablement confirmation will be handled in the intent.", v68, 2u);
    }

    else
    {

      return 2;
    }

    return v62;
  }

  (*(v102 + 32))(v25, v17, v103);
  GenerativeModelsAvailability.Partner.availability.getter();
  v26 = v95;
  v27 = *(v95 + 88);
  if (v27(v12, v8) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v26 + 8))(v12, v8);
    goto LABEL_13;
  }

  v81 = v25;
  (*(v26 + 96))(v12, v8);
  v29 = v92;
  v28 = v93;
  (*(v93 + 32))(v92, v12, v94);
  v30 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v32 = v88;
  v31 = v89;
  v33 = v90;
  (*(v89 + 104))(v88, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v90);
  v34 = specialized Set.contains(_:)(v32, v30);

  (*(v31 + 8))(v32, v33);
  if ((v34 & 1) == 0)
  {
    (*(v28 + 8))(v29, v94);
    v25 = v81;
    v26 = v95;
LABEL_13:
    v42 = v91;
    GenerativeModelsAvailability.Partner.availability.getter();
    if (v27(v42, v8) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v26 + 96))(v42, v8);
      v43 = v86;
      v44 = v85;
      v45 = v87;
      (*(v86 + 32))(v85, v42, v87);
      v46 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v47 = v83;
      v48 = v82;
      v49 = v84;
      (*(v83 + 104))(v82, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v84);
      v50 = specialized Set.contains(_:)(v48, v46);

      (*(v47 + 8))(v48, v49);
      if (v50)
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.information);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_0, v52, v53, "Region is unavailable, skipping knowledge fallback.", v54, 2u);
        }

        (*(v43 + 8))(v44, v45);
        (*(v102 + 8))(v25, v103);
        return 3;
      }

      (*(v43 + 8))(v44, v45);
      (*(v102 + 8))(v25, v103);
    }

    else
    {
      (*(v102 + 8))(v25, v103);
      (*(v26 + 8))(v42, v8);
    }

    goto LABEL_22;
  }

  v35 = v94;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if (static GenerativeAssistantSettingsUserDefaults.isRegionUnavailablityDialogShown()())
  {
    v36 = v92;
    v37 = v81;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.information);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Region is restricted and the dialog was already shown, skipping knowledge fallback.", v41, 2u);
    }

    (*(v93 + 8))(v36, v35);
    (*(v102 + 8))(v37, v103);
    return 3;
  }

  v69 = v92;
  v70 = v81;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.information);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "Region is restricted and the dialog was not shown, showing region unavailability dialog.", v74, 2u);
  }

  (*(v93 + 8))(v69, v35);
  (*(v102 + 8))(v70, v103);
  return 4;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason and conformance GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason and conformance GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Void __swiftcall KnowledgeFallbackHelper.recordEnablementDecline()()
{
  v0 = type metadata accessor for RequestType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  (*(v1 + 104))(v3, enum case for RequestType.knowledgeFallback(_:), v0);
  static GenerativeAssistantSettingsUserDefaults.incrementDecline(for:)();
  (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall KnowledgeFallbackHelper.recordConfirmationAccept()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  Date.init()();
  static GenerativeAssistantSettingsUserDefaults.updateConsecutiveLLMConfirmation(date:)();
  (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall KnowledgeFallbackHelper.checkForPreviousConfirmationDismissal()()
{
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if (static GenerativeAssistantSettingsUserDefaults.confirmationPromptCancelled()() != 2)
  {
    static GenerativeAssistantSettingsUserDefaults.recordDeclineConfirmationRequest()();
  }
}

uint64_t KnowledgeFallbackHelper.contentProviderName.getter()
{
  v1 = (v0 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1;
  if (v3 == 1)
  {
    v4 = closure #1 in KnowledgeFallbackHelper.contentProviderName.getter(v0);
    *v1 = v4;
    v1[1] = v5;
  }

  outlined copy of String??(v2, v3);
  return v4;
}

uint64_t closure #1 in KnowledgeFallbackHelper.contentProviderName.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  *(&v15 + 1) = &type metadata for Features;
  v16 = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v14) = 5;
  v5 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  if (v5)
  {
    dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();
    if (*(&v15 + 1))
    {
      outlined init with take of SiriSuggestionsBroker(&v14, &v11);
    }

    else
    {
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
      if (*(&v15 + 1))
      {
        outlined destroy of Any?(&v14, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
      }
    }
  }

  else
  {
    dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(&v14, &v11, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
  if (*(&v12 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v6 = type metadata accessor for Locale();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, a1, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    v8 = dispatch thunk of LLMProvider.localizedDisplayName(locale:)();

    outlined destroy of Any?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    outlined destroy of Any?(&v14, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v11);
  }

  else
  {
    outlined destroy of Any?(&v14, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);

    outlined destroy of Any?(&v11, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    return 0;
  }

  return v8;
}