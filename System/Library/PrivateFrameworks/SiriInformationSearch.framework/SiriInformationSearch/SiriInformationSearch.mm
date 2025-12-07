void PommesBridge.handleSessionStarted(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.pommes);
  v13 = a1;
  v49 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v50 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v48 = v6;
    v19 = v18;
    v52[0] = v18;
    *v17 = 136315138;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v8 + 8))(v50, v7);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v52);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2232BB000, v14, v15, "handling session started for session id: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v24 = v19;
    v6 = v48;
    MEMORY[0x223DE0F80](v24, -1, -1);
    v25 = v17;
    v10 = v50;
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  SessionMessageBase.sessionId.getter();
  (*(v8 + 56))(v6, 0, 1, v7);
  (*(*v2 + class metadata base offset for PommesBridge + 80))(v6);
  MessageDispatchingBridgeBase.conversationSessionsManaging.getter();
  __swift_project_boxed_opaque_existential_1(v52, v53);
  SessionMessageBase.sessionId.getter();
  dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
  v26 = v10;
  v27 = *(v8 + 8);
  v27(v26, v7);
  (*(*v2 + class metadata base offset for PommesBridge + 104))(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v28 = *(v2 + direct field offset for PommesBridge.pommesSearch);
  v29 = v8 + 8;
  if (v28)
  {
    v30 = *(*v28 + 312);

    v30(v31);
  }

  v32 = v13;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v29;
    v37 = v36;
    v51[0] = v36;
    *v35 = 136315394;
    (*(*v2 + class metadata base offset for PommesBridge + 96))(v52);
    v38 = v53;
    outlined destroy of MediaUserStateCenter?(v52, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = 544501582;
    }

    if (v38)
    {
      v40 = 0xE000000000000000;
    }

    else
    {
      v40 = 0xE400000000000000;
    }

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v51);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = v50;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v27(v42, v7);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v51);

    *(v35 + 14) = v46;
    _os_log_impl(&dword_2232BB000, v33, v34, "%sFound session state for session id %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v35, -1, -1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of MediaUserStateCenter?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtSessionStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 184))(v3))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 224))();
  }

  Date.init()();
  v6 = &v5[v2[5]];
  *v6 = "SiriInformationSearch/PommesSearch.swift";
  *(v6 + 1) = 40;
  v6[16] = 2;
  *&v5[v2[6]] = 395;
  v7 = &v5[v2[7]];
  *v7 = "prepareForSearchAtSessionStart()";
  *(v7 + 1) = 32;
  v7[16] = 2;
  v8 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000033, 0x80000002234DA3E0);
  v9 = &v5[v2[8]];
  *v9 = v8;
  v9[1] = v10;
  v19[3] = &type metadata for FeatureFlag;
  v19[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v11 = swift_allocObject();
  v19[0] = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 3;
  v12 = isFeatureEnabled(_:)();
  v13 = __swift_destroy_boxed_opaque_existential_1(v19);
  if (v12)
  {
    (*(**(v1 + 24) + 528))(v13);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Sphinx FF is disabled, skipping prepareForSearchAtSessionStart", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v5, 0);
  outlined destroy of PommesSearchRequest.ParseState(v5, type metadata accessor for PerformanceUtil.Ticket);
  swift_beginAccess();
  *(v1 + 112) = 1;
}

uint64_t sub_2232BF1E0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t PommesBridge.sessionState.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridge.sessionState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return swift_endAccess();
}

uint64_t PommesBridge.currentSessionId.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridge.currentSessionId;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(uint64_t a1, uint64_t a2)
{
  if (String.count.getter() < 101)
  {
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 100;
      _os_log_impl(&dword_2232BB000, v4, v5, "Description is too long. Trimming to %ld characters.", v6, 0xCu);
      MEMORY[0x223DE0F80](v6, -1, -1);
    }

    String.index(_:offsetBy:)();
    v7 = String.subscript.getter();
    v8 = MEMORY[0x223DDF600](v7);

    MEMORY[0x223DDF6D0](3026478, 0xE300000000000000);

    return v8;
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Void __swiftcall PerformanceUtil.resetMeasurements()()
{
  v1 = *(v0 + 48);
  [v1 lock];
  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F90];

  [v1 unlock];
}

unint64_t lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag()
{
  result = lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag);
  }

  return result;
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtSessionStart()()
{
  v1 = type metadata accessor for PerformanceUtil.Ticket(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  Date.init()();
  v7 = &v6[v1[5]];
  *v7 = "SiriInformationSearch/PegasusProxy.swift";
  *(v7 + 1) = 40;
  v7[16] = 2;
  *&v6[v1[6]] = 342;
  v8 = &v6[v1[7]];
  *v8 = "prepareForSearchAtSessionStart()";
  *(v8 + 1) = 32;
  v8[16] = 2;
  v9 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000026, 0x80000002234E0660);
  v10 = &v6[v1[8]];
  *v10 = v9;
  v10[1] = v11;
  (*(**(v0 + 184) + 312))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(*static PerformanceUtil.shared + 184);
  v12(v6, 0);
  Date.init()();
  v13 = &v4[v1[5]];
  *v13 = "SiriInformationSearch/PegasusProxy.swift";
  *(v13 + 1) = 40;
  v13[16] = 2;
  *&v4[v1[6]] = 346;
  v14 = &v4[v1[7]];
  *v14 = "prepareForSearchAtSessionStart()";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v15 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000021, 0x80000002234E06C0);
  v16 = &v4[v1[8]];
  *v16 = v15;
  v16[1] = v17;
  (*(*v0 + 344))();
  v19 = v18;
  ObjectType = swift_getObjectType();
  (*(v19 + 56))(ObjectType, v19);
  swift_unknownObjectRelease();
  v12(v4, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v4, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v6, type metadata accessor for PerformanceUtil.Ticket);
}

Swift::Void __swiftcall DataProviderManager.prepareForSearchAtSessionStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v21 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AssistantDataCacheCSgMd, &_s21SiriInformationSearch18AssistantDataCacheCSgMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v6, v7, "DataProviderManager scheduling work to prepare for search at session start (helper: %s)...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v13 = *(v1 + 16);
  (*(**(v1 + 32) + 216))(v13);
  (*(**(v1 + 40) + 216))(v13);
  (*(**(v1 + 48) + 216))(v13);
  (*(**(v1 + 56) + 216))(v13);
  (*(**(v1 + 24) + 216))(v13);
  (*(**(v1 + 64) + 216))(v13);
  (*(**(v1 + 72) + 216))(v13);
  (*(**(v1 + 80) + 216))(v13);
  (*(**(v1 + 88) + 216))(v13);
  (*(**(v1 + 96) + 216))(v13);
  Date.init()();
  v14 = &v4[v2[5]];
  *v14 = "SiriInformationSearch/DataProviderManager.swift";
  *(v14 + 1) = 47;
  v14[16] = 2;
  *&v4[v2[6]] = 113;
  v15 = &v4[v2[7]];
  *v15 = "prepareForSearchAtSessionStart()";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v16 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000032, 0x80000002234DD810);
  v17 = &v4[v2[8]];
  *v17 = v16;
  v17[1] = v18;
  v19 = *(v1 + 128);
  if (v19)
  {
    v20 = *(*v19 + 176);

    v20(v13, 0);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v4, 0);
  outlined destroy of PerformanceUtil.Ticket(v4);
}

void AnyDataProvider.prepare(dispatchQueue:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 89))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);

    v24 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[12], v2[13], aBlock);
      _os_log_impl(&dword_2232BB000, v24, v15, "%s skipping prepared", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x223DE0F80](v17, -1, -1);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    else
    {
      v21 = v24;
    }
  }

  else
  {
    v23 = v2[10];
    v24 = v11;
    dispatch_group_enter(v23);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = *(v4 + 80);
    v19[3] = v18;
    v19[4] = a1;
    aBlock[4] = partial apply for closure #1 in AnyDataProvider.prepare(dispatchQueue:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_5;
    v20 = _Block_copy(aBlock);

    a1;
    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](v23, v13, v8, v20);
    _Block_release(v20);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v24);
  }
}

uint64_t sub_2232C01F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C022C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

const char *protocol witness for FeatureFlagsKey.domain.getter in conformance FeatureFlag()
{
  if (*(v0 + 32) != 3)
  {
    return "Pommes";
  }

  v1 = *(v0 + 16) | *(v0 + 24) | *(v0 + 8);
  if (*v0 == 4 && v1 == 0)
  {
    return "SiriVideo";
  }

  if (*v0 != 6 || v1 != 0)
  {
    return "Pommes";
  }

  return "SiriSettings";
}

const char *FeatureFlag.feature.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32) > 1u)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (*(v0 + 32) == 2)
    {
      return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, v4, v5);
    }

    else if (v4 | v2 | v1 | v5)
    {
      v6 = v4 | v2 | v5;
      if (v1 != 1 || v6)
      {
        if (v1 != 2 || v6)
        {
          if (v1 != 3 || v6)
          {
            if (v1 != 4 || v6)
            {
              if (v1 == 5 && v6 == 0)
              {
                return "phase2_domains";
              }

              else
              {
                return "settings_tell_me_generated";
              }
            }

            else
            {
              return "third_party_app_intents";
            }
          }

          else
          {
            return "GeoPersonalizationShadowLogging";
          }
        }

        else
        {
          return "plugin_warmup";
        }
      }

      else
      {
        return "Canyonlands";
      }
    }

    else
    {
      return "Sphinx";
    }
  }

  else if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }

  else
  {
    return specialized FeatureFlag.disableDeviceFeature(_:)();
  }
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  v3 = v2;
  isa = location.value.super.isa;
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "POMMES preparing for search at request start", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v25[3] = &type metadata for FeatureFlag;
  v25[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v11 = swift_allocObject();
  v25[0] = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 3;
  v12 = isFeatureEnabled(_:)();
  v13 = __swift_destroy_boxed_opaque_existential_1(v25);
  if (v12)
  {
    v14 = ((*v3)[26])(v13);
    v15 = specialized Set.contains(_:)(countAndFlagsBits, object, v14);

    if (v15)
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
        _os_log_impl(&dword_2232BB000, v16, v17, "requestId=%s is already prepared, skipping prepareForSearchAtRequestStart()", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x223DE0F80](v19, -1, -1);
        MEMORY[0x223DE0F80](v18, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v24, countAndFlagsBits, object);
      swift_endAccess();

      v23 = (*(*v3[3] + 552))(countAndFlagsBits, object, isa);
      (*(*v3[5] + 184))(v23);
    }
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Sphinx FF is disabled, skipping prepareForSearchAtRequestStart", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }
  }
}

void outlined consume of FeatureFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for PerformanceUtil.Ticket(0);
  v46 = *(v6 - 1);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(*v3 + 120))(&v53, v13);
    v16 = v53;
    if (v55)
    {
      LOBYTE(aBlock[0]) = v53;
      *(aBlock + 1) = *v54;
      aBlock[2] = *&v54[15];
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v52[0] = v58[0];
      *(v52 + 10) = *(v58 + 10);
      outlined destroy of AssistantDataSnapshot?(aBlock);
      if ((v16 & 1) == 0)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.pommes);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_2232BB000, v18, v19, "#AssistantData Skipping snapshot update", v20, 2u);
          MEMORY[0x223DE0F80](v20, -1, -1);
        }

        return;
      }
    }

    else
    {
      LOBYTE(aBlock[0]) = v53;
      *(aBlock + 1) = *v54;
      aBlock[2] = *&v54[15];
      v49 = 0;
      v50 = v56;
      v51 = v57;
      v52[0] = v58[0];
      *(v52 + 10) = *(v58 + 10);
      outlined destroy of AssistantDataSnapshot?(aBlock);
    }
  }

  v45 = a1;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, aBlock);
    _os_log_impl(&dword_2232BB000, v25, v26, "#AssistantData Updating snapshot from POMMES service helper (request aceId=%s)", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D47308]) init];
  v30 = MEMORY[0x223DDF550](v21, v23);

  [v29 setAceId_];

  v31 = v29;
  [v31 setRefId_];
  Date.init()();
  v32 = &v10[v6[5]];
  *v32 = "SiriInformationSearch/AssistantDataCache.swift";
  *(v32 + 1) = 46;
  v32[16] = 2;
  *&v10[v6[6]] = 74;
  v33 = &v10[v6[7]];
  *v33 = "updateSnapshot(on:onlyIfNeeded:)";
  *(v33 + 1) = 32;
  v33[16] = 2;
  v34 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234DAD50);
  v35 = &v10[v6[8]];
  *v35 = v34;
  v35[1] = v36;
  v37 = v3[3];
  v38 = v47;
  outlined init with copy of PerformanceUtil.Ticket(v10, v47);
  v39 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v40 = (v7 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v38, v41 + v39);
  *(v41 + v40) = v3;
  v42 = v45;
  *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  *&v50 = partial apply for closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:);
  *(&v50 + 1) = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  v49 = &block_descriptor_21;
  v43 = _Block_copy(aBlock);

  v44 = v42;

  [v37 handleCommand:v31 completion:v43];
  _Block_release(v43);

  outlined destroy of PerformanceUtil.Ticket(v10);
}

uint64_t sub_2232C1188()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in AnyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = (*(*result + 208))(a2);
    if ((*(*v4 + 152))(v5))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.pommes);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136315138;
        v11 = *(v4 + 96);
        v12 = *(v4 + 104);

        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2232BB000, v7, v8, "%s set isPrepared", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x223DE0F80](v10, -1, -1);
        MEMORY[0x223DE0F80](v9, -1, -1);
      }

      *(v4 + 89) = 1;
    }

    dispatch_group_leave(*(v4 + 80));
  }

  return result;
}

uint64_t outlined destroy of PerformanceUtil.Ticket(uint64_t a1)
{
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PommesSearchError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformanceUtil.recordMeasurement(for:logMeasurement:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC6TicketVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC6TicketVGMR);
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2234CF920;
  outlined init with copy of PerformanceUtil.Ticket(a1, v7 + v6, type metadata accessor for PerformanceUtil.Ticket);
  (*(*v2 + 192))(v7, a2);
}

uint64_t outlined init with take of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t outlined init with take of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PerformanceUtil.Measurement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for SOMediaNowPlayingObserver()
{
  result = lazy cache variable for type metadata for SOMediaNowPlayingObserver;
  if (!lazy cache variable for type metadata for SOMediaNowPlayingObserver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SOMediaNowPlayingObserver);
  }

  return result;
}

void AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PerformanceUtil.Ticket(0);
  v67 = *(v7 - 1);
  v8 = MEMORY[0x28223BE20](v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = (&v64 - v11);
  v68 = v12;
  MEMORY[0x28223BE20](v10);
  v71 = &v64 - v13;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v70 = a3;
  if (v17)
  {
    v18 = 0xEB00000000646569;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v73[0] = v20;
    *v19 = 136315394;
    v65 = v20;
    v66 = a1;
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v21 = 3;
        v22 = 0xE700000000000000;
        v23 = 0x646570706F7473;
        goto LABEL_20;
      }

      if (a2 == 4)
      {
        v21 = 4;
        v23 = 0x7075727265746E69;
        v22 = 0xEB00000000646574;
LABEL_20:
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v73);

        *(v19 + 4) = v25;
        *(v19 + 12) = 2080;
        if (v70 > 2)
        {
          if (v70 == 3)
          {
            v18 = 0xE700000000000000;
            v26 = 0x646570706F7473;
            a2 = v21;
          }

          else
          {
            a2 = v21;
            if (v70 != 4)
            {
              a1 = v66;
              if (v70 == 5)
              {
                v18 = 0xE700000000000000;
                v26 = 0x676E696B656573;
                goto LABEL_35;
              }

LABEL_31:
              v18 = 0xE700000000000000;
              v26 = 0x6E776F6E6B6E75;
              goto LABEL_35;
            }

            v26 = 0x7075727265746E69;
            v18 = 0xEB00000000646574;
          }
        }

        else
        {
          if (!v70)
          {
            a2 = v21;
            a1 = v66;
            v26 = 0x6669636570736E75;
            goto LABEL_35;
          }

          a2 = v21;
          if (v70 != 1)
          {
            a1 = v66;
            if (v70 == 2)
            {
              v18 = 0xE600000000000000;
              v26 = 0x646573756170;
LABEL_35:
              v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v18, v73);

              *(v19 + 14) = v27;
              _os_log_impl(&dword_2232BB000, v15, v16, "AudioQueueStateManager : now playing state changed from %s to %s", v19, 0x16u);
              v28 = v65;
              swift_arrayDestroy();
              MEMORY[0x223DE0F80](v28, -1, -1);
              MEMORY[0x223DE0F80](v19, -1, -1);

              a3 = v70;
              goto LABEL_36;
            }

            goto LABEL_31;
          }

          v18 = 0xE700000000000000;
          v26 = 0x676E6979616C70;
        }

        a1 = v66;
        goto LABEL_35;
      }

      if (a2 != 5)
      {
LABEL_16:
        v21 = a2;
        v22 = 0xE700000000000000;
        v23 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v21 = 5;
      v22 = 0xE700000000000000;
      v24 = 1801807219;
    }

    else
    {
      if (!a2)
      {
        v21 = 0;
        v23 = 0x6669636570736E75;
        v22 = 0xEB00000000646569;
        goto LABEL_20;
      }

      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v21 = 2;
          v22 = 0xE600000000000000;
          v23 = 0x646573756170;
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v21 = 1;
      v22 = 0xE700000000000000;
      v24 = 2036427888;
    }

    v23 = v24 | 0x676E6900000000;
    goto LABEL_20;
  }

LABEL_36:
  if (*(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache) && *(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8) && (*(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache + 8) & 1) == 0 && a2 == a3)
  {
    v72 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v72, v29, "AudioQueueStateManager : update skipped", v30, 2u);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

    v31 = v72;
  }

  else
  {
    v32 = a1;
    v33 = v71;
    Date.init()();
    v34 = v33 + v7[5];
    *v34 = "SiriInformationSearch/AudioQueueStateManager.swift";
    *(v34 + 8) = 50;
    *(v34 + 16) = 2;
    *(v33 + v7[6]) = 186;
    v35 = v33 + v7[7];
    *v35 = "nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)";
    *(v35 + 8) = 66;
    *(v35 + 16) = 2;
    v36 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000036, 0x80000002234DFCE0);
    v37 = (v33 + v7[8]);
    *v37 = v36;
    v37[1] = v38;
    v39 = v72;
    Date.init()();
    v40 = v39 + v7[5];
    *v40 = "SiriInformationSearch/AudioQueueStateManager.swift";
    *(v40 + 1) = 50;
    v40[16] = 2;
    *(&v39->isa + v7[6]) = 187;
    v41 = v39 + v7[7];
    *v41 = "nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)";
    *(v41 + 1) = 66;
    v41[16] = 2;
    v42 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003FLL, 0x80000002234DFDB0);
    v43 = (v39 + v7[8]);
    v44 = v32;
    *v43 = v42;
    v43[1] = v45;
    v46 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup);
    dispatch_group_enter(v46);
    dispatch_group_enter(v46);
    outlined init with copy of MediaNowPlayingObserving?(v32, v73);
    v47 = v74;
    if (v74)
    {
      v48 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = v69;
      outlined init with copy of PerformanceUtil.Ticket(v72, v69);
      v51 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v50, v53 + v51);
      *(v53 + v52) = v49;
      v54 = *(v48 + 24);

      v54(partial apply for closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:), v53, v47, v48);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(v73, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
    }

    outlined init with copy of MediaNowPlayingObserving?(v44, v73);
    v55 = v74;
    if (v74)
    {
      v56 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v58 = v71;
      v59 = v69;
      outlined init with copy of PerformanceUtil.Ticket(v71, v69);
      v60 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v61 = (v68 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v59, v62 + v60);
      *(v62 + v61) = v57;
      *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
      v63 = *(v56 + 16);

      v63(partial apply for closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:), v62, v55, v56);

      outlined destroy of PerformanceUtil.Ticket(v72);
      outlined destroy of PerformanceUtil.Ticket(v58);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      outlined destroy of PerformanceUtil.Ticket(v72);
      outlined destroy of PerformanceUtil.Ticket(v71);
      outlined destroy of MediaUserStateCenter?(v73, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
    }
  }
}

uint64_t sub_2232C27A0()
{
  MEMORY[0x223DE1050](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C27D8()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2232C28E0()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t type metadata accessor for SignpostToken(uint64_t a1)
{
  result = type metadata singleton initialization cache for SignpostToken;
  if (!type metadata singleton initialization cache for SignpostToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OSSignposter.begin(name:context:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  LODWORD(v8) = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-v14];
  if (a4)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
  }

  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = a2;
  v24 = v8;
  if ((v8 & 1) == 0)
  {
    if (v26)
    {
      v8 = v26;
LABEL_12:
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_2232BB000, v16, v17, v20, v8, "", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
      a2 = v25;
      LOBYTE(v8) = v24;
LABEL_13:

      (*(v10 + 16))(v13, v15, v9);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v21 = OSSignpostIntervalState.init(id:isOpen:)();
      *a5 = v26;
      *(a5 + 8) = a2;
      *(a5 + 16) = v8;
      v22 = type metadata accessor for SignpostToken(0);
      result = (*(v10 + 32))(a5 + *(v22 + 20), v15, v9);
      *(a5 + *(v22 + 24)) = v21;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v26 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v26 & 0xFFFFF800) != 0xD800)
  {
    if (v26 >> 16 <= 0x10)
    {
      v8 = &v27;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
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
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Void __swiftcall PerformanceUtil.recordMeasurement(for:logMeasurement:)(Swift::OpaquePointer a1, Swift::Bool logMeasurement)
{
  v3 = v2;
  v4 = logMeasurement;
  v36 = type metadata accessor for Date();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PerformanceUtil.Ticket(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PerformanceUtil.Measurement(0);
  v37 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(a1._rawValue + 2);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v30 = v14;
    v31 = v4;
    v32 = v3;
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v38;
    v19 = a1._rawValue + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v34 = *(v9 + 72);
    v20 = (v33 + 8);
    do
    {
      outlined init with copy of PerformanceUtil.Ticket(v19, v11, type metadata accessor for PerformanceUtil.Ticket);
      outlined init with copy of PerformanceUtil.Ticket(v11, v16, type metadata accessor for PerformanceUtil.Ticket);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v22 = v21;
      (*v20)(v7, v36);
      outlined destroy of PerformanceUtil.Measurement(v11, type metadata accessor for PerformanceUtil.Ticket);
      *&v16[*(v35 + 20)] = v22 * 1000.0;
      v38 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v18 = v38;
      }

      *(v18 + 16) = v24 + 1;
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(v16, v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v24, type metadata accessor for PerformanceUtil.Measurement);
      v19 += v34;
      --v17;
    }

    while (v17);
    v3 = v32;
    LOBYTE(v4) = v31;
    v14 = v30;
  }

  if (v4 || *(v3 + 56) == 1)
  {
    v25 = *(v18 + 16);
    if (v25)
    {
      v26 = v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v27 = *(v37 + 72);
      do
      {
        outlined init with copy of PerformanceUtil.Ticket(v26, v14, type metadata accessor for PerformanceUtil.Measurement);
        PerformanceUtil.Measurement.log()();
        outlined destroy of PerformanceUtil.Measurement(v14, type metadata accessor for PerformanceUtil.Measurement);
        v26 += v27;
        --v25;
      }

      while (v25);
    }
  }

  v28 = *(v3 + 48);
  [v28 lock];
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v18);
  swift_endAccess();
  [v28 unlock];
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMR, type metadata accessor for PerformanceUtil.Measurement);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMd, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMR, &_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDyS2SGGMd, &_ss23_ContiguousArrayStorageCySDyS2SGGMR, &_sSDyS2SGMd, &_sSDyS2SGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMR, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMR, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall AudioQueueStateManager.registerObserver()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered;
  if ((*(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 24);
    v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver), v2);
    (*(v3 + 32))(v0, &protocol witness table for AudioQueueStateManager, v2, v3);
    *(v0 + v1) = 1;
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PerformanceUtil.Measurement);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5FE08]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D39460]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D39438]);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void SOMediaNowPlayingObserver.register(_:)(uint64_t a1, uint64_t a2, const char **a3, const char *a4)
{
  if (a1)
  {
    v5 = *a3;

    [v4 v5];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v8, a4, v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t SiriKitAppInfoDataProvider.getForegroundSiriKitAppInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
  v108 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.init()();
  if (!AFIsATV())
  {
    return (*(v13 + 32))(a1, v15, v12);
  }

  v106 = v15;
  v102 = v13;
  v103 = v12;
  v101 = v7;
  v16 = v2[12];
  v17 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (!v19)
  {
    return (*(v102 + 32))(a1, v106, v103);
  }

  v20 = v18;
  v21 = v19;
  v22 = v2[5];
  v23 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v22);
  (*(v23 + 16))(&v110, v20, v21, 0, v22, v23);

  v24 = v111;
  if (!v111)
  {
    return (*(v102 + 32))(a1, v106, v103);
  }

  v98 = v5;
  v99 = v4;
  v96 = a1;
  v109 = v112;
  v97 = v113;
  v114 = v110;
  v115 = v111;
  v25 = 1 << *(v111 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v111 + 56);
  v28 = (v25 + 63) >> 6;
  v95 = v108 + 16;
  v94[1] = v108 + 8;
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  for (i = MEMORY[0x277D84F90]; v27; *&v43[8 * v42 + 32] = v40)
  {
    while (1)
    {
LABEL_13:
      v32 = (*(v24 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v27)))));
      v34 = *v32;
      v33 = v32[1];
      v35 = one-time initialization token for intentValues;

      if (v35 != -1)
      {
        swift_once();
      }

      v27 &= v27 - 1;
      v36 = static SiriKitAppInfoDataProvider.intentValues;
      if (*(static SiriKitAppInfoDataProvider.intentValues + 2))
      {
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v33);
        if (v38)
        {
          break;
        }
      }

      if (!v27)
      {
        goto LABEL_9;
      }
    }

    v39 = v108;
    (*(v108 + 16))(v11, v36[7] + *(v108 + 72) * v37, v9);
    v40 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();

    (*(v39 + 8))(v11, v9);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
      i = result;
    }

    v42 = *(i + 2);
    v41 = *(i + 3);
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, i);
      i = result;
    }

    v43 = i;
    *(i + 2) = v42 + 1;
  }

  while (1)
  {
LABEL_9:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 56 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_13;
    }
  }

  outlined destroy of MediaUserStateCenter?(&v115, &_sShySSGMd, &_sShySSGMR);
  v44 = *(i + 2);
  if (v44)
  {
    v45 = i + 32;
    v46 = MEMORY[0x277D84F90];
    do
    {
      v48 = *v45;
      v45 += 8;
      v47 = v48;
      if (!HIDWORD(v48))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
        }

        v50 = *(v46 + 2);
        v49 = *(v46 + 3);
        if (v50 >= v49 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v46);
        }

        *(v46 + 2) = v50 + 1;
        *&v46[4 * v50 + 32] = v47;
      }

      --v44;
    }

    while (v44);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v51 = *(v46 + 2);
  if (!v51)
  {
LABEL_39:

    Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.supportedIntents.setter();
    v116 = v109;
    v56 = v109 + 56;
    v57 = 1 << *(v109 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v109 + 56);
    v60 = (v57 + 63) >> 6;
    v108 = v107 + 16;
    i = (v107 + 8);
    result = swift_bridgeObjectRetain_n();
    v61 = 0;
    for (j = MEMORY[0x277D84F90]; v59; *(j + 8 * v75 + 32) = v95)
    {
      while (1)
      {
LABEL_48:
        v64 = (*(v109 + 48) + ((v61 << 10) | (16 * __clz(__rbit64(v59)))));
        v66 = *v64;
        v65 = v64[1];
        v67 = one-time initialization token for mediaCategoryValues;

        if (v67 != -1)
        {
          swift_once();
        }

        v59 &= v59 - 1;
        v68 = static SiriKitAppInfoDataProvider.mediaCategoryValues;
        if (*(static SiriKitAppInfoDataProvider.mediaCategoryValues + 2))
        {
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
          if (v70)
          {
            break;
          }
        }

        if (!v59)
        {
          goto LABEL_44;
        }
      }

      v71 = v107;
      v72 = v68[7] + *(v107 + 72) * v69;
      v73 = v104;
      (*(v107 + 16))(v104, v72, v105);
      v95 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter();

      (*(v71 + 8))(v73, v105);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(j + 16) + 1, 1, j);
        j = result;
      }

      v75 = *(j + 16);
      v74 = *(j + 24);
      if (v75 >= v74 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, j);
        j = result;
      }

      *(j + 16) = v75 + 1;
    }

LABEL_44:
    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_78;
      }

      if (v63 >= v60)
      {
        v117 = v114;
        outlined destroy of MediaUserStateCenter?(&v117, &_sSSSgMd, &_sSSSgMR);
        outlined destroy of MediaUserStateCenter?(&v115, &_sShySSGMd, &_sShySSGMR);
        outlined destroy of MediaUserStateCenter?(&v116, &_sShySSGMd, &_sShySSGMR);
        v118 = v97;
        outlined destroy of MediaUserStateCenter?(&v118, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

        outlined destroy of MediaUserStateCenter?(&v116, &_sShySSGMd, &_sShySSGMR);
        v76 = *(j + 16);
        if (v76)
        {
          v77 = (j + 32);
          v78 = MEMORY[0x277D84F90];
          v80 = v102;
          v79 = v103;
          v81 = v106;
          do
          {
            v83 = *v77++;
            v82 = v83;
            if (!HIDWORD(v83))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
              }

              v85 = *(v78 + 2);
              v84 = *(v78 + 3);
              if (v85 >= v84 >> 1)
              {
                v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v78);
              }

              *(v78 + 2) = v85 + 1;
              *&v78[4 * v85 + 32] = v82;
            }

            --v76;
          }

          while (v76);
        }

        else
        {
          v78 = MEMORY[0x277D84F90];
          v80 = v102;
          v79 = v103;
          v81 = v106;
        }

        v86 = *(v78 + 2);
        if (v86)
        {
          v87 = 0;
          v88 = (v78 + 32);
          v89 = v99;
          v90 = v98;
          while (1)
          {
            v91 = *v88++;
            v55 = __CFADD__(v87, v91);
            v87 += v91;
            if (v55)
            {
              goto LABEL_80;
            }

            if (!--v86)
            {
              goto LABEL_74;
            }
          }
        }

        v89 = v99;
        v90 = v98;
LABEL_74:

        Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.supportedIntentMediaCategories.setter();
        v92 = v101;
        (*(v90 + 104))(v101, *MEMORY[0x277D38CB0], v89);
        v93 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
        result = (*(v90 + 8))(v92, v89);
        if ((v93 & 0x8000000000000000) == 0)
        {
          if (HIDWORD(v93))
          {
            goto LABEL_82;
          }

          Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.appContext.setter();
          return (*(v80 + 32))(v96, v81, v79);
        }

        goto LABEL_81;
      }

      v59 = *(v56 + 8 * v63);
      ++v61;
      if (v59)
      {
        v61 = v63;
        goto LABEL_48;
      }
    }
  }

  v52 = 0;
  v53 = (v46 + 32);
  while (1)
  {
    v54 = *v53++;
    v55 = __CFADD__(v52, v54);
    v52 += v54;
    if (v55)
    {
      break;
    }

    if (!--v51)
    {
      goto LABEL_39;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of MediaUserStateCenter?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of MediaUserStateCenter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t outlined assign with take of ForegroundAppProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PerformanceUtil.Ticket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch15PerformanceUtilC11MeasurementVGMR, type metadata accessor for PerformanceUtil.Measurement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x277D5E460]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x277D5FE08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMR, MEMORY[0x277D396D8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x277D39100]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentVGMR, MEMORY[0x277D39670]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR, MEMORY[0x277D39438]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI36Apple_Parsec_Search_DevicePolicyTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI36Apple_Parsec_Search_DevicePolicyTypeOGMR, MEMORY[0x277D39238]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMR, MEMORY[0x277D566D0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_H14CommandBuilderVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_H14CommandBuilderVGMR, MEMORY[0x277D38D48]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, MEMORY[0x277D5DB80]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMR, MEMORY[0x277D5DB38]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMR, MEMORY[0x277D5DD28]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x277D5DB08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMR, MEMORY[0x277D39018]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D26_Nlu_External_SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D26_Nlu_External_SpanPropertyVGMR, MEMORY[0x277D5DB18]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI37Apple_Parsec_Siri_V2alpha_RestrictionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI37Apple_Parsec_Siri_V2alpha_RestrictionVGMR, MEMORY[0x277D39360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_jL0OGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_jL0OGMR, MEMORY[0x277D39A60]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_K0OGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_K0OGMR, MEMORY[0x277D39668]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMR, MEMORY[0x277D39648]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy28SiriPrivateLearningInference22PimsSuggestionMetadataVGMd, &_ss23_ContiguousArrayStorageCy28SiriPrivateLearningInference22PimsSuggestionMetadataVGMR, MEMORY[0x277D5FDC8]);
}

void PommesBridge.handleSessionEnded(_:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  v21 = *(*v1 + class metadata base offset for PommesBridge + 72);
  v59 = v1;
  v21(v18);
  v61 = a1;
  SessionMessageBase.sessionId.getter();
  v22 = v4 + 56;
  v23 = *(v4 + 56);
  v23(v17, 0, 1, v3);
  v24 = *(v7 + 56);
  outlined init with copy of MediaUserStateCenter?(v20, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of MediaUserStateCenter?(v17, &v9[v24], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v62 = v4;
  v25 = *(v4 + 48);
  if (v25(v9, 1, v3) == 1)
  {
    v56 = v23;
    v57 = v22;
    outlined destroy of MediaUserStateCenter?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = v3;
    if (v25(&v9[v24], 1, v3) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v59;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2232BB000, v44, v45, "setting sessionId and sessionState to nil", v48, 2u);
        MEMORY[0x223DE0F80](v48, -1, -1);
      }

      v49 = *(v47 + direct field offset for PommesBridge.pommesSearch);
      if (v49)
      {
        v50 = *(*v49 + 352);

        v50(v51);
      }

      v52 = v58;
      v56(v58, 1, 1, v26);
      (*(*v47 + class metadata base offset for PommesBridge + 80))(v52);
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      (*(*v47 + class metadata base offset for PommesBridge + 104))(v64);
      v53 = dispatch thunk of CandidateRequestAwareBridgeBase.requestIdToCandidateRequestProcessor.modify();
      v55 = v54;

      *v55 = MEMORY[0x277D84F98];
      v53(v64, 0);
      return;
    }

    goto LABEL_6;
  }

  outlined init with copy of MediaUserStateCenter?(v9, v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v9[v24], 1, v3) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v62 + 8))(v63, v3);
    v26 = v3;
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_7;
  }

  v56 = v23;
  v57 = v22;
  v38 = v62;
  v39 = v60;
  (*(v62 + 32))(v60, &v9[v24], v3);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v40 = v63;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v38 + 8);
  v42(v39, v3);
  outlined destroy of MediaUserStateCenter?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42(v40, v3);
  outlined destroy of MediaUserStateCenter?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = v3;
  if (v41)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.pommes);
  v28 = v61;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v64[0] = v32;
    *v31 = 136315138;
    v33 = v60;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v62 + 8))(v33, v26);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v64);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2232BB000, v29, v30, "SessionId: %s is not the current session, ignoring", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x223DE0F80](v32, -1, -1);
    MEMORY[0x223DE0F80](v31, -1, -1);
  }
}

uint64_t PommesBridge.currentSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridge.currentSessionId;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

Swift::Void __swiftcall PommesSearch.tearDown()()
{
  swift_beginAccess();
  *(v0 + 120) = MEMORY[0x277D84FA0];

  v2 = (*(**(v0 + 24) + 560))(v1);
  v3 = (*(**(v0 + 40) + 192))(v2);
  (*(**(v0 + 48) + 184))(v3);
}

Swift::Void __swiftcall PegasusProxy.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Google_Protobuf_Duration();
  v62 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Apple_Parsec_Search_LRConversationThread();
  v5 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + 184) + 328))(v12);
  v15 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
  v16 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  outlined consume of Data?(v15, v16);
  v17 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  swift_beginAccess();
  v18 = *(v11 + 16);
  v50 = v17;
  v18(v14, v1 + v17, v10);
  v19 = Apple_Parsec_Search_SearchConversationContext.lrcThreads.getter();
  (*(v11 + 8))(v14, v10);
  v21 = *(v19 + 16);
  if (v21)
  {
    v46 = v14;
    v47 = v11;
    v48 = v10;
    v49 = v1;
    v24 = *(v5 + 16);
    v22 = v5 + 16;
    v23 = v24;
    v25 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v45 = v19;
    v26 = v19 + v25;
    v27 = *(v22 + 56);
    v60 = (v62 + 8);
    v61 = v27;
    v62 = v22;
    v59 = (v22 - 8);
    *&v20 = 136315138;
    v53 = v20;
    v29 = v57;
    v28 = v58;
    v54 = v2;
    v56 = v24;
    v51 = v9;
    v52 = v4;
    v24(v9, (v19 + v25), v58);
    while (1)
    {
      Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.getter();
      v30 = Google_Protobuf_Duration.seconds.getter();
      (*v60)(v4, v2);
      if (v30 <= 0)
      {
        (*v59)(v9, v28);
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.pommes);
        v23(v29, v9, v28);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63[0] = v35;
          *v34 = v53;
          v36 = Apple_Parsec_Search_LRConversationThread.id.getter();
          v38 = v37;
          v55 = *v59;
          v55(v57, v58);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v63);
          v4 = v52;
          v29 = v57;

          *(v34 + 4) = v39;
          _os_log_impl(&dword_2232BB000, v32, v33, "Long-Running Conversation Thread %s requires disk persistence (currently unsupported).", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          v40 = v35;
          v2 = v54;
          MEMORY[0x223DE0F80](v40, -1, -1);
          v41 = v34;
          v28 = v58;
          MEMORY[0x223DE0F80](v41, -1, -1);

          v42 = v51;
          v55(v51, v28);
          v9 = v42;
        }

        else
        {

          v43 = *v59;
          (*v59)(v29, v28);
          v43(v9, v28);
        }

        v23 = v56;
      }

      v26 += v61;
      if (!--v21)
      {
        break;
      }

      v23(v9, v26, v28);
    }

    v1 = v49;
    v10 = v48;
    v11 = v47;
    v14 = v46;
  }

  else
  {
  }

  Apple_Parsec_Search_SearchConversationContext.init()();
  v44 = v50;
  swift_beginAccess();
  (*(v11 + 40))(v1 + v44, v14, v10);
  swift_endAccess();
}

Swift::Void __swiftcall DataProviderManager.tearDown()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "DataProviderManager tearing down data providers ...", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = (*(*v1[3] + 248))();
  v7 = (*(*v1[4] + 248))(v6);
  v8 = (*(*v1[5] + 248))(v7);
  v9 = (*(*v1[6] + 248))(v8);
  v10 = (*(*v1[7] + 248))(v9);
  v11 = (*(*v1[8] + 248))(v10);
  v12 = (*(*v1[9] + 248))(v11);
  v13 = (*(*v1[10] + 248))(v12);
  v14 = (*(*v1[11] + 248))(v13);
  (*(*v1[12] + 248))(v14);
}

Swift::Void __swiftcall AnyDataProvider.reset()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 96), *(v1 + 104), &v30);
    _os_log_impl(&dword_2232BB000, v6, v7, "%s reseting ...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v30 = v10;
  v31 = v11;

  MEMORY[0x223DDF6D0](0x2874657365725F20, 0xE900000000000029);
  v12 = v30;
  v13 = v31;
  Date.init()();
  v14 = &v4[v2[5]];
  *v14 = "SiriInformationSearch/DataProvider.swift";
  *(v14 + 1) = 40;
  v14[16] = 2;
  *&v4[v2[6]] = 133;
  v15 = &v4[v2[7]];
  *v15 = "reset()";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v16 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v12, v13);
  v18 = v17;

  v20 = &v4[v2[8]];
  *v20 = v16;
  v20[1] = v18;
  (*(v1 + 64))(v19);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = (*(*static PerformanceUtil.shared + 184))(v4, 0);
  if ((*(*v1 + 152))(v21))
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v30);
      _os_log_impl(&dword_2232BB000, v22, v23, "%s reset isPrepared", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DE0F80](v25, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    *(v1 + 89) = 0;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v30);
    _os_log_impl(&dword_2232BB000, v26, v27, "%s reset complete", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  outlined destroy of PerformanceUtil.Ticket(v4);
}

uint64_t partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xB0))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 256))();
}

Swift::Void __swiftcall AmpDataProvider.reset()()
{
  (*(*v0 + 128))(MEMORY[0x277D84F90]);
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  (*(*v0 + 104))(v1);
}

Swift::Void __swiftcall AudioQueueStateManager.unregisterObserver()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered;
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 24);
    v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver), v2);
    (*(v3 + 40))(v0, &protocol witness table for AudioQueueStateManager, v2, v3);
    *(v0 + v1) = 0;
    v4 = v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache;
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache);
    *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache) = 0;

    *v4 = 0;
    *(v4 + 8) = 1;
    v6 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache);
    *v6 = 0;
    v6[1] = 0;
  }
}

uint64_t MarketplaceInfoDataProvider.marketplaceInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Search_V2_MarketplaceInfo?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void CarPlaySessionDataProvider.sessionDidConnect(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2232BB000, v6, v7, "CarPlaySessionDataProvider sessionDidConnect %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 1;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MediaNowPlayingObserving?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void protocol witness for MediaNowPlayingObserving.getNowPlayingApplicationBundleIdentifier(_:) in conformance SOMediaNowPlayingObserver(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?) -> ();
    v5[3] = &block_descriptor_16;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 getNowPlayingApplicationBundleIdentifier_];
  _Block_release(v4);
}

void protocol witness for MediaNowPlayingObserving.getNowPlayingInfoForCurrentItem(completion:) in conformance SOMediaNowPlayingObserver(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
    v5[3] = &block_descriptor_27;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 getNowPlayingInfoForCurrentItemWithCompletion_];
  _Block_release(v4);
}

uint64_t partial apply for closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(a1, a2, v2 + v6, v7);
}

uint64_t closure #1 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
    v9 = Strong;
    [*(Strong + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
    v10 = &v9[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
    *v10 = a1;
    *(v10 + 1) = a2;

    [*&v9[v8] unlock];
    dispatch_group_leave(*&v9[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup]);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static PerformanceUtil.shared + 184))(a3, 1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

Swift::Void __swiftcall PerformanceUtil.Measurement.log()()
{
  v1 = type metadata accessor for PerformanceUtil.Measurement(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  outlined init with copy of PerformanceUtil.Ticket(v0, v15, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v13, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v10, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v7, type metadata accessor for PerformanceUtil.Measurement);
  outlined init with copy of PerformanceUtil.Ticket(v0, v4, type metadata accessor for PerformanceUtil.Measurement);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136316162;
    v20 = type metadata accessor for PerformanceUtil.Ticket(0);
    v21 = &v15[*(v20 + 32)];
    v38 = v1;
    v40 = v18;
    v23 = *v21;
    v22 = v21[1];

    v39 = v17;
    outlined destroy of PerformanceUtil.Measurement(v15, type metadata accessor for PerformanceUtil.Measurement);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v42);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = StaticString.description.getter();
    v27 = v26;
    outlined destroy of PerformanceUtil.Measurement(v13, type metadata accessor for PerformanceUtil.Measurement);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v42);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    v29 = StaticString.description.getter();
    v31 = v30;
    outlined destroy of PerformanceUtil.Measurement(v10, type metadata accessor for PerformanceUtil.Measurement);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v42);

    *(v19 + 24) = v32;
    *(v19 + 32) = 2048;
    v33 = *&v7[*(v20 + 24)];
    outlined destroy of PerformanceUtil.Measurement(v7, type metadata accessor for PerformanceUtil.Measurement);
    *(v19 + 34) = v33;
    *(v19 + 42) = 2048;
    v34 = *&v4[*(v38 + 20)];
    outlined destroy of PerformanceUtil.Measurement(v4, type metadata accessor for PerformanceUtil.Measurement);
    *(v19 + 44) = v34;
    v35 = v39;
    _os_log_impl(&dword_2232BB000, v39, v40, "[PerformanceUtil#Ticket] [%s] %s#%s#%ld %f ms", v19, 0x34u);
    v36 = v41;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v36, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

  else
  {
    outlined destroy of PerformanceUtil.Measurement(v7, type metadata accessor for PerformanceUtil.Measurement);

    outlined destroy of PerformanceUtil.Measurement(v4, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v10, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v13, type metadata accessor for PerformanceUtil.Measurement);
    outlined destroy of PerformanceUtil.Measurement(v15, type metadata accessor for PerformanceUtil.Measurement);
  }
}

uint64_t partial apply for closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t closure #2 in AudioQueueStateManager.nowPlayingInfoChange(_:playbackStateDidChangeFrom:to:lastPlaying:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.pommes);
      v12 = a2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v27 = v16;
        *v15 = 136315138;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_2232BB000, v13, v14, "nowPlayingObserver returned an error : %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x223DE0F80](v16, -1, -1);
        MEMORY[0x223DE0F80](v15, -1, -1);
      }
    }

    else
    {
      v21 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
      [*(Strong + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
      if (a1)
      {
        v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v22.super.isa = 0;
      }

      v23 = *&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache];
      *&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = v22;

      if (a5 == 4)
      {
        v24 = 1;
      }

      else
      {
        v24 = a5;
      }

      v25 = &v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
      *v25 = v24;
      v25[8] = 0;
      [*&v10[v21] unlock];
    }

    dispatch_group_leave(*&v10[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup]);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static PerformanceUtil.shared + 184))(a3, 1);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void partial apply for closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void *a1, uint64_t a2)
{
  v94 = a2;
  v93 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(v93 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v93);
  v6 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - v7;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v91 = v3;
  v92 = v4;
  v90 = v10;
  if (v13)
  {
    v87 = v12;
    v89 = v11;
    v14 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v96[0] = v86;
    *v14 = 136316419;
    v15 = [v10 countryCode];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v95[0] = v17;
    v95[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v96);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2085;
    v23 = [v10 meCards];
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v88 = v14;
    if (v26 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      if (v27)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_13:
        v95[0] = v24;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
        if (v27 < 0)
        {
          __break(1u);
          return result;
        }

        v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v85 = v8;
        v29 = 0;
        v30 = v95[0];
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x223DDFF80](v29, v26);
          }

          else
          {
            v31 = *(v26 + 8 * v29 + 32);
          }

          v32 = v31;
          v33 = [v31 description];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v95[0] = v30;
          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
            v30 = v95[0];
          }

          ++v29;
          v30[2] = v38 + 1;
          v39 = &v30[2 * v38];
          v39[4] = v34;
          v39[5] = v36;
        }

        while (v27 != v29);

        v6 = v84;
        v8 = v85;
        v3 = v91;
        v4 = v92;
        v10 = v90;
        goto LABEL_24;
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_24:
    v40 = MEMORY[0x223DDF850](v30, MEMORY[0x277D837D0]);
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v96);

    v44 = v88;
    *(v88 + 14) = v43;
    *(v44 + 22) = 2080;
    v95[0] = [v10 mediaContentRatingRestrictions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32SAMediaContentRatingRestrictionsCSgMd, &_sSo32SAMediaContentRatingRestrictionsCSgMR);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v96);

    *(v44 + 24) = v47;
    *(v44 + 32) = 2080;
    v95[0] = [v10 uiScale];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    v48 = String.init<A>(describing:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v96);

    *(v44 + 34) = v50;
    *(v44 + 42) = 2080;
    v51 = [v10 censorSpeech];
    v52 = v51 == 0;
    if (v51)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (v52)
    {
      v54 = 0xE500000000000000;
    }

    else
    {
      v54 = 0xE400000000000000;
    }

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v96);

    *(v44 + 44) = v55;
    *(v44 + 52) = 2080;
    v95[0] = [v10 allowUserGeneratedContent];
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v96);

    *(v44 + 54) = v58;
    v59 = v89;
    _os_log_impl(&dword_2232BB000, v89, v87, "#AssistantData Service helper response:\ncountryCode: %s\nmeCards: %{sensitive}s\ncontentRestrictions: %s\nuiScale: %s\ncensorSpeech: %s\nallowUserGeneratedContent: %s", v44, 0x3Eu);
    v60 = v86;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v60, -1, -1);
    MEMORY[0x223DE0F80](v44, -1, -1);

    goto LABEL_31;
  }

LABEL_31:
  v61 = [v10 meCards];
  if (v61)
  {
    v62 = v61;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v6;
    if (v63 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v66 = 0;
      while (1)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x223DDFF80](v66, v63);
        }

        else
        {
          if (v66 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v67 = *(v63 + 8 * v66 + 32);
        }

        v68 = v67;
        v69 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        v95[0] = v67;
        closure #2 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(v95);

        ++v66;
        if (v69 == i)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_45:

    v6 = v64;
    v3 = v91;
    v4 = v92;
    v10 = v90;
  }

  Date.init()();
  v70 = v93;
  v71 = &v8[*(v93 + 20)];
  *v71 = "SiriInformationSearch/AssistantDataCache.swift";
  *(v71 + 1) = 46;
  v71[16] = 2;
  *&v8[v70[6]] = 118;
  v72 = &v8[v70[7]];
  *v72 = "handleSASetAssistantData(_:updateQueue:)";
  *(v72 + 1) = 40;
  v72[16] = 2;
  v73 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000043, 0x80000002234E24C0);
  v74 = &v8[v70[8]];
  *v74 = v73;
  v74[1] = v75;
  v76 = [v10 meCards];
  if (v76)
  {
    v77 = v76;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v78 = 0;
  }

  outlined init with copy of PerformanceUtil.Ticket(v8, v6);
  v79 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v80 = (v4 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v6, v81 + v79);
  *(v81 + v80) = v10;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v82 = v10;

  AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(v78, partial apply for closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:), v81);

  return outlined destroy of PerformanceUtil.Ticket(v8);
}

uint64_t sub_2232C7A78()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t outlined destroy of PerformanceUtil.Ticket(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of PommesSearchRequest.ParseState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PommesBridge.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridge.sessionState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV9RadioTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV9RadioTypeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV6DecadeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11CommonAudioV6DecadeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch11MUXUserInfoVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch11MUXUserInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t AmpDataProvider.cachedMediaUserStates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void PairedDeviceDataProvider.pairedWatch.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t type metadata accessor for CNContactStore(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of AppDataProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OSSignposter.end(token:message:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 16);
  type metadata accessor for SignpostToken(0);

  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v28 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {

    return (*(v9 + 8))(v11, v8);
  }

  v27 = v8;
  if (v13)
  {
    if (!(v12 >> 32))
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v12 >> 16 <= 0x10)
      {
        v17 = a3;

        v16 = &v32;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v12;
  v17 = a3;
LABEL_10:

  checkForErrorAndConsumeState(state:)();

  v19 = v29;
  v18 = v30;
  v20 = v9;
  if ((*(v29 + 88))(v7, v30) == *MEMORY[0x277D85B00])
  {
    v21 = 0;
    v22 = 0;
    v23 = "[Error] Interval already ended";
  }

  else
  {
    (*(v19 + 8))(v7, v18);
    v23 = "%s";
    v22 = 2;
    v21 = 1;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v32 = v25;
  *v24 = v22;
  *(v24 + 1) = v21;
  *(v24 + 2) = 2080;
  *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v17, &v32);
  v26 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_2232BB000, v14, v28, v26, v16, v23, v24, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v25);
  MEMORY[0x223DE0F80](v25, -1, -1);
  MEMORY[0x223DE0F80](v24, -1, -1);

  return (*(v20 + 8))(v11, v27);
}

uint64_t outlined destroy of SignpostToken(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch13SignpostTokenVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AmpDataProvider.mediaUserStateCenter.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t outlined assign with take of MediaUserStateCenter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MarketplaceInfoDataProvider.marketplaceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  swift_beginAccess();
  return outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(v1 + v3, a1);
}

uint64_t outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for ICMediaUserStateCenter()
{
  result = lazy cache variable for type metadata for ICMediaUserStateCenter;
  if (!lazy cache variable for type metadata for ICMediaUserStateCenter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICMediaUserStateCenter);
  }

  return result;
}

uint64_t outlined init with take of DomainWarmupHandling(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id protocol witness for MediaUserStateCenter.activeState.getter in conformance ICMediaUserStateCenter@<X0>(void *a1@<X8>)
{
  result = [*v1 activeUserState];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
    v5 = &protocol witness table for ICMediaUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *PairedDeviceDataProvider.pairedWatch.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch7AppDataV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch7AppDataVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch7AppDataVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v24 = result;
    v25 = a3;
    result = 0;
    v9 = 0;
    v23 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = a4;
      v16 = (*(a4 + 56) + 40 * (v14 | (v9 << 6)));
      v17 = v16[1];
      v19 = v16[2];
      v18 = v16[3];
      v20 = v16[4];
      *v8 = *v16;
      v8[1] = v17;
      v8[2] = v19;
      v8[3] = v18;
      v8[4] = v20;
      if (v11 == v25)
      {

        a4 = v15;
        v5 = v23;
        result = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v8 += 5;

      result = v11;
      v21 = __OFADD__(v11++, 1);
      a4 = v15;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v22 = v9 + 1;
    }

    else
    {
      v22 = v10;
    }

    v9 = v22 - 1;
    a3 = result;
    v5 = v23;
    result = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.readSatisfyingAppDatas(setValue:)(void (*a1)(void *))
{
  v2 = *(v1 + 128);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch7AppDataV_Tt1g5(v3, 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v9, v4 + 4, v3, v2);
    v6 = v9;

    result = outlined consume of Set<String>.Iterator._Variant(v6);
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    a1(v4);
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

uint64_t outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall PreferredNavigationAppDataProvider.reset()()
{
  [*(v0 + 64) invalidate];
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  v2 = *(v0 + 72);
  *(v0 + 72) = 0;

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(v3, v0 + 80);
  swift_endAccess();
}

Swift::Void __swiftcall SiriKitAppInfoDataProvider.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(v3, v0 + v5);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v6 = v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v6 = 0;
  *(v6 + 8) = 1;
}

Swift::Void __swiftcall MarketplaceInfoDataProvider.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  (*(*v0 + 96))(v3);
}

Swift::Void __swiftcall CarPlaySessionDataProvider.reset()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus) = 0;

  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 0;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall PegasusCacheManager.reset()()
{
  if ((*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) != 0 || (v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient), v2 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361), v3 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430), v4 = [v1 levelForFactor:v2 withNamespaceName:v3], v2, v3, v4) && (v5 = objc_msgSend(v4, sel_BOOLeanValue), v4, v5))
  {
    v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in PegasusCacheManager.reset();
    *(v7 + 24) = v0;
    v9[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed () -> ();
    v9[3] = &block_descriptor_6;
    v8 = _Block_copy(v9);

    dispatch_sync(v6, v8);
    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PommesMUXContextManager.reset()()
{
  v1 = (*(*v0 + 144))(v3);
  *v2 = MEMORY[0x277D84F90];

  v1(v3, 0);
}

void closure #1 in AssistantDataCache.updateSnapshot(on:onlyIfNeeded:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  if (a2)
  {
    v9 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2232BB000, v12, v13, "#AssistantData Service helper returned an error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(a1, a5);
  }
}

uint64_t AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v3;
    v42 = partial apply for closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:);
    v43 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_28;
    v15 = _Block_copy(&aBlock);
    v16 = a1;

    static DispatchQoS.unspecified.getter();
    v37 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v11, v8, v15);
    _Block_release(v15);

    (*(v6 + 8))(v8, v5);
    (*(v35 + 8))(v11, v36);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v6;
      v22 = v21;
      v23 = swift_slowAlloc();
      v37 = a1;
      aBlock = v23;
      *v22 = 136315138;
      v24 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v19, v20, "#AssistantData Service helper response was <%s>, not SASetAssistantData. Creating fallback snapshot.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223DE0F80](v23, -1, -1);
      v28 = v22;
      v6 = v33;
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    v29 = swift_allocObject();
    swift_weakInit();
    v42 = partial apply for closure #1 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:);
    v43 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_22_1;
    v30 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v37 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v11, v8, v30);
    _Block_release(v30);
    (*(v6 + 8))(v8, v5);
    (*(v35 + 8))(v11, v36);
  }
}

uint64_t sub_2232C9DF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232C9E28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(unint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 >> 62)
    {
      v39 = v13;
      v31 = __CocoaSet.count.getter();
      v13 = v39;
      if (v31)
      {
LABEL_4:
        v38 = v8;
        v39 = v13;
        v37 = v12;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223DDFF80](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            swift_once();
LABEL_14:
            v26 = type metadata accessor for Logger();
            __swift_project_value_buffer(v26, static Logger.pommes);
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_2232BB000, v27, v28, "#AssistantData SAPerson Me cards likely have genuine data. Skipping Contacts fetch", v29, 2u);
              MEMORY[0x223DE0F80](v29, -1, -1);
            }

            a2(a1, 0);
            v30 = v40;

            return;
          }

          v16 = *(a1 + 32);
        }

        v40 = v16;
        v17 = [v16 internalGUID];
        if (v17)
        {
          v18 = v17;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          if (v19 == 0xD000000000000012 && 0x80000002234E2340 == v21)
          {

LABEL_12:
            v23 = swift_allocObject();
            *(v23 + 24) = *(v3 + 40);
            swift_unknownObjectWeakInit();
            v24 = swift_allocObject();
            v24[2] = v23;
            v24[3] = a2;
            v24[4] = a3;
            aBlock[4] = partial apply for closure #1 in AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:);
            aBlock[5] = v24;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_16_0;
            v25 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v41 = MEMORY[0x277D84F90];
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x223DDFBF0](0, v15, v10, v25);
            _Block_release(v25);

            (*(v38 + 8))(v10, v7);
            (*(v37 + 8))(v15, v39);

            return;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_12;
          }
        }

        if (one-time initialization token for pommes == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.pommes);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2232BB000, v33, v34, "#AssistantData No SAPerson Me cards. Skipping Contacts fetch", v35, 2u);
    MEMORY[0x223DE0F80](v35, -1, -1);
  }

  a2(MEMORY[0x277D84F90], 0);
}

uint64_t sub_2232CA43C()
{
  MEMORY[0x223DE1050](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232CA474()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(a1, a2 & 1, v2 + v6, v8, v9);
}

uint64_t closure #3 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(uint64_t a1, char a2, uint64_t a3, void *a4, _OWORD *a5)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  if (a2)
  {
    *&v21[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a4 setMeCards_];

  specialized AssistantDataSnapshot.init(_:replacementMeCards:)(a4, v23);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "#AssistantData Service helper updating with assistantData", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  swift_beginAccess();
  v15 = a5[6];
  v21[2] = a5[5];
  v21[3] = v15;
  v22[0] = a5[7];
  *(v22 + 10) = *(a5 + 122);
  v16 = a5[4];
  v21[0] = a5[3];
  v21[1] = v16;
  v17 = v23[3];
  v18 = v24[0];
  v19 = v23[1];
  a5[5] = v23[2];
  a5[6] = v17;
  a5[7] = v18;
  *(a5 + 122) = *(v24 + 10);
  a5[3] = v23[0];
  a5[4] = v19;
  return outlined destroy of AssistantDataSnapshot?(v21);
}

void specialized AssistantDataSnapshot.init(_:replacementMeCards:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  v5 = [a1 countryCode];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v8;
  }

  else
  {
    v7 = 0;
    v48 = 0;
  }

  v9 = [a1 mediaContentRatingRestrictions];
  v10 = [a1 uiScale];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 allowUserGeneratedContent];
  if (v14)
  {
    v15 = v14;
    v47 = [v14 BOOLValue];
  }

  else
  {
    v47 = 1;
  }

  v46 = [a1 censorSpeech];
  v16 = [a1 temperatureUnit];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v19;
    v45 = v18;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v21, v22, "#AssistantData Creating snapshot with SAPerson card(s)", v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  v24 = [a1 meCards];
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = v24;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v27 >> 62))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_19:
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_20;
      }

LABEL_32:

      if (v9)
      {
LABEL_29:
        v39 = v9;
        v40 = [v39 movieRestriction];
        v41 = [v39 tvRestriction];

LABEL_34:
        *a3 = 0;
        *(a3 + 8) = v7;
        *(a3 + 16) = v48;
        *(a3 + 24) = v25;
        *(a3 + 32) = v40;
        *(a3 + 40) = v41;
        *(a3 + 48) = v9 == 0;
        *(a3 + 56) = v13;
        *(a3 + 64) = v11 == 0;
        *(a3 + 72) = v45;
        *(a3 + 80) = v44;
        *(a3 + 88) = v47;
        *(a3 + 89) = v46;
        return;
      }

LABEL_33:
      v40 = 0;
      v41 = 0;
      goto LABEL_34;
    }
  }

  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_20:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v42 = v9;
    v43 = v7;
    v29 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x223DDFF80](v29, v27);
      }

      else
      {
        v30 = *(v27 + 8 * v29 + 32);
      }

      specialized AssistantDataSnapshot.MeCard.init(_:)(v30, v49);
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      ++v29;
      *(v25 + 16) = v32 + 1;
      v33 = v25 + 104 * v32;
      v34 = v49[0];
      v35 = v49[2];
      *(v33 + 48) = v49[1];
      *(v33 + 64) = v35;
      *(v33 + 32) = v34;
      v36 = v49[3];
      v37 = v49[4];
      v38 = v49[5];
      *(v33 + 128) = v50;
      *(v33 + 96) = v37;
      *(v33 + 112) = v38;
      *(v33 + 80) = v36;
    }

    while (v28 != v29);

    v7 = v43;
    v9 = v42;
    if (v42)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t outlined destroy of AssistantDataSnapshot?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch13PommesUsoTaskVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardV14ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch21AssistantDataSnapshotV6MeCardV14ContactAddressVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    v10 = MEMORY[0x277D84F90];
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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

void closure #2 in closure #2 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - v3;
  v5 = *a1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136643331;
    v12 = [v7 identifier];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    }

    else
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    }

    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v38);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2085;
    v19 = [v7 internalGUID];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v36 = v21;
    v37 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);

    *(v10 + 14) = v26;
    *(v10 + 22) = 2085;
    v27 = [v7 fullDescription];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v36 = v29;
    v37 = v31;
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v38);

    *(v10 + 24) = v34;
    _os_log_impl(&dword_2232BB000, v8, v9, "#AssistantData Service helper response Me card SAPerson:\nidentifier: %{sensitive}s\ninternal GUID: %{sensitive}s\nfull description: %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in AssistantDataCache.fetchReplacementMeCardsIfNeeded(for:completion:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    a2();

    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "#AssistantData No fallback contact-fetching helper. Skipping Contacts fetch", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return (a2)(MEMORY[0x277D84F90], 0);
  }
}

_OWORD *CNContactStore.fetchMeCards()()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  isa = [v1 descriptorsForRequiredKeys];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v39[0] = 0;
  v3 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v4 = v39[0];
  if (v3)
  {
    v5 = one-time initialization token for pommes;
    v6 = v39[0];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v11 = 136642819;
      v12 = v8;
      v13 = [v12 description];
      v14 = v8;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v15;
      v8 = v14;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v39);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_2232BB000, v9, v10, "Fetched Me card from Contacts: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DE0F80](v37, -1, -1);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    v20 = [v1 createSAPersonFromCNContact_];
    if (v20)
    {
      v21 = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v39[0] = v25;
        *v24 = 136315138;
        v26 = v21;
        v27 = [v26 description];
        v38 = v8;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v39);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_2232BB000, v22, v23, "Converted Me card from Contacts: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x223DE0F80](v25, -1, -1);
        MEMORY[0x223DE0F80](v24, -1, -1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v4 = swift_allocObject();
        v4[1] = xmmword_2234D0FE0;
        *(v4 + 4) = v26;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v4 = swift_allocObject();
        v4[1] = xmmword_2234D0FE0;
        *(v4 + 4) = v21;
      }
    }

    else
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2232BB000, v33, v34, "Unable to convert Me CNContact to SAPerson. Proceeding as if there were no Me contact", v35, 2u);
        MEMORY[0x223DE0F80](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v32 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t specialized AssistantDataSnapshot.MeCard.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = [a1 firstName];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [a1 middleName];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v21;
    v72 = v20;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v22 = [a1 lastName];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v25;
    v70 = v24;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v26 = [a1 nickName];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v29;
    v68 = v28;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v30 = [a1 fullName];
  if (v30)
  {
    v31 = v30;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v32;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  v33 = [a1 addresses];
  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_30;
  }

  v35 = v33;
  v63 = v17;
  v64 = v15;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SALocation, 0x277D47508);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v36 >> 62)
  {
    v37 = __CocoaSet.count.getter();
    if (v37)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_29:

    v15 = v64;
    v17 = v63;
LABEL_30:
    v40 = v73;
    goto LABEL_31;
  }

LABEL_19:
  v74 = v34;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 & ~(v37 >> 63), 0);
  if (v37 < 0)
  {
    __break(1u);
    return result;
  }

  v58 = v12;
  v59 = v7;
  v60 = v5;
  v61 = v4;
  v62 = a1;
  v39 = 0;
  v40 = v73;
  v34 = v74;
  do
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x223DDFF80](v39, v36);
    }

    else
    {
      v41 = *(v36 + 8 * v39 + 32);
    }

    specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(v41, v75);
    v74 = v34;
    v43 = *(v34 + 16);
    v42 = *(v34 + 24);
    if (v43 >= v42 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
      v40 = v73;
      v34 = v74;
    }

    ++v39;
    *(v34 + 16) = v43 + 1;
    v44 = (v34 + 96 * v43);
    v45 = v75[1];
    v44[2] = v75[0];
    v44[3] = v45;
    v46 = v75[2];
    v47 = v75[3];
    v48 = v75[5];
    v44[6] = v75[4];
    v44[7] = v48;
    v44[4] = v46;
    v44[5] = v47;
  }

  while (v37 != v39);

  a1 = v62;
  v4 = v61;
  v5 = v60;
  v7 = v59;
  v15 = v64;
  v17 = v63;
  v12 = v58;
LABEL_31:
  v49 = [a1 identifier];
  if (v49)
  {
    v50 = v49;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v73;
    (*(v5 + 56))(v73, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v40, 1, 1, v4);
  }

  outlined init with take of URL?(v40, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {

    result = outlined destroy of URL?(v12);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v12, v4);
    outlined destroy of URL?(v12);
    v51 = URL.absoluteString.getter();
    v52 = v53;

    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v15;
  a2[1] = v17;
  v54 = v71;
  a2[2] = v72;
  a2[3] = v54;
  v55 = v69;
  a2[4] = v70;
  a2[5] = v55;
  v56 = v67;
  a2[6] = v68;
  a2[7] = v56;
  v57 = v65;
  a2[8] = v66;
  a2[9] = v57;
  a2[10] = v34;
  a2[11] = v51;
  a2[12] = v52;
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *PommesBridge.createRequestProcessor(withRequestId:assistantId:sessionId:isCandidateRequest:rootRequestId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v97 = a8;
  v99 = a7;
  v96 = a6;
  v100 = a4;
  v98 = a3;
  v113 = a2;
  v105 = a1;
  v94 = type metadata accessor for DispatchTimeInterval();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v90[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v90[-v16];
  MEMORY[0x28223BE20](v15);
  v106 = &v90[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v90[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v104 = &v90[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v109 = &v90[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v90[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v90[-v31];
  v33 = *v8;
  v34 = *(*v8 + class metadata base offset for PommesBridge + 72);
  v110 = v8;
  v103 = v33 + class metadata base offset for PommesBridge + 72;
  v102 = v34;
  (v34)(v30);
  v35 = *(v12 + 16);
  v107 = a5;
  v112 = v12 + 16;
  v111 = v35;
  v35(v29, a5, v11);
  (*(v12 + 56))(v29, 0, 1, v11);
  v36 = *(v19 + 56);
  outlined init with copy of MediaUserStateCenter?(v32, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of MediaUserStateCenter?(v29, &v21[v36], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v121 = v12;
  v37 = *(v12 + 48);
  v38 = v37(v21, 1, v11);
  v101 = v37;
  if (v38 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v39 = v37(&v21[v36], 1, v11);
    v40 = v11;
    v41 = v110;
    if (v39 == 1)
    {
      v42 = outlined destroy of MediaUserStateCenter?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  outlined init with copy of MediaUserStateCenter?(v21, v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v37(&v21[v36], 1, v11) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of MediaUserStateCenter?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v121 + 8))(v109, v11);
    v40 = v11;
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v21, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_7:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = v108;
    v111(v108, v107, v40);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v120 = v110;
      *v47 = 136315650;
      v48 = v104;
      v102();
      if (v101(v48, 1, v40))
      {
        outlined destroy of MediaUserStateCenter?(v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v49 = 0xE300000000000000;
        v50 = 7104878;
        v51 = v121;
      }

      else
      {
        v74 = v106;
        v111(v106, v48, v40);
        outlined destroy of MediaUserStateCenter?(v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v75 = UUID.uuidString.getter();
        v49 = v76;
        v51 = v121;
        (*(v121 + 8))(v74, v40);
        v50 = v75;
      }

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v120);

      *(v47 + 4) = v77;
      *(v47 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v78 = v108;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v51 + 8))(v78, v40);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v120);

      *(v47 + 14) = v82;
      *(v47 + 22) = 2080;
      *(v47 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v113, &v120);
      _os_log_impl(&dword_2232BB000, v45, v46, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v47, 0x20u);
      v83 = v110;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v83, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    else
    {

      (*(v121 + 8))(v44, v40);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v84 = 0;
    goto LABEL_25;
  }

  v52 = v106;
  (*(v121 + 32))(v106, &v21[v36], v11);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v53 = v109;
  v91 = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v121 + 8);
  v54(v52, v11);
  outlined destroy of MediaUserStateCenter?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v54(v53, v11);
  v42 = outlined destroy of MediaUserStateCenter?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40 = v11;
  v41 = v110;
  if ((v91 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  (*(*v41 + class metadata base offset for PommesBridge + 96))(&v118, v42);
  if (!v119)
  {
    outlined destroy of MediaUserStateCenter?(&v118, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.pommes);
    v45 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2232BB000, v45, v71, "Unable to find SessionState to pass to RequestProcessor", v72, 2u);
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v73 = 1;
LABEL_25:
    swift_willThrow();
    return v45;
  }

  outlined init with take of DomainWarmupHandling(&v118, &v120);
  v55 = *(v41 + direct field offset for PommesBridge.pommesSearch);
  if (v55)
  {
    v111(v106, v107, v40);

    v110 = MessageDispatchingBridgeBase.name.getter();
    v109 = v56;
    MessageDispatchingBridgeBase.messagePublisher.getter();
    v108 = MessageDispatchingBridgeBase.serviceHelper.getter();
    v57 = outlined init with copy of AppDataProviding(&v120, v117);
    v58 = *(v41 + direct field offset for PommesBridge.instrumentationUtil);
    LODWORD(v107) = (*(*v41 + class metadata base offset for PommesBridge + 120))(v57);
    LODWORD(v104) = (*(*v41 + class metadata base offset for PommesBridge + 144))();
    type metadata accessor for PommesBridgeRequestProcessor(0);
    v59 = swift_allocObject();
    *(v59 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
    v60 = v59 + direct field offset for PommesBridgeRequestProcessor.sessionState;
    *(v60 + 32) = 0;
    *v60 = 0u;
    *(v60 + 16) = 0u;
    v61 = (v59 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
    *v61 = 0;
    v61[1] = 0;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = v55;
    v62 = *(*v55 + 160);

    v62(v114, v63);
    v65 = v115;
    v64 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v66 = (*(v64 + 8))(0, v65, v64);
    v67 = v92;
    static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v66 & 1, v92);
    __swift_destroy_boxed_opaque_existential_1(v114);
    (*(v93 + 32))(v59 + direct field offset for PommesBridgeRequestProcessor.timeout, v67, v94);
    specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
    *(v59 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v68;
    swift_beginAccess();
    outlined assign with copy of ConversationSessionState?(v117, v60);
    swift_endAccess();
    *(v59 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v58;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v107 & 1;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v96 & 1;
    *(v59 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v104 & 1;
    v69 = v106;
    v111(v95, v106, v40);
    outlined init with copy of AppDataProviding(&v118, v114);

    v45 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

    outlined destroy of MediaUserStateCenter?(v117, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v118);
    (*(v121 + 8))(v69, v40);
    __swift_destroy_boxed_opaque_existential_1(&v120);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.pommes);
    v45 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2232BB000, v45, v87, "PommesSearch instance not available - timing error with async bridge setup?", v88, 2u);
      MEMORY[0x223DE0F80](v88, -1, -1);
    }

    lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError();
    swift_allocError();
    *v89 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v120);
  }

  return v45;
}

uint64_t PommesBridge.isMultiUser.getter()
{
  v1 = direct field offset for PommesBridge.isMultiUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesBridge.isOnlyUserInHome.getter()
{
  v1 = direct field offset for PommesBridge.isOnlyUserInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall PommesServerFallbackPreferences.shouldDisableServerFallbackNL(isDomainDirected:)(Swift::Bool isDomainDirected)
{
  v2 = &selRef_shouldDisableServerFallbackDomain;
  if (!isDomainDirected)
  {
    v2 = &selRef_shouldDisableServerFallbackNL;
  }

  return [*(v1 + 16) *v2];
}

uint64_t static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = MEMORY[0x223DDF550](0xD00000000000001BLL, 0x80000002234DE290);
    v8 = [v6 integerForKey_];

    v9 = 5;
    if (a1)
    {
      v9 = 8;
    }

    if (v8)
    {
      v9 = v8;
    }

    v10 = MEMORY[0x277D85178];
    if (!v8)
    {
      v10 = MEMORY[0x277D85188];
    }
  }

  else
  {
    v9 = 5;
    if (a1)
    {
      v9 = 8;
    }

    v10 = MEMORY[0x277D85188];
  }

  *a2 = v9;
  v11 = *v10;
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

void specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234DE1F0);
    [v2 doubleForKey_];
  }
}

uint64_t outlined assign with copy of ConversationSessionState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *PommesBridgeRequestProcessor.handleStartRequestMessage(_:location:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v49[-v3];
  v4 = type metadata accessor for UUID();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v65 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v49[-v7];
  v9 = type metadata accessor for InputOrigin();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
  v14 = RequestMessageBase.requestId.getter();
  (*(*v13 + 336))(v14);

  StartRequestMessageBase.inputOrigin.getter();
  v15 = InputOrigin.aceInputOrigin.getter();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v18 = (v1 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  *v18 = v15;
  v18[1] = v17;

  result = StartRequestMessageBase.optionalRequestContextData.getter();
  if (result)
  {
    v20 = result;
    v21 = MessageBase.assistantId.getter();
    v61 = v22;
    v62 = v21;
    SessionMessageBase.sessionId.getter();
    v23 = RequestMessageBase.requestId.getter();
    v63 = v24;
    v64 = v23;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    (*(v66 + 16))(v65, v8, v67);
    v28 = RequestContextData.audioSource.getter();
    v58 = v29;
    v59 = v28;
    v30 = RequestContextData.audioDestination.getter();
    v56 = v31;
    v57 = v30;
    v32 = RequestContextData.responseMode.getter();
    v54 = v33;
    v55 = v32;
    v52 = RequestContextData.isEyesFree.getter();
    v50 = RequestContextData.isVoiceTriggerEnabled.getter();
    v34 = RequestContextData.isTextToSpeechEnabled.getter();
    v53 = RequestContextData.isTriggerlessFollowup.getter();
    v51 = RequestContextData.bargeInModes.getter();
    v35 = v68;
    RequestContextData.approximatePreviousTTSInterval.getter();
    v60 = RequestContextData.deviceRestrictions.getter();
    v36 = RequestContextData.suggestionRequestType.getter();
    v38 = v37;
    (*(v25 + 8))(v8, v27);
    type metadata accessor for PommesRequestContext(0);
    v39 = swift_allocObject();
    v40 = v61;
    *(v39 + 16) = v62;
    *(v39 + 24) = v40;
    (*(v25 + 32))(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v26, v27);
    v41 = (v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v42 = v63;
    *v41 = v64;
    v41[1] = v42;
    v43 = (v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    v44 = v58;
    *v43 = v59;
    v43[1] = v44;
    v45 = (v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    v46 = v56;
    *v45 = v57;
    v45[1] = v46;
    v47 = (v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    v48 = v54;
    *v47 = v55;
    v47[1] = v48;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v52 & 1;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v50 & 1;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v34 & 1;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v53 & 1;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v51;
    outlined init with take of PommesSearchReason?(v35, v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v60;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = (v36 == 1) & ~v38;
    PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(v39);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
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
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v32 = *(matched - 8);
  v33 = matched;
  MEMORY[0x28223BE20](matched);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      outlined init with copy of PommesSearchRequest.ParseState(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      Hasher.init(_seed:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of PerformanceUtil.Ticket(v5, *(v8 + 48) + v16 * v21, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for VideoCategory();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - v10;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v36 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v40 = (v4 + 48);
    v41 = v11;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v44 = *(v43 + 72);
      v26 = v45;
      outlined init with copy of MediaUserStateCenter?(v25 + v44 * (v22 | (v14 << 6)), v45, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v26, v9, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v27 = v42;
      if ((*v40)(v9, 1, v42) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v39;
        (*v38)(v39, v9, v27);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
        dispatch thunk of Hashable.hash(into:)();
        (*v37)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v11 = v41;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = outlined init with take of PommesSearchReason?(v45, *(v13 + 48) + v21 * v44, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for StringSearchScope();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - v10;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v36 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v40 = (v4 + 48);
    v41 = v11;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v44 = *(v43 + 72);
      v26 = v45;
      outlined init with copy of MediaUserStateCenter?(v25 + v44 * (v22 | (v14 << 6)), v45, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v26, v9, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v27 = v42;
      if ((*v40)(v9, 1, v42) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v39;
        (*v38)(v39, v9, v27);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
        dispatch thunk of Hashable.hash(into:)();
        (*v37)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v11 = v41;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = outlined init with take of PommesSearchReason?(v45, *(v13 + 48) + v21 * v44, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  v3 = v2;
  isa = location.value.super.isa;
  v40 = requestId;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  if (isa)
  {
    v11 = one-time initialization token for pommes;
    v12 = isa;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134283777;
      [(objc_class *)v14 coordinate];
      *(v17 + 4) = v18;
      *(v17 + 12) = 2049;
      [(objc_class *)v14 coordinate];
      *(v17 + 14) = v19;
      _os_log_impl(&dword_2232BB000, v15, v16, "Received location: (%{private}f, %{private}f) from startSpeechRequest", v17, 0x16u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

    v20 = v3[15];
    v21 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v20);
    (*(v21 + 16))(v14, v20, v21);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pommes);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2232BB000, v23, v24, "Fetching location", v25, 2u);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  Date.init()();
  v26 = &v10[v5[5]];
  *v26 = "SiriInformationSearch/PegasusProxy.swift";
  *(v26 + 1) = 40;
  v26[16] = 2;
  *&v10[v5[6]] = 371;
  v27 = &v10[v5[7]];
  *v27 = "prepareForSearchAtRequestStart(requestId:location:)";
  *(v27 + 1) = 51;
  v27[16] = 2;
  v28 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024, 0x80000002234E06F0);
  v29 = &v10[v5[8]];
  *v29 = v28;
  v29[1] = v30;
  v31 = v3[15];
  v32 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v31);
  (*(v32 + 8))(v31, v32);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v33 = *(*static PerformanceUtil.shared + 184);
  v33(v10, 0);
  Date.init()();
  v34 = &v8[v5[5]];
  *v34 = "SiriInformationSearch/PegasusProxy.swift";
  *(v34 + 1) = 40;
  v34[16] = 2;
  *&v8[v5[6]] = 375;
  v35 = &v8[v5[7]];
  *v35 = "prepareForSearchAtRequestStart(requestId:location:)";
  *(v35 + 1) = 51;
  v35[16] = 2;
  v36 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000048, 0x80000002234E0790);
  v37 = &v8[v5[8]];
  *v37 = v36;
  v37[1] = v38;
  v39 = (*(*v3 + 368))();
  if (v39)
  {
    (*(*v39 + 128))(v40._countAndFlagsBits, v40._object, destructiveProjectEnumData for SearchError, 0);
  }

  v33(v8, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v8, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v10, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t AssistantLocationProvider.fetchLocation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  MEMORY[0x223DDF970](v2);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in AssistantLocationProvider.fetchLocation(), v6);
}

uint64_t sub_2232CE750()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v25);
    _os_log_impl(&dword_2232BB000, v11, v12, "Fetching isUserOnPhoneCall status for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v17 = *(v5 + 40);
  *(v5 + 40) = 0;

  outlined consume of PommesPhoneCallStateManager.Status(v15, v16, v17);
  v18 = *(v5 + 16);
  if ([v18 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v20;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = v5;
    v21[5] = a3;
    v21[6] = a4;

    isa = Set._bridgeToObjectiveC()().super.isa;
    v23 = MEMORY[0x223DDF550](a1, a2);
    v25[4] = partial apply for closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:);
    v25[5] = v21;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v25[3] = &block_descriptor_22;
    v24 = _Block_copy(v25);

    [v18 fetchContextsForKeys:isa forRequestID:v23 includesNearbyDevices:0 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_2232CEAF4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in AssistantLocationProvider.fetchLocation()(a1, v4, v5, v6);
}

uint64_t outlined consume of PommesPhoneCallStateManager.Status(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[276] = a4;
  v4[275] = a1;
  v4[277] = type metadata accessor for LocationStatus(0);
  v4[278] = swift_task_alloc();
  v4[279] = swift_task_alloc();
  v4[280] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t type metadata accessor for LocationStatus(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationStatus;
  if (!type metadata singleton initialization cache for LocationStatus)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()()
{
  v1 = (*(**(v0 + 2208) + 128))();
  *(v0 + 2248) = v1;
  if (!v1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "self.serviceHelper is nil. Cannot fetch location.", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    v16 = *(v0 + 2200);

    *v16 = 0;
    goto LABEL_14;
  }

  (*(**(v0 + 2208) + 208))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 2232);
    outlined init with copy of LocationStatus(*(v0 + 2240), v2);
    v3 = *(v2 + 8);
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    if (v3 == 1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.pommes);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2232BB000, v6, v7, "Setting self.status is already pending. Ignoring location fetch.", v8, 2u);
        MEMORY[0x223DE0F80](v8, -1, -1);
      }

      v9 = *(v0 + 2240);
      v10 = *(v0 + 2200);
      swift_unknownObjectRelease();

      *v10 = 0;
      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 8))(v2 + v4, v11);
      outlined destroy of LocationStatus(v9);
LABEL_14:

      v17 = *(v0 + 8);

      return v17();
    }

    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 8))(v2 + v4, v19);
  }

  v20 = *(v0 + 2224);
  v21 = *(v0 + 2208);
  outlined destroy of LocationStatus(*(v0 + 2240));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR);
  *v20 = 0;
  *(v20 + 8) = 1;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  v22 = *(*v21 + 216);
  v23 = *v21 + 216;
  *(v0 + 2256) = v22;
  *(v0 + 2264) = v23 & 0xFFFFFFFFFFFFLL | 0xFED9000000000000;
  v22(v20);
  swift_getObjectType();
  v24 = swift_task_alloc();
  *(v0 + 2272) = v24;
  *v24 = v0;
  v24[1] = closure #1 in AssistantLocationProvider.fetchLocation();

  return AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()();
}

{
  v1 = v0[287];
  if (v1 <= 2)
  {
    if ((v1 - 1) < 2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "Setting status to .unavailable because authorization style is .restricted or .denied", v5, 2u);
LABEL_29:
      MEMORY[0x223DE0F80](v5, -1, -1);
LABEL_30:
      v25 = v0[282];
      v26 = v0[278];
      v27 = v0[275];

      swift_storeEnumTagMultiPayload();
      v25(v26);
      swift_unknownObjectRelease();
      *v27 = 0;

      v28 = v0[1];

      return v28();
    }

    if (!v1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v20))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v20, "Setting status to .siriLocationDisabled because authorization style is .undetermined", v5, 2u);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ((v1 - 3) >= 2)
  {
    if (v1 == 5)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v22))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v22, "Setting status to .locationDisabled because authorization style is .serviceDisabled", v5, 2u);
      goto LABEL_29;
    }

LABEL_25:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v24))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v24, "Setting status to .unknown because we encountered an unhandled authorization style", v5, 2u);
    goto LABEL_29;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[288] = __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2232BB000, v7, v8, "Getting currentLocation from serviceHelper", v9, 2u);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v10 = v0[285];
  v11 = v0[281];

  v12 = specialized closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(v10);
  v13 = [objc_allocWithZone(MEMORY[0x277CEF2E0]) init];
  v0[289] = v13;
  [v13 setStyle_];
  [v13 setTimeout_];
  [v13 setDesiredAccuracy_];
  v14 = swift_allocObject();
  v0[290] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  swift_unknownObjectRetain();
  v15 = v13;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  swift_asyncLet_begin();
  v16 = [objc_allocWithZone(MEMORY[0x277CEF2E0]) init];
  v0[291] = v16;
  [v16 setStyle_];
  [v16 setTimeout_];
  [v16 setDesiredAccuracy_];
  v17 = swift_allocObject();
  v0[292] = v17;
  *(v17 + 16) = v11;
  *(v17 + 24) = v16;
  swift_unknownObjectRetain();
  v18 = v16;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 82, v0 + 274, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 178);
}

{
  *(v1 + 2344) = v0;
  if (v0)
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 2192);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "Setting status to .available after fast location fetch", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = *(v0 + 2280);
  v6 = *(v0 + 2256);
  v7 = *(v0 + 2224);

  *v7 = v1;
  *(v7 + 8) = v5;
  *(v7 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v6(v7);

  return MEMORY[0x282200930](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1664);
}

{
  v1 = *(v0 + 1464);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "Setting status to .available after slow location fetch", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = *(v0 + 2280);
  v6 = *(v0 + 2256);
  v7 = *(v0 + 2224);

  *v7 = v1;
  *(v7 + 8) = v5;
  *(v7 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v6(v7);

  **(v0 + 2200) = 1;

  return MEMORY[0x282200920](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2000);
}

{
  *(v1 + 2352) = v0;
  if (v0)
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2048);
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "Setting status to .unknown service helper does not implement the authorization fetching method", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[286];
  v6 = v0[282];
  v7 = v0[278];
  v8 = v0[275];

  swift_storeEnumTagMultiPayload();
  v6(v7);

  swift_unknownObjectRelease();
  *v8 = 0;

  v9 = v0[1];

  return v9();
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1296);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1520);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1616);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1760);
}

{
  v72 = v0;
  v1 = *(v0 + 2344);
  *(v0 + 2184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 2344);
  if (v3)
  {

    v5 = *(v0 + 2136);
    *(v0 + 1848) = v5;
    lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    v6 = *(v0 + 1896);
    if (v6 != 3)
    {
      if (v6 == 9)
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_2232BB000, v43, v44, "Setting status to .locationDisable with locationServiceDisabled error", v45, 2u);
          MEMORY[0x223DE0F80](v45, -1, -1);
        }

        v46 = *(v0 + 2256);
        v47 = *(v0 + 2224);
        v48 = *(v0 + 2200);

        swift_storeEnumTagMultiPayload();
        v46(v47);

        *v48 = 0;
        v13 = closure #1 in AssistantLocationProvider.fetchLocation();
        v14 = v0 + 16;
        v15 = v0 + 1464;
        v16 = v0 + 1568;
      }

      else if (v6 == 5)
      {
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_2232BB000, v7, v8, "Setting status to .siriLocationDisabled with unauthorizedToFetchLocation error", v9, 2u);
          MEMORY[0x223DE0F80](v9, -1, -1);
        }

        v10 = *(v0 + 2256);
        v11 = *(v0 + 2224);
        v12 = *(v0 + 2200);

        swift_storeEnumTagMultiPayload();
        v10(v11);

        *v12 = 0;
        v13 = closure #1 in AssistantLocationProvider.fetchLocation();
        v14 = v0 + 16;
        v15 = v0 + 1464;
        v16 = v0 + 1472;
      }

      else
      {
        v59 = v5;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v71 = v63;
          *v62 = 136315138;
          *(v0 + 1992) = v59;
          lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
          v64 = Error.localizedDescription.getter();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v71);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_2232BB000, v60, v61, "Setting status to .unavailable with error %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x223DE0F80](v63, -1, -1);
          MEMORY[0x223DE0F80](v62, -1, -1);
        }

        v67 = *(v0 + 2256);
        v68 = *(v0 + 2224);
        v69 = *(v0 + 2200);
        swift_storeEnumTagMultiPayload();
        v67(v68);

        *v69 = 0;
        v13 = closure #1 in AssistantLocationProvider.fetchLocation();
        v14 = v0 + 16;
        v15 = v0 + 1464;
        v16 = v0 + 1712;
      }

LABEL_27:

      return MEMORY[0x282200920](v14, v15, v13, v16);
    }

    v49 = v5;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136315138;
      *(v0 + 2040) = v49;
      lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
      v54 = Error.localizedDescription.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v71);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2232BB000, v50, v51, "Setting status to .unavailable with error %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x223DE0F80](v53, -1, -1);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

    v57 = *(v0 + 2256);
    v58 = *(v0 + 2224);
    swift_storeEnumTagMultiPayload();
    v57(v58);

    v42 = *(v0 + 2184);
  }

  else
  {

    *(v0 + 2088) = v4;
    v17 = v4;
    v18 = swift_dynamicCast();
    v19 = *(v0 + 2344);
    if (v18)
    {

      v20 = *(v0 + 2363);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v71 = v24;
        *v23 = 136446210;
        *(v0 + 2362) = v20;
        lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
        v25 = Error.localizedDescription.getter();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v71);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_2232BB000, v21, v22, "Setting status to .unknown service helper does not implement the location fetching method. Error: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x223DE0F80](v24, -1, -1);
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      v28 = *(v0 + 2256);
      v29 = *(v0 + 2224);
      v30 = *(v0 + 2200);
      swift_storeEnumTagMultiPayload();
      v28(v29);
      *v30 = 0;

      v13 = closure #1 in AssistantLocationProvider.fetchLocation();
      v14 = v0 + 16;
      v15 = v0 + 1464;
      v16 = v0 + 1808;
      goto LABEL_27;
    }

    v31 = v19;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v71 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v71);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "Setting status to .unavailable with error %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    v39 = *(v0 + 2344);
    v40 = *(v0 + 2256);
    v41 = *(v0 + 2224);
    swift_storeEnumTagMultiPayload();
    v40(v41);
    v42 = v39;
  }

  return MEMORY[0x282200930](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1664);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1952);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2144);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1904);
}

{
  v52 = v0;
  v1 = (v0 + 1944);
  v2 = *(v0 + 2352);
  *(v0 + 1944) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 2352);
  if (v4)
  {
    v6 = *(v0 + 2344);

    v7 = *(v0 + 1800);
    if (v6)
    {
      *(v0 + 1512) = v7;
      lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
      _BridgedStoredNSError.code.getter();
      v8 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v51 = v12;
        *v11 = 136315138;
        *(v0 + 1656) = v8;
        lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
        v13 = Error.localizedDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v51);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_2232BB000, v9, v10, "Setting status to .unavailable with error %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x223DE0F80](v12, -1, -1);
        MEMORY[0x223DE0F80](v11, -1, -1);
      }

      v16 = *(v0 + 2256);
      v17 = *(v0 + 2224);
      v18 = *(v0 + 2200);
      swift_storeEnumTagMultiPayload();
      v16(v17);

      *v18 = 0;
      v19 = closure #1 in AssistantLocationProvider.fetchLocation();
      v20 = v0 + 16;
      v21 = v0 + 1464;
      v22 = v0 + 1360;
      goto LABEL_17;
    }

    v49 = *v1;
LABEL_16:

    **(v0 + 2200) = 1;
    v19 = closure #1 in AssistantLocationProvider.fetchLocation();
    v20 = v0 + 16;
    v21 = v0 + 1464;
    v22 = v0 + 2000;
    goto LABEL_17;
  }

  *(v0 + 1752) = v5;
  v23 = v5;
  if (swift_dynamicCast())
  {

    v24 = *(v0 + 2361);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v27 = 136446210;
      *(v0 + 2360) = v24;
      lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
      v29 = Error.localizedDescription.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v51);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "Setting status to .unknown service helper does not implement the location fetching method. Error: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    v32 = *(v0 + 2256);
    v33 = *(v0 + 2224);
    v34 = *(v0 + 2200);
    swift_storeEnumTagMultiPayload();
    v32(v33);
    *v34 = 0;

    v19 = closure #1 in AssistantLocationProvider.fetchLocation();
    v20 = v0 + 16;
    v21 = v0 + 1464;
    v22 = v0 + 2096;
  }

  else
  {
    v35 = *(v0 + 2344);

    v36 = *(v0 + 2352);
    if (!v35)
    {
      v49 = *(v0 + 2352);
      goto LABEL_16;
    }

    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v51);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2232BB000, v38, v39, "Setting status to .unavailable with error %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223DE0F80](v41, -1, -1);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    v45 = *(v0 + 2352);
    v46 = *(v0 + 2256);
    v47 = *(v0 + 2224);
    v48 = *(v0 + 2200);
    swift_storeEnumTagMultiPayload();
    v46(v47);

    *v48 = 0;
    v19 = closure #1 in AssistantLocationProvider.fetchLocation();
    v20 = v0 + 16;
    v21 = v0 + 1464;
    v22 = v0 + 1856;
  }

LABEL_17:

  return MEMORY[0x282200920](v20, v21, v19, v22);
}