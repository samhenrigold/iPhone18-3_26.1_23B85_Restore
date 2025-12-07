Swift::Void __swiftcall PegasusCacheManager.prepare()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) != 0 || (v9 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient), v10 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361), v11 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430), v12 = [v9 levelForFactor:v10 withNamespaceName:v11], v10, v11, v12) && (v13 = objc_msgSend(v12, sel_BOOLeanValue), v12, v13))
  {
    v18 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in PegasusCacheManager.prepare();
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_4;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v19 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v17;
    MEMORY[0x223DDFBF0](0, v8, v4, v17);
    _Block_release(v15);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v16);
  }
}

uint64_t sub_2232CF6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void AssistantLocationProvider.status.getter()
{
  v1 = *(v0 + 24);
  type metadata accessor for LocationStatus(0);
  v2 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t outlined init with copy of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status;
  swift_beginAccess();
  return outlined init with copy of LocationStatus(v1 + v3, a1);
}

{
  return partial apply for closure #1 in AssistantLocationProvider.status.getter(a1);
}

uint64_t outlined destroy of LocationStatus(uint64_t a1)
{
  v2 = type metadata accessor for LocationStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantLocationProvider.status.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  v7 = type metadata accessor for LocationStatus(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v1 + 24);
  outlined init with copy of LocationStatus(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  outlined init with take of LocationStatus(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in AssistantLocationProvider.status.setter;
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  dispatch_sync(v15, v14);

  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of LocationStatus(a1, v6);
    swift_storeEnumTagMultiPayload();
    PassthroughSubject.send(_:)();
    outlined destroy of LocationStatus(a1);
    outlined destroy of MediaUserStateCenter?(v6, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  }

  return result;
}

uint64_t sub_2232CFB78()
{
  v1 = *(type metadata accessor for LocationStatus(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t type metadata accessor for PommesRequestContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesRequestContext;
  if (!type metadata singleton initialization cache for PommesRequestContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PommesSearchReason?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.status.setter()
{
  v1 = *(type metadata accessor for LocationStatus(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in AssistantLocationProvider.status.setter(v2, v3);
}

uint64_t PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(uint64_t a1)
{
  v2 = v1;
  v24 = type metadata accessor for PommesCandidateId();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = a1;

  v11 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v10);
  v12 = (*(*v11 + 120))(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v4;
    v15 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464);
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22[1] = v12;
    v17 = v7;
    v18 = v12 + v16;
    v19 = *(v17 + 72);
    v20 = (v14 + 8);
    do
    {
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v18, v9, type metadata accessor for PommesBridgeResultCandidateState);
      if (v15(v9))
      {
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v6);
        (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v6, &v9[*(v23 + 20)]);
        (*v20)(v6, v24);
      }

      outlined destroy of NLXResultCandidate(v9, type metadata accessor for PommesBridgeResultCandidateState);
      v18 += v19;
      --v13;
    }

    while (v13);
  }
}

uint64_t closure #1 in AssistantLocationProvider.status.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(a2, v6);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status;
  swift_beginAccess();
  outlined assign with take of LocationStatus(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t outlined assign with take of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), 0, 0);
}

{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v1 = *(v0 + 32);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v0 + 40) = v4;
    *(v4 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ();
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ();
    *(v5 + 24) = v4;
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28AFLocationAuthorizationStyleV_So010CLAccuracyB0VtMd, &_sSo28AFLocationAuthorizationStyleV_So010CLAccuracyB0VtMR);
    *v6 = v0;
    v6[1] = AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync();

    return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000020, 0x80000002234DF6C0, partial apply for closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), v5, v7);
  }

  else
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

{

  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), 0, 0);
}

{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2232D0558()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D0590()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ()(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ();
  v6[3] = &block_descriptor_83;
  v4 = _Block_copy(v6);

  a3(v4);
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t PommesBridgeRequestProcessor.pommesStateHolder.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder;
  if (*(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder))
  {
    v2 = *(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);
  }

  else
  {
    v3 = v0;
    type metadata accessor for PommesStateHolder();
    v2 = swift_allocObject();
    PommesStateHolder.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PommesStateHolder.init()()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10[0] = ", speechPackage: ";
  v10[1] = v6;
  static DispatchQoS.userInitiated.getter();
  v12 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v11);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = MEMORY[0x277D84F98];
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  return v0;
}

uint64_t lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_60Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t PommesStateHolder.states.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch32PommesBridgeResultCandidateStateVGMd, &_sSay21SiriInformationSearch32PommesBridgeResultCandidateStateVGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t closure #1 in PommesStateHolder.states.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMd, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMR);
  v5 = MEMORY[0x28223BE20](v57);
  v56 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = v47 - v8;
  MEMORY[0x28223BE20](v7);
  v54 = v47 - v9;
  v10 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v15 = *(a1 + 24);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v47[0] = a2;
    v47[1] = v2;
    v64 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v64;
    v18 = v15 + 64;
    result = _HashTable.startBucket.getter();
    v19 = result;
    v20 = 0;
    v48 = v15 + 72;
    v49 = v16;
    v52 = v15 + 64;
    v53 = v13;
    v50 = v11;
    v51 = v15;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v15 + 32))
    {
      if ((*(v18 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_22;
      }

      v60 = 1 << v19;
      v61 = v19 >> 6;
      v22 = *(v15 + 36);
      v58 = v20;
      v59 = v22;
      v23 = v57;
      v24 = *(v57 + 48);
      v25 = *(v15 + 48);
      v26 = type metadata accessor for PommesCandidateId();
      v27 = *(v26 - 8);
      v28 = v27;
      v29 = v25 + *(v27 + 72) * v19;
      v30 = *(v27 + 16);
      v63 = v17;
      v31 = v54;
      v30(v54, v29, v26);
      v32 = *(v15 + 56);
      v62 = *(v11 + 72);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v32 + v62 * v19, &v31[v24], type metadata accessor for PommesBridgeResultCandidateState);
      v33 = v55;
      (*(v28 + 32))(v55, v31, v26);
      v34 = &v31[v24];
      v17 = v63;
      outlined init with take of NLXResultCandidate(v34, v33 + *(v23 + 48), type metadata accessor for PommesBridgeResultCandidateState);
      v35 = v56;
      outlined init with take of PommesSearchReason?(v33, v56, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMd, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMR);
      v36 = *(v23 + 48);
      v37 = v53;
      outlined init with take of NLXResultCandidate(v35 + v36, v53, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v28 + 8))(v35, v26);
      v64 = v17;
      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v17 = v64;
      }

      *(v17 + 16) = v39 + 1;
      v11 = v50;
      result = outlined init with take of NLXResultCandidate(v37, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v39 * v62, type metadata accessor for PommesBridgeResultCandidateState);
      v15 = v51;
      v18 = v52;
      v21 = 1 << *(v51 + 32);
      if (v19 >= v21)
      {
        goto LABEL_23;
      }

      v40 = *(v52 + 8 * v61);
      if ((v40 & v60) == 0)
      {
        goto LABEL_24;
      }

      if (v59 != *(v51 + 36))
      {
        goto LABEL_25;
      }

      v41 = v40 & (-2 << (v19 & 0x3F));
      if (v41)
      {
        v21 = __clz(__rbit64(v41)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v61 << 6;
        v43 = v61 + 1;
        v44 = (v48 + 8 * v61);
        while (v43 < (v21 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v19, v59, 0);
            v21 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v19, v59, 0);
      }

LABEL_4:
      v20 = v58 + 1;
      v19 = v21;
      if (v58 + 1 == v49)
      {

        a2 = v47[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a2 = v17;
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[285] = a2;
  v5[286] = v2;

  if (v2)
  {
    v6 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v5[287] = a1;
    v6 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for AFServiceDeviceContext();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

uint64_t closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223DDFF80](0, a1);
  }

  else
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(a1 + 32);
  }

  v13 = v12;
  v14 = [v12 serializedContextByKey];

  if (v14)
  {
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v15 + 16))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v20 = v19;

      if (v20)
      {
        outlined init with copy of Any(*(v15 + 56) + 32 * v18, v33);

        v21 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        v22 = [v21 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v22 callState])
        {
          __swift_destroy_boxed_opaque_existential_1(v33);

          v14 = 1;
        }

        else
        {
          v23 = [v22 callState];

          __swift_destroy_boxed_opaque_existential_1(v33);
          v14 = (v23 >> 3) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
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
    v33[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = v14;
    *(v27 + 8) = 2080;
    *(v27 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v33);
    _os_log_impl(&dword_2232BB000, v25, v26, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  if (v14)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(a4 + 24);
  v31 = *(a4 + 32);
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v32 = *(a4 + 40);
  *(a4 + 40) = v29;

  outlined consume of PommesPhoneCallStateManager.Status(v30, v31, v32);
  return a5(v14);
}

double specialized closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  if (a1 != 1)
  {
    if (!a1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.pommes);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        v5 = MEMORY[0x277CE4228];
        goto LABEL_19;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "Fetching location with 100 meters accuracy", v4, 2u);
      v5 = MEMORY[0x277CE4228];
      goto LABEL_16;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Encountered unknown accuracyAuthorization. Fetching location with reduced accuracy.";
      goto LABEL_15;
    }

LABEL_17:
    v5 = MEMORY[0x277CE4258];
    goto LABEL_19;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v2, v7))
  {
    goto LABEL_17;
  }

  v4 = swift_slowAlloc();
  *v4 = 0;
  v8 = "Fetching location with reduced accuracy";
LABEL_15:
  _os_log_impl(&dword_2232BB000, v2, v7, v8, v4, 2u);
  v5 = MEMORY[0x277CE4258];
LABEL_16:
  MEMORY[0x223DE0F80](v4, -1, -1);
LABEL_19:

  return *v5;
}

uint64_t partial apply for implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(a1, v5, v4);
}

uint64_t implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_getObjectType();
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation();

  return AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a3);
}

uint64_t AFRequestDispatcherServiceHelper.currentLocationAsync(with:)()
{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v0 + 40) = v5;
    *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned AFLocationFetchRequest?, @unowned (@escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> ())?) -> ();
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    v6[2] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AFLocationFetchRequest?, @guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed CLLocation?, @guaranteed Error?) -> ())?) -> ();
    v6[3] = v5;
    v6[4] = v2;
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    v8 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    *v7 = v0;
    v7[1] = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000002234DF670, partial apply for closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:), v6, v8);
  }

  else
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);
  }

  else
  {

    v2 = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentLocationAsync(with:), 0, 0);
}

uint64_t closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  a2(a4, partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:), v12);
}

void thunk for @escaping @callee_guaranteed (@unowned AFLocationFetchRequest?, @unowned (@escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> ())?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v7[3] = &block_descriptor_64;
    v5 = a1;
    v6 = _Block_copy(v7);

    a1 = v5;
  }

  else
  {
    v6 = 0;
  }

  a4(a1, v6);
  _Block_release(v6);
}

uint64_t partial apply for implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(a1, v5, v4);
}

uint64_t implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_getObjectType();
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a3);
}

uint64_t closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v5 = 1;
    goto LABEL_3;
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);

  return closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a1, a2);
}

uint64_t implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
  }
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PommesBridgeRequestProcessor.handleEndRequest(_:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesBridgeRequestProcessor received end message", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 104);

  return v6(1);
}

uint64_t PommesBridgeRequestProcessor.isRequestFinished.setter(char a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.isRequestFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesBridgeRequestProcessor.__deallocating_deinit()
{
  v0 = RequestProcessorBase.deinit();

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);

  v1 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PommesStateHolder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PommesRequestContext.__deallocating_deinit()
{
  PommesRequestContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t PommesRequestContext.deinit()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);

  return v0;
}

void *_sSo27AFUserIdentityClassficationVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo29ICSubscriptionStatusOfferTypeaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2232D3A14()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v53 = *(v1 + 80);
  v2 = (v53 + 16) & ~v53;
  v3 = *(v1 + 64);
  v4 = (type metadata accessor for SignpostToken(0) - 8);
  v52 = *(*v4 + 80);
  v5 = (v2 + v3 + v52) & ~v52;
  v6 = *(*v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR) - 8);
  v51 = *(v7 + 80);
  v8 = (v5 + v6 + v51) & ~v51;
  v46 = (((((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = type metadata accessor for PommesCandidateId();
  v9 = *(v47 - 8);
  v49 = *(v9 + 80);
  v10 = (v49 + v46 + 16) & ~v49;
  v11 = *(v9 + 64);
  v12 = type metadata accessor for PommesSearchRequest(0);
  v48 = *(*(v12 - 1) + 80);
  v13 = (v10 + v11 + v48) & ~v48;
  v50 = *(*(v12 - 1) + 64);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v0 + v2, v14);

  v15 = v0 + v5;
  v16 = v0;
  v17 = v4[7];
  v18 = type metadata accessor for OSSignpostID();
  (*(*(v18 - 8) + 8))(v15 + v17, v18);

  v19 = type metadata accessor for PommesSearchReason();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v8, 1, v19))
  {
    (*(v20 + 8))(v0 + v8, v19);
  }

  (*(v9 + 8))(v0 + v10, v47);
  v21 = v0 + v13;
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);
    v31 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v21 + v30, 1, v31))
    {
      (*(v32 + 8))(v21 + v30, v31);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_14;
    }

    v23 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    v24 = *(type metadata accessor for NLXResultCandidate(0) + 20);
    v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    goto LABEL_13;
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v28 = type metadata accessor for TCUMappedNLResponse();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v21 + v27, 1, v28))
  {
    (*(v29 + 8))(v21 + v27, v28);
  }

LABEL_14:

  v33 = v12[6];
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v21 + v33, 1, v34))
  {
    (*(v35 + 8))(v21 + v33, v34);
  }

  v36 = v12[10];
  v37 = type metadata accessor for PommesContext();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v21 + v36, 1, v37))
  {
    (*(v38 + 8))(v21 + v36, v37);
  }

  v39 = v12[11];
  v40 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v21 + v39, 1, v40))
  {
    (*(v41 + 8))(v21 + v39, v40);
  }

  v42 = v12[14];
  v43 = type metadata accessor for InputOrigin();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v21 + v42, 1, v43))
  {
    (*(v44 + 8))(v21 + v42, v43);
  }

  return MEMORY[0x2821FE8E8](v16, v13 + v50, v53 | v52 | v49 | v51 | v48 | 7);
}

uint64_t sub_2232D4290()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2232D42C8()
{

  outlined consume of Result<PommesResponse, Error>(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2232D43AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D43FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_2232D4440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D4490(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PommesSearchReason();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2232D453C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PommesSearchReason();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232D45E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2232D464C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2232D46BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D4700()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D4738()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D4810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D485C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_2232D48B0()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232D4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2232D4B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232D4C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2232D4CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232D4D94()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v36 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for PommesCandidateId();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  swift_unknownObjectRelease();

  v35 = (v36 + 56) & ~v36;
  v6 = v0 + v35;
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v33 = v5;

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);
    v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v6 + v15, 1, v16))
    {
      (*(v17 + 8))(v6 + v15, v16);
    }

LABEL_12:
    v5 = v33;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_13;
    }

    v32 = v2;
    v33 = v5;

    v8 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    v9 = *(type metadata accessor for NLXResultCandidate(0) + 20);
    v10 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v8 + v9, 1, v10))
    {
      (*(v11 + 8))(v8 + v9, v10);
    }

    v2 = v32;
    goto LABEL_12;
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v13 = type metadata accessor for TCUMappedNLResponse();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

LABEL_13:

  v18 = v1[6];
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v6 + v18, 1, v19))
  {
    (*(v20 + 8))(v6 + v18, v19);
  }

  v21 = v1[10];
  v22 = type metadata accessor for PommesContext();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v6 + v21, 1, v22))
  {
    (*(v23 + 8))(v6 + v21, v22);
  }

  v24 = v1[11];
  v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v6 + v24, 1, v25))
  {
    (*(v26 + 8))(v6 + v24, v25);
  }

  v27 = v1[14];
  v28 = type metadata accessor for InputOrigin();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v6 + v27, 1, v28))
  {
    (*(v29 + 8))(v6 + v27, v28);
  }

  v30 = (v35 + v34 + v4) & ~v4;

  (*(v3 + 8))(v0 + v30, v2);

  return MEMORY[0x2821FE8E8](v0, v30 + v5, v36 | v4 | 7);
}

uint64_t sub_2232D53AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D53E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232D54A4()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v5 = (v3 + 80) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2232D5580()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v5 = (v3 + 72) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2232D5654()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2232D56AC()
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

uint64_t sub_2232D57BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D5804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2232D58B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232D5954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2232D5A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2232D5B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5B78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5BB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D5C40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D5D90(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_2232D5DE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D5E2C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D5E7C()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = v4;

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);
      v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v5 + v15, 1, v16))
      {
        (*(v17 + 8))(v5 + v15, v16);
      }

      v4 = v14;
      break;
    case 1:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
      v12 = type metadata accessor for TCUMappedNLResponse();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v5 + v11, 1, v12))
      {
        (*(v13 + 8))(v5 + v11, v12);
      }

      break;
    case 0:
      v31 = v4;

      v7 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

      v8 = *(type metadata accessor for NLXResultCandidate(0) + 20);
      v9 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v7 + v8, 1, v9))
      {
        (*(v10 + 8))(v7 + v8, v9);
      }

      v4 = v31;
      break;
  }

  v18 = v1[6];
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v5 + v18, 1, v19))
  {
    (*(v20 + 8))(v5 + v18, v19);
  }

  v21 = v1[10];
  v22 = type metadata accessor for PommesContext();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v5 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = v1[11];
  v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  v27 = v1[14];
  v28 = type metadata accessor for InputOrigin();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v5 + v27, 1, v28))
  {
    (*(v29 + 8))(v5 + v27, v28);
  }

  return MEMORY[0x2821FE8E8](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2232D6428()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v2 | 7);
}

uint64_t sub_2232D655C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v2 | 7);
}

uint64_t sub_2232D6690()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2232D66D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_2232D67D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2232D6824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D6874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D6914@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D69D4()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D6A14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2232D6A54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6A8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6AC4()
{
  v1 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for SignpostToken(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v2 | v6;
  v9 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);

  v11 = v5[7];
  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 8))(v0 + v7 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v8 | 7);
}

uint64_t sub_2232D6CA0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D6D30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6D68()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D6E4C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D6E90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D6EC8()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D6F10@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ServiceHelperManager.shared;
  return swift_unknownObjectRetain();
}

uint64_t sub_2232D6F64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D70A0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D70E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D7118()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2232D7254()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D728C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D72CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D7454@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridge + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D7524@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridge + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D75F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D762C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D76B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D78A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7900(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2232D7B94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7BE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 136) = v2;
  return result;
}

uint64_t sub_2232D7C2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 928))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7C80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 137) = v2;
  return result;
}

uint64_t sub_2232D7CC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 952))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7D18(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 138) = v2;
  return result;
}

uint64_t sub_2232D7D5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7DB0(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 160);
  *(*a2 + 160) = *a1;

  return outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v2);
}

uint64_t sub_2232D7DF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7E58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7F10(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 192) = *a1;
}

uint64_t sub_2232D7F54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7FA8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  *(*a2 + 200) = *a1;

  return _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v2);
}

uint64_t sub_2232D7FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1208))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8040(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 208) = *a1;
}

uint64_t sub_2232D8084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1232))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D80D8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 216) = *a1;
}

uint64_t sub_2232D811C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1256))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8170(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 224) = *a1;
}

uint64_t sub_2232D81B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1280))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8208(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 232) = *a1;
}

uint64_t sub_2232D824C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1304))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D82A0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 240) = *a1;
}

uint64_t sub_2232D82E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1328))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8338(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 248) = *a1;
}

uint64_t sub_2232D837C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1352))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D83D0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 256) = *a1;
}

uint64_t sub_2232D8414@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1376))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8468(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 264) = *a1;
}

uint64_t sub_2232D84AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1400))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8500(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 272) = *a1;
}

uint64_t sub_2232D8544@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1424))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D85A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1448))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D85FC(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 288);
  *(*a2 + 288) = *a1;

  return _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v2);
}

uint64_t sub_2232D8640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8694(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 296) = *a1;
}

uint64_t sub_2232D86D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D872C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 304) = *a1;
}

uint64_t sub_2232D8770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D87C4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 312) = *a1;
}

uint64_t sub_2232D8808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1544))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D885C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 320) = *a1;
}

uint64_t sub_2232D88A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1568))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D88F4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 328) = *a1;
}

uint64_t sub_2232D8938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1592))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D898C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 336);
  v6 = *(*a2 + 344);
  *(v4 + 336) = v3;
  *(v4 + 344) = v2;

  return outlined consume of String??(v5, v6);
}

uint64_t sub_2232D89D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1616))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8A28(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 352) = *a1;
}

uint64_t sub_2232D8A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1640))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8AC0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 360) = *a1;
}

uint64_t sub_2232D8B04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1664))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8B58(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 368) = *a1;
}

uint64_t sub_2232D8B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1688))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8BF0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 376) = *a1;
}

uint64_t sub_2232D8C34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1712))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8C98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1736))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1760))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8D50(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 392) = *a1;
}

uint64_t sub_2232D8D94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1784))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1808))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8E4C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 408) = *a1;
}

uint64_t sub_2232D8E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1832))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8EE4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 416) = *a1;
}

uint64_t sub_2232D8F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1856))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8F7C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 424) = *a1;
}

uint64_t sub_2232D8FC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1880))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1904))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2232D9080(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 440) = *result;
  *(v3 + 448) = v2;
  return result;
}

uint64_t sub_2232D909C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1928))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D90F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1936);

  return v4(v2, v3);
}

uint64_t sub_2232D9160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9200@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchToolGlobalRequestXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_2232D924C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchToolGlobalRequestXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232D9294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D92E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D93D4()
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

uint64_t sub_2232D94E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D95A4()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
  if ((*(*(v11 - 1) + 48))(v0 + v8, 1, v11))
  {
    goto LABEL_18;
  }

  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = v9;
  if (EnumCaseMultiPayload == 2)
  {

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
    v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v10 + v24, 1, v25))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {

        v13 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR) + 48);

        v14 = *(type metadata accessor for NLXResultCandidate(0) + 20);
        v15 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        v16 = *(v15 - 8);
        if (!(*(v16 + 48))(&v13[v14], 1, v15))
        {
          (*(v16 + 8))(&v13[v14], v15);
        }
      }

      goto LABEL_14;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v18 = v17[16];
    v19 = type metadata accessor for TCUMappedNLResponse();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v10 + v18, 1, v19))
    {
      (*(v20 + 8))(v10 + v18, v19);
    }

    v21 = v17[20];
    v22 = type metadata accessor for SiriUserInput();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v10 + v21, 1, v22))
    {
      (*(v23 + 8))(v10 + v21, v22);
    }

    v24 = v17[24];
    v25 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v10 + v24, 1, v25))
    {
      goto LABEL_14;
    }
  }

  (*(v26 + 8))(v10 + v24, v25);
LABEL_14:
  v27 = v11[5];
  v28 = type metadata accessor for UserID();
  (*(*(v28 - 8) + 8))(v10 + v27, v28);
  v29 = v11[7];
  v30 = type metadata accessor for SelectedUserAttributes();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v10 + v29, 1, v30))
  {
    (*(v31 + 8))(v10 + v29, v30);
  }

  v32 = v11[15];
  v33 = type metadata accessor for PommesSearchEagerInfo(0);
  v9 = v36;
  if (!(*(*(v33 - 8) + 48))(v10 + v32, 1, v33))
  {
    v34 = type metadata accessor for PommesSearchReason();
    (*(*(v34 - 8) + 8))(v10 + v32, v34);
  }

LABEL_18:

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2232D9BB0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2232D9BF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D9C34()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D9D20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for PommesError();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

uint64_t sub_2232D9F34@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DA004@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DA06C(uint64_t a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for PommesBridgeRequestProcessor + 128);

  return v2(v3);
}

uint64_t sub_2232DA1C4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DA230(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2232DA2E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UserID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2232DA4C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UserID();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[15];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_2232DA6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DA720(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_2232DA778()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232DA86C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232DA8AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DA8F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

__n128 sub_2232DA96C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2232DA9CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DAA20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_2232DAAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAAF4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2232DAB6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAC0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2232DAD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232DADD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2232DAE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2232DAEB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAF54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DAFA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DAFDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB038(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v2(v3);
}

uint64_t sub_2232DB0A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232DB0E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232DB120@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static AudioResult.supportsSecureCoding;
  return result;
}

uint64_t sub_2232DB16C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static AudioResult.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232DB1B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB2A0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_2232DB33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB388(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 240);

  return v2(v3);
}

uint64_t sub_2232DB3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB428(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2232DB480@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static UtteranceMatchPreflightClient.disallowedUtterances;
}

uint64_t sub_2232DB4D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2232DB590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232DB6A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DB6F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DBC40()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v5 = (v3 + 72) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2232DBD14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DBD4C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v16 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v17 = type metadata accessor for PommesCandidateId();
  v7 = *(v17 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  v10 = (*(v5 + 48))(v0 + v3, 1, v4);
  v11 = *(v5 + 8);
  if (!v10)
  {
    v11(v0 + v3, v4);
  }

  v12 = (v3 + v16 + v6) & ~v6;
  v13 = (v12 + v15 + v8) & ~v8;
  v11(v0 + v12, v4);
  (*(v7 + 8))(v0 + v13, v17);

  return MEMORY[0x2821FE8E8](v0, ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v8 | 7);
}

uint64_t sub_2232DBF7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v53 = *(v1 + 80);
  v2 = (v53 + 24) & ~v53;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v52 = *(v5 + 80);
  v6 = (v2 + v3 + v52) & ~v52;
  v7 = *(v5 + 64);
  v45 = type metadata accessor for PommesCandidateId();
  v8 = *(v45 - 8);
  v44 = v6;
  v50 = *(v8 + 80);
  v9 = (v6 + v7 + v50) & ~v50;
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for PommesSearchRequest(0);
  v49 = *(*(v11 - 1) + 80);
  v48 = *(*(v11 - 1) + 64);
  v51 = type metadata accessor for SignpostToken(0);
  v47 = *(*(v51 - 8) + 80);
  v46 = *(*(v51 - 8) + 64);

  v12 = (*(v5 + 48))(v0 + v2, 1, v4);
  v13 = *(v5 + 8);
  if (!v12)
  {
    v13(v0 + v2, v4);
  }

  v13(v0 + v44, v4);
  (*(v8 + 8))(v0 + v9, v45);

  v43 = (((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + v49 + 8) & ~v49;
  v14 = v0 + v43;
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v0;
  if (EnumCaseMultiPayload == 2)
  {

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);
    v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_14;
    }

    v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    v18 = *(type metadata accessor for NLXResultCandidate(0) + 20);
    v19 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v17 + v18, 1, v19))
    {
      (*(v20 + 8))(v17 + v18, v19);
    }

    goto LABEL_13;
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v22 = type metadata accessor for TCUMappedNLResponse();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v14 + v21, 1, v22))
  {
    (*(v23 + 8))(v14 + v21, v22);
  }

LABEL_14:

  v27 = v11[6];
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v14 + v27, 1, v28))
  {
    (*(v29 + 8))(v14 + v27, v28);
  }

  v30 = v11[10];
  v31 = type metadata accessor for PommesContext();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v14 + v30, 1, v31))
  {
    (*(v32 + 8))(v14 + v30, v31);
  }

  v33 = v11[11];
  v34 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v14 + v33, 1, v34))
  {
    (*(v35 + 8))(v14 + v33, v34);
  }

  v36 = v11[14];
  v37 = type metadata accessor for InputOrigin();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v14 + v36, 1, v37))
  {
    (*(v38 + 8))(v14 + v36, v37);
  }

  v39 = (v43 + v48 + v47) & ~v47;

  v40 = *(v51 + 20);
  v41 = type metadata accessor for OSSignpostID();
  (*(*(v41 - 8) + 8))(v16 + v39 + v40, v41);

  return MEMORY[0x2821FE8E8](v16, ((v46 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v53 | v52 | v50 | v49 | v47 | 7);
}

uint64_t sub_2232DC7A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DC850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DC8A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DC8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 376);

  return v2(v3);
}

uint64_t sub_2232DC958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2232DCA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2232DCB44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v22 = *(v1 + 80);
  v21 = *(v1 + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v20 = type metadata accessor for PommesCandidateId();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v7 = *(v18 - 8);
  v8 = *(v7 + 80);
  v17 = *(v7 + 64);

  v9 = (v22 + 24) & ~v22;
  v10 = (*(v3 + 48))(v0 + v9, 1, v2);
  v11 = *(v3 + 8);
  if (!v10)
  {
    v11(v0 + v9, v2);
  }

  v23 = v22 | v4 | v6 | v8;
  v12 = (v9 + v21 + v4) & ~v4;
  v13 = (v12 + v19 + v6) & ~v6;
  v14 = (v13 + v16 + v8) & ~v8;
  v11(v0 + v12, v2);
  (*(v5 + 8))(v0 + v13, v20);
  (*(v7 + 8))(v0 + v14, v18);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v23 | 7);
}

uint64_t sub_2232DCDEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v22 = *(v1 + 80);
  v21 = *(v1 + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v20 = type metadata accessor for PommesCandidateId();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v19 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v16 = *(v7 + 64);

  v9 = (v22 + 24) & ~v22;
  v10 = (*(v3 + 48))(v0 + v9, 1, v2);
  v11 = *(v3 + 8);
  if (!v10)
  {
    v11(v0 + v9, v2);
  }

  v23 = v22 | v4 | v6 | v8;
  v12 = (v9 + v21 + v4) & ~v4;
  v13 = (v12 + v18 + v6) & ~v6;
  v14 = (v13 + v17 + v8) & ~v8;
  v11(v0 + v12, v2);
  (*(v5 + 8))(v0 + v13, v20);
  (*(v7 + 8))(v0 + v14, v19);

  return MEMORY[0x2821FE8E8](v0, ((v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | 7);
}

uint64_t sub_2232DD0AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DD13C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DD188(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2232DD1DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DD214()
{
  v1 = type metadata accessor for GenerativeModelsAvailability();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2232DD2C4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232DD30C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*(**a1 + 88))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned SatisfyingAppsDataProvider);
  a2[1] = result;
  return result;
}

uint64_t sub_2232DD394()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DD3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DD470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[14];

  return v19(v20, a2, v18);
}

uint64_t sub_2232DD6A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PommesSearchRequest.ParseState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2232DD8E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[11];
    goto LABEL_11;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[13];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[14]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2232DDB70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[14]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[15];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_2232DDE48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DDE98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DDED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DDF08()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232DDFE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PegasusOverrideUtil.enablePromptContextLogging;
  return result;
}

uint64_t sub_2232DE034(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PegasusOverrideUtil.enablePromptContextLogging = v1;
  return result;
}

double sub_2232DE170@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 120))(v6);
  v3 = v6[3];
  a2[2] = v6[2];
  a2[3] = v3;
  a2[4] = v7[0];
  *(a2 + 74) = *(v7 + 10);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_2232DE1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DE238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232DE2CC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesSearchRequestXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_2232DE318(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesSearchRequestXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232DE360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE3B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE4B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE56C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE5D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE6B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE72C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE790@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE7F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE858@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE8BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DE978@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DEA2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DEAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DEAF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 728))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DEB4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id default argument 0 of PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CEF318]);

  return [v0 init];
}

uint64_t default argument 2 of PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)()
{
  type metadata accessor for PommesUserProfile();

  return swift_allocObject();
}

uint64_t default argument 3 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for AppDataProvider();
  v0 = swift_allocObject();
  v5 = &type metadata for PommesSystemAppChecking;
  v6 = &protocol witness table for PommesSystemAppChecking;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v4, v0 + 16);
  v1 = [objc_opt_self() sharedPreferences];
  v2 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v0, v1);

  return v2;
}

uint64_t default argument 4 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for AppDataProvider();
  v0 = swift_allocObject();
  *(&v4 + 1) = &type metadata for PommesSystemAppChecking;
  v5 = &protocol witness table for PommesSystemAppChecking;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v3, v0 + 16);
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v0, 0, 0, &v3);

  outlined destroy of MediaUserStateCenter?(&v3, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  return v1;
}

uint64_t default argument 6 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for MarketplaceInfoDataProvider(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v0);
}

uint64_t default argument 7 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for PairedDeviceDataProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v0);
}

uint64_t default argument 8 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  outlined init with copy of MediaUserStateCenter?(v4, v3, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  swift_allocObject();
  v0 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v1 = specialized AnyDataProvider.init<A>(provider:)(v0);
  outlined destroy of MediaUserStateCenter?(v4, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  return v1;
}

uint64_t default argument 9 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v0 = type metadata accessor for CarPlaySessionDataProvider();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v1[v2] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

unint64_t default argument 0 of DomainWarmup.init(warmupClients:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch20DomainWarmupHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch20DomainWarmupHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMd, &_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMR);
  v14 = type metadata accessor for WarmupComponent();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234CF920;
  v4 = *(v1 + 104);
  v4(v3 + v2, *MEMORY[0x277D56608], v14);
  v5 = type metadata accessor for PluginWarmupHandler();
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000002CLL;
  v6[3] = 0x80000002234DA040;
  v6[4] = v3;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for PluginWarmupHandler;
  *(inited + 48) = v6;
  *(inited + 88) = 0x7374726F7073;
  *(inited + 96) = 0xE600000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2234CF920;
  v8 = *MEMORY[0x277D56600];
  v4(v7 + v2, v8, v14);
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000024;
  v9[3] = 0x80000002234DA070;
  v9[4] = v7;
  *(inited + 128) = v5;
  *(inited + 104) = v9;
  *(inited + 136) = &protocol witness table for PluginWarmupHandler;
  *(inited + 144) = 0x72656874616577;
  *(inited + 152) = 0xE700000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234CF920;
  v4(v10 + v2, v8, v14);
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000024;
  v11[3] = 0x80000002234DA070;
  v11[4] = v10;
  *(inited + 184) = v5;
  *(inited + 192) = &protocol witness table for PluginWarmupHandler;
  *(inited + 160) = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch20DomainWarmupHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMd, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMR);
  swift_arrayDestroy();
  return v12;
}

uint64_t default argument 0 of PommesSearch.init(remoteSearchClient:domainSearchClients:)()
{
  v0 = type metadata accessor for AssistantLocationProvider(0);
  swift_allocObject();
  v1 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v2 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v3 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  v5 = [objc_opt_self() processInfo];
  v6 = NSProcessInfo.isRunningUnitTests.getter();

  if (v6)
  {
    v7 = &type metadata for EmptyReferenceResolver;
    v8 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v7 = type metadata accessor for ReferenceResolutionClient();
    v22[0] = ReferenceResolutionClient.__allocating_init()();
    v8 = MEMORY[0x277D5FDD8];
  }

  v22[3] = v7;
  v22[4] = v8;
  v9 = default argument 6 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)();
  v10 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v11 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  type metadata accessor for PegasusProxy(0);
  v12 = swift_allocObject();
  v21[3] = v0;
  v21[4] = &protocol witness table for AssistantLocationProvider;
  v21[0] = v1;
  v20[3] = &type metadata for PIMSEnablementProvider;
  v20[4] = &protocol witness table for PIMSEnablementProvider;
  v19[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v19[4] = &protocol witness table for CNContactStore;
  v19[0] = v10;
  *(v12 + 16) = 1;
  *(v12 + 144) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;

  v13 = v10;
  v14 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v15 = MEMORY[0x277D84FA0];
  *(v12 + 152) = v14;
  *(v12 + 160) = v15;
  *(v12 + 168) = v15;
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v17 = type metadata accessor for InteractionType();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  type metadata accessor for PegasusProxyForAssistant();
  *(v12 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v12 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(v21, v12 + 96);
  *(v12 + 136) = v2;
  outlined init with copy of AppDataProviding(v20, v12 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v12 + 176) = v4;
  *(v12 + 184) = v9;
  outlined init with copy of AppDataProviding(v22, v12 + 24);
  outlined init with copy of AppDataProviding(v19, v12 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v11;
  type metadata accessor for DomainAffinityKVStoreManager();
  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(0xD000000000000013);

  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(0x6E65657263536E6FLL);

  Apple_Parsec_Search_SearchConversationContext.init()();

  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v12;
}

id default argument 6 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x28223BE20](v0);
  v54 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v60, v58, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 16) = 0u;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 48) = 0;
  *(v6 + 56) = v7;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v58, v6 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v50 = specialized AnyDataProvider.init<A>(provider:)(v6);
  outlined destroy of MediaUserStateCenter?(&v60, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v9 = result;
    v10 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v11 = specialized AudioQueueStateManager.init(queueStateObserver:)(v9, v10);
    type metadata accessor for AudioQueueStateDataProvider();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v48 = specialized AnyDataProvider.init<A>(provider:)(v12);
    v47 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v13 = swift_allocObject();
    *(&v61 + 1) = &type metadata for PommesSystemAppChecking;
    v62 = &protocol witness table for PommesSystemAppChecking;
    *(v13 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v60, v13 + 16);
    v14 = objc_opt_self();
    v15 = [v14 sharedPreferences];
    v16 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v13, v15);

    v17 = swift_allocObject();
    *(&v61 + 1) = &type metadata for PommesSystemAppChecking;
    v62 = &protocol witness table for PommesSystemAppChecking;
    *(v17 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v60, v17 + 16);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v46 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v17, 0, 0, &v60);

    outlined destroy of MediaUserStateCenter?(&v60, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
    type metadata accessor for MarketplaceInfoDataProvider(0);
    v18 = swift_allocObject();
    v19 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v20 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v45 = specialized AnyDataProvider.init<A>(provider:)(v18);
    type metadata accessor for PairedDeviceDataProvider();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v44 = specialized AnyDataProvider.init<A>(provider:)(v21);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v60, v58, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    type metadata accessor for GMAvailabilityPolicyDataProvider(0);
    swift_allocObject();
    v22 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v43 = specialized AnyDataProvider.init<A>(provider:)(v22);
    outlined destroy of MediaUserStateCenter?(&v60, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v23 = type metadata accessor for CarPlaySessionDataProvider();
    v24 = objc_allocWithZone(v23);
    v25 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v24[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v24[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v24[v25] = 0;
    v57.receiver = v24;
    v57.super_class = v23;
    v26 = objc_msgSendSuper2(&v57, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v42 = specialized AnyDataProvider.init<A>(provider:)(v26);
    v41 = [v14 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v40 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    v27 = swift_allocObject();
    *(&v61 + 1) = &type metadata for PommesSystemAppChecking;
    v62 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v28 = v51;
    v30 = v52;
    v29 = v53;
    (*(v51 + 104))(v52, *MEMORY[0x277D851C8], v53);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v30, v29);
    (*(v55 + 104))(v54, *MEMORY[0x277D85260], v56);
    v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v27 + 128) = 0u;
    *(v27 + 160) = 0u;
    *(v27 + 176) = 0;
    *(v27 + 144) = 0u;
    v32 = v50;
    *(v27 + 16) = v31;
    *(v27 + 24) = v32;
    v33 = v47;
    *(v27 + 32) = v48;
    *(v27 + 40) = v33;
    v34 = v46;
    *(v27 + 48) = v16;
    *(v27 + 56) = v34;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v58, 0, sizeof(v58));
    v59 = 0;
    v35 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v35;

    v37 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v58, v36, 0);

    outlined destroy of MediaUserStateCenter?(v58, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v38 = v45;
    *(v27 + 64) = v37;
    *(v27 + 72) = v38;
    *(v27 + 80) = v44;
    *(v27 + 96) = v42;
    *(v27 + 104) = 0;
    v39 = v41;
    *(v27 + 112) = v40;
    *(v27 + 120) = v39;
    *(v27 + 128) = 0;
    *(v27 + 136) = 0;
    outlined init with copy of AppDataProviding(&v60, v58);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v58, v27 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(v27 + 88) = v43;
    (*(*v33 + 160))(1);

    (*(*v16 + 160))(1);

    (*(*v34 + 160))(1);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 5 of PommesSearch.init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v1 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v2 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  return PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v0, v1, v2);
}

uint64_t default argument 1 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

id default argument 2 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)()
{
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v53 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v63 = specialized AnyDataProvider.init<A>(provider:)(v6);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v75, v73, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0u;
  *(v7 + 16) = 0u;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 48) = 0;
  *(v7 + 56) = v8;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v73, v7 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v59 = specialized AnyDataProvider.init<A>(provider:)(v7);
  outlined destroy of MediaUserStateCenter?(&v75, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v12 = specialized AudioQueueStateManager.init(queueStateObserver:)(v10, v11);
    type metadata accessor for AudioQueueStateDataProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v71 = specialized AnyDataProvider.init<A>(provider:)(v13);
    v70 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v14 = swift_allocObject();
    *(&v76 + 1) = &type metadata for PommesSystemAppChecking;
    v77 = &protocol witness table for PommesSystemAppChecking;
    *(v14 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v75, v14 + 16);
    v15 = objc_opt_self();
    v16 = [v15 sharedPreferences];
    v69 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v14, v16);

    type metadata accessor for MarketplaceInfoDataProvider(0);
    v17 = swift_allocObject();
    v18 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v19 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v55 = specialized AnyDataProvider.init<A>(provider:)(v17);
    type metadata accessor for PairedDeviceDataProvider();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v53 = specialized AnyDataProvider.init<A>(provider:)(v20);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v75, v73, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    type metadata accessor for GMAvailabilityPolicyDataProvider(0);
    swift_allocObject();
    v21 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v54 = specialized AnyDataProvider.init<A>(provider:)(v21);
    outlined destroy of MediaUserStateCenter?(&v75, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v22 = type metadata accessor for CarPlaySessionDataProvider();
    v23 = objc_allocWithZone(v22);
    v24 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v23[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v23[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v23[v24] = 0;
    v72.receiver = v23;
    v72.super_class = v22;
    v25 = objc_msgSendSuper2(&v72, &selRef_statusType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v68 = specialized AnyDataProvider.init<A>(provider:)(v25);
    v26 = [v15 sharedPreferences];
    v56 = type metadata accessor for SiriEnvironment();
    v67 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    v27 = swift_allocObject();
    *(&v76 + 1) = &type metadata for PommesSystemAppChecking;
    v77 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v28 = v57;
    v29 = v58;
    (*(v2 + 104))(v57, *MEMORY[0x277D851C8], v58);
    static OS_dispatch_queue.global(qos:)();
    (*(v2 + 8))(v28, v29);
    (*(v62 + 104))(v61, *MEMORY[0x277D85260], v60);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v27 + 128) = 0u;
    *(v27 + 160) = 0u;
    *(v27 + 176) = 0;
    *(v27 + 144) = 0u;
    v31 = v59;
    *(v27 + 16) = v30;
    *(v27 + 24) = v31;
    v32 = v70;
    *(v27 + 32) = v71;
    *(v27 + 40) = v32;
    v33 = v63;
    *(v27 + 48) = v69;
    *(v27 + 56) = v33;
    v62 = type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v73, 0, sizeof(v73));
    v74 = 0;
    v34 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = v34;

    v36 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v73, v35, 0);

    outlined destroy of MediaUserStateCenter?(v73, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v37 = v55;
    *(v27 + 64) = v36;
    *(v27 + 72) = v37;
    *(v27 + 80) = v53;
    v38 = v67;
    *(v27 + 96) = v68;
    *(v27 + 104) = 0;
    *(v27 + 112) = v38;
    *(v27 + 120) = v26;
    *(v27 + 128) = 0;
    *(v27 + 136) = 0;

    v39 = v26;
    outlined init with copy of AppDataProviding(&v75, v73);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v73, v27 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(v27 + 88) = v54;
    v40 = *(**(v27 + 40) + 160);

    v40(1);

    v41 = *(**(v27 + 48) + 160);

    v41(1);

    (*(**(v27 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v75);
    type metadata accessor for PegasusProxyForIntelligenceFlow();
    v71 = static PegasusProxyForIntelligenceFlow.shared.getter();
    static SiriEnvironment.default.getter();
    v70 = SiriEnvironment.networkAvailability.getter();

    v42 = swift_allocObject();
    type metadata accessor for PegasusInstrumentationUtil();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v42;
    v44 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    type metadata accessor for PommesDialogStateManager();
    swift_allocObject();
    v45 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v46 = v66;
    v47 = __swift_project_value_buffer(v66, static Logger.sage);
    v48 = v65;
    v49 = *(v65 + 16);
    v50 = v64;
    v49(v64, v47, v46);
    type metadata accessor for SagePegasusProxy(0);
    v51 = swift_allocObject();
    v49((v51 + *(*v51 + 216)), v50, v46);
    *(v51 + 104) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
    *(v51 + 112) = &protocol witness table for CNContactStore;
    *(v51 + 80) = v44;
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 64) = xmmword_2234CF930;
    v52 = v70;
    *(v51 + 32) = v71;
    *(v51 + 40) = v52;
    *(v51 + 48) = v43;
    *(v51 + 56) = v27;
    *(v51 + 120) = 0;
    *(v51 + 128) = v45;
    (*(v48 + 8))(v50, v46);
    type metadata accessor for SageSearch();
    swift_allocObject();
    return SageSearch.init(remoteSearchClient:)(v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 1 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = SiriEnvironment.networkAvailability.getter();

  return v0;
}

uint64_t default argument 2 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  return result;
}

uint64_t default argument 4 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  a1[3] = result;
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v2;
  return result;
}

uint64_t default argument 5 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
}

uint64_t default argument 6 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sage);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D56670];
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 5 of ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

id default argument 6 of ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

uint64_t default argument 0 of VocabularySearchClient.init(spanMatcher:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() indexMatcher];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatcher, 0x277D55D38);
  a1[3] = result;
  a1[4] = &protocol witness table for SEMSpanMatcher;
  *a1 = v2;
  return result;
}

id default argument 0 of static AudioQueueStateDataProvider.make(audioQueueStateManager:)()
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v1 = result;
    v2 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());

    return specialized AudioQueueStateManager.init(queueStateObserver:)(v1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id default argument 0 of AudioQueueStateManager.init(queueStateObserver:)@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v3 = result;
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SOMediaNowPlayingObserver, 0x277D5E1D0);
    a1[3] = result;
    a1[4] = &protocol witness table for SOMediaNowPlayingObserver;
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t default argument 1 of PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  v1 = type metadata accessor for AudioCacheHandler();
  v2 = swift_allocObject();
  *(inited + 72) = v1;
  *(inited + 80) = &protocol witness table for AudioCacheHandler;
  *(inited + 48) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
  return v3;
}

double default argument 0 of PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

id default argument 1 of PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t default argument 0 of PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)@<X0>(uint64_t a2@<X8>)
{
  Date.init()();
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t default argument 0 of OnDeviceSearchInstrumentationUtil.init(analyticsComponentIdGenerator:)()
{
  type metadata accessor for AnalyticsComponentIdGenerator();

  return swift_allocObject();
}

uint64_t default argument 7 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)@<X0>(Class *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(*a1) init];
  result = type metadata accessor for CNContactStore(0, a2, a1);
  a4[3] = result;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

double default argument 3 of static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id default argument 1 of PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)()
{
  v0 = [objc_opt_self() clientWithIdentifier_];

  return v0;
}

char *default argument 0 of SageSearch.init(remoteSearchClient:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  type metadata accessor for PegasusProxyForIntelligenceFlow();
  v17 = static PegasusProxyForIntelligenceFlow.shared.getter();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v16 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v7 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v10 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, static Logger.sage);
  v12 = *(v1 + 16);
  v12(v6, v11, v0);
  type metadata accessor for SagePegasusProxy(0);
  v13 = swift_allocObject();
  v12(v4, v6, v0);
  v14 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v17, v16, v8, 0, v9, v10, v4, v13);
  (*(v1 + 8))(v6, v0);
  return v14;
}

unint64_t default argument 3 of SageSearchRequestProcessor.init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v1 = [objc_opt_self() indexMatcher];
  v2 = type metadata accessor for MusicDomain();
  v3 = swift_allocObject();
  v4 = specialized MusicDomain.init(spanMatcher:)(v1, v3);
  *(inited + 64) = v2;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  return v5;
}

uint64_t default argument 3 of PegasusCacheManager.store(siriRequestId:pegasusResponse:pommesResponse:waitFor:completion:)@<X0>(void *a1@<X8>)
{
  *a1 = 5;
  v2 = *MEMORY[0x277D85188];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 0 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  outlined init with copy of MediaUserStateCenter?(v5, v4, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v4, v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v2 = specialized AnyDataProvider.init<A>(provider:)(v0);
  outlined destroy of MediaUserStateCenter?(v5, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  return v2;
}

id default argument 1 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v1 = result;
    v2 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v3 = specialized AudioQueueStateManager.init(queueStateObserver:)(v1, v2);
    type metadata accessor for AudioQueueStateDataProvider();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    return specialized AnyDataProvider.init<A>(provider:)(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v0 = type metadata accessor for AppDataProvider();
  v1 = swift_allocObject();
  v8 = &type metadata for PommesSystemAppChecking;
  v9 = &protocol witness table for PommesSystemAppChecking;
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v7, v1 + 16);
  v8 = v0;
  v9 = &protocol witness table for AppDataProvider;
  *&v7 = v1;
  v2 = [objc_opt_self() sharedPreferences];
  outlined init with copy of AppDataProviding(&v7, v6);
  type metadata accessor for AppInfoDataProvider();
  v3 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(v6, v3 + 16);
  *(v3 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v4 = specialized AnyDataProvider.init<A>(provider:)(v3);
  __swift_destroy_boxed_opaque_existential_1(&v7);
  return v4;
}

uint64_t default argument 1 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssistantLocationProvider(0);
  swift_allocObject();
  result = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for AssistantLocationProvider;
  *a1 = result;
  return result;
}

uint64_t default argument 2 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = SiriEnvironment.networkAvailability.getter();

  return v0;
}

uint64_t default argument 4 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(void))
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v2 = swift_allocObject();
  a1(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

id default argument 9 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

unint64_t default argument 0 of PlayThisLibraryItemPreflightClient.init(rrClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if (v3)
  {
    v4 = &type metadata for EmptyReferenceResolver;
    result = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v4 = type metadata accessor for ReferenceResolutionClient();
    *a1 = ReferenceResolutionClient.__allocating_init()();
    result = MEMORY[0x277D5FDD8];
  }

  a1[3] = v4;
  a1[4] = result;
  return result;
}

uint64_t default argument 8 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
}

unint64_t lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver()
{
  result = lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver;
  if (!lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver);
  }

  return result;
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

double default argument 2 of MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_2234CF940;
  *(v0 + 32) = -1530378132;
  return result;
}

uint64_t default argument 0 of static AppInfoDataProvider.make(appDataProvider:preferences:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppDataProvider();
  v3 = swift_allocObject();
  v6 = &type metadata for PommesSystemAppChecking;
  v7 = &protocol witness table for PommesSystemAppChecking;
  *(v3 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  result = outlined init with take of DomainWarmupHandling(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for AppDataProvider;
  *a1 = v3;
  return result;
}

uint64_t default argument 1 of createAmpUsersStateSlice(mediaUserStates:resolution:isPostResolution:muxUserInfo:isMultiUserRequest:)@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSStringCompareOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ICSubscriptionStatusOfferType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ICSubscriptionStatusOfferType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance ICSubscriptionStatusOfferType@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x223DDF550](v3);

  *a2 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLAccuracyAuthorization()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLAccuracyAuthorization(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for AFLocationServiceErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ICSubscriptionStatusOfferType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType, type metadata accessor for ICSubscriptionStatusOfferType, &protocol conformance descriptor for ICSubscriptionStatusOfferType);
  v3 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType, type metadata accessor for ICSubscriptionStatusOfferType, &protocol conformance descriptor for ICSubscriptionStatusOfferType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ICSubscriptionStatusOfferType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223DDF550](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v3 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LNSystemProtocolIdentifier()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x223DDF780](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LNSystemProtocolIdentifier(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

char *specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a7;
  v81 = a6;
  v83 = a3;
  v78 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v92 = &protocol witness table for CNContactStore;
  *&v90 = a5;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 64) = xmmword_2234CF930;
  *(a8 + 120) = 0;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  v79 = a2;
  v80 = a8;
  *(a8 + 48) = v83;
  if (a4)
  {
    goto LABEL_4;
  }

  v65 = v23;
  v66 = v20;
  v67 = v17;
  v69 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();

  v70 = specialized AnyDataProvider.init<A>(provider:)(v24);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v87, v85, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v25 = swift_allocObject();
  *(v25 + 32) = 0u;
  *(v25 + 16) = 0u;
  v26 = MEMORY[0x277D84F90];
  *(v25 + 48) = 0;
  *(v25 + 56) = v26;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v85, v25 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v68 = specialized AnyDataProvider.init<A>(provider:)(v25);
  outlined destroy of MediaUserStateCenter?(&v87, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v28 = result;

    v29 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v30 = specialized AudioQueueStateManager.init(queueStateObserver:)(v28, v29);
    type metadata accessor for AudioQueueStateDataProvider();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v75 = specialized AnyDataProvider.init<A>(provider:)(v31);
    v74 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v32 = swift_allocObject();
    *(&v88 + 1) = &type metadata for PommesSystemAppChecking;
    v89 = &protocol witness table for PommesSystemAppChecking;
    *(v32 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v87, v32 + 16);
    v33 = objc_opt_self();
    v34 = [v33 sharedPreferences];
    v73 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v32, v34);

    type metadata accessor for MarketplaceInfoDataProvider(0);
    v35 = swift_allocObject();
    v36 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v37 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v64 = specialized AnyDataProvider.init<A>(provider:)(v35);
    type metadata accessor for PairedDeviceDataProvider();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v62 = specialized AnyDataProvider.init<A>(provider:)(v38);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v87, v85, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    type metadata accessor for GMAvailabilityPolicyDataProvider(0);
    swift_allocObject();
    v39 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v63 = specialized AnyDataProvider.init<A>(provider:)(v39);
    outlined destroy of MediaUserStateCenter?(&v87, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v40 = type metadata accessor for CarPlaySessionDataProvider();
    v41 = objc_allocWithZone(v40);
    v42 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v41[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v41[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v41[v42] = 0;
    v84.receiver = v41;
    v84.super_class = v40;
    v43 = objc_msgSendSuper2(&v84, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v72 = specialized AnyDataProvider.init<A>(provider:)(v43);
    v44 = [v33 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v71 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v88 + 1) = &type metadata for PommesSystemAppChecking;
    v89 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v45 = v76;
    v46 = v67;
    (*(v76 + 104))(v67, *MEMORY[0x277D851C8], v15);
    static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v46, v15);
    (*(v77 + 104))(v69, *MEMORY[0x277D85260], v78);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v48 = v68;
    *(a4 + 16) = v47;
    *(a4 + 24) = v48;
    v49 = v74;
    *(a4 + 32) = v75;
    *(a4 + 40) = v49;
    v50 = v70;
    *(a4 + 48) = v73;
    *(a4 + 56) = v50;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v85, 0, sizeof(v85));
    v86 = 0;
    v51 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = v51;

    v53 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v85, v52, 0);

    outlined destroy of MediaUserStateCenter?(v85, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v54 = v64;
    *(a4 + 64) = v53;
    *(a4 + 72) = v54;
    *(a4 + 80) = v62;
    *(a4 + 96) = v72;
    *(a4 + 104) = 0;
    *(a4 + 112) = v71;
    *(a4 + 120) = v44;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v55 = v44;
    outlined init with copy of AppDataProviding(&v87, v85);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v85, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v63;
    v56 = *(**(a4 + 40) + 160);

    v56(1);

    v57 = *(**(a4 + 48) + 160);

    v57(1);

    (*(**(a4 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v87);
LABEL_4:
    v58 = v80;
    *(v80 + 56) = a4;
    outlined init with take of DomainWarmupHandling(&v90, (v58 + 80));
    *(v58 + 16) = v81;
    v59 = *(*v58 + 216);
    v60 = type metadata accessor for Logger();
    (*(*(v60 - 8) + 32))(&v58[v59], v82, v60);
    return v58;
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void type metadata accessor for AFUserIdentityClassfication(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id PommesSearchError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PommesSearchError.searchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesSearchError(0) + 20);
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesSearchError.init(underlyingError:searchReason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for PommesSearchError(0) + 20);
  v6 = type metadata accessor for PommesSearchReason();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t PommesSearchEagerInfo.searchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PommesSearchEagerInfo.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D56670];
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PommesSearchEagerInfo.init(searchReason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PommesSearch.serverFallbackPreferences.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));
  outlined init with take of DomainWarmupHandling(a1, v1 + 72);
  return swift_endAccess();
}

uint64_t key path setter for PommesSearch.preparedRequestsIds : PommesSearch(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

id PommesSearch.__allocating_init()()
{
  v0 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v99 = *(v0 - 8);
  v100 = v0;
  MEMORY[0x28223BE20](v0);
  v98 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v11 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v12 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  v107 = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v10, v11, v12);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v114, &v111, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v13 = swift_allocObject();
  *(v13 + 32) = 0u;
  *(v13 + 16) = 0u;
  v14 = MEMORY[0x277D84F90];
  *(v13 + 48) = 0;
  *(v13 + 56) = v14;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v111, v13 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v97 = specialized AnyDataProvider.init<A>(provider:)(v13);
  outlined destroy of MediaUserStateCenter?(&v114, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
  v18 = specialized AudioQueueStateManager.init(queueStateObserver:)(v16, v17);
  type metadata accessor for AudioQueueStateDataProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v106 = specialized AnyDataProvider.init<A>(provider:)(v19);
  v105 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
  type metadata accessor for AppDataProvider();
  v20 = swift_allocObject();
  *(&v115 + 1) = &type metadata for PommesSystemAppChecking;
  v116 = &protocol witness table for PommesSystemAppChecking;
  *(v20 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v114, v20 + 16);
  v21 = objc_opt_self();
  v22 = [v21 sharedPreferences];
  v104 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v20, v22);

  v23 = swift_allocObject();
  *(&v115 + 1) = &type metadata for PommesSystemAppChecking;
  v116 = &protocol witness table for PommesSystemAppChecking;
  *(v23 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v114, v23 + 16);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v103 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v23, 0, 0, &v114);

  outlined destroy of MediaUserStateCenter?(&v114, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  type metadata accessor for MarketplaceInfoDataProvider(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v26 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v87 = specialized AnyDataProvider.init<A>(provider:)(v24);
  type metadata accessor for PairedDeviceDataProvider();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v85 = specialized AnyDataProvider.init<A>(provider:)(v27);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v114, &v111, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  swift_allocObject();
  v28 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v86 = specialized AnyDataProvider.init<A>(provider:)(v28);
  outlined destroy of MediaUserStateCenter?(&v114, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v29 = type metadata accessor for CarPlaySessionDataProvider();
  v30 = objc_allocWithZone(v29);
  v31 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v30[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v30[v31] = 0;
  v110.receiver = v30;
  v110.super_class = v29;
  v32 = objc_msgSendSuper2(&v110, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v84 = specialized AnyDataProvider.init<A>(provider:)(v32);
  v83 = [v21 sharedPreferences];
  v88 = type metadata accessor for SiriEnvironment();
  v102 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v33 = swift_allocObject();
  *(&v115 + 1) = &type metadata for PommesSystemAppChecking;
  v116 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v35 = v91;
  v34 = v92;
  v36 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277D851C8], v93);
  static OS_dispatch_queue.global(qos:)();
  (*(v34 + 8))(v35, v36);
  v95[13](v94, *MEMORY[0x277D85260], v96);
  v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v33 + 128) = 0u;
  *(v33 + 160) = 0u;
  *(v33 + 176) = 0;
  *(v33 + 144) = 0u;
  v38 = v97;
  *(v33 + 16) = v37;
  *(v33 + 24) = v38;
  v39 = v105;
  *(v33 + 32) = v106;
  *(v33 + 40) = v39;
  v40 = v103;
  *(v33 + 48) = v104;
  *(v33 + 56) = v40;
  v96 = type metadata accessor for AnalyticsComponentIdGenerator();
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v41 = swift_allocObject();
  type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = v41;

  v43 = v107;
  v44 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v111, v42, v107);

  outlined destroy of MediaUserStateCenter?(&v111, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v45 = v87;
  *(v33 + 64) = v44;
  *(v33 + 72) = v45;
  v46 = v84;
  *(v33 + 80) = v85;
  *(v33 + 96) = v46;
  *(v33 + 104) = v43;
  v47 = v83;
  *(v33 + 112) = v102;
  *(v33 + 120) = v47;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;

  v95 = v47;
  outlined init with copy of AppDataProviding(&v114, &v111);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v111, v33 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  *(v33 + 88) = v86;
  v48 = *(**(v33 + 40) + 160);

  v48(1);

  v49 = *(**(v33 + 48) + 160);

  v49(1);

  (*(**(v33 + 56) + 160))(1);

  __swift_destroy_boxed_opaque_existential_1(&v114);
  static SiriEnvironment.default.getter();
  v106 = SiriEnvironment.networkAvailability.getter();

  v50 = type metadata accessor for AssistantLocationProvider(0);
  swift_allocObject();
  v105 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  v51 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = v51;
  v53 = [objc_opt_self() processInfo];
  LOBYTE(v45) = NSProcessInfo.isRunningUnitTests.getter();

  if (v45)
  {
    v54 = &type metadata for EmptyReferenceResolver;
    v55 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v54 = type metadata accessor for ReferenceResolutionClient();
    *&v114 = ReferenceResolutionClient.__allocating_init()();
    v55 = MEMORY[0x277D5FDD8];
  }

  *(&v115 + 1) = v54;
  v116 = v55;
  v56 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v57 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  type metadata accessor for PegasusProxy(0);
  v58 = swift_allocObject();
  *(&v112 + 1) = v50;
  v113 = &protocol witness table for AssistantLocationProvider;
  *&v111 = v105;
  v109[3] = &type metadata for PIMSEnablementProvider;
  v109[4] = &protocol witness table for PIMSEnablementProvider;
  v108[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v108[4] = &protocol witness table for CNContactStore;
  v108[0] = v56;
  *(v58 + 16) = 1;
  *(v58 + 144) = 0;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  v59 = v106;

  v103 = v56;
  v60 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v61 = MEMORY[0x277D84FA0];
  *(v58 + 152) = v60;
  *(v58 + 160) = v61;
  *(v58 + 168) = v61;
  *(v58 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v62 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v63 = type metadata accessor for InteractionType();
  (*(*(v63 - 8) + 56))(v58 + v62, 1, 1, v63);
  type metadata accessor for PegasusProxyForAssistant();
  *(v58 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v58 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(&v111, v58 + 96);
  *(v58 + 136) = v59;
  outlined init with copy of AppDataProviding(v109, v58 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v58 + 176) = v52;
  *(v58 + 184) = v33;
  outlined init with copy of AppDataProviding(&v114, v58 + 24);
  outlined init with copy of AppDataProviding(v108, v58 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v58 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v57;
  v64 = byte_2836954A8;

  v104 = v57;

  if (v64)
  {
    v65 = 0x6E65657263536E6FLL;
    if (v64 != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v65 = 0xD000000000000013;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v65);

LABEL_10:
  v66 = v107;
  if (byte_2836954A9 != 2)
  {
    v67 = 0x6E65657263536E6FLL;
    if (byte_2836954A9 != 1)
    {
      v67 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v67);
  }

  if (byte_2836954AA != 2)
  {
    v68 = 0x6E65657263536E6FLL;
    if (byte_2836954AA != 1)
    {
      v68 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v68);
  }

  v69 = v98;
  Apple_Parsec_Search_SearchConversationContext.init()();
  v70 = v106;

  __swift_destroy_boxed_opaque_existential_1(&v114);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(&v111);
  (*(v99 + 32))(v58 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext, v69, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v72 = [objc_opt_self() indexMatcher];
  v73 = type metadata accessor for MusicDomain();
  v74 = swift_allocObject();
  v75 = specialized MusicDomain.init(spanMatcher:)(v72, v74);
  *(inited + 64) = v73;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v75;
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  v77 = specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(v33, v70);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v78 = static PegasusCacheManager.shared;

  v79 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  v80 = DomainWarmup.init(warmupClients:)(v79);
  v81 = (*(v101 + 240))(v58, v76, v77, v78, v80, v66);

  return v81;
}

uint64_t static PommesSearch.pommesSearchForSistoolFactory()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v104 = *(v0 - 1);
  v105 = v0;
  MEMORY[0x28223BE20](v0);
  v103 = v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x28223BE20](v2);
  v100 = v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4 - 8);
  v99 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  v98 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v94 - v12;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v122, &v119, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v14 + 48) = 0;
  *(v14 + 56) = v15;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v119, v14 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v112 = specialized AnyDataProvider.init<A>(provider:)(v14);
  outlined destroy of MediaUserStateCenter?(&v122, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  outlined init with copy of MediaUserStateCenter?(v13, v11, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  v18 = swift_allocObject();
  v19 = *(*v18 + 88);
  v17((v18 + v19), 1, 1, v16);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v11, v18 + v19, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v111 = specialized AnyDataProvider.init<A>(provider:)(v18);
  outlined destroy of MediaUserStateCenter?(v13, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v20 = type metadata accessor for AppDataProvider();
  v21 = swift_allocObject();
  *(&v123 + 1) = &type metadata for PommesSystemAppChecking;
  v124 = &protocol witness table for PommesSystemAppChecking;
  *(v21 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v122, v21 + 16);
  *(&v123 + 1) = v20;
  v124 = &protocol witness table for AppDataProvider;
  *&v122 = v21;
  v22 = objc_opt_self();
  v23 = [v22 sharedPreferences];
  outlined init with copy of AppDataProviding(&v122, &v119);
  type metadata accessor for AppInfoDataProvider();
  v24 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(&v119, v24 + 16);
  *(v24 + 56) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v97 = specialized AnyDataProvider.init<A>(provider:)(v24);
  __swift_destroy_boxed_opaque_existential_1(&v122);
  v113 = type metadata accessor for AnalyticsComponentIdGenerator();
  v122 = 0u;
  v123 = 0u;
  v124 = 0;
  v25 = swift_allocObject();
  type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = v25;
  v110 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v122, v26, 0);

  outlined destroy of MediaUserStateCenter?(&v122, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v27 = swift_allocObject();
  *(&v123 + 1) = &type metadata for PommesSystemAppChecking;
  v124 = &protocol witness table for PommesSystemAppChecking;
  *(v27 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) &selRef_statusType];
  outlined init with take of DomainWarmupHandling(&v122, v27 + 16);
  v28 = [v22 &off_2784DB1E0];
  v96 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v27, v28);

  v29 = swift_allocObject();
  *(&v123 + 1) = &type metadata for PommesSystemAppChecking;
  v124 = &protocol witness table for PommesSystemAppChecking;
  *(v29 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) &selRef_statusType];
  outlined init with take of DomainWarmupHandling(&v122, v29 + 16);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v95 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v29, 0, 0, &v122);

  outlined destroy of MediaUserStateCenter?(&v122, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  type metadata accessor for MarketplaceInfoDataProvider(0);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v32 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v109 = specialized AnyDataProvider.init<A>(provider:)(v30);
  type metadata accessor for PairedDeviceDataProvider();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v114 = specialized AnyDataProvider.init<A>(provider:)(v33);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v122, &v119, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  swift_allocObject();
  v34 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v94[0] = specialized AnyDataProvider.init<A>(provider:)(v34);
  outlined destroy of MediaUserStateCenter?(&v122, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v35 = type metadata accessor for CarPlaySessionDataProvider();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v36[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v36[v37] = 0;
  v118.receiver = v36;
  v118.super_class = v35;
  v38 = objc_msgSendSuper2(&v118, &selRef_statusType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v108 = specialized AnyDataProvider.init<A>(provider:)(v38);
  v106 = v22;
  v115 = [v22 &off_2784DB1E0];
  v94[1] = type metadata accessor for SiriEnvironment();
  v107 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v39 = swift_allocObject();
  *(&v123 + 1) = &type metadata for PommesSystemAppChecking;
  v124 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v41 = v100;
  v40 = v101;
  v42 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x277D851C8], v102);
  static OS_dispatch_queue.global(qos:)();
  (*(v40 + 8))(v41, v42);
  (*(v104 + 104))(v103, *MEMORY[0x277D85260], v105);
  v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v39 + 160) = 0u;
  *(v39 + 176) = 0;
  *(v39 + 144) = 0u;
  v104 = v39 + 144;
  v44 = v111;
  v45 = v112;
  *(v39 + 16) = v43;
  *(v39 + 24) = v45;
  v47 = v96;
  v46 = v97;
  *(v39 + 32) = v44;
  *(v39 + 40) = v46;
  v48 = v95;
  *(v39 + 48) = v47;
  *(v39 + 56) = v48;
  v49 = v109;
  *(v39 + 64) = v110;
  *(v39 + 72) = v49;
  *(v39 + 80) = v114;
  v50 = v107;
  *(v39 + 96) = v108;
  *(v39 + 104) = 0;
  v51 = v115;
  *(v39 + 112) = v50;
  *(v39 + 120) = v51;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  outlined init with copy of AppDataProviding(&v122, &v119);
  swift_beginAccess();

  v52 = v48;

  v105 = v115;
  outlined assign with take of MediaUserStateCenter?(&v119, v104, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  v115 = v39;
  *(v39 + 88) = v94[0];
  v53 = *(*v46 + 160);

  v53(1);

  v54 = *(*v47 + 160);

  v54(1);

  (*(*v52 + 160))(1);

  __swift_destroy_boxed_opaque_existential_1(&v122);
  static SiriEnvironment.default.getter();
  v55 = SiriEnvironment.networkAvailability.getter();

  v56 = type metadata accessor for AssistantLocationProvider(0);
  swift_allocObject();
  v114 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  static SiriEnvironment.default.getter();
  v111 = SiriEnvironment.networkAvailability.getter();

  v57 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v57;
  v59 = [objc_opt_self() processInfo];
  LOBYTE(v44) = NSProcessInfo.isRunningUnitTests.getter();

  v112 = v55;
  if (v44)
  {
    v60 = &type metadata for EmptyReferenceResolver;
    v61 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v60 = type metadata accessor for ReferenceResolutionClient();
    *&v122 = ReferenceResolutionClient.__allocating_init()();
    v61 = MEMORY[0x277D5FDD8];
  }

  *(&v123 + 1) = v60;
  v124 = v61;
  v62 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v63 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  type metadata accessor for PegasusProxy(0);
  v64 = swift_allocObject();
  v120 = v56;
  v121 = &protocol witness table for AssistantLocationProvider;
  *&v119 = v114;
  v117[3] = &type metadata for PIMSEnablementProvider;
  v117[4] = &protocol witness table for PIMSEnablementProvider;
  v116[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v116[4] = &protocol witness table for CNContactStore;
  v116[0] = v62;
  *(v64 + 16) = 1;
  *(v64 + 144) = 0;
  *(v64 + 64) = 0;
  *(v64 + 72) = 0;
  v65 = v115;

  v66 = v62;
  v67 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v68 = MEMORY[0x277D84FA0];
  *(v64 + 152) = v67;
  *(v64 + 160) = v68;
  *(v64 + 168) = v68;
  *(v64 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v69 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v70 = type metadata accessor for InteractionType();
  (*(*(v70 - 8) + 56))(v64 + v69, 1, 1, v70);
  type metadata accessor for PegasusProxyForAssistant();
  *(v64 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v64 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(&v119, v64 + 96);
  *(v64 + 136) = v111;
  outlined init with copy of AppDataProviding(v117, v64 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v64 + 176) = v58;
  *(v64 + 184) = v65;
  outlined init with copy of AppDataProviding(&v122, v64 + 24);
  outlined init with copy of AppDataProviding(v116, v64 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v64 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v63;
  if (!byte_2836954F8)
  {
    v72 = 0xD000000000000013;
    v71 = 0x6E65657263536E6FLL;
    goto LABEL_8;
  }

  v71 = 0x6E65657263536E6FLL;
  v72 = 0x6E65657263536E6FLL;
  if (byte_2836954F8 == 1)
  {
LABEL_8:
    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v72);
  }

  if (byte_2836954F9 != 2)
  {
    v73 = 0x6E65657263536E6FLL;
    if (byte_2836954F9 != 1)
    {
      v73 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v73);
  }

  if (byte_2836954FA != 2)
  {
    if (byte_2836954FA != 1)
    {
      v71 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v71);
  }

  Apple_Parsec_Search_SearchConversationContext.init()();

  __swift_destroy_boxed_opaque_existential_1(&v122);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(&v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v75 = [objc_opt_self() indexMatcher];
  v76 = type metadata accessor for MusicDomain();
  v77 = swift_allocObject();
  v78 = specialized MusicDomain.init(spanMatcher:)(v75, v77);
  *(inited + 64) = v76;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v78;
  v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  v79 = specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(v115, v112);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v80 = static PegasusCacheManager.shared;

  v81 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  v111 = DomainWarmup.init(warmupClients:)(v81);
  v82 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v83 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v84 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  v85 = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v82, v83, v84);
  type metadata accessor for PommesSearch();
  v86 = swift_allocObject();
  v87 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = v87;
  *(v86 + 64) = v88;
  v89 = [v106 sharedPreferences];
  v90 = type metadata accessor for PommesServerFallbackPreferences();
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v86 + 96) = v90;
  *(v86 + 104) = &protocol witness table for PommesServerFallbackPreferences;

  *(v86 + 72) = v91;
  *(v86 + 112) = 0;
  *(v86 + 120) = MEMORY[0x277D84FA0];
  *(v86 + 16) = v79;
  *(v86 + 24) = v64;
  *(v86 + 32) = v114;
  *(v86 + 40) = v80;
  v92 = v111;
  *(v86 + 48) = v85;
  *(v86 + 56) = v92;
  return v86;
}

uint64_t PommesSearch.__allocating_init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v13 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v13;
  *(v12 + 64) = v14;
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v12 + 72) = v17;
  *(v12 + 112) = 0;
  *(v12 + 120) = MEMORY[0x277D84FA0];
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  return v12;
}

uint64_t PommesSearch.__allocating_init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(a1, a2);

  return v4;
}

uint64_t PommesSearch.init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(a1, a2);

  return v2;
}

uint64_t PommesSearch.init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v13 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v13;
  *(v6 + 64) = v14;
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v6 + 96) = v16;
  *(v6 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v6 + 72) = v17;
  *(v6 + 112) = 0;
  *(v6 + 120) = MEMORY[0x277D84FA0];
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 56) = a5;
  return v6;
}

uint64_t PommesSearch.shouldHandleRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v87[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v87[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v87[-1] - v15;
  v17 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest.ParseState(a1, v19, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

    outlined destroy of MediaUserStateCenter?(&v19[v20], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v22, v23, "Found PSC parse with high confidence from SARDRunPommesRequest. Accepting search for POMMES.", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    v25 = MEMORY[0x277D56650];
LABEL_14:
    v32 = *v25;
    v33 = type metadata accessor for PommesSearchReason();
    v34 = *(v33 - 8);
    (*(v34 + 104))(a2, v32, v33);
    return (*(v34 + 56))(a2, 0, 1, v33);
  }

  v26 = outlined destroy of PommesSearchRequest.ParseState(v19, type metadata accessor for PommesSearchRequest.ParseState);
  if (*(a1 + v5[20]) == 1)
  {
    v27 = *(PommesSearchRequest.userParses.getter() + 16);

    if (v27)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.pommes);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2232BB000, v29, v30, "Search request specified fallback and had any parse. Handle it in POMMES.", v31, 2u);
        MEMORY[0x223DE0F80](v31, -1, -1);
      }

      v25 = MEMORY[0x277D56668];
      goto LABEL_14;
    }
  }

  v86 = 0xD000000000000012;
  (*(*v2 + 160))(v87, v26);
  v37 = v88;
  v36 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v38 = (*(v36 + 8))(0, v37, v36);
  __swift_destroy_boxed_opaque_existential_1(v87);
  if (v38)
  {
    v39 = *(PommesSearchRequest.otherSalientParses()() + 16);

    if (!v39)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.pommes);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2232BB000, v58, v59, "NL server fallback is disabled and there are no other salient parses. POMMES may act as fallback.", v60, 2u);
        MEMORY[0x223DE0F80](v60, -1, -1);
      }

      v61 = *MEMORY[0x277D56660];
      v62 = type metadata accessor for PommesSearchReason();
      v63 = *(v62 - 8);
      (*(v63 + 104))(v16, v61, v62);
      (*(v63 + 56))(v16, 0, 1, v62);
      v50 = " gestures based search.";
      v51 = 0xD000000000000028;
      goto LABEL_37;
    }
  }

  if (*(a1 + v5[17]) == 1)
  {
    outlined init with copy of MediaUserStateCenter?(a1 + v5[10], v13, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v40 = type metadata accessor for PommesContext();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v13, 1, v40) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v13, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_27;
    }

    v42 = PommesContext.isConfirmation.getter();
    (*(v41 + 8))(v13, v40);
    if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v44, v45, "POMMES may act as fallback for the head gesture initiated search.", v46, 2u);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

    v47 = *MEMORY[0x277D56670];
    v48 = type metadata accessor for PommesSearchReason();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v16, v47, v48);
    (*(v49 + 56))(v16, 0, 1, v48);
    v50 = "Rejecting request.";
    v51 = 0xD000000000000047;
LABEL_37:
    v86 = v51;
    goto LABEL_38;
  }

LABEL_27:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.pommes);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2232BB000, v53, v54, "NL server fallback is enabled, or there are other salient parses available. POMMES will not act as fallback.", v55, 2u);
    MEMORY[0x223DE0F80](v55, -1, -1);
  }

  v56 = type metadata accessor for PommesSearchReason();
  (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
  v50 = "sponse@NSError>24";
LABEL_38:
  outlined init with copy of MediaUserStateCenter?(a1 + v5[11], v10, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v64 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v65 = (*(*(v64 - 8) + 48))(v10, 1, v64);
  outlined destroy of MediaUserStateCenter?(v10, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (v65 == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v67, v68))
    {

      goto LABEL_50;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v87[0] = v70;
    *v69 = 136446210;
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v50 | 0x8000000000000000, v87);

    *(v69 + 4) = v71;
    _os_log_impl(&dword_2232BB000, v67, v68, "No delegatedUDA from PSC parsers. %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x223DE0F80](v70, -1, -1);
    v72 = v69;
  }

  else
  {
    v73 = *(a1 + v5[12]);
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    if (v74 <= v73)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, static Logger.pommes);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_2232BB000, v82, v83, "Found PSC parse with high confidence. Accepting search for POMMES.", v84, 2u);
        MEMORY[0x223DE0F80](v84, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v16, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      v85 = *MEMORY[0x277D56658];
      v33 = type metadata accessor for PommesSearchReason();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a2, v85, v33);
      return (*(v34 + 56))(a2, 0, 1, v33);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    outlined init with copy of PommesSearchRequest.ParseState(a1, v7, type metadata accessor for PommesSearchRequest);

    v67 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v67, v76))
    {

      outlined destroy of PommesSearchRequest.ParseState(v7, type metadata accessor for PommesSearchRequest);
      return outlined init with take of PommesSearchReason?(v16, a2, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v87[0] = v78;
    *v77 = 134218242;
    v79 = *&v7[v5[12]];
    outlined destroy of PommesSearchRequest.ParseState(v7, type metadata accessor for PommesSearchRequest);
    *(v77 + 4) = v79;
    *(v77 + 12) = 2082;
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v50 | 0x8000000000000000, v87);

    *(v77 + 14) = v80;
    _os_log_impl(&dword_2232BB000, v67, v76, "Low PSC score: %f. %{public}s", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x223DE0F80](v78, -1, -1);
    v72 = v77;
  }

  MEMORY[0x223DE0F80](v72, -1, -1);
LABEL_50:

  return outlined init with take of PommesSearchReason?(v16, a2, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
}

uint64_t PommesSearch.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  (*(*v3 + 272))(a1, a2, a3);
  return outlined destroy of MediaUserStateCenter?(v9, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
}

uint64_t PommesSearch.search(pommesSearchRequest:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v176 = a3;
  v175 = a2;
  v177 = a4;
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v152 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchQoS();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchQoS.QoSClass();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for PommesSearchReason();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v150 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SignpostToken(0);
  v171 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v188 = v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v13;
  MEMORY[0x28223BE20](v12);
  v192 = v144 - v14;
  v164 = type metadata accessor for PerformanceUtil.Ticket(0);
  v169 = *(v164 - 8);
  v15 = MEMORY[0x28223BE20](v164);
  v173 = v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v16;
  MEMORY[0x28223BE20](v15);
  v191 = v144 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v167 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v174 = v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v187 = v144 - v22;
  v168 = v23;
  MEMORY[0x28223BE20](v21);
  v193 = v144 - v24;
  v25 = type metadata accessor for PommesSearchRequest(0);
  v180 = v25;
  v165 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v186 = v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v27;
  MEMORY[0x28223BE20](v26);
  v160 = v144 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v146 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v158 = v144 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v157 = v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v144 - v36;
  v38 = type metadata accessor for PommesCandidateId();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v185 = v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v41;
  MEMORY[0x28223BE20](v40);
  v43 = (v144 - v42);
  v44 = *(v25 + 32);
  v182 = a1;
  v45 = (a1 + v44);
  v47 = *v45;
  v46 = v45[1];

  PommesSearchRequest.pommesCandidateId.getter(v43);
  v189 = v5;
  v48 = *(v5 + 64);
  v49 = *(v39 + 16);
  v49(v37, v43, v38);
  v181 = v39;
  v50 = *(v39 + 56);
  v50(v37, 0, 1, v38);
  v51 = *(*v48 + 128);
  v184 = v47;
  v52 = v47;
  v53 = v180;
  v183 = v46;
  v159 = v48;
  v51(v52, v46, v37);
  outlined destroy of MediaUserStateCenter?(v37, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v54 = v157;
  v190 = v43;
  v55 = v43;
  v56 = v182;
  v162 = v39 + 16;
  v161 = v49;
  v49(v157, v55, v38);
  v57 = v54;
  v194 = v38;
  v50(v54, 0, 1, v38);
  v58 = v158;
  v59 = *(v56 + *(v53 + 48));
  v145 = *(v53 + 44);
  outlined init with copy of MediaUserStateCenter?(v56 + v145, v158, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v60 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v144[1] = v61 + 48;
  v144[0] = v62;
  if (v62(v58, 1, v60) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v58, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v63 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v64 = v65;
    (*(v61 + 8))(v58, v60);
  }

  v158 = v60;
  (*(*v159 + 160))(v184, v183, v57, v63, v64, v59);

  outlined destroy of MediaUserStateCenter?(v57, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v66 = v192;
  v67 = v190;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.pommes);
  v69 = v160;
  outlined init with copy of PommesSearchRequest.ParseState(v56, v160, type metadata accessor for PommesSearchRequest);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    v73 = *(v69 + *(v180 + 48));
    outlined destroy of PommesSearchRequest.ParseState(v69, type metadata accessor for PommesSearchRequest);
    *(v72 + 4) = v73;
    _os_log_impl(&dword_2232BB000, v70, v71, "Checking if PSC score is above threshold: %f", v72, 0xCu);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  else
  {

    outlined destroy of PommesSearchRequest.ParseState(v69, type metadata accessor for PommesSearchRequest);
  }

  v74 = v191;
  v75 = v193;
  v76 = v194;
  (*(*v189 + 256))(v56);
  Date.init()();
  v77 = v164;
  v78 = v74 + *(v164 + 20);
  *v78 = "SiriInformationSearch/PommesSearch.swift";
  *(v78 + 8) = 40;
  *(v78 + 16) = 2;
  *(v74 + v77[6]) = 257;
  v79 = v74 + v77[7];
  *v79 = "search(pommesSearchRequest:completion:)";
  *(v79 + 8) = 39;
  *(v79 + 16) = 2;
  v80 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000017, 0x80000002234DA310);
  v81 = (v74 + v77[8]);
  *v81 = v80;
  v81[1] = v82;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v83, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search", 6, 2u, 0, v66);
  v84 = v173;
  outlined init with copy of PommesSearchRequest.ParseState(v74, v173, type metadata accessor for PerformanceUtil.Ticket);
  outlined init with copy of PommesSearchRequest.ParseState(v66, v188, type metadata accessor for SignpostToken);
  outlined init with copy of MediaUserStateCenter?(v75, v187, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v161(v185, v67, v76);
  outlined init with copy of PommesSearchRequest.ParseState(v56, v186, type metadata accessor for PommesSearchRequest);
  v85 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v86 = (v170 + *(v171 + 80) + v85) & ~*(v171 + 80);
  v87 = (v172 + *(v167 + 80) + v86) & ~*(v167 + 80);
  v88 = (v168 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = v181;
  v92 = (*(v181 + 80) + v90 + 16) & ~*(v181 + 80);
  v93 = (v163 + *(v165 + 80) + v92) & ~*(v165 + 80);
  v94 = swift_allocObject();
  v95 = v94 + v85;
  v96 = v193;
  v97 = v84;
  v98 = v94;
  outlined init with take of PerformanceUtil.Ticket(v97, v95, type metadata accessor for PerformanceUtil.Ticket);
  outlined init with take of PerformanceUtil.Ticket(v188, v98 + v86, type metadata accessor for SignpostToken);
  outlined init with take of PommesSearchReason?(v187, v98 + v87, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v99 = (v98 + v88);
  v100 = v91;
  v101 = v176;
  *v99 = v175;
  v99[1] = v101;
  v102 = v189;
  *(v98 + v89) = v189;
  v103 = (v98 + v90);
  v104 = v100;
  v105 = v183;
  *v103 = v184;
  v103[1] = v105;
  (*(v100 + 32))(v98 + v92, v185, v194);
  outlined init with take of PerformanceUtil.Ticket(v186, v98 + v93, type metadata accessor for PommesSearchRequest);
  v106 = v174;
  outlined init with copy of MediaUserStateCenter?(v96, v174, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v107 = v178;
  v108 = v179;
  if ((*(v178 + 48))(v106, 1, v179) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v106, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v109 = v98;
    v110 = v146;
    outlined init with copy of MediaUserStateCenter?(v182 + v145, v146, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if ((v144[0])(v110, 1, v158) == 1)
    {
      v111 = 65;
    }

    else
    {
      v111 = 2;
    }

    outlined destroy of MediaUserStateCenter?(v110, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v112 = v148;
    v113 = v147;
    v114 = v149;
    (*(v148 + 104))(v147, *MEMORY[0x277D851C8], v149);
    v115 = static OS_dispatch_queue.global(qos:)();
    (*(v112 + 8))(v113, v114);
    v116 = swift_allocObject();
    *(v116 + 16) = partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:);
    *(v116 + 24) = v109;
    *(v116 + 32) = v111;
    v200 = partial apply for closure #2 in PommesSearch.search(pommesSearchRequest:completion:);
    v201 = v116;
    aBlock = MEMORY[0x277D85DD0];
    v197 = 1107296256;
    v198 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v199 = &block_descriptor;
    v117 = _Block_copy(&aBlock);

    v118 = v151;
    static DispatchQoS.unspecified.getter();
    v195 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v119 = v152;
    v120 = v156;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v118, v119, v117);
    v121 = 1;
    _Block_release(v117);

    (*(v155 + 8))(v119, v120);
    (*(v153 + 8))(v118, v154);
    outlined destroy of PommesSearchRequest.ParseState(v192, type metadata accessor for SignpostToken);
    outlined destroy of PommesSearchRequest.ParseState(v191, type metadata accessor for PerformanceUtil.Ticket);
    outlined destroy of MediaUserStateCenter?(v193, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    (*(v104 + 8))(v190, v194);
  }

  else
  {
    v122 = *(v107 + 32);
    v123 = v150;
    v122(v150, v106, v108);
    v124 = *(*v102 + 288);

    v125 = v182;
    v126 = v124(v182);
    if (v127 == -1)
    {
      v143 = (*(*v102 + 296))(v125);
      (*(*v143 + 208))(partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:), v98);

      outlined destroy of PommesSearchRequest.ParseState(v192, type metadata accessor for SignpostToken);
      outlined destroy of PommesSearchRequest.ParseState(v191, type metadata accessor for PerformanceUtil.Ticket);
      outlined destroy of MediaUserStateCenter?(v96, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      (*(v181 + 8))(v190, v194);
      v140 = v177;
      v122(v177, v123, v108);
      v121 = 0;
      goto LABEL_19;
    }

    v128 = v127;
    v129 = v126;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v130 = v148;
    v131 = v147;
    v132 = v149;
    (*(v148 + 104))(v147, *MEMORY[0x277D851C8], v149);
    v189 = static OS_dispatch_queue.global(qos:)();
    (*(v130 + 8))(v131, v132);
    v133 = swift_allocObject();
    *(v133 + 16) = partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:);
    *(v133 + 24) = v98;
    v188 = v129;
    *(v133 + 32) = v129;
    *(v133 + 40) = v128 & 1;
    v200 = partial apply for closure #3 in PommesSearch.search(pommesSearchRequest:completion:);
    v201 = v133;
    aBlock = MEMORY[0x277D85DD0];
    v197 = 1107296256;
    v198 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v199 = &block_descriptor_10;
    v134 = _Block_copy(&aBlock);

    outlined copy of Result<PommesResponse, Error>?(v129, v128);
    v135 = v151;
    static DispatchQoS.unspecified.getter();
    v195 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v136 = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v137 = v152;
    v138 = v156;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v139 = v189;
    MEMORY[0x223DDFBF0](0, v135, v137, v134);
    _Block_release(v134);

    outlined consume of Result<PommesResponse, Error>?(v188, v128);

    (*(v155 + 8))(v137, v138);
    (*(v153 + 8))(v135, v154);
    (*(v178 + 8))(v150, v179);
    outlined destroy of PommesSearchRequest.ParseState(v192, type metadata accessor for SignpostToken);
    outlined destroy of PommesSearchRequest.ParseState(v191, type metadata accessor for PerformanceUtil.Ticket);
    outlined destroy of MediaUserStateCenter?(v193, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    (*(v136 + 8))(v190, v194);

    v121 = 1;
  }

  v140 = v177;
LABEL_19:
  v141 = type metadata accessor for PommesSearchEagerInfo(0);
  return (*(*(v141 - 8) + 56))(v140, v121, 1, v141);
}

void closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(char *a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v64 = a6;
  v65 = a8;
  v63 = a7;
  v56 = a4;
  v57 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  v23 = type metadata accessor for PommesSearchReason();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v55 - v28;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v60 = a10;
  v61 = a11;
  v59 = a9;
  v30 = *(*static PerformanceUtil.shared + 184);
  v62 = static PerformanceUtil.shared;
  v30(a3, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v58 = a12;
  v31 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v31, static Signposter.pommes);
  OSSignposter.end(token:message:)(v56, 0, 0xE000000000000000);
  v32 = (v24 + 48);
  v55 = a1;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?(v57, v20, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v33 = *v32;
    if ((*v32)(v20, 1, v23) == 1)
    {
      (*(v24 + 104))(v27, *MEMORY[0x277D56670], v23);
      v34 = v33(v20, 1, v23);
      v35 = a1;
      if (v34 != 1)
      {
        outlined destroy of MediaUserStateCenter?(v20, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      }
    }

    else
    {
      (*(v24 + 32))(v27, v20, v23);
      v39 = a1;
    }

    v40 = type metadata accessor for PommesSearchError(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PommesSearchError and conformance PommesSearchError, type metadata accessor for PommesSearchError, &protocol conformance descriptor for PommesSearchError);
    v41 = swift_allocError();
    *v42 = a1;
    (*(v24 + 32))(v42 + *(v40 + 20), v27, v23);
    v43 = v41;
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v57, v22, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v36 = *v32;
    if ((*v32)(v22, 1, v23) == 1)
    {
      (*(v24 + 104))(v29, *MEMORY[0x277D56670], v23);
      v37 = v36(v22, 1, v23);
      v38 = a1;
      if (v37 != 1)
      {
        outlined destroy of MediaUserStateCenter?(v22, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      }
    }

    else
    {
      (*(v24 + 32))(v29, v22, v23);
      v44 = a1;
    }

    dispatch thunk of PommesResponse.setSearchReason(_:)();
    (*(v24 + 8))(v29, v23);
    v45 = a1;
    v41 = a1;
  }

  (v64)(v41, a2 & 1);
  v46 = type metadata accessor for PommesCandidateId();
  v47 = *(v46 - 8);
  v64 = *(v47 + 16);
  v48 = v66;
  v49 = v61;
  v64(v66, v61, v46);
  v50 = *(v47 + 56);
  v50(v48, 0, 1, v46);
  v51 = *(*v65 + 360);
  v57 = v41;
  v51(v59, v60, v48, v41, a2 & 1);
  outlined consume of Result<PommesResponse, Error>(v41);
  outlined destroy of MediaUserStateCenter?(v48, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v52 = (v58 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v53 = *v52;
  v54 = v52[1];
  v64(v48, v49, v46);
  v50(v48, 0, 1, v46);
  (*(*v62 + 240))(v53, v54, v48);
  outlined destroy of MediaUserStateCenter?(v48, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  specialized PommesSearch.runGeoPersonalizationShadowLogging(result:)(v55, a2 & 1);
  outlined consume of Result<PommesResponse, Error>(v57);
}

void closure #2 in PommesSearch.search(pommesSearchRequest:completion:)(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t PommesSearch.shouldCheckPreflight(preflight:for:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AppDataProviding(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC17PreflightHandling_pMd, &_s21SiriInformationSearch06PommesC17PreflightHandling_pMR);
  type metadata accessor for ClassicFollowupPreflightClient();
  if (swift_dynamicCast() & 1) != 0 && (v5 = , (*(*v2 + 160))(v19, v5), v6 = v20, v7 = v21, __swift_project_boxed_opaque_existential_1(v19, v20), v8 = (*(v7 + 8))(0, v6, v7), __swift_destroy_boxed_opaque_existential_1(v19), (v8))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "NLv3 deprecation enabled, skipping ClassicFollowupPreflightClient", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  outlined init with copy of AppDataProviding(a1, v19);
  type metadata accessor for WholeHomeAudioPreflightClient();
  if (swift_dynamicCast())
  {

    if (*(a2 + *(type metadata accessor for PommesSearchRequest(0) + 80)))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.pommes);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2232BB000, v15, v16, "Handling fallback request, skipping WholeHomeAudioPreflightClient", v17, 2u);
        MEMORY[0x223DE0F80](v17, -1, -1);
      }

      return 0;
    }
  }

  return v13;
}

void *PommesSearch.performPreflightChecks(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_25;
  }

LABEL_2:
  v7 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v7, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.preflight", 16, 2u, 0, v6);
  v8 = *(v2 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = 0;
  v11 = v8 + 32;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_2;
    }

    outlined init with copy of AppDataProviding(v11, v50);
    if (PommesSearch.shouldCheckPreflight(preflight:for:)(v50, a1))
    {
      v12 = v51;
      v13 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v14 = PommesSearchPreflightHandling.handleAndLog(pommesSearchRequest:)(a1, v12, v13);
      if (v14 != 1)
      {
        break;
      }
    }

    ++v10;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_22;
    }
  }

  v16 = v15;
  v17 = v14;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.pommes);
  outlined init with copy of AppDataProviding(v50, v49);
  v20 = v17;
  v21 = v16;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v22, v23))
  {

    __swift_destroy_boxed_opaque_existential_1(v49);
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    v36 = v20;
    outlined consume of PommesSearchPreflightResult(v17, v16);
    __swift_destroy_boxed_opaque_existential_1(v50);
    goto LABEL_23;
  }

  v46 = v19;
  v24 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v48 = v44;
  *v24 = 136315650;
  outlined init with copy of AppDataProviding(v49, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC17PreflightHandling_pMd, &_s21SiriInformationSearch06PommesC17PreflightHandling_pMR);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v49);
  v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v48);

  *(v24 + 4) = v28;
  *(v24 + 12) = 2080;
  v47 = v17;
  v45 = v20;
  v29 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  v30 = String.init<A>(describing:)();
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v48);

  *(v24 + 14) = v32;
  *(v24 + 22) = 2080;
  if (v16)
  {
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = v34;
  }

  else
  {
    v35 = 0xE500000000000000;
    v33 = 0x3E6C696E3CLL;
  }

  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v48);

  *(v24 + 24) = v37;
  _os_log_impl(&dword_2232BB000, v22, v23, "Preflight client %s generated response: %s error: %s", v24, 0x20u);
  v38 = v44;
  swift_arrayDestroy();
  MEMORY[0x223DE0F80](v38, -1, -1);
  MEMORY[0x223DE0F80](v24, -1, -1);

  v20 = v45;
  if (v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (!v16)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

    outlined consume of PommesSearchPreflightResult(0, 0);
    __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v17 = v16;
  v39 = v16;
  outlined consume of PommesSearchPreflightResult(0, v16);
  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_23:
  OSSignposter.end(token:message:)(v6, 0, 0xE000000000000000);
  outlined destroy of PommesSearchRequest.ParseState(v6, type metadata accessor for SignpostToken);
  return v17;
}

void *PommesSearch.makeSearchRequestProcessor(with:)(uint64_t a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v32);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[7];
  outlined init with copy of PommesSearchRequest.ParseState(a1, v12, type metadata accessor for PommesSearchRequest);
  v17 = v1[6];
  type metadata accessor for PommesSearchRequestProcessor(0);
  v18 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v19 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v19;
  v18[6] = v20;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest.ParseState(v12, v18 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = v17;
  v33 = v12;
  outlined init with copy of PommesSearchRequest.ParseState(v12, v9, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v9;
  v23 = v9[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v25 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v26 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v27 = v9 + *(v24 + 64);
    }

    else
    {

      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      v25 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v26 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v27 = v9 + v29;
    }

    outlined destroy of MediaUserStateCenter?(v27, v25, v26);
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest.ParseState(v9 + v28, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v40 = 0xD000000000000021;
  v41 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v22, v23);

  static DispatchQoS.userInitiated.getter();
  v40 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, *MEMORY[0x277D85260], v39);
  v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined destroy of PommesSearchRequest.ParseState(v33, type metadata accessor for PommesSearchRequest);
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v30;
  return v18;
}

Swift::Void __swiftcall PommesSearch.prepareForSearch()()
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
    _os_log_impl(&dword_2232BB000, v3, v4, "POMMES preparing for search", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = (*(*v6 + 528))();
  (*(*v6 + 536))(v7);
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtRequestStart()()
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
    _os_log_impl(&dword_2232BB000, v3, v4, "POMMES preparing for search at request start", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  (*(**(v1 + 24) + 536))();
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v4 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
    dispatch thunk of Hashable.hash(into:)();
    v7 = *(matched + 20);
    v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
    v19 = v8;
    v20 = v7;
    dispatch thunk of Hashable.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = a2 + 56;
    v11 = -1 << *(a2 + 32);
    v12 = v9 & ~v11;
    if ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v17 = v6;
      v18 = matched;
      v21 = a2;
      v13 = ~v11;
      v14 = *(v4 + 72);
      do
      {
        outlined init with copy of PommesSearchRequest.ParseState(*(v21 + 48) + v14 * v12, v6, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398C8]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v23 == v22)
        {
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v6 = v17;
          dispatch thunk of RawRepresentable.rawValue.getter();
          outlined destroy of PommesSearchRequest.ParseState(v6, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          if (v23 == v22)
          {
            return 1;
          }
        }

        else
        {
          outlined destroy of PommesSearchRequest.ParseState(v6, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }
  }

  return 0;
}

{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39540]);
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
  v3 = type metadata accessor for DeviceClass();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8], MEMORY[0x277D61BD0]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8], MEMORY[0x277D61BD8]);
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
  if (*(a2 + 16))
  {
    v3 = a1;
    Hasher.init(_seed:)();
    CommonAudio.Attribute.rawValue.getter(v3);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA00000000007473;
        v9 = 0x697472416D6F7266;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE800000000000000;
            v9 = 0x676E6F536D6F7266;
            break;
          case 2:
            v9 = 0x75626C416D6F7266;
            v8 = 0xE90000000000006DLL;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x7478654E79616C70;
            break;
          case 4:
            v8 = 0xE700000000000000;
            v9 = 0x776F4E79616C70;
            break;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x7473614C79616C70;
            break;
          case 6:
            v8 = 0xE800000000000000;
            v9 = 0x7974696E69666661;
            break;
          case 7:
            v9 = 0x6E656D6D6F636572;
            v8 = 0xEB00000000646564;
            break;
          case 8:
            v8 = 0xE900000000000079;
            v9 = 0x7265766F63736964;
            break;
          case 9:
            v9 = 0xD000000000000018;
            v8 = 0x80000002234D9AC0;
            break;
          case 0xA:
            v8 = 0xE400000000000000;
            v9 = 1954047342;
            break;
          case 0xB:
            v8 = 0xE500000000000000;
            v9 = 0x64656D616ELL;
            break;
          case 0xC:
            v8 = 0xE800000000000000;
            v9 = 0x73756F6976657270;
            break;
          case 0xD:
            v9 = 0x44657361656C6572;
            v8 = 0xEB00000000657461;
            break;
          case 0xE:
            v8 = 0xE800000000000000;
            v9 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v10 = 0x697472416D6F7266;
        v11 = 0xEA00000000007473;
        switch(v3)
        {
          case 1:
            v11 = 0xE800000000000000;
            if (v9 == 0x676E6F536D6F7266)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 2:
            v11 = 0xE90000000000006DLL;
            if (v9 != 0x75626C416D6F7266)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v11 = 0xE800000000000000;
            if (v9 != 0x7478654E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v11 = 0xE700000000000000;
            if (v9 != 0x776F4E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v11 = 0xE800000000000000;
            if (v9 != 0x7473614C79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v11 = 0xE800000000000000;
            if (v9 != 0x7974696E69666661)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v12 = 0x6E656D6D6F636572;
            v13 = 6579556;
            goto LABEL_40;
          case 8:
            v11 = 0xE900000000000079;
            if (v9 != 0x7265766F63736964)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v11 = 0x80000002234D9AC0;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v11 = 0xE400000000000000;
            v10 = 1954047342;
            goto LABEL_45;
          case 11:
            v11 = 0xE500000000000000;
            if (v9 != 0x64656D616ELL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v11 = 0xE800000000000000;
            if (v9 != 0x73756F6976657270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 13:
            v12 = 0x44657361656C6572;
            v13 = 6648929;
LABEL_40:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v12)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 14:
            v11 = 0xE800000000000000;
            if (v9 != 0x6E6F697461727564)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v9 != v10)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v8 == v11)
            {

              v14 = 1;
              return v14 & 1;
            }

LABEL_47:
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v14)
            {
              return v14 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v14 & 1;
            }

            break;
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

BOOL specialized Set.contains(_:)(unsigned __int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = MEMORY[0x223DE0350](*(a2 + 40), a1, 2);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 2 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t PommesSearch.cacheMUXContext(msg:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "POMMES caching MUX context", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  return (*(**(v2 + 48) + 160))(a1);
}

uint64_t PommesSearch.logCompletionOfPommesRequest(requestId:pommesCandidateId:result:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for PommesSearchError(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PommesSearchReason();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  if ((a5 & 1) == 0)
  {
    v34 = *(v6 + 64);
    v35 = PommesResponse.pommesRequestResult.getter();
    dispatch thunk of PommesResponse.searchReason.getter();
    v36 = PommesResponse.isHandledByPreflight.getter();
    v37 = PommesResponse.preflightClientHandlerIdentifier.getter();
    (*(*v34 + 136))(v49, v50, v51, v35, v21, v36 & 1, v37, v38);

    return (*(v16 + 8))(v21, v15);
  }

  v22 = v49;
  v53 = a4;
  v23 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v24 = swift_dynamicCast();
  v25 = *(v13 + 56);
  if (!v24)
  {
    v25(v11, 1, 1, v12);
    outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v39 = *(v6 + 64);
    (*(v16 + 104))(v21, *MEMORY[0x277D56670], v15);
    (*(*v39 + 144))(v22, v50, v51, 0, v21);
    return (*(v16 + 8))(v21, v15);
  }

  v25(v11, 0, 1, v12);
  v26 = v11;
  v27 = v48;
  outlined init with take of PerformanceUtil.Ticket(v26, v48, type metadata accessor for PommesSearchError);
  v28 = v16;
  v29 = v15;
  (*(v16 + 16))(v19, v27 + *(v12 + 20), v15);
  v53 = *v27;
  v30 = v53;
  if (!swift_dynamicCast())
  {
    v41 = *(**(v6 + 64) + 144);
    v42 = v22;
    v32 = v50;
    v33 = v51;
LABEL_11:
    v41(v42, v32, v33, 0, v19);
    goto LABEL_12;
  }

  v31 = v52 >> 6;
  v32 = v50;
  v33 = v51;
  if (!v31)
  {
    (*(**(v6 + 64) + 152))(v22, v50, v51);
    goto LABEL_12;
  }

  if (v31 != 1)
  {
    if (v52 != 128)
    {
      if (v52 == 129)
      {
        v43 = v22;
        v44 = v50;
        v45 = v51;
        v46 = [objc_allocWithZone(MEMORY[0x277D5A0A0]) init];
        v47 = v46;
        if (v46)
        {
          [v46 setPommesConfidenceScore_];
          [v47 setPegasusDomain_];
          [v47 setIsLowConfidenceKnowledgeResult_];
        }

        (*(**(v6 + 64) + 136))(v43, v44, v45, v47, v19, 0, 0, 0);

        v27 = v48;
      }

      else
      {
        (*(**(v6 + 64) + 144))(v22, v50, v51, 3, v19);
      }

      goto LABEL_12;
    }

    v41 = *(**(v6 + 64) + 144);
    v42 = v22;
    goto LABEL_11;
  }

  (*(**(v6 + 64) + 144))(v22, v50, v51, dword_2234D09F4[v52 & 0x3F], v19);
LABEL_12:
  (*(v28 + 8))(v19, v29);
  return outlined destroy of PommesSearchRequest.ParseState(v27, type metadata accessor for PommesSearchError);
}

void closure #3 in PommesSearch.runGeoPersonalizationShadowLogging(result:)(unint64_t a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2232BB000, oslog, v5, "Shadow logger failed due to error: %@", v6, 0xCu);
      outlined destroy of MediaUserStateCenter?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v7, -1, -1);
LABEL_12:
      MEMORY[0x223DE0F80](v6, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (a1 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v6 + 4) = v12;
      outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 0);
      _os_log_impl(&dword_2232BB000, oslog, v11, "Shadow logger found and logged details about %ld events", v6, 0xCu);
      goto LABEL_12;
    }

    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 0);
  }
}

void *PommesSearch.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return v0;
}

uint64_t PommesSearch.__deallocating_deinit()
{
  PommesSearch.deinit();

  return swift_deallocClassInstance();
}

Swift::Int SearchError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SearchError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v2);
  return Hasher._finalize()();
}

SiriInformationSearch::LocalDomainTypes_optional __swiftcall LocalDomainTypes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalDomainTypes.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriInformationSearch_LocalDomainTypes_music;
  }

  else
  {
    v4.value = SiriInformationSearch_LocalDomainTypes_unknownDefault;
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

uint64_t LocalDomainTypes.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636973756DLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalDomainTypes(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636973756DLL;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x636973756DLL;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalDomainTypes()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalDomainTypes(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalDomainTypes(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocalDomainTypes@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalDomainTypes.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocalDomainTypes(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x636973756DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t specialized AnyDataProvider.init<A>(provider:)(uint64_t a1)
{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AmpDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AmpDataProviderCmMd, &_s21SiriInformationSearch15AmpDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AudioQueueStateDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch27AudioQueueStateDataProviderCmMd, &_s21SiriInformationSearch27AudioQueueStateDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AppInfoDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19AppInfoDataProviderCmMd, &_s21SiriInformationSearch19AppInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for PreferredNavigationAppDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch34PreferredNavigationAppDataProviderCmMd, &_s21SiriInformationSearch34PreferredNavigationAppDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for SiriKitAppInfoDataProvider(0);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0A22KitAppInfoDataProviderCmMd, &_s21SiriInformationSearch0A22KitAppInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for MarketplaceInfoDataProvider(0);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch27MarketplaceInfoDataProviderCmMd, &_s21SiriInformationSearch27MarketplaceInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for PairedDeviceDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PairedDeviceDataProviderCmMd, &_s21SiriInformationSearch24PairedDeviceDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32GMAvailabilityPolicyDataProviderCmMd, &_s21SiriInformationSearch32GMAvailabilityPolicyDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for ProfileSliceResolvingDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch33ProfileSliceResolvingDataProviderCmMd, &_s21SiriInformationSearch33ProfileSliceResolvingDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGmMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGmMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

uint64_t specialized AnyDataProvider.init<A>(provider:)(void *a1)
{
  *(v1 + 80) = dispatch_group_create();
  *(v1 + 88) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  *(v1 + 72) = v6;
  type metadata accessor for CarPlaySessionDataProvider();
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch26CarPlaySessionDataProviderCmMd, &_s21SiriInformationSearch26CarPlaySessionDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v8;
  return v1;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  CommonAudio.Attribute.rawValue.getter(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_51:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
    goto LABEL_54;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xEA00000000007473;
    v11 = 0x697472416D6F7266;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE800000000000000;
        v11 = 0x676E6F536D6F7266;
        break;
      case 2:
        v11 = 0x75626C416D6F7266;
        v10 = 0xE90000000000006DLL;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x7478654E79616C70;
        break;
      case 4:
        v10 = 0xE700000000000000;
        v11 = 0x776F4E79616C70;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x7473614C79616C70;
        break;
      case 6:
        v10 = 0xE800000000000000;
        v11 = 0x7974696E69666661;
        break;
      case 7:
        v11 = 0x6E656D6D6F636572;
        v10 = 0xEB00000000646564;
        break;
      case 8:
        v10 = 0xE900000000000079;
        v11 = 0x7265766F63736964;
        break;
      case 9:
        v11 = 0xD000000000000018;
        v10 = 0x80000002234D9AC0;
        break;
      case 0xA:
        v10 = 0xE400000000000000;
        v11 = 1954047342;
        break;
      case 0xB:
        v10 = 0xE500000000000000;
        v11 = 0x64656D616ELL;
        break;
      case 0xC:
        v10 = 0xE800000000000000;
        v11 = 0x73756F6976657270;
        break;
      case 0xD:
        v11 = 0x44657361656C6572;
        v10 = 0xEB00000000657461;
        break;
      case 0xE:
        v10 = 0xE800000000000000;
        v11 = 0x6E6F697461727564;
        break;
      default:
        break;
    }

    v12 = 0x697472416D6F7266;
    v13 = 0xEA00000000007473;
    switch(a2)
    {
      case 1:
        v13 = 0xE800000000000000;
        if (v11 == 0x676E6F536D6F7266)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 2:
        v13 = 0xE90000000000006DLL;
        if (v11 != 0x75626C416D6F7266)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3:
        v13 = 0xE800000000000000;
        if (v11 != 0x7478654E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4:
        v13 = 0xE700000000000000;
        if (v11 != 0x776F4E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5:
        v13 = 0xE800000000000000;
        if (v11 != 0x7473614C79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6:
        v13 = 0xE800000000000000;
        if (v11 != 0x7974696E69666661)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7:
        v14 = 0x6E656D6D6F636572;
        v15 = 6579556;
        goto LABEL_39;
      case 8:
        v13 = 0xE900000000000079;
        if (v11 != 0x7265766F63736964)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9:
        v13 = 0x80000002234D9AC0;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 10:
        v13 = 0xE400000000000000;
        v12 = 1954047342;
        goto LABEL_44;
      case 11:
        v13 = 0xE500000000000000;
        if (v11 != 0x64656D616ELL)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 12:
        v13 = 0xE800000000000000;
        if (v11 != 0x73756F6976657270)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 13:
        v14 = 0x44657361656C6572;
        v15 = 6648929;
LABEL_39:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v11 != v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 14:
        v13 = 0xE800000000000000;
        if (v11 != 0x6E6F697461727564)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
LABEL_44:
        if (v11 != v12)
        {
          goto LABEL_46;
        }

LABEL_45:
        if (v10 != v13)
        {
LABEL_46:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
            goto LABEL_53;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_51;
          }

          continue;
        }

LABEL_53:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_54:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v5 = *(matched - 8);
  v6 = MEMORY[0x28223BE20](matched);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v25 = &v25 - v9;
  v26 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  dispatch thunk of Hashable.hash(into:)();
  v30 = matched;
  v11 = *(matched + 20);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  v33 = a2;
  v28 = v12;
  v29 = v11;
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = v10 + 56;
  v32 = v10;
  v15 = -1 << *(v10 + 32);
  v16 = v13 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      v19 = *(v32 + 48);
      v31 = v18 * v16;
      outlined init with copy of PommesSearchRequest.ParseState(v19 + v18 * v16, v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398C8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v35 == v34)
      {
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        outlined destroy of PommesSearchRequest.ParseState(v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        if (v35 == v34)
        {
          outlined destroy of PommesSearchRequest.ParseState(v33, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          outlined init with copy of PommesSearchRequest.ParseState(*(v32 + 48) + v31, v27, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          return 0;
        }
      }

      else
      {
        outlined destroy of PommesSearchRequest.ParseState(v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v33;
  v24 = v25;
  outlined init with copy of PommesSearchRequest.ParseState(v33, v25, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  v35 = *v21;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v16, isUniquelyReferenced_nonNull_native);
  *v21 = v35;
  outlined init with take of PerformanceUtil.Ticket(v23, v27, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  return 1;
}

{
  v41 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  MEMORY[0x28223BE20](v53);
  v5 = &v38 - v4;
  v6 = type metadata accessor for VideoCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v38 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  outlined init with copy of MediaUserStateCenter?(a2, v18, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v20 = Hasher._finalize()();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    outlined init with copy of MediaUserStateCenter?(v54, v39, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v56 = *v33;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    outlined init with take of PommesSearchReason?(v35, v41, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    outlined init with copy of MediaUserStateCenter?(*(v55 + 48) + v48 * v22, v23, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v25 = *(v53 + 48);
    outlined init with copy of MediaUserStateCenter?(v23, v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    outlined init with copy of MediaUserStateCenter?(v54, &v5[v25], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v5, v52, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      outlined destroy of MediaUserStateCenter?(v46, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    outlined destroy of MediaUserStateCenter?(v46, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v30(v32, v6);
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of MediaUserStateCenter?(v23, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_16:
  outlined destroy of MediaUserStateCenter?(v54, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  outlined init with copy of MediaUserStateCenter?(*(v55 + 48) + v24, v41, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  return 0;
}

{
  v41 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  MEMORY[0x28223BE20](v53);
  v5 = &v38 - v4;
  v6 = type metadata accessor for StringSearchScope();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v38 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  outlined init with copy of MediaUserStateCenter?(a2, v18, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v20 = Hasher._finalize()();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    outlined init with copy of MediaUserStateCenter?(v54, v39, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v56 = *v33;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    outlined init with take of PommesSearchReason?(v35, v41, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    outlined init with copy of MediaUserStateCenter?(*(v55 + 48) + v48 * v22, v23, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v25 = *(v53 + 48);
    outlined init with copy of MediaUserStateCenter?(v23, v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    outlined init with copy of MediaUserStateCenter?(v54, &v5[v25], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v5, v52, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      outlined destroy of MediaUserStateCenter?(v46, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA010]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    outlined destroy of MediaUserStateCenter?(v46, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v30(v32, v6);
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of MediaUserStateCenter?(v23, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_16:
  outlined destroy of MediaUserStateCenter?(v54, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  outlined init with copy of MediaUserStateCenter?(*(v55 + 48) + v24, v41, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}