void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id IntentHandlerDefaultLog(uint64_t a1)
{
  if (IntentHandlerDefaultLog_onceToken != -1)
  {
    IntentHandlerDefaultLog_cold_1();
  }

  v2 = IntentHandlerDefaultLog_log;

  return v2;
}

uint64_t __IntentHandlerDefaultLog_block_invoke()
{
  IntentHandlerDefaultLog_log = os_log_create("com.apple.calls.intenthandler", "Default");

  return MEMORY[0x2821F96F8]();
}

uint64_t outlined init with copy of SPHCallCenter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AnswerCallIntentHandler.__allocating_init(deviceState:callCenter:)()
{
  v3 = v0;
  OUTLINED_FUNCTION_1();
  outlined init with copy of SPHCallCenter(v4, v11);
  outlined init with copy of SPHCallCenter(v1, v10);
  v5 = type metadata accessor for AnswerCallIntentHandlerDataSource();
  outlined init with copy of SPHCallCenter(v2, v9);
  v6 = AnswerCallIntentHandlerDataSource.__allocating_init(deviceState:)(v9);
  v9[3] = v5;
  v9[4] = &protocol witness table for AnswerCallIntentHandlerDataSource;
  v9[0] = v6;
  v7 = (*(v3 + 104))(v11, v10, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v7;
}

id AnswerCallIntentHandler.__allocating_init(deviceState:callCenter:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1();
  v7 = objc_allocWithZone(v3);
  return AnswerCallIntentHandler.init(deviceState:callCenter:dataSource:)(v5, v4, a3);
}

id AnswerCallIntentHandler.init(deviceState:callCenter:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1();
  outlined init with copy of SPHCallCenter(v7, v3 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_deviceState);
  outlined init with copy of SPHCallCenter(v4, v3 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter);
  outlined init with copy of SPHCallCenter(a3, v3 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_answerCallIntentHandlerDataSource);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for AnswerCallIntentHandler();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v8;
}

uint64_t AnswerCallIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](AnswerCallIntentHandler.handle(intent:), 0, 0);
}

uint64_t AnswerCallIntentHandler.handle(intent:)()
{
  if (one-time initialization token for intentHandlers != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.intentHandlers);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2688A7000, v4, v5, "#AnswerCallIntentHandler Received Siri request to answer incoming call: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x26D621E50](v8, -1, -1);
    MEMORY[0x26D621E50](v7, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];

  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277CD3A50]) initWithCode:0 userActivity:0];
  v13 = *&v10[OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter + 24];
  v14 = *&v10[OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter + 32];
  __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter], v13);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = partial apply for closure #1 in AnswerCallIntentHandler.handle(intent:);
  v16[5] = v15;
  v17 = v11;
  v18 = v10;
  SPHCallCenter.onQueue<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SPHCallCenter) -> (), v16, v13, MEMORY[0x277D84F78] + 8, v14);

  swift_beginAccess();
  v19 = *(v12 + 16);

  v20 = v0[1];

  return v20(v19);
}

void closure #1 in AnswerCallIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v141 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v140 - v11;
  v13 = (a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter);
  v14 = *(a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter + 24);
  v15 = *(a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_callCenter), v14);
  v16 = (*(v15 + 40))(v14, v15);
  v17 = 0x2802A4000;
  if (v16)
  {
    v18 = v16;
    v19 = v16;
    goto LABEL_5;
  }

  v20 = v13[3];
  v21 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v20);
  v22 = (*(v21 + 48))(v20, v21);
  if (v22)
  {
    v18 = v22;
    v19 = 0;
    v17 = 0x2802A4000uLL;
LABEL_5:
    v23 = v19;

    if (*(v17 + 2048) != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = __swift_project_value_buffer(v24, static Logger.intentHandlers);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688A7000, v26, v27, "#AnswerCallIntentHandler found incoming call", v28, 2u);
      MEMORY[0x26D621E50](v28, -1, -1);
    }

    v29 = outlined bridged method (pb) of @objc INAnswerCallIntent.callIdentifier.getter(a3, &selRef_callIdentifier);
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v33 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        v34 = [(objc_class *)v18 callUUID];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if (v31 == v35 && v32 == v37)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              *v95 = 0;
              _os_log_impl(&dword_2688A7000, v93, v94, "#AnswerCallIntentHandler Requested to answer specific call but UUID did not match identifier of requested call", v95, 2u);
              MEMORY[0x26D621E50](v95, -1, -1);
            }

            v96 = v18;
            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v143[0] = v100;
              *v99 = 136315394;
              v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v143);

              *(v99 + 4) = v101;
              *(v99 + 12) = 2080;
              v102 = [(objc_class *)v96 callUUID];
              v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v105 = v104;

              v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v143);

              *(v99 + 14) = v106;
              _os_log_impl(&dword_2688A7000, v97, v98, "#AnswerCallIntentHandler call identifiers: requested=%s -- actual=%s", v99, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D621E50](v100, -1, -1);
              MEMORY[0x26D621E50](v99, -1, -1);
            }

            else
            {
            }

            v138 = [objc_allocWithZone(MEMORY[0x277CD3A50]) initWithCode:5 userActivity:0];
            v139 = v141;
            swift_beginAccess();
            v18 = *(v139 + 16);
            *(v139 + 16) = v138;
            goto LABEL_67;
          }
        }
      }
    }

    v40 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
    if ([a3 _idiom] != 4)
    {
      if ([a3 audioRoute] == 1 || (v65 = objc_msgSend(a3, sel_audioRoute), v65 == *MEMORY[0x277CD4428]))
      {
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        outlined bridged method (mbnn) of @objc TUAnswerRequest.sourceIdentifier.setter(v66, v67, v40);
      }

      goto LABEL_63;
    }

    [v40 setBehavior_];
    v41 = outlined bridged method (pb) of @objc INAnswerCallIntent.callIdentifier.getter(a3, &selRef__originatingDeviceIDSIdentifier);
    if (v42)
    {
      v43 = v41;
      v44 = v42;
      v45 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v45 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = [a3 _isOwnedByCurrentUser];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 BOOLValue];

          if (v48)
          {

            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v143[0] = v52;
              *v51 = 136315138;
              *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v143);
              _os_log_impl(&dword_2688A7000, v49, v50, "#AnswerCallIntentHandler setting endpointIDSDestination=%s", v51, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v52);
              MEMORY[0x26D621E50](v52, -1, -1);
              MEMORY[0x26D621E50](v51, -1, -1);
            }

            type metadata accessor for CHRecentCall(0, &lazy cache variable for type metadata for IDSDestination, 0x277D189B0);
            v53 = @nonobjc IDSDestination.__allocating_init(uri:)(v43, v44);
            [v40 setEndpointIDSDestination_];
            goto LABEL_62;
          }
        }
      }
    }

    v54 = outlined bridged method (pb) of @objc INAnswerCallIntent.callIdentifier.getter(a3, &selRef__originatingDeviceRapportMediaSystemIdentifier);
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      v58 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v58 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        outlined bridged method (mbgnn) of @objc TUAnswerRequest.endpointRapportMediaSystemIdentifier.setter(v54, v55, v40);

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v140 = v25;
          v63 = v62;
          v143[0] = v62;
          *v61 = 136315138;
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v143);

          *(v61 + 4) = v64;
          _os_log_impl(&dword_2688A7000, v59, v60, "#AnswerCallIntentHandler intent contains an originatingDeviceRapportMediaSystemIdentifier=%s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x26D621E50](v63, -1, -1);
          MEMORY[0x26D621E50](v61, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v107 = outlined bridged method (pb) of @objc INAnswerCallIntent.callIdentifier.getter(a3, &selRef__originatingDeviceRapportEffectiveIdentifier);
    if (!v108)
    {
      goto LABEL_63;
    }

    v109 = v107;
    v110 = v108;
    v111 = HIBYTE(v108) & 0xF;
    if ((v108 & 0x2000000000000000) == 0)
    {
      v111 = v107 & 0xFFFFFFFFFFFFLL;
    }

    if (!v111)
    {

LABEL_63:
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_2688A7000, v116, v117, "#AnswerCallIntentHandler An incoming call exists. Answering it and returning success", v118, 2u);
        MEMORY[0x26D621E50](v118, -1, -1);
      }

      v119 = v13[3];
      v120 = v13[4];
      __swift_project_boxed_opaque_existential_1(v13, v119);
      (*(v120 + 16))(v40, v119, v120);
      v121 = [objc_allocWithZone(MEMORY[0x277CD3A50]) initWithCode:4 userActivity:0];
      v122 = v141;
      swift_beginAccess();
      v123 = *(v122 + 16);
      *(v122 + 16) = v121;

      v124 = v121;
      [v124 setStatusCode_];

LABEL_66:
LABEL_67:

      return;
    }

    outlined bridged method (mbgnn) of @objc TUAnswerRequest.endpointRapportEffectiveIdentifier.setter(v107, v108, v40);

    v53 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v143[0] = v114;
      *v113 = 136315138;
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v143);

      *(v113 + 4) = v115;
      _os_log_impl(&dword_2688A7000, v53, v112, "#AnswerCallIntentHandler intent contains an originatingDeviceRapportEffectiveIdentifier=%s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x26D621E50](v114, -1, -1);
      MEMORY[0x26D621E50](v113, -1, -1);
    }

    else
    {
    }

LABEL_62:

    goto LABEL_63;
  }

  v68 = objc_opt_self();
  static Date.now.getter();
  static Date.- infix(_:_:)();
  v69 = *(v7 + 8);
  v69(v10, v6);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v69(v12, v6);
  v71 = [v68 predicateForMissedCallsSinceDate_];

  v72 = (a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_answerCallIntentHandlerDataSource);
  v73 = *(a2 + OBJC_IVAR____TtC16SiriPhoneIntents23AnswerCallIntentHandler_answerCallIntentHandlerDataSource + 24);
  v74 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v75 = (*(v74 + 16))(v73, v74);
  v76 = v71;
  v77 = [v75 callsWithPredicate:v76 limit:1 offset:0 batchSize:1];

  swift_unknownObjectRelease();
  type metadata accessor for CHRecentCall(0, &lazy cache variable for type metadata for CHRecentCall, 0x277CF7D48);
  v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array._getCount()(v78))
  {

    v92 = 0;
    goto LABEL_69;
  }

  if ((v78 & 0xC000000000000001) != 0)
  {
    v79 = MEMORY[0x26D6218A0](0, v78);
    goto LABEL_46;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v79 = *(v78 + 32);
LABEL_46:
    v80 = v79;

    v81 = [objc_opt_self() sharedInstance];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_2688B56C0;
    *(v82 + 32) = v80;
    v83 = v80;
    v84 = Array._bridgeToObjectiveC()().super.isa;

    v85 = v72[3];
    v86 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v85);
    v87 = (*(v86 + 8))(v85, v86);
    v88 = v72[3];
    v89 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v88);
    v90 = (*(v89 + 24))(v88, v89);
    v91 = [v81 callRecordsForRecentCalls:v84 withContactsDataSource:v87 withCallProviderManager:v90];

    swift_unknownObjectRelease();
    type metadata accessor for CHRecentCall(0, &lazy cache variable for type metadata for INCallRecord, 0x277CD3AE0);
    v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_69:
    if (one-time initialization token for intentHandlers != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    __swift_project_value_buffer(v125, static Logger.intentHandlers);

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v143[0] = v129;
      *v128 = 136315138;
      v142 = v92;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12INCallRecordCGSgMd, &_sSaySo12INCallRecordCGSgMR);
      v130 = String.init<A>(describing:)();
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v143);

      *(v128 + 4) = v132;
      _os_log_impl(&dword_2688A7000, v126, v127, "#AnswerCallIntentHandler No incoming call exists. Returning no incoming call. Recent Missed Calls: %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x26D621E50](v129, -1, -1);
      MEMORY[0x26D621E50](v128, -1, -1);
    }

    v133 = v141;
    v134 = [objc_allocWithZone(MEMORY[0x277CD3A50]) initWithCode:4 userActivity:0];
    swift_beginAccess();
    v135 = *(v133 + 16);
    *(v133 + 16) = v134;

    [v134 setStatusCode_];
    swift_beginAccess();
    v124 = *(v133 + 16);
    if (v92)
    {
      type metadata accessor for CHRecentCall(0, &lazy cache variable for type metadata for INCallRecord, 0x277CD3AE0);
      v136 = v124;
      v18 = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v137 = v124;
      v18 = 0;
    }

    [v124 setCallRecords_];

    goto LABEL_66;
  }

  __break(1u);
}

id @nonobjc IDSDestination.__allocating_init(uri:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x26D621730](a1);

  v3 = [swift_getObjCClassFromMetadata() destinationWithURI_];

  return v3;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed SPHCallCenter) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1();
  v11[3] = v7;
  v11[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v5, a4);
  v4(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t @objc closure #1 in AnswerCallIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in AnswerCallIntentHandler.handle(intent:);

  return AnswerCallIntentHandler.handle(intent:)(v6);
}

uint64_t @objc closure #1 in AnswerCallIntentHandler.handle(intent:)(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v8 = *(v6 + 8);

  return v8();
}

id AnswerCallIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnswerCallIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnswerCallIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2688AE324()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2688AE3A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2688AE3F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D6218D0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of AnswerCallIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AnswerCallIntentHandler.handle(intent:);

  return v7(a1);
}

{
  v3 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2688AE774()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in AnswerCallIntentHandler.handle(intent:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for @objc closure #1 in AnswerCallIntentHandler.handle(intent:);

  return @objc closure #1 in AnswerCallIntentHandler.handle(intent:)(v2, v3, v4);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void outlined bridged method (mbnn) of @objc TUAnswerRequest.sourceIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D621730](a1);

  [a3 setSourceIdentifier_];
}

uint64_t outlined bridged method (pb) of @objc INAnswerCallIntent.callIdentifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void outlined bridged method (mbgnn) of @objc TUAnswerRequest.endpointRapportEffectiveIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D621730](a1, a2);
  [a3 setEndpointRapportEffectiveIdentifier_];
}

void outlined bridged method (mbgnn) of @objc TUAnswerRequest.endpointRapportMediaSystemIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D621730](a1, a2);
  [a3 setEndpointRapportMediaSystemIdentifier_];
}

uint64_t type metadata accessor for CHRecentCall(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t AnswerCallIntentHandlerDataSource.__allocating_init(deviceState:)(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 contactStore];

  type metadata accessor for CHManager();
  v5 = static CHManager.siriManager(deviceState:)(a1);
  v6 = (*(v1 + 176))(v4, v5, [objc_allocWithZone(MEMORY[0x277D6EE28]) init]);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t type metadata accessor for CHManager()
{
  result = lazy cache variable for type metadata for CHManager;
  if (!lazy cache variable for type metadata for CHManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CHManager);
  }

  return result;
}

uint64_t key path setter for AnswerCallIntentHandlerDataSource.contactsDataSource : AnswerCallIntentHandlerDataSource(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 112);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t AnswerCallIntentHandlerDataSource.contactsDataSource.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2(v2 + 16, a2);
  *(v2 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path setter for AnswerCallIntentHandlerDataSource.callHistoryDataSource : AnswerCallIntentHandlerDataSource(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t AnswerCallIntentHandlerDataSource.callHistoryDataSource.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2(v2 + 24, a2);
  *(v2 + 24) = a1;
  return swift_unknownObjectRelease();
}

id AnswerCallIntentHandlerDataSource.providerManager.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3(v2 + 32, a2);
  v3 = *(v2 + 32);

  return v3;
}

void AnswerCallIntentHandlerDataSource.providerManager.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2(v2 + 32, a2);
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
}

void *AnswerCallIntentHandlerDataSource.__allocating_init(contactsDataSource:callHistoryDataSource:providerManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *AnswerCallIntentHandlerDataSource.init(contactsDataSource:callHistoryDataSource:providerManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

id static CHManager.siriManager(deviceState:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2688B5760;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
  v10 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (dispatch thunk of DeviceState.isPad.getter())
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Set._Variant.insert(_:)(&v9, v6, v7);

    v5 = v10;
  }

  outlined bridged method (mbnn) of @objc CHManager.allowedProtectedAppBundleIDs.setter(v5, v2);
  return v2;
}

uint64_t AnswerCallIntentHandlerDataSource.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AnswerCallIntentHandlerDataSource.__deallocating_deinit()
{
  AnswerCallIntentHandlerDataSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
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

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
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

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
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
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
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
    v5 = xmmword_2688B5770;
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
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

void outlined bridged method (mbnn) of @objc CHManager.allowedProtectedAppBundleIDs.setter(uint64_t a1, void *a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setAllowedProtectedAppBundleIDs_];
}

uint64_t sub_2688AFD8C()
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 104))();
  *v0 = result;
  return result;
}

uint64_t sub_2688AFDD0()
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 128))();
  *v0 = result;
  return result;
}

uint64_t sub_2688AFE14()
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 152))();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_7();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_7();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &_sIeghH_IeAgH_TRTATu;
  v9[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v6, &_sIeAgH_ytIeAgHr_TRTATu, v9);
}

void *HangUpCallIntentHandler.init(callCenter:deviceState:)(void *a1, void *a2)
{
  outlined init with copy of SPHCallCenter(a1, v2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter);
  outlined init with copy of SPHCallCenter(a2, v2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_deviceState);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HangUpCallIntentHandler();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t HangUpCallIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t HangUpCallIntentHandler.confirm(intent:)()
{
  if (one-time initialization token for intentHandlers != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for intentHandlers);
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.intentHandlers);
  v3 = v1;
  v4 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_14(&dword_2688A7000, v9, v10, "#HangUpCallIntentHandler Confirming Siri request to hang up: %@");
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v11 = *(v0 + 48);

  v12 = swift_allocObject();
  v13 = objc_allocWithZone(MEMORY[0x277CD3CC0]);
  OUTLINED_FUNCTION_13();
  *(v12 + 16) = [v14 v15];
  v16 = (v11 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter);
  v17 = *(v11 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 24);
  v18 = *(v11 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 32);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_7();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = partial apply for closure #1 in HangUpCallIntentHandler.confirm(intent:);
  v19[5] = v12;
  SPHCallCenter.onQueue<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SPHCallCenter) -> (), v19, v17, MEMORY[0x277D84F78] + 8, v18);

  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  *(v12 + 16);

  v20 = OUTLINED_FUNCTION_9();

  return v21(v20);
}

void closure #1 in HangUpCallIntentHandler.confirm(intent:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if ((*(v4 + 56))(v3, v4))
  {
    if (one-time initialization token for intentHandlers != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.intentHandlers);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2688A7000, v6, v7, "#HangUpCallIntentHandler Call exists, proceeding to handle HangUp intent.", v8, 2u);
      MEMORY[0x26D621E50](v8, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CD3CC0]) initWithCode:1 userActivity:0];
  }

  else
  {
    if (one-time initialization token for intentHandlers != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.intentHandlers);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2688A7000, v11, v12, "#HangUpCallIntentHandler No calls exist. Returning failure.", v13, 2u);
      MEMORY[0x26D621E50](v13, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CD3CC0]) initWithCode:6 userActivity:0];
  }

  v14 = v9;
  swift_beginAccess();
  v15 = *(a2 + 16);
  *(a2 + 16) = v14;
}

uint64_t @objc closure #1 in HangUpCallIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in HangUpCallIntentHandler.confirm(intent:);

  return HangUpCallIntentHandler.confirm(intent:)(v6);
}

uint64_t HangUpCallIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t HangUpCallIntentHandler.handle(intent:)()
{
  if (one-time initialization token for intentHandlers != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for intentHandlers);
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.intentHandlers);
  v3 = v1;
  v4 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_14(&dword_2688A7000, v9, v10, "#HangUpCallIntentHandler Handling Siri request to hang up: %@");
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v11 = *(v0 + 48);

  v12 = swift_allocObject();
  v13 = objc_allocWithZone(MEMORY[0x277CD3CC0]);
  OUTLINED_FUNCTION_13();
  *(v12 + 16) = [v14 v15];
  v16 = *&v11[OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 24];
  v17 = *&v11[OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 32];
  __swift_project_boxed_opaque_existential_1(&v11[OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter], v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v12;
  OUTLINED_FUNCTION_7();
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = partial apply for closure #1 in HangUpCallIntentHandler.handle(intent:);
  v19[5] = v18;
  v20 = v11;
  SPHCallCenter.onQueue<A>(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed SPHCallCenter) -> ()partial apply, v19, v16, MEMORY[0x277D84F78] + 8, v17);

  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  *(v12 + 16);

  v21 = OUTLINED_FUNCTION_9();

  return v22(v21);
}

void closure #1 in HangUpCallIntentHandler.handle(intent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter);
  v6 = *(a2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 24);
  v7 = *(a2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16SiriPhoneIntents23HangUpCallIntentHandler_callCenter), v6);
  v8 = (*(v7 + 40))(v6, v7);
  if (v8 || (v9 = v5[3], v10 = v5[4], __swift_project_boxed_opaque_existential_1(v5, v9), (v8 = (*(v10 + 48))(v9, v10)) != 0))
  {
    v11 = v8;
    if (one-time initialization token for intentHandlers != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.intentHandlers);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v11;
      v18 = v13;
      _os_log_impl(&dword_2688A7000, v14, v15, "#HangUpCallIntentHandler An incoming call exists: %@", v16, 0xCu);
      outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D621E50](v17, -1, -1);
      MEMORY[0x26D621E50](v16, -1, -1);
    }

    v19 = [v13 isEligibleForScreening];
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    if (v19)
    {
      if (v22)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2688A7000, v20, v21, "#HangUpCallIntentHandler Sending call to automatic screening", v23, 2u);
        MEMORY[0x26D621E50](v23, -1, -1);
      }

      v24 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
      [v24 setSendToScreening_];
      v25 = a1[3];
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      (*(v26 + 16))(v24, v25, v26);
    }

    else
    {
      if (v22)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2688A7000, v20, v21, "#HangUpCallIntentHandler Declining it and returning success", v27, 2u);
        MEMORY[0x26D621E50](v27, -1, -1);
      }

      v28 = a1[3];
      v29 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v28);
      (*(v29 + 24))(v13, 2, v28, v29);
    }

    v30 = [objc_allocWithZone(MEMORY[0x277CD3CC0]) initWithCode:3 userActivity:0];
    swift_beginAccess();
    v31 = *(a3 + 16);
    *(a3 + 16) = v30;

    [v30 setHungUpCallType_];
  }

  else
  {
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    if ((*(v33 + 56))(v32, v33))
    {
      if (one-time initialization token for intentHandlers != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.intentHandlers);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2688A7000, v35, v36, "#HangUpCallIntentHandler At least one call exists. Hanging up and returning success", v37, 2u);
        MEMORY[0x26D621E50](v37, -1, -1);
      }

      v38 = a1[3];
      v39 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v38);
      (*(v39 + 32))(v38, v39);
      v40 = [objc_allocWithZone(MEMORY[0x277CD3CC0]) initWithCode:3 userActivity:0];
      swift_beginAccess();
      v41 = *(a3 + 16);
      *(a3 + 16) = v40;

      [v40 setHungUpCallType_];
    }

    else
    {
      if (one-time initialization token for intentHandlers != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.intentHandlers);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2688A7000, v43, v44, "#HangUpCallIntentHandler No calls exist. Since call was hung up between confirm and handle, return success.", v45, 2u);
        MEMORY[0x26D621E50](v45, -1, -1);
      }

      v46 = [objc_allocWithZone(MEMORY[0x277CD3CC0]) initWithCode:3 userActivity:0];
      swift_beginAccess();
      v47 = *(a3 + 16);
      *(a3 + 16) = v46;
    }
  }
}

uint64_t @objc HangUpCallIntentHandler.confirm(intent:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a6, v10);
}

uint64_t @objc closure #1 in HangUpCallIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in HangUpCallIntentHandler.handle(intent:);

  return HangUpCallIntentHandler.handle(intent:)(v6);
}

uint64_t @objc closure #1 in HangUpCallIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_10();

  return v9();
}

id HangUpCallIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HangUpCallIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HangUpCallIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2688B1450()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2688B1490()
{

  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of TaskPriority?(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t sub_2688B1C1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t dispatch thunk of HangUpCallIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of HangUpCallIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9();

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in HangUpCallIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5(v1);

  return v4(v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v1, v2, v3);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  *v7 = v8;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2688B2328()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_34()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4(v1);

  return v4(v3);
}

uint64_t objectdestroy_16Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in HangUpCallIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x26D621E50);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 19534;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 5916994;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1464814662;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1396786515;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 4735827;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 5395011;
      break;
    case 6:
      v4 = 5395027;
      v3 = 0xE300000000000000;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 5263425;
      break;
    case 8:
      v4 = 21574;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 19534;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 5916994;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v6 = 1464814662;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1396786515;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 4735827;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 5395011;
      break;
    case 6:
      v6 = 5395027;
      v5 = 0xE300000000000000;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 5263425;
      break;
    case 8:
      v6 = 21574;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t one-time initialization function for announceTelephony()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.announceTelephony);
  __swift_project_value_buffer(v0, static Logger.announceTelephony);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.intentHandlers.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for siriPhone(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.siriPhone.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void Logger.logAndCrash(_:)(uint64_t a1, unint64_t a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v8);
    _os_log_impl(&dword_2688A7000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D621E50](v7, -1, -1);
    MEMORY[0x26D621E50](v6, -1, -1);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

SiriPhoneIntents::LogTag_optional __swiftcall LogTag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LogTag.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t LogTag.rawValue.getter(char a1)
{
  result = 19534;
  switch(a1)
  {
    case 1:
      result = 5916994;
      break;
    case 2:
      result = 1464814662;
      break;
    case 3:
      result = 1396786515;
      break;
    case 4:
      result = 4735827;
      break;
    case 5:
      result = 5395011;
      break;
    case 6:
      result = 5395027;
      break;
    case 7:
      result = 5263425;
      break;
    case 8:
      result = 21574;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  LogTag.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  LogTag.rawValue.getter(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

SiriPhoneIntents::LogTag_optional protocol witness for RawRepresentable.init(rawValue:) in conformance LogTag@<W0>(Swift::String *a1@<X0>, SiriPhoneIntents::LogTag_optional *a2@<X8>)
{
  result.value = LogTag.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogTag@<X0>(uint64_t *a1@<X8>)
{
  result = LogTag.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LogPrefix.withFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a3;
}

uint64_t DefaultStringInterpolation.appendInterpolation(type:tags:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x26D621780](91, 0xE100000000000000);
      v8 = 0xE200000000000000;
      v9 = 19534;
      switch(v7)
      {
        case 1:
          v8 = 0xE300000000000000;
          v9 = 5916994;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v9 = 1464814662;
          break;
        case 3:
          v8 = 0xE400000000000000;
          v9 = 1396786515;
          break;
        case 4:
          v8 = 0xE300000000000000;
          v9 = 4735827;
          break;
        case 5:
          v8 = 0xE300000000000000;
          v9 = 5395011;
          break;
        case 6:
          v9 = 5395027;
          v8 = 0xE300000000000000;
          break;
        case 7:
          v8 = 0xE300000000000000;
          v9 = 5263425;
          break;
        case 8:
          v9 = 21574;
          break;
        default:
          break;
      }

      MEMORY[0x26D621780](v9, v8);

      MEMORY[0x26D621780](93, 0xE100000000000000);
      --v5;
    }

    while (v5);
    MEMORY[0x26D621780](32, 0xE100000000000000);
  }

  MEMORY[0x26D621780](35, 0xE100000000000000);
  v10 = _typeName(_:qualified:)();
  MEMORY[0x26D621780](v10);

  if (a4)
  {
    MEMORY[0x26D621780](32, 0xE100000000000000);

    JUMPOUT(0x26D621780);
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t lazy protocol witness table accessor for type LogTag and conformance LogTag()
{
  result = lazy protocol witness table cache variable for type LogTag and conformance LogTag;
  if (!lazy protocol witness table cache variable for type LogTag and conformance LogTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogTag and conformance LogTag);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogTag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x2688B36B8);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LogPrefix(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LogPrefix(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void SPHCallCenter.onQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 8))(a3, a5);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t SPHCallCenter.onQueueAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v28 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_3();
  v33 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_3();
  v31 = v13;
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v29 = (*(a4 + 8))(a3, a4);
  (*(v17 + 16))(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v23 = v30;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  aBlock[4] = partial apply for closure #1 in SPHCallCenter.onQueueAsync(_:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v29;
  MEMORY[0x26D621840](0, v15, v11, v24);
  _Block_release(v24);

  (*(v33 + 8))(v11, v7);
  (*(v31 + 8))(v15, v32);
}

uint64_t sub_2688B417C(uint64_t a1)
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id @nonobjc TUCallCenter.queue.getter()
{
  v1 = [v0 queue];

  return v1;
}

id @nonobjc TUCallCenter.incomingCall.getter()
{
  v1 = [v0 incomingCall];

  return v1;
}

id @nonobjc TUCallCenter.incomingVideoCall.getter()
{
  v1 = [v0 incomingVideoCall];

  return v1;
}