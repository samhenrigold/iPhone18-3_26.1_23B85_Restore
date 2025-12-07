void static TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  TaskFinalizer.finalize(identifier:)(a1, a2);
}

void TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___WOCoreTaskFinalizer_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in TaskFinalizer.finalize(identifier:);
  *(v7 + 24) = v6;
  v29 = thunk for @callee_guaranteed () -> ()partial apply;
  v30 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_35_0;
  v8 = _Block_copy(&aBlock);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    goto LABEL_10;
  }

  v23 = 0;
  v24 = 0;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = &v23;
  v11 = v9;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in TaskFinalizer.finalize(identifier:);
  *(v12 + 24) = v10;
  v29 = thunk for @callee_guaranteed () -> ()partial apply;
  v30 = v12;
  v13 = MEMORY[0x277D85DD0];
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_45_5;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v5, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v23;
  if (v23)
  {
    while (1)
    {
      v16 = v24;

      v15(v17);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v15, v16);
      v18 = v23;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v23, v24);
      if (!v18)
      {
        break;
      }

      v19 = v10;
      v23 = 0;
      v24 = 0;
      v10 = swift_allocObject();
      v10[2] = v11;
      v10[3] = a1;
      v10[4] = a2;
      v10[5] = &v23;
      v20 = v11;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(partial apply for closure #2 in TaskFinalizer.finalize(identifier:), v19);
      v21 = swift_allocObject();
      *(v21 + 16) = partial apply for closure #2 in TaskFinalizer.finalize(identifier:);
      *(v21 + 24) = v10;
      v29 = thunk for @callee_guaranteed () -> ()partial apply;
      v30 = v21;
      aBlock = v13;
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed () -> ();
      v28 = &block_descriptor_45_5;
      v22 = _Block_copy(&aBlock);

      dispatch_sync(v5, v22);
      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        goto LABEL_9;
      }

      v15 = v23;
      if (!v23)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, v24);
  }
}

void closure #1 in TaskFinalizer.finalize(identifier:)(char *a1, Swift::Int a2, unint64_t a3)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v19, a2, a3);
  swift_endAccess();

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
    *(v10 + 12) = 2048;
    v12 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
    swift_beginAccess();
    v13 = *&v7[v12];
    v14 = *(v13 + 16);

    if (v14 && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);

    *(v10 + 14) = v18;

    _os_log_impl(&dword_20AEA4000, v8, v9, "Finalizer: Finalized identifier %s, running %ld tasks", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #2 in TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    v12 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
LABEL_11:
    v21 = *a4;
    v20 = a4[1];
    *a4 = v13;
    a4[1] = v14;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21, v20);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + v8);
    *(a1 + v8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + v8) = v23;
    return swift_endAccess();
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (!v12[2])
  {
    goto LABEL_5;
  }

LABEL_8:
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v16 = v12[2];
    if (v16)
    {
LABEL_10:
      v17 = v16 - 1;
      v18 = &v12[2 * v16 - 2];
      v14 = swift_allocObject();
      v19 = *(v18 + 2);
      v12[2] = v17;
      *(v14 + 16) = v19;
      v13 = _sytIegr_Ieg_TRTA_4;
      goto LABEL_11;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
    v16 = *(result + 16);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id TaskFinalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaskFinalizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double key path setter for QueriedExternalProvider.externalProvider : QueriedExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double QueriedExternalProvider.externalProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t QueriedExternalProvider.__allocating_init(externalProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t QueriedExternalProvider.init(externalProvider:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void QueriedExternalProvider.init(persistence:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_21:
    type metadata accessor for QueriedExternalProvider();
    swift_deallocPartialClassInstance();
    return;
  }

  type metadata accessor for ExternalProvider(0);
  v9 = a1;
  static ExternalProvider.deserialize(from:)(v9, v50);
  if (!v50[3])
  {
    _sypSgWOhTm_2(v50, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.core);
    v22 = v9;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50[0] = v26;
      *v25 = 136315138;
      v27 = [v22 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v5;
      v31 = v30;
      (*(v29 + 8))(v8, v4);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, v50);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Unable to deserialize ExternalProvider from persistence, uuid: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    goto LABEL_21;
  }

  v10 = v49;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = [v9 keyedNumbers];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v15 + 16))
  {

    goto LABEL_15;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_15:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.core);
    v34 = v9;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v37 = 136315394;
      v38 = [v34 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v5;
      v42 = v41;
      (*(v40 + 8))(v8, v4);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, &v49);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      swift_beginAccess();
      v44 = *(v10 + 32);
      v45 = *(v10 + 40);

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v49);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_20AEA4000, v35, v36, "Unable to determine permission value from uuid: %s, bundleId: %s", v37, 0x16u);
      v47 = v48;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v19 = *(*(v15 + 56) + 8 * v16);

  v20 = [v19 integerValue];

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v10;
    *(v2 + 24) = v20;
  }
}

uint64_t QueriedExternalProvider.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();

  String.hash(into:)();

  swift_beginAccess();
  return MEMORY[0x20F2E7FF0](*(v1 + 24));
}

id QueriedExternalProvider.serialize(with:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  v17 = [*(v2 + 16) serialize];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (a2)
  {
    swift_beginAccess();
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v22 = [v17 keyedNumbers];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v23;
    specialized Dictionary.subscript.setter(v21, v18, v20);
    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 setKeyedNumbers_];
  }

  else
  {
    v46 = v9;
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v47 = v5;
    v26 = v20;
    v27 = v6;
    v28 = v25;
    v29 = [v17 keyedNumbers];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v50[0] = v30;
    v31 = v28;
    v32 = v27;
    v33 = v26;
    v34 = v47;
    specialized Dictionary.subscript.setter(v31, v18, v33);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 setKeyedNumbers_];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    Date.init()();
    (*(v32 + 56))(v16, 0, 1, v34);
    v39 = [v17 keyedDates];
    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v50[0] = v40;
    if ((*(v32 + 48))(v16, 1, v34) == 1)
    {
      _sypSgWOhTm_2(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v41 = v48;
      specialized Dictionary._Variant.removeValue(forKey:)(v36, v38, v48);

      _sypSgWOhTm_2(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v42 = v46;
      (*(v32 + 32))(v46, v16, v34);
      v43 = v50[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v36, v38, isUniquelyReferenced_nonNull_native);

      v50[0] = v49;
    }

    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 setKeyedDates_];
  }

  return v17;
}

uint64_t QueriedExternalProvider.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);

  MEMORY[0x20F2E6D80](0x3D6574617473202CLL, 0xE800000000000000);
  swift_beginAccess();
  v4 = NSStringForWOPersistencePermissionState();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x20F2E6D80](v5, v7);

  return 0x72656469766F7270;
}

uint64_t QueriedExternalProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int QueriedExternalProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  swift_beginAccess();

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v0 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance QueriedExternalProvider(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  swift_beginAccess();

  String.hash(into:)();

  swift_beginAccess();
  return MEMORY[0x20F2E7FF0](*(v2 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueriedExternalProvider(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  swift_beginAccess();
  swift_beginAccess();

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v2 + 24));
  return Hasher._finalize()();
}

Swift::Int QueryClient.QueryClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QueryClient.QueryClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueryClient.QueryClientError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

void closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v8 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    v10[2] = a5;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_492;
    v11 = _Block_copy(aBlock);
    v12 = a5;

    [v8 remote:isa fetchConfiguration:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for fetch", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(0, v17);
  }
}

double closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_498;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v18);
  _Block_release(v18);
  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v16, v23);

  return result;
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutConfiguration(0);
    v13 = one-time initialization token for shared;
    v14 = a1;
    if (v13 != -1)
    {
      swift_once();
    }

    static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v14, 1, static WorkoutConfigurationValidator.shared, v32);
    if (v32[3])
    {
      if (swift_dynamicCast())
      {

        a1 = v31;
        goto LABEL_14;
      }
    }

    else
    {
      _sypSgWOhTm_2(v32, &_sypSgMd, &_sypSgMR);
    }

    v29 = a4;
    v30 = a3;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      v22 = [v16 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v9 + 8))(v12, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v32);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to deserialize WorkoutConfiguration from persistence, uuid: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      v27 = v20;
      a2 = v28;
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {
    }

    a1 = 0;
    a4 = v29;
  }

LABEL_14:
  a2(a1, a4);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void *QueryClient.fetchConfigurationSynchronously(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v13[2] = v7;
  v13[3] = a1;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(a3, v13, a4, v7);

  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = v8;
  v11 = v9;

  return v8;
}

void closure #1 in QueryClient.fetchConfigurationSynchronously(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v10 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a4;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = a5;
    v12 = _Block_copy(aBlock);

    [v10 *a6];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for fetch", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    swift_beginAccess();
    v18 = *(a2 + 24);
    *(a2 + 24) = v17;
  }
}

void closure #1 in closure #1 in QueryClient.fetchConfigurationSynchronously(uuid:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  type metadata accessor for WorkoutConfiguration(0);
  v11 = one-time initialization token for shared;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v12, 1, static WorkoutConfigurationValidator.shared, v33);
  if (!v33[3])
  {
    _sypSgWOhTm_2(v33, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v18 = 136315138;
      v19 = [v15 uuid];
      v30 = v17;
      v20 = v19;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v33);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v16, v30, "Unable to deserialize WorkoutConfiguration from persistence, uuid: %s", v18, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v13 = v32;
LABEL_14:
  swift_beginAccess();
  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  *(a3 + 16) = v13;
  *(a3 + 24) = a2;
  v28 = a2;
}

void closure #1 in QueryClient.fetchConfigurations(completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v14 = aBlock[6];
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a2;
    v15[4] = a3;
    aBlock[4] = a6;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = a7;
    v16 = _Block_copy(aBlock);
    v17 = a4;

    [v14 *a8];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Unable to interpret proxy for fetch", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v22 = swift_allocError();
    a2(MEMORY[0x277D84F90], v22);
  }
}

double closure #1 in closure #1 in QueryClient.fetchConfigurations(completion:)(uint64_t a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a5;
  v31 = a8;
  v32 = a9;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v18 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = specialized QueryClient.decodePersistences(data:)(a1, a2);
  v33 = *&a4[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v23 = swift_allocObject();
  v24 = v31;
  v23[2] = v30;
  v23[3] = a6;
  v23[4] = a4;
  v23[5] = v22;
  v23[6] = a3;
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v32;
  v25 = _Block_copy(aBlock);

  v26 = a4;
  v27 = a3;
  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v21, v17, v25);
  _Block_release(v25);
  (*(v35 + 8))(v17, v14);
  (*(v18 + 8))(v21, v34);

  return result;
}

uint64_t QueryClient.fetchConfigurationsSynchronously()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  v6[2] = v1;
  v7 = v0;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.fetchConfigurationsSynchronously(), v6, partial apply for closure #2 in QueryClient.fetchConfigurationsSynchronously(), v1);

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  v4 = v3;

  return v2;
}

void closure #2 in QueryClient.fetchConfigurationSynchronously(uuid:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 24);
  *(a2 + 24) = a1;
  v5 = a1;
}

double QueryClient.fetchConfigurations(activityType:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  v8[2] = partial apply for closure #1 in QueryClient.fetchConfigurations(activityType:completion:);
  v8[3] = v7;
  v8[4] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in QueryClient.fetchConfigurations(activityType:completion:);
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = a1;

  v11 = v3;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.fetchConfigurations(completion:)partial apply, v8, closure #2 in QueryClient.fetchConfigurations(completion:)partial apply, v9);

  return result;
}

double closure #1 in QueryClient.fetchConfigurations(activityType:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v17 = a2;
      v18 = a4;
      v6 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F2E7A20](v6, a1, a3);
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v11 = *&v8[v10];
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v6;
        if (v9 == v5)
        {
          v18(v19, v17);
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v13 = a4;
      v14 = a2;
      v15 = __CocoaSet.count.getter();
      a2 = v14;
      a4 = v13;
      v5 = v15;
    }

    while (v15);
  }

  a4(MEMORY[0x277D84F90], a2);
LABEL_18:

  return result;
}

double QueryClient.save(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_retain_n();
  v9 = a1;
  v10 = v3;
  QueryClient.remoteProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.save(_:completion:), v7, partial apply for closure #2 in QueryClient.save(_:completion:), v8);

  return result;
}

void closure #1 in QueryClient.save(_:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v9 = aBlock[6];
    v10 = [a4 serialize];
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a2;
    v11[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.save(_:completion:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_417;
    v12 = _Block_copy(aBlock);
    v13 = a5;

    [v9 remote:v10 saveConfiguration:v12 withCompletion:?];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Unable to interpret proxy for save", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v18 = swift_allocError();
    a2(0, v18);
  }
}

double QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  swift_retain_n();
  v18 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(v20, v16, v21, v17);

  return result;
}

void closure #1 in QueryClient.deleteConfiguration(uuid:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v8 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    v10[2] = a5;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteConfiguration(uuid:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_405;
    v11 = _Block_copy(aBlock);
    v12 = a5;

    [v8 remote:isa deleteConfiguration:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for delete configuration", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(0, v17);
  }
}

void closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_393;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 fetchManagedConfigurations:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for fetching managed configurations", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(MEMORY[0x277D84F90], v20);
  }
}

double closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a3;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_399;
  v20 = _Block_copy(aBlock);

  v21 = a3;

  v22 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

double closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, void *a4)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v7 = aBlock[6];
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = a2;
    v8[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence : [WOPersistence]]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_381;
    v9 = _Block_copy(aBlock);
    v10 = a4;

    [v7 remote:v9 fetchManagedConfigurationsByProviderWithCompletion:?];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Unable to interpret proxy for fetching managed configurations", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(v16, v17);
  }

  return result;
}

double closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_387;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  v22 = a3;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);

  return result;
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void (*a2)(void *, uint64_t, __n128), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1 + 64;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v39 = MEMORY[0x277D84F98];
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (v13 << 9) | (8 * v14);
      v16 = *(*(a1 + 48) + v15);
      v17 = *(*(a1 + 56) + v15);
      type metadata accessor for QueriedExternalProvider();
      swift_allocObject();
      v18 = v16;

      QueriedExternalProvider.init(persistence:)(v16);
      if (v19)
      {
        v20 = v19;
        v35 = QueryClient.handleRetrievedPersistences(_:)(v17);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v39;
        v36 = v20;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        v24 = v39[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_28;
        }

        if (v39[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = v22;
            specialized _NativeDictionary.copy()();
            v22 = v33;
          }
        }

        else
        {
          v40 = v22;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v27 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
          v29 = v28 & 1;
          v22 = v40;
          if ((v40 & 1) != v29)
          {
            goto LABEL_30;
          }

          v23 = v27;
        }

        v39 = v41;
        if (v22)
        {
          *(v41[7] + 8 * v23) = v35;

          v12 = v13;
        }

        else
        {
          v41[(v23 >> 6) + 8] |= 1 << v23;
          *(v41[6] + 8 * v23) = v36;
          *(v41[7] + 8 * v23) = v35;

          v30 = v41[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_29;
          }

          v41[2] = v32;
          v12 = v13;
        }
      }

      else
      {

        v12 = v13;
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        (a2)(v39, a4);
        goto LABEL_24;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    (a2)(v34, a4);
LABEL_24:
  }
}

void closure #1 in QueryClient.addManagedConfigurations(managedConfigurations:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v15 = aBlock[6];
    if (a4 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = a7;
    if (!v16)
    {
LABEL_17:
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      v27[2] = a5;
      v27[3] = a2;
      v27[4] = a3;
      aBlock[4] = v33;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = a8;
      v28 = _Block_copy(aBlock);
      v29 = a5;

      [v15 *a9];
      _Block_release(v28);
      swift_unknownObjectRelease();

      return;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v30 = v15;
      v31 = a8;
      v32 = a2;
      v17 = 0;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x20F2E7A20](v17, a4);
        }

        else
        {
          v18 = *(a4 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        v20 = [v18 serialize];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v17);
      a8 = v31;
      a2 = v32;
      v15 = v30;
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.core);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Unable to interpret proxy for setting managed configurations", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v25 = swift_allocError();
    a2(0, v25);
  }
}

double QueryClient.addManagedConfigurations(managedConfigurations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  swift_retain_n();

  v15 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(a6, v13, a7, v14);

  return result;
}

void closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_333;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 deleteManagedConfigurations:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for deleting managed configurations", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

void closure #1 in QueryClient.deleteExternalProvider(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteExternalProvider(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_321;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 deleteExternalProvider:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for deleting providers", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

double closure #1 in closure #1 in QueryClient.save(_:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v26 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v17 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue);
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = v26;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v20, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v30);

  return result;
}

double QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3 & 1;
  *(v11 + 56) = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  swift_retain_n();

  v13 = v5;
  QueryClient.remoteProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:), v11, partial apply for closure #2 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:), v12);

  return result;
}

void closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v13 = aBlock[6];
    v14 = a6 & 1;
    v15 = QueriedExternalProvider.serialize(with:)(a5, a6 & 1);
    v16 = swift_allocObject();
    *(v16 + 16) = a7;
    *(v16 + 24) = a5;
    *(v16 + 32) = v14;
    *(v16 + 40) = a4;
    *(v16 + 48) = a2;
    *(v16 + 56) = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_301;
    v17 = _Block_copy(aBlock);
    v18 = a7;

    [v13 remote:v15 saveConfiguration:v17 withCompletion:?];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.core);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Unable to interpret proxy for fetching external provider", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v23 = swift_allocError();
    a2(0, v23);
  }
}

double closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(char a1, void *a2, char *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = a7;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v29 = *(v19 - 8);
  v30 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5 & 1;
  *(v23 + 32) = a3;
  *(v23 + 40) = a6;
  *(v23 + 48) = v28[0];
  *(v23 + 56) = a8;
  *(v23 + 64) = a1;
  *(v23 + 72) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_307;
  v24 = _Block_copy(aBlock);
  v25 = a3;

  v26 = a2;
  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v22, v18, v24);
  _Block_release(v24);
  (*(v31 + 8))(v18, v15);
  (*(v29 + 8))(v22, v30);

  return result;
}

void closure #1 in closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6, char a7, uint64_t a8)
{
  if ((a2 & 1) != 0 || a1 != 1)
  {
    (a5)(a7 & 1, a8, a3, a4);
  }

  else
  {
    swift_beginAccess();
    v12 = *(a4 + 16);
    swift_beginAccess();
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = v14;
    v15[5] = v13;
    v15[6] = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a6;
    swift_retain_n();

    v17 = a3;
    QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)partial apply, v15, closure #2 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)partial apply, v16);
  }
}

double QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_retain_n();

  v17 = v8;
  QueryClient.remoteProxy(handler:errorHandler:)(a7, v15, a8, v16);

  return result;
}

void closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_289;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 fetchExternalProviderForIdentifier:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for fetching external provider", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

double closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_295;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v18);
  _Block_release(v18);
  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v16, v23);

  return result;
}

double closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = a1;
    (a2)(0, a1);
  }

  else
  {
    type metadata accessor for QueriedExternalProvider();
    swift_allocObject();
    v9 = a4;
    QueriedExternalProvider.init(persistence:)(a4);
    a2();
  }

  return result;
}

double QueryClient.fetchConfigurations(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_retain_n();
  v13 = v6;
  QueryClient.remoteProxy(handler:errorHandler:)(a5, v11, a6, v12);

  return result;
}

void closure #1 in QueryClient.fetchExternalProviders(completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v7 = aBlock[6];
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = a2;
    v8[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_277;
    v9 = _Block_copy(aBlock);
    v10 = a4;

    [v7 remote:v9 fetchAllExternalProvidersWithCompletion:?];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Unable to interpret proxy for fetching external providers", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v15 = swift_allocError();
    a2(MEMORY[0x277D84F90], v15);
  }
}

double closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_283;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v18);
  _Block_release(v18);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);

  return result;
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:)(void *a1, void (*a2)(uint64_t, void *), uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(MEMORY[0x277D84F90], a1);
  }

  else if (a4)
  {
    v15 = MEMORY[0x277D84F90];
    if (a4 >> 62)
    {
LABEL_25:
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F2E7A20](v9, a4);
      }

      else
      {
        if (v9 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(a4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      type metadata accessor for QueriedExternalProvider();
      swift_allocObject();
      QueriedExternalProvider.init(persistence:)(v12);
      ++v9;
      if (v14)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v15;
        v9 = v13;
      }
    }

    a2(v10, 0);
  }

  else
  {
    a2(MEMORY[0x277D84F90], 0);
  }
}

void closure #1 in QueryClient.savePersistences(_:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v5 = aBlock[6];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_52;
    v7 = _Block_copy(aBlock);

    [v5 remote:isa saveConfigurations:v7 withCompletion:?];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Unable to interpret proxy for saving persistences", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v12 = swift_allocError();
    a2(0, v12);
  }
}

double QueryClient.remoteProxy(handler:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC11WorkoutCore11QueryClient_serverQueue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in QueryClient.remoteProxy(handler:errorHandler:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_477;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);

  return result;
}

void closure #1 in QueryClient.remoteProxy(handler:errorHandler:)(uint64_t a1, uint64_t (*a2)(void *a1), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider);
  if (v5)
  {
    v16 = a2;
    v17 = a3;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ();
    v15 = &block_descriptor_480;
    v8 = _Block_copy(&v12);
    v9 = v5;

    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v16 = partial apply for closure #1 in closure #1 in QueryClient.remoteProxy(handler:errorHandler:);
    v17 = v10;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v15 = &block_descriptor_486;
    v11 = _Block_copy(&v12);

    [v9 fetchPluginProxyWithHandler:v8 errorHandler:v11];
    _Block_release(v11);
    _Block_release(v8);
  }
}

uint64_t closure #1 in QueryClient.remoteSynchronousProxy(handler:errorHandler:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to fetch plugin proxy with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return a2(a1);
}

id QueryClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for QueryClientProtocol.fetchConfigurationSynchronously(uuid:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v15[2] = v9;
  v15[3] = a1;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(a5, v15, a6, v9);

  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = v10;
  v13 = v11;

  return v10;
}

double protocol witness for QueryClientProtocol.fetchConfigurations(activityType:completion:) in conformance QueryClient(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  v9[2] = closure #1 in QueryClient.fetchConfigurations(activityType:completion:)partial apply;
  v9[3] = v8;
  v9[4] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in QueryClient.fetchConfigurations(activityType:completion:)partial apply;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a1;

  v12 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.fetchConfigurations(completion:)partial apply, v9, closure #2 in QueryClient.fetchConfigurations(completion:)partial apply, v10);

  return result;
}

double protocol witness for QueryClientProtocol.save(_:completion:) in conformance QueryClient(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_retain_n();
  v10 = a1;
  v11 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.save(_:completion:)partial apply, v8, closure #2 in QueryClient.save(_:completion:)partial apply, v9);

  return result;
}

double protocol witness for QueryClientProtocol.fetchConfiguration(uuid:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a9;
  v24 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = *v9;
  (*(v14 + 16))(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v14 + 32))(v19 + v18, &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  swift_retain_n();
  v21 = v17;
  QueryClient.remoteProxy(handler:errorHandler:)(v24, v19, v23, v20);

  return result;
}

double protocol witness for QueryClientProtocol.addManagedConfigurations(managedConfigurations:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v15[5] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  swift_retain_n();

  v17 = v14;
  QueryClient.remoteProxy(handler:errorHandler:)(a8, v15, a9, v16);

  return result;
}

double protocol witness for QueryClientProtocol.updateQueriedExternalProvider(_:permissionState:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();

  v14 = v11;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)partial apply, v12, closure #2 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)partial apply, v13);

  return result;
}

double protocol witness for QueryClientProtocol.fetchConfigurations(completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_retain_n();
  v16 = v13;
  QueryClient.remoteProxy(handler:errorHandler:)(a7, v14, a8, v15);

  return result;
}

double protocol witness for QueryClientProtocol.fetchManagedConfigurations(sourceIdentifier:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *v10;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  v18 = v15;
  QueryClient.remoteProxy(handler:errorHandler:)(a9, v16, a10, v17);

  return result;
}

NSXPCInterface_optional __swiftcall QueryClient.exportedInterface()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

NSXPCInterface_optional __swiftcall QueryClient.remoteInterface()()
{
  v0 = WOWorkoutServerInterface();

  v1 = v0;
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

BOOL specialized static QueriedExternalProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  swift_beginAccess();
  v8 = v6 == *(v5 + 32) && v7 == *(v5 + 40);
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {
    swift_beginAccess();
    v11 = *(a1 + 24);
    swift_beginAccess();
    return v11 == *(a2 + 24);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t specialized QueryClient.decodePersistences(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if (a2 >> 60 == 15)
  {
    return v10;
  }

  v22 = v7;
  v11 = objc_allocWithZone(MEMORY[0x277D7E7E0]);
  outlined copy of Data._Representation(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithData_];

  if (!v13)
  {
    outlined consume of Data?(a1, a2);
    return 0;
  }

  v14 = [v13 persistences];
  if (!v14)
  {
    outlined consume of Data?(a1, a2);

    return 0;
  }

  v15 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v21 = v14;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v26)
  {
    v15 = MEMORY[0x277D84F90];
    do
    {
      outlined init with take of Any(&v25, &v24);
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOHealthBridgeProtoPersistence, 0x277D7E7D8);
      if (swift_dynamicCast())
      {
        v16 = v23;
        v17 = objc_opt_self();
        v20 = v16;
        v19 = [v17 persistenceFromProto_];
        MEMORY[0x20F2E6F30](v19);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v15 = v27;
      }

      NSFastEnumerationIterator.next()();
    }

    while (v26);
  }

  (*(v5 + 8))(v9, v22);
  outlined consume of Data?(a1, a2);

  return v15;
}

double specialized closure #1 in QueryClient.handleRetrievedPersistences(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315138;
      v10 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to update configurations with proto: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      swift_beginAccess();
      v20 = *(a2 + 16);
      if (v20 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v21;

      _os_log_impl(&dword_20AEA4000, v17, v18, "Successfully updated %ld configurations with proto", v19, 0xCu);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

void specialized QueryClient.connectionInvalidated()()
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.core);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "healthd connection invalidated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError()
{
  result = lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError;
  if (!lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError;
  if (!lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryClient.QueryClientError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for QueryClient.QueryClientError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t objectdestroy_91Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double partial apply for closure #2 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3(v4, a1);

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type WOPersistence and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type WOPersistence and conformance NSObject;
  if (!lazy protocol witness table cache variable for type WOPersistence and conformance NSObject)
  {
    type metadata accessor for NSNumber(255, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WOPersistence and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_323Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_395Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = QueryClient.handleRetrievedPersistences(_:)(v0[5]);
  v1(v3, v2);

  return result;
}

uint64_t objectdestroy_26Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackAlerts.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance TrackAlerts.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TrackAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance TrackAlerts.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TrackAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TrackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackAlerts.__allocating_init(lapChangeEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TrackAlerts.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TrackAlerts.init(from:)(a1);
  return v2;
}

uint64_t TrackAlerts.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for TrackAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

uint64_t TrackAlerts.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static TrackAlerts.defaultTrackAlerts()()
{
  type metadata accessor for TrackAlerts();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

Swift::Int TrackAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance TrackAlerts@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TrackAlerts();
  v5 = swift_allocObject();
  result = TrackAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TrackAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackAlerts(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  swift_beginAccess();
  Hasher._combine(_:)(*(v2 + 16));
  return Hasher._finalize()();
}

BOOL static TrackAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TrackAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t TrackAlerts.description.getter()
{
  _StringGuts.grow(_:)(35);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000020;
}

unint64_t lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts()
{
  result = lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts;
  if (!lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts)
  {
    type metadata accessor for TrackAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackAlerts.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TrackAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id one-time initialization function for integerNumberFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setNumberStyle_];
  [v0 setRoundingMode_];
  result = [v0 setMaximumFractionDigits_];
  static NSNumberFormatter.integerNumberFormatter = v0;
  return result;
}

id static NSNumberFormatter.integerNumberFormatter.getter()
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSNumberFormatter.integerNumberFormatter;

  return v0;
}

id @objc static NSNumberFormatter.integerNumberFormatter.getter()
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NSNumberFormatter.integerNumberFormatter;
}

void static NSNumberFormatter.integerNumberFormatter.setter(uint64_t a1)
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSNumberFormatter.integerNumberFormatter;
  static NSNumberFormatter.integerNumberFormatter = a1;
}

void @objc static NSNumberFormatter.integerNumberFormatter.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = one-time initialization token for integerNumberFormatter;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static NSNumberFormatter.integerNumberFormatter;
  static NSNumberFormatter.integerNumberFormatter = v4;
}

uint64_t (*static NSNumberFormatter.integerNumberFormatter.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NSNumberFormatter.integerNumberFormatter.modify;
}

id one-time initialization function for integralFormatter(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

id static NSNumberFormatter.integralFormatter.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t HKWorkoutActivityType.description.getter(uint64_t a1)
{
  v1 = _HKWorkoutActivityNameForActivityType();
  if (!v1)
  {
    return 0xD000000000000010;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x800000020B456540;
  v6._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v6))
  {
    v7 = String.count.getter();
    v8 = specialized Collection.dropFirst(_:)(v7, v3, v5);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v3 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
  }

  return v3;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t MSSuggestion.unifiedArtworkImage()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedArtworkImage(), 0, 0);
}

{
  v1 = MSSuggestion.legacyIntent.getter();
  v0[24] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = MSSuggestion.unifiedArtworkImage();

    return specialized MSSuggestion.artworkImage(from:)(v2);
  }

  else
  {
    v5 = v0[23];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = MSSuggestion.unifiedArtworkImage();
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCs5Error_pGMd, &_sSccySo7INImageCs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage;
    v0[13] = &block_descriptor_53;
    v0[14] = v6;
    [v5 artworkWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

{

  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = MSSuggestion.unifiedArtworkImage();
  }

  else
  {
    v2 = MSSuggestion.unifiedArtworkImage();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 168);
  v2 = [v1 _imageData];
  if (v2 && (v3 = v2, v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v6 = v5, v3, v7 = objc_allocWithZone(MEMORY[0x277D755B8]), isa = Data._bridgeToObjectiveC()().super.isa, v9 = [v7 initWithData_], isa, outlined consume of Data._Representation(v4, v6), v9))
  {
  }

  else
  {
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v10 = swift_allocError();
    *v11 = 4;
    *(v11 + 8) = 2;
    swift_willThrow();

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.mediaPlayback);
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20AEA4000, v14, v15, "MSSuggestion artwork loading encountered error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {
    }

    v9 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v9);
}

uint64_t MSSuggestion.unifiedArtworkImage()(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](MSSuggestion.unifiedArtworkImage(), 0, 0);
}

{
  v15 = v1;
  swift_willThrow();
  v2 = *(v1 + 216);
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "MSSuggestion artwork loading encountered error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 8);

  return v12(0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t MSSuggestionLegacyIntentExecutionContext.confirm()()
{
  *(v1 + 224) = v0;
  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.confirm(), 0, 0);
}

{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1[28];
  [*(v3 + 16) _setAirPlayRouteIds_];
  v4 = [objc_allocWithZone(MEMORY[0x277D21520]) initWithIntent_];
  v1[29] = v4;
  [v4 setRequiresTCC_];
  v1[22] = closure #1 in MSSuggestionLegacyIntentExecutionContext.confirm();
  v1[23] = 0;
  v5 = MEMORY[0x277D85DD0];
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v1[21] = &block_descriptor_22;
  v6 = _Block_copy(v2);
  [v4 setInterruptionHandler_];
  _Block_release(v6);
  v7 = *(v3 + 24);
  *(v3 + 24) = v4;
  v8 = v4;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v1[30] = __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20AEA4000, v10, v11, "NETWORK_START: extension connection resume", v12, 2u);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v1[2] = v1;
  v1[7] = v1 + 26;
  v1[3] = MSSuggestionLegacyIntentExecutionContext.confirm();
  v13 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17INCExtensionProxy_ps5Error_pGMd, &_sSccySo17INCExtensionProxy_ps5Error_pGMR);
  v1[18] = v5;
  v1[19] = 1107296256;
  v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INCExtensionProxy?, @unowned NSError?) -> () with result type INCExtensionProxy;
  v1[21] = &block_descriptor_25_0;
  v1[22] = v13;
  [v8 resumeWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = MSSuggestionLegacyIntentExecutionContext.confirm();
  }

  else
  {
    v2 = MSSuggestionLegacyIntentExecutionContext.confirm();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.confirm(), 0, 0);
}

uint64_t MSSuggestionLegacyIntentExecutionContext.confirm()(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + 26;
  v3 = v1[26];
  v4[6] = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension connection resume - result: success", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2[33] = static WorkoutSignposter.shared;
  WorkoutSignposter.emit(signpost:)(11);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_START: extension confirmIntent", v10, 2u);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v2[10] = v2;
  v2[15] = v4;
  v2[11] = MSSuggestionLegacyIntentExecutionContext.confirm();
  v11 = swift_continuation_init();
  v2[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMd, &_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMR);
  v2[18] = MEMORY[0x277D85DD0];
  v2[19] = 1107296256;
  v2[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?);
  v2[21] = &block_descriptor_28_0;
  v2[22] = v11;
  [v3 confirmIntentWithCompletionHandler_];

  return MEMORY[0x282200938](v2 + 10);
}

{
  v3 = *(v1 + 208);
  v2 = *(v1 + 216);
  if (v2)
  {
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 errorCode];

      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension confirmIntent - result: error (code: %ld)", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }

    WorkoutSignposter.emit(signpost:)(12);
    v22 = v4;
    v23 = [v22 errorCode];
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v24 = swift_allocError();
    *v25 = v23;
    *(v25 + 8) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_END: extension confirmIntent - result: success", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    WorkoutSignposter.emit(signpost:)(12);
    if (v3 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
    {
      v12 = v11;
      v13 = v3;
      if ([v12 code] == 1 || objc_msgSend(v12, sel_code) == 4)
      {
        v14 = *(v1 + 256);
        v15 = *(v1 + 224);

        *(v15 + 32) = v14;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v16 = v13;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v12;
          *v20 = v12;
          v21 = v16;
          _os_log_impl(&dword_20AEA4000, v17, v18, "MSSuggestionLegacyIntentExecutionContext.confirm() succeeded with response: %@", v19, 0xCu);
          outlined destroy of NSObject?(v20);
          MEMORY[0x20F2E9420](v20, -1, -1);
          MEMORY[0x20F2E9420](v19, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v35 = *(v1 + 8);
        goto LABEL_19;
      }

      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      v24 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 2;
      swift_willThrow();
    }

    else
    {
      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      v24 = swift_allocError();
      *v26 = 1;
      *(v26 + 8) = 2;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  [*(v1 + 232) reset];
  v27 = v24;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v24;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_20AEA4000, v28, v29, "MSSuggestionLegacyIntentExecutionContext.confirm() failed with error: %@", v30, 0xCu);
    outlined destroy of NSObject?(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);
  }

  v34 = *(v1 + 232);

  swift_willThrow();
  v35 = *(v1 + 8);
LABEL_19:

  return v35();
}

{
  swift_willThrow();
  v2 = *(v1 + 248);
  [*(v1 + 232) reset];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "MSSuggestionLegacyIntentExecutionContext.confirm() failed with error: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = *(v1 + 232);

  swift_willThrow();
  v11 = *(v1 + 8);

  return v11();
}

void closure #1 in MSSuggestionLegacyIntentExecutionContext.confirm()(void *a1)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Extension connection interrupted: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INCExtensionProxy?, @unowned NSError?) -> () with result type INCExtensionProxy(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?)(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t MSSuggestionLegacyIntentExecutionContext.handle()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.handle(), 0, 0);
}

{

  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.handle(), 0, 0);
}

uint64_t MSSuggestionLegacyIntentExecutionContext.handle()(uint64_t a1)
{
  v2 = v1[20];
  v3 = *(v2 + 24);
  v1[21] = v3;
  if (v3 && (v4 = *(v2 + 32), (v1[22] = v4) != 0))
  {
    v5 = one-time initialization token for shared;
    v6 = v3;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v1[23] = static WorkoutSignposter.shared;
    WorkoutSignposter.emit(signpost:)(13);
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v1[24] = __swift_project_value_buffer(v7, static WOLog.mediaPlayback);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_START: extension handleIntent", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = MSSuggestionLegacyIntentExecutionContext.handle();
    v11 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMd, &_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMR);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?);
    v1[13] = &block_descriptor_18_3;
    v1[14] = v11;
    [v4 handleIntentWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    swift_allocError();
    *v12 = 3;
    *(v12 + 8) = 2;
    swift_willThrow();
    v13 = v1[1];

    return v13();
  }
}

{
  v3 = v1[18];
  v2 = v1[19];
  if (v2)
  {
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 errorCode];

      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension handleIntent - result: error (code: %ld)", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }

    v19 = v1[21];
    WorkoutSignposter.emit(signpost:)(14);
    v20 = v4;
    v21 = [v20 errorCode];
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v22 = swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 1;
    swift_willThrow();

    v24 = v22;
    [v19 reset];
    v25 = v22;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v22;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_20AEA4000, v26, v27, "MSSuggestionLegacyIntentExecutionContext.handle() failed with error: %@", v28, 0xCu);
      outlined destroy of NSObject?(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    v32 = v1[21];

    swift_willThrow();
    swift_unknownObjectRelease();

    v18 = v1[1];
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_END: extension handleIntent - result: success", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    WorkoutSignposter.emit(signpost:)(14);
    v11 = v3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v3;
      v16 = v11;
      _os_log_impl(&dword_20AEA4000, v12, v13, "MSSuggestionLegacyIntentExecutionContext.handle() succeeded with response: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
      v11 = v12;
      v12 = v16;
    }

    swift_unknownObjectRelease();
    v17 = v1[21];

    v18 = v1[1];
  }

  return v18();
}

uint64_t MSSuggestionLegacyIntentExecutionContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id MSSuggestion.legacyIntent.getter()
{
  v1 = [v0 intent];
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = [v1 mediaContainer];
  if (v3)
  {
    v4 = v2;
    v2 = v3;
LABEL_4:

    return v4;
  }

  v6 = [v2 mediaItems];
  if (!v6)
  {
    v4 = 0;
    goto LABEL_4;
  }

  result = [v2 mediaItems];
  if (result)
  {
    v7 = result;
    type metadata accessor for LNAction(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      return v2;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t MSSuggestion.unifiedPrepare()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedPrepare(), 0, 0);
}

{
  v1 = MSSuggestion.legacyIntent.getter();
  v0[3] = v1;
  if (v1)
  {
    type metadata accessor for MSSuggestionLegacyIntentExecutionContext();
    v2 = swift_allocObject();
    v0[4] = v2;
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = MSSuggestion.unifiedPrepare();

    return MSSuggestionLegacyIntentExecutionContext.confirm()();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = MSSuggestion.unifiedPrepare();
  }

  else
  {
    v2 = MSSuggestion.unifiedPrepare();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MSSuggestion.unifiedPlay()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedPlay(), 0, 0);
}

{
  v24 = v0;
  v1 = MSSuggestion.legacyIntent.getter();
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = MSSuggestion.unifiedPlay();

    return specialized MSSuggestion.play(intent:)(v2);
  }

  else
  {
    v5 = [*(v0 + 144) unifiedIntent];
    *(v0 + 176) = v5;
    if (v5)
    {
      v6 = v5;
      MSSuggestion.needsMusicAppIntentConversion.getter();
      if ((v7 & 1) != 0 && (v8 = MSSuggestion.extractSiriRepID()(), (*(v0 + 184) = v9) != 0))
      {
        v10 = v8;
        v11 = v9;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static WOLog.mediaPlayback);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v23 = v16;
          *v15 = 136315138;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);
          _os_log_impl(&dword_20AEA4000, v13, v14, "Music intent needs conversion, extracted Siri rep ID (%s) and executing with MusicSiriRepresentationAppIntentDispatcher", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x20F2E9420](v16, -1, -1);
          MEMORY[0x20F2E9420](v15, -1, -1);
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v17 = static MusicSiriRepresentationAppIntentDispatcher.shared;
        v18 = unk_27C7299A0;
        *(v0 + 192) = static MusicSiriRepresentationAppIntentDispatcher.shared;
        swift_unknownObjectRetain();
        v19 = swift_task_alloc();
        *(v0 + 200) = v19;
        *v19 = v0;
        v19[1] = MSSuggestion.unifiedPlay();

        return MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(v10, v11, v17, v18);
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        *(v0 + 208) = static WorkoutSignposter.shared;
        WorkoutSignposter.emit(signpost:)(13);
        *(v0 + 16) = v0;
        *(v0 + 24) = MSSuggestion.unifiedPlay();
        v20 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 104) = &block_descriptor_32;
        *(v0 + 112) = v20;
        [v6 executeWithCompletion_];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    else
    {
      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      swift_allocError();
      *v21 = 5;
      *(v21 + 8) = 2;
      swift_willThrow();
      v22 = *(v0 + 8);

      return v22();
    }
  }
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = MSSuggestion.unifiedPlay();
  }

  else
  {
    v2 = MSSuggestion.unifiedPlay();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MSSuggestion.unifiedPlay(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = MSSuggestion.unifiedPlay();
  }

  else
  {
    v2 = MSSuggestion.unifiedPlay();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 176);
  WorkoutSignposter.emit(signpost:)(14);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MSSuggestion.unifiedPlay()(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void MSSuggestion.needsMusicAppIntentConversion.getter()
{
  v1 = v0;
  v2 = [v0 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0xD000000000000013 && 0x800000020B45F950 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  v8 = [v1 bundleID];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v35 = 0;
  v36 = 0;
  v12 = [v1 bundleID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v17 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v13, v15, 0);
  if (v17)
  {
    v24 = v17;
    v25 = [v17 bundleIdentifier];
    if (v25)
    {
      v26 = v25;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v27;
    }

    else
    {

      v23 = 0;
      v22 = 0;
    }

    if (v22)
    {
LABEL_17:
      v28 = [v1 bundleID];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (v23 == v29 && v22 == v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v33 = MSSuggestion.legacyIntent.getter();
          if (v33)
          {
          }
        }
      }
    }
  }

  else
  {
    v18 = [objc_opt_self() enumeratorWithOptions_];
    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v11;
    v19[4] = &v35;
    v20 = swift_allocObject();
    *(v20 + 16) = closure #1 in MSSuggestion.platformBundleID(for:)partial apply;
    *(v20 + 24) = v19;
    aBlock[4] = thunk for @callee_guaranteed (@guaranteed LSApplicationRecord) -> ()partial apply;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
    aBlock[3] = &block_descriptor_58_0;
    v21 = _Block_copy(aBlock);

    [v18 swift:v21 forEach:?];

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
      return;
    }

    v23 = v35;
    v22 = v36;

    if (v22)
    {
      goto LABEL_17;
    }
  }
}

uint64_t MSSuggestion.extractSiriRepID()()
{
  v1 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    MSPlayMediaAppIntent.intentAction.getter();

    type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
    if (swift_dynamicCast())
    {
      v4 = [v34 parameters];
      type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        v6 = __CocoaSet.count.getter();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = 0xEB00000000797469;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x20F2E7A20](v7, v5);
            }

            else
            {
              if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v9 = *(v5 + 8 * v7 + 32);
            }

            v10 = v9;
            v11 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v12 = [v9 identifier];
            v13 = v8;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            if (v14 == 0x746E456F69647561 && v16 == v13)
            {
              break;
            }

            v8 = v13;
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_22;
            }

            ++v7;
            if (v11 == v6)
            {
              goto LABEL_30;
            }
          }

LABEL_22:

          v23 = [v10 value];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 value];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
            if (swift_dynamicCast())
            {
              v26 = [v34 identifier];
              v27 = [v26 instanceIdentifier];

              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              return v28;
            }
          }

          goto LABEL_31;
        }
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

LABEL_30:

LABEL_31:
      v20 = v34;
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static WOLog.mediaPlayback);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_20AEA4000, v31, v32, "SiriRepID extraction error: couldn't extract id from audioEntity", v33, 2u);
        MEMORY[0x20F2E9420](v33, -1, -1);
      }

      goto LABEL_36;
    }
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
LABEL_28:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.mediaPlayback);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "SiriRepID extraction error: no existing LNAction", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

LABEL_36:

  return 0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void MSSuggestion.validatedSuggestion.getter()
{
  v1 = v0;
  v2 = [v0 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v37 = 0;
  v38 = 0;
  v6 = [v1 bundleID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v7, v9, 0);
  if (v11)
  {
    v22 = v11;
    v23 = [v11 bundleIdentifier];
    if (v23)
    {
      v24 = v23;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v25;
    }

    else
    {

      v17 = 0;
      v16 = 0;
    }

    if (!v16)
    {
      return;
    }

LABEL_4:
    v18 = [v1 bundleID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v17 == v19 && v16 == v21)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        v28 = MSSuggestion.legacyIntent.getter();
        if (v28)
        {
          v29 = v28;
          v30 = MEMORY[0x20F2E6C00](v17, v16);
          [v29 _setLaunchId_];

          [v1 copy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          type metadata accessor for MSSuggestion();
          swift_dynamicCast();
          v31 = v37;
          v32 = MEMORY[0x20F2E6C00](v17, v16);

          [v31 setBundleID_];

          return;
        }

        v33 = [v1 unifiedIntent];
        if (!v33)
        {

          return;
        }

        v34 = v33;
        v35 = MEMORY[0x20F2E6C00](v17, v16);

        [v34 setBundleID_];

LABEL_12:
        v27 = v1;
        return;
      }
    }

    goto LABEL_12;
  }

  v12 = [objc_opt_self() enumeratorWithOptions_];
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v5;
  v13[4] = &v37;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in MSSuggestion.platformBundleID(for:);
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
  aBlock[3] = &block_descriptor_47_0;
  v15 = _Block_copy(aBlock);

  [v12 swift:v15 forEach:?];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

  v17 = v37;
  v16 = v38;

  if (v16)
  {
    goto LABEL_4;
  }
}

double closure #1 in MSSuggestion.platformBundleID(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = [a1 counterpartIdentifiers];
  if (v8)
  {
    v10 = v8;
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21[0] = a2;
    v21[1] = a3;
    MEMORY[0x28223BE20](v12, v13);
    v20[2] = v21;
    v14 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_1, v20, v11);

    if (v14)
    {
      v15 = [a1 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        *a4 = v17;
        a4[1] = v19;
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t MSSuggestion.effectiveAppIconBundleID.getter()
{
  MSSuggestion.needsMusicAppIntentConversion.getter();
  if (v1)
  {
    return 0x6C7070612E6D6F63;
  }

  v3 = [v0 bundleID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x20F2E6C00](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError()
{
  result = lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError;
  if (!lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError);
  }

  return result;
}

uint64_t specialized MSSuggestion.artworkImage(from:)(uint64_t a1)
{
  *(v1 + 152) = a1;
  return MEMORY[0x2822009F8](specialized MSSuggestion.artworkImage(from:), 0, 0);
}

{
  swift_willThrow();
  v2 = v1[22];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "NETWORK_END: INImage artwork retrieval - result: error - %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v1[1];

  return v12(0);
}

uint64_t specialized MSSuggestion.artworkImage(from:)()
{
  v1 = [*(v0 + 152) mediaContainer];
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [v1 artwork];
  *(v0 + 160) = v3;

  if (!v3)
  {
    goto LABEL_19;
  }

  if ([v3 _requiresRetrieval])
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 168) = __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_START: INImage artwork retrieval - requires network fetch", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = specialized MSSuggestion.artworkImage(from:);
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
    *(v0 + 104) = &block_descriptor_61_0;
    *(v0 + 112) = v8;
    [v3 _retrieveImageDataWithReply_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = [v3 _imageData];
  if (!v9 || (v10 = v9, v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v13 = v12, v10, v14 = objc_allocWithZone(MEMORY[0x277D755B8]), isa = Data._bridgeToObjectiveC()().super.isa, v16 = [v14 initWithData_], isa, outlined consume of Data._Representation(v11, v13), !v16))
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Failed to instantiate image from existing data.", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

LABEL_19:
    v1 = 0;
    goto LABEL_20;
  }

  v1 = v16;
LABEL_20:
  v21 = *(v0 + 8);

  return v21(v1);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = specialized MSSuggestion.artworkImage(from:);
  }

  else
  {
    v2 = specialized MSSuggestion.artworkImage(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_9:
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v17 = swift_allocError();
    *v18 = 4;
    *(v18 + 8) = 2;
    swift_willThrow();
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 160);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v17;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_20AEA4000, v20, v21, "NETWORK_END: INImage artwork retrieval - result: error - %@", v24, 0xCu);
      outlined destroy of NSObject?(v25);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    else
    {
    }

    v16 = 0;
    goto LABEL_13;
  }

  v2 = [*(v0 + 144) _imageData];
  if (!v2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v4, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData_];

  outlined consume of Data._Representation(v4, v6);
  if (!v9)
  {
    outlined consume of Data._Representation(v4, v6);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "NETWORK_END: INImage artwork retrieval - result: success", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  outlined consume of Data._Representation(v4, v6);
  v16 = v10;
LABEL_13:
  v28 = *(v0 + 8);

  return v28(v16);
}

uint64_t getEnumTagSinglePayload for SuggestionError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuggestionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for SuggestionError(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for SuggestionError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t specialized MSSuggestion.play(intent:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  WorkoutSignposter.emit(signpost:)(10);
  type metadata accessor for MSSuggestionLegacyIntentExecutionContext();
  inited = swift_initStackObject();
  v0[8] = inited;
  inited[3] = 0;
  inited[4] = 0;
  inited[2] = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = specialized MSSuggestion.play(intent:);

  return MSSuggestionLegacyIntentExecutionContext.confirm()();
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized MSSuggestion.play(intent:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 88) = v3;
    *v3 = v2;
    v3[1] = specialized MSSuggestion.play(intent:);

    return MSSuggestionLegacyIntentExecutionContext.handle()();
  }
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized MSSuggestion.play(intent:);
  }

  else
  {
    v2 = specialized MSSuggestion.play(intent:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "MSSuggestion.play(INPlayMediaIntent) succeeded", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 80);

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "MSSuggestion.play(INPlayMediaIntent) failed with error: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 96);

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "MSSuggestion.play(INPlayMediaIntent) failed with error: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t type metadata accessor for LNAction(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t AlertConfigurationContext.description.getter()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return 0xD000000000000012;
  }

  _StringGuts.grow(_:)(17);

  v3 = 0xE400000000000000;
  v4 = 1818324839;
  strcpy(v11, "localBinding (");
  HIBYTE(v11[1]) = -18;
  v5 = 0xE400000000000000;
  v6 = 1701011826;
  v7 = 0xE500000000000000;
  v8 = 0x7265636170;
  if (v1 != 3)
  {
    v8 = 0x6F707369746C756DLL;
    v7 = 0xEA00000000007472;
  }

  if (v1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v1)
  {
    v4 = 0x6C61767265746E69;
    v3 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v1 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x20F2E6D80](v9, v10);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v11[0];
}

BOOL static AlertConfigurationContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t AlertConfigurationContext.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  return MEMORY[0x20F2E7FF0](v2);
}

Swift::Int AlertConfigurationContext.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlertConfigurationContext()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  return MEMORY[0x20F2E7FF0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationContext(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 == 5)
  {
    v3 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v3 = v2 + 1;
  }

  MEMORY[0x20F2E7FF0](v3);
  return Hasher._finalize()();
}

uint64_t AlertConfigurationSessionContext.hash(into:)(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x20F2E7FF0](1);
  }

  MEMORY[0x20F2E7FF0](0);
  return NSObject.hash(into:)();
}

Swift::Int AlertConfigurationSessionContext.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationSessionContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlertConfigurationSessionContext(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x20F2E7FF0](1);
  }

  MEMORY[0x20F2E7FF0](0);
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationSessionContext(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

uint64_t static AlertConfigurationSessionContext.== infix(_:_:)(id *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      v4 = 0;
      v3 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = 1;
LABEL_6:
  v4 = *a1;
LABEL_7:

  return v3;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationContext and conformance AlertConfigurationContext()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext;
  if (!lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext;
  if (!lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AlertConfigurationSessionContext(id *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (!v2)
    {
      v4 = 0;
      v3 = 1;
      goto LABEL_8;
    }

    v3 = 0;
  }

  v4 = *a1;
LABEL_8:

  return v3 & 1;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertConfigurationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for AlertConfigurationContext(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AlertConfigurationContext(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationSessionContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertConfigurationSessionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AlertConfigurationSessionContext(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AlertConfigurationSessionContext(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t IntervalWorkoutConfiguration.intervalWorkout.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

id IntervalWorkoutConfiguration.copyWith(activityType:intervalWorkout:uuid:occurrence:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v61 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v57 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v60 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v62 = &v52 - v22;
  if (a1)
  {
    v59 = a1;
    if (a2)
    {
LABEL_3:
      v23 = a1;
      v55 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v59 = *(v5 + v24);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = a1;
  static Published.subscript.getter(&v66);

  v55 = v66;
LABEL_6:
  _s10Foundation4UUIDVSgWOcTm_1(a3, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    v27 = v9;
    v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v29 = v5 + v28;
    v9 = v27;
    (*(v17 + 16))(v62, v29, v16);
    v30 = v26(v15, 1, v16);
    v31 = a2;
    if (v30 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_3(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v17 + 32))(v62, v15, v16);
    v32 = a2;
  }

  if (v61)
  {
    v54 = v61;
  }

  else
  {
    v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v54 = *(v5 + v33);
  }

  v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v53 = *(v5 + v34);
  v35 = objc_allocWithZone(ObjectType);
  v36 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v65 = 0;

  v37 = v61;
  v38 = v57;
  Published.init(initialValue:)();
  (*(v58 + 32))(&v35[v36], v38, v9);
  swift_beginAccess();
  v39 = v55;
  v64 = v55;
  type metadata accessor for IntervalWorkout(0);
  v61 = v39;
  Published.init(initialValue:)();
  swift_endAccess();
  v40 = *(v17 + 16);
  v41 = v60;
  v40(v60, v62, v16);
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v43 = type metadata accessor for Date();
  v44 = *(*(v43 - 8) + 56);
  v44(&v35[v42], 1, 1, v43);
  v44(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v43);
  v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v46 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v46 - 8) + 56))(&v35[v45], 1, 1, v46);
  (*(v17 + 56))(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v16);
  v47 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v40(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v41, v16);
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v59;
  v35[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v54;
  swift_beginAccess();
  *&v35[v47] = v53;
  v35[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v48 = type metadata accessor for WorkoutConfiguration(0);
  v63.receiver = v35;
  v63.super_class = v48;
  v49 = objc_msgSendSuper2(&v63, sel_init);

  v50 = *(v17 + 8);
  v50(v41, v16);
  v50(v62, v16);
  return v49;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkoutConfiguration.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkoutConfiguration.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkoutConfiguration.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkoutConfiguration.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntervalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntervalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double IntervalWorkoutConfiguration.intervalWorkout.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*IntervalWorkoutConfiguration.intervalWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return IntervalWorkoutConfiguration.intervalWorkout.modify;
}

uint64_t key path setter for IntervalWorkoutConfiguration.$intervalWorkout : IntervalWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkoutConfiguration.$intervalWorkout.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkoutConfiguration.$intervalWorkout.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__intervalWorkout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkoutConfiguration.$intervalWorkout.modify;
}

uint64_t IntervalWorkoutConfiguration.forceUpdatePublisher.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for IntervalWorkoutConfiguration.forceUpdatePublisher : IntervalWorkoutConfiguration(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for IntervalWorkoutConfiguration.forceUpdatePublisher : IntervalWorkoutConfiguration(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

double IntervalWorkoutConfiguration.forceUpdatePublisher.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*IntervalWorkoutConfiguration.forceUpdatePublisher.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return IntervalWorkoutConfiguration.forceUpdatePublisher.modify;
}

void IntervalWorkoutConfiguration.intervalWorkout.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalWorkoutConfiguration.$intervalWorkout.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalWorkoutConfiguration.$intervalWorkout : IntervalWorkoutConfiguration(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkoutConfiguration.$forceUpdatePublisher : IntervalWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkoutConfiguration.$forceUpdatePublisher.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkoutConfiguration.$forceUpdatePublisher.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkoutConfiguration.$forceUpdatePublisher.modify;
}

void IntervalWorkoutConfiguration.$intervalWorkout.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

Swift::Int IntervalWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Hasher.init()();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_hash);
  MEMORY[0x20F2E7FF0](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v4 = v6;
  NSObject.hash(into:)();

  return Hasher.finalize()();
}

BOOL IntervalWorkoutConfiguration.isValidConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v0 = v3;
  v1 = IntervalWorkout.isValid.getter();

  return v1;
}

id IntervalWorkoutConfiguration.__allocating_init(_:intervalWorkout:uuid:occurrence:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v41 = a1;
  v42 = a4;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - v17;
  v36 = *(v11 + 16);
  v39 = &v35 - v17;
  v36(&v35 - v17, a3, v10);
  v19 = objc_allocWithZone(v37);
  v20 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v45 = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v19[v20], v9, v5);
  swift_beginAccess();
  v21 = v38;
  v44 = v38;
  type metadata accessor for IntervalWorkout(0);
  v38 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  v22 = v18;
  v23 = v36;
  v36(v15, v22, v10);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(&v19[v24], 1, 1, v25);
  v26(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v25);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v28 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v28 - 8) + 56))(&v19[v27], 1, 1, v28);
  (*(v11 + 56))(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v10);
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v30 = v15;
  v23(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v15, v10);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v41;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v42;
  swift_beginAccess();
  *&v19[v29] = 0;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v31 = type metadata accessor for WorkoutConfiguration(0);
  v43.receiver = v19;
  v43.super_class = v31;
  v32 = objc_msgSendSuper2(&v43, sel_init);

  v33 = *(v11 + 8);
  v33(v40, v10);
  v33(v30, v10);
  v33(v39, v10);
  return v32;
}

uint64_t IntervalWorkoutConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v11);

  v8 = v11;
  type metadata accessor for IntervalWorkout(0);
  lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, &protocol conformance descriptor for IntervalWorkout);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    WorkoutConfiguration.encode(to:)(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

char *IntervalWorkoutConfiguration.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMR);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v24[0]) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v13], v12, v8);
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();
  v21 = v7;
  v14 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_12(a1);
    (*(v9 + 8))(&v2[v13], v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for IntervalWorkout(0);
    lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, &protocol conformance descriptor for IntervalWorkout);
    v15 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v24[7];
    swift_beginAccess();
    v24[5] = v17;
    Published.init(initialValue:)();
    swift_endAccess();
    _ss7Decoder_pWOcTm_3(a1, v24);
    v2 = WorkoutConfiguration.init(from:)(v24);
    (*(v19 + 8))(v21, v15);
    __swift_destroy_boxed_opaque_existential_1Tm_12(a1);
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntervalWorkout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id IntervalWorkoutConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  _s10Foundation4UUIDVSgWOcTm_1(a1, v20, &_sypSgMd, &_sypSgMR);
  if (!v21)
  {
    _s10Foundation4UUIDVSgWOhTm_3(v20, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v19;
  type metadata accessor for NSObject();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);

  v6 = v20[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);

  v7 = v20[0];
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {

    return 0;
  }

  _s10Foundation4UUIDVSgWOcTm_1(a1, v20, &_sypSgMd, &_sypSgMR);
  v9 = v21;
  if (v21)
  {
    v10 = __swift_project_boxed_opaque_existential_1Tm_1(v20, v21);
    v11 = *(v9 - 8);
    MEMORY[0x28223BE20](v10, v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1Tm_12(v20);
  }

  else
  {
    v14 = 0;
  }

  v18.receiver = v2;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_isEqual_, v14);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1Tm_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t IntervalWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  swift_getObjectType();
  _ss7Decoder_pWOcTm_3(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  v3 = v9[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  v4 = v9[0];
  v5 = specialized IntervalWorkout.isEquivalent(to:)(v9[0], v3);

  if ((v5 & 1) == 0)
  {

LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v6 = specialized WorkoutConfiguration.isEquivalent(to:)(v8, v1);

  return v6 & 1;
}

uint64_t _ss7Decoder_pWOcTm_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void IntervalWorkoutConfiguration.removeStep(_:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v4 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v6, a1);

  if (*v7 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9 >= v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v8)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v8, v9);
      v5(v12, 0);

      IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);

      swift_getKeyPath();
      swift_getKeyPath();
      v10 = static Published.subscript.modify();
      *v11 = !*v11;
      v10(v12, 0);

      return;
    }
  }

  __break(1u);
}

double IntervalWorkoutConfiguration.removeSteps(atOffsets:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  v3 = v8[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = static Published.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], MEMORY[0x277D83960]);
  _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], MEMORY[0x277D83990]);
  RangeReplaceableCollection<>.remove(atOffsets:)();
  v4(v8, 0);

  IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = static Published.subscript.modify();
  *v6 = !*v6;
  v5(v8, 0);

  return result;
}

Swift::Void __swiftcall IntervalWorkoutConfiguration.deleteBlocks(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = 0;
    v26 = rawValue & 0xFFFFFFFFFFFFFF8;
    v27 = rawValue & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v6 = MEMORY[0x20F2E7A20](v3, rawValue);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_36;
        }

        v6 = *(rawValue + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_35;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v31);

      v8 = v31[0];
      swift_getKeyPath();
      swift_getKeyPath();

      v30 = static Published.subscript.modify();
      v10 = v9;
      v11 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v9, v6);

      if (*v10 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        v13 = v12 - v11;
        if (v12 < v11)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v12 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 - v11;
        if (v12 < v11)
        {
          goto LABEL_37;
        }
      }

      if (v11 < 0)
      {
        goto LABEL_38;
      }

      v28 = v8;
      v29 = v4;
      v14 = v7;
      v15 = i;
      v16 = rawValue;
      v17 = *v10;
      rawValue = *v10 >> 62;
      if (rawValue)
      {
        break;
      }

      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_34;
      }

LABEL_15:
      v18 = __OFSUB__(0, v13);
      v19 = -v13;
      if (v18)
      {
        goto LABEL_39;
      }

      if (rawValue)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = __OFADD__(v20, v19);
      v21 = v20 + v19;
      if (v18)
      {
        goto LABEL_40;
      }

      rawValue = v16;
      v22 = *v10;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v10 = v22;
      i = v15;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
        {
          if (v21 <= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      else if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __CocoaSet.count.getter();
LABEL_5:
      *v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v11, v12, 0, type metadata accessor for WorkoutBlock);
      v30(v31, 0);

      ++v3;
      v5 = v14 == v15;
      v4 = v29;
      if (v5)
      {
        goto LABEL_42;
      }
    }

    if (__CocoaSet.count.getter() >= v12)
    {
      goto LABEL_15;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
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
    ;
  }

LABEL_42:
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = static Published.subscript.modify();
  *v25 = !*v25;
  v24(v31, 0);
}

uint64_t IntervalWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__intervalWorkout;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id IntervalWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static IntervalWorkoutConfiguration.canonical()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v1 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(v0, 1);

  return v1;
}

void protocol witness for static Canonical.canonical() in conformance IntervalWorkoutConfiguration(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v3 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(v2, 1);

  *a1 = v3;
}

double *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(double *result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= &v13[2 * v12])
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 == a3)
  {
    if (result)
    {
      a5(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1, a4);
  v6 = AssociatedObject[2];

  return (a2)(AssociatedObject + 4, v6);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x277D84F90], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for WorkoutBlock, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WorkoutBlock(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for WorkoutConfiguration, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutBlock);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutStep);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutNotification);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for LocationRequest);
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutConfiguration);
}

uint64_t _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, __n128), uint64_t (*a7)(uint64_t))
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = a4;
  v13 = a3;
  v12 = a2;
  v26 = a6;
  v27 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v7 = v8 + 4;
  v11 = &v8[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v19 = __OFSUB__(v13, v14);
  v14 = v13 - v14;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v9 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v20 = v8[2];
    v21 = v20 - v12;
    if (!__OFSUB__(v20, v12))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v10, v26, v18, v27);
  }

LABEL_25:
  v24 = __CocoaSet.count.getter();
  v21 = v24 - v12;
  if (__OFSUB__(v24, v12))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v11 + 8 * v13);
  v17 = &v7[v12];
  if (v22 != v17 || v22 >= &v17[8 * v21])
  {
    memmove(v22, v17, 8 * v21);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_28;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v13 < 1)
  {
    return result;
  }

  result = MEMORY[0x28223BE20](result, v17);
  v18 = v25;
  v25[2] = v13;
  v25[3] = v11;
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v10, v26, v18, v27);
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == v13)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WorkoutConfiguration(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

id specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v43 - 1);
  MEMORY[0x28223BE20](v43, v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - v18;
  v20 = specialized static IntervalWorkout.canonical(activityType:activityMoveMode:)(a1, a2);
  v46 = v19;
  UUID.init()();
  v44 = specialized Occurrence.__allocating_init(count:)(0);
  v40 = *(v9 + 16);
  v42 = v16;
  v40(v16, v19, v8);
  v21 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration(0));
  v22 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v49 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v21[v22], v7, v43);
  swift_beginAccess();
  v48 = v20;
  type metadata accessor for IntervalWorkout(0);
  v43 = v20;
  Published.init(initialValue:)();
  swift_endAccess();
  v23 = v41;
  v24 = v16;
  v25 = v40;
  v40(v41, v24, v8);
  *&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v27 = type metadata accessor for Date();
  v28 = *(*(v27 - 8) + 56);
  v28(&v21[v26], 1, 1, v27);
  v28(&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v27);
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v30 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v30 - 8) + 56))(&v21[v29], 1, 1, v30);
  (*(v9 + 56))(&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v8);
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v32 = v23;
  v25(&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v23, v8);
  v33 = v45;
  *&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v45;
  v21[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v21[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v44;
  swift_beginAccess();
  *&v21[v31] = 0;
  v21[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v34 = type metadata accessor for WorkoutConfiguration(0);
  v47.receiver = v21;
  v47.super_class = v34;
  v35 = v33;
  v36 = objc_msgSendSuper2(&v47, sel_init);

  v37 = *(v9 + 8);
  v37(v32, v8);
  v37(v42, v8);
  v37(v46, v8);
  return v36;
}

uint64_t type metadata accessor for IntervalWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalWorkoutConfiguration;
  if (!type metadata singleton initialization cache for IntervalWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for Published<IntervalWorkout>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<IntervalWorkout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<IntervalWorkout>)
  {
    type metadata accessor for IntervalWorkout(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<IntervalWorkout>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutConfiguration.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IntervalWorkoutConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), type metadata accessor for WorkoutConfiguration);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), type metadata accessor for WorkoutBlock);
}

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(sample:)(HKQuantitySample sample)
{
  v3 = v1;
  _sSo8NSObjectCMaTm_2(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v4 = [(objc_class *)sample.super.super.super.isa quantityType];
  _sSo8NSObjectCMaTm_2(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v5 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCB68]);
  v6 = static NSObject.== infix(_:_:)();

  if (v6 & 1) != 0 || (v7 = [(objc_class *)sample.super.super.super.isa quantityType], v8 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCCD8]), v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9))
  {
    v20.value.super.isa = [(objc_class *)sample.super.super.super.isa quantity];
    AppleExertionScale.init(quantity:)(v20);

    v11 = v19;
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v13 = sample.super.super.super.isa;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = [(objc_class *)v13 quantityType];
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Tried to initialize AppleExertionScale with a quantity type of %@", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {
    }

    v11 = 11;
  }

  *v3 = v11;
  return result;
}

uint64_t _sSo8NSObjectCMaTm_2(uint64_t a1, unint64_t *a2, void *a3)
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

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(quantity:)(HKQuantity_optional quantity)
{
  v2 = v1;
  if (!quantity.value.super.isa)
  {
    if (one-time initialization token for core == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

  isa = quantity.value.super.isa;
  v4 = objc_opt_self();
  v5 = isa;
  v6 = [v4 appleEffortScoreUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = round(v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_12:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v13, "Tried to init an AppleExertionScale with nil quantity", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    goto LABEL_38;
  }

  v10 = v9;
  if (v9 <= 4)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {

        v11 = 10;
        goto LABEL_39;
      }

      if (v10 == 1)
      {

        v11 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      switch(v10)
      {
        case 2:

          v11 = 1;
          goto LABEL_39;
        case 3:

          v11 = 2;
          goto LABEL_39;
        case 4:

          v11 = 3;
          goto LABEL_39;
      }
    }

    goto LABEL_33;
  }

  if (v10 > 7)
  {
    switch(v10)
    {
      case 8:

        v11 = 7;
        goto LABEL_39;
      case 9:

        v11 = 8;
        goto LABEL_39;
      case 10:

        v11 = 9;
        goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v10 == 5)
  {

    v11 = 4;
    goto LABEL_39;
  }

  if (v10 == 6)
  {

    v11 = 5;
    goto LABEL_39;
  }

  if (v10 != 7)
  {
LABEL_33:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Unable to convert exertion value %ld to AppleExertionScale", v18, 0xCu);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

LABEL_38:
    v11 = 11;
    goto LABEL_39;
  }

  v11 = 6;
LABEL_39:

  *v2 = v11;
  return result;
}

id AppleExertionScale.quantity.getter()
{
  v0 = [objc_opt_self() appleEffortScoreUnit];
  AppleExertionScale.rawValue.getter(&v3);
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:v3];

  return v1;
}

id QuickWorkoutSwitchProvider.observers.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);

  return v1;
}

id key path getter for QuickWorkoutSwitchProvider.observers : QuickWorkoutSwitchProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  *a2 = v4;

  return v4;
}

void QuickWorkoutSwitchProvider.observers.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11NSHashTableCMd, &_sSo11NSHashTableCMR);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double (*QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + v2);
  return QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify;
}

double QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(uint64_t a1, char a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(a1 + 24);
  swift_getKeyPath();
  *a1 = v5;
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v6 ^ *(v5 + v4);
  if ((a2 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      return result;
    }

    v18 = *(a1 + 8);
    swift_getKeyPath();
    *a1 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = [*(v18 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v21 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x20F2E7A20](v21, v11);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v21 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v22 = *(v11 + 8 * v21 + 32);
        swift_unknownObjectRetain();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v25 = *(a1 + 8);
      v24 = *(a1 + 16);
      swift_getKeyPath();
      *a1 = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v22 quickWorkoutSwitchDidChange_];
      swift_unknownObjectRelease();
      ++v21;
      if (v23 == v20)
      {
        goto LABEL_32;
      }
    }
  }

  if (((v6 ^ *(v5 + v4)) & 1) == 0)
  {
    return result;
  }

  v9 = *(a1 + 8);
  swift_getKeyPath();
  *a1 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = [*(v9 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_29:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_5:
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2E7A20](v13, v11);
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = *(v11 + 8 * v13 + 32);
          swift_unknownObjectRetain();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_13;
          }
        }

        v17 = *(a1 + 8);
        v16 = *(a1 + 16);
        swift_getKeyPath();
        *a1 = v17;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v14 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v13;
      }

      while (v15 != v12);
    }
  }

LABEL_32:

  return result;
}

uint64_t QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
}

double QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
  if (v4 != (a1 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch) = a1 & 1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v4 != *(v1 + v3))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = [*(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v11 = 0;
      while ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v12 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v11;
        if (v13 == i)
        {
          goto LABEL_17;
        }
      }

      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v9 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return result;
}

void key path getter for QuickWorkoutSwitchProvider.quickWorkoutSwitch : QuickWorkoutSwitchProvider(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
}

unint64_t lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider()
{
  result = lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider;
  if (!lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider)
  {
    type metadata accessor for QuickWorkoutSwitchProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider);
  }

  return result;
}

void closure #1 in QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  v4 = *(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch) = a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v3;
  if (v4 != *(a1 + v3))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = [*(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F2E7A20](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v9 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v8;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

uint64_t (*QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(v4);
  return QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify;
}

void QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

id QuickWorkoutSwitchProvider.__allocating_init(quickWorkoutSwitch:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  ObservationRegistrar.init()();
  v4 = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers] = v4;
  v3[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id QuickWorkoutSwitchProvider.addObserver(_:)(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v2 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) *a2];
}

void @objc QuickWorkoutSwitchProvider.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  swift_unknownObjectRetain();
  v7 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *&v7[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers];
  [v8 *a4];

  swift_unknownObjectRelease();
}

id QuickWorkoutSwitchProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickWorkoutSwitchProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickWorkoutSwitchProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void partial apply for closure #1 in QuickWorkoutSwitchProvider.observers.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) = v2;
  v4 = v2;
}

BOOL static StandardWorkoutAddWorkoutRow.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.localizedStandardCompare<A>(_:)() == -1;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance StandardWorkoutAddWorkoutRow(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_beginAccess();
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.localizedStandardCompare<A>(_:)() == -1;
}

unint64_t lazy protocol witness table accessor for type StandardWorkoutAddWorkoutRow and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject;
  if (!lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject)
  {
    type metadata accessor for StandardWorkoutAddWorkoutRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject);
  }

  return result;
}

uint64_t StandardWorkoutAddWorkoutRow.id.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v2 = [*(v0 + v1) uniqueIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void protocol witness for Identifiable.id.getter in conformance StandardWorkoutAddWorkoutRow(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v5 = [*(v3 + v4) uniqueIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

uint64_t WorkoutConfiguration.requiresDisambiguation.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v0;
    static Published.subscript.getter(v13);

    v1 = v13[0];
    v2 = v13[0] & 0xFFFFFFFFFFFFFF8;
    if (v13[0] >> 62)
    {
LABEL_18:
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v3 != i; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](i, v1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_17;
        }

        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v8 = *&v6[v7];
      v9 = [v8 requiresDisambiguation];

      if (v9)
      {

        return 1;
      }
    }

    return 0;
  }

  else
  {
    v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    return [*&v0[v10] requiresDisambiguation];
  }
}

uint64_t MultiSportWorkoutConfiguration.copyWithForcedDisambiguation(uuid:)(NSObject *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v58 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v51 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  KeyPath = (v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for shared != -1)
  {
LABEL_51:
    swift_once();
  }

  v16 = WorkoutConfiguration.deserializedCopy(validator:)(static WorkoutConfigurationValidator.shared);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

LABEL_8:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.core);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Unable to copy MultiSportWorkoutConfiguration for forced disambiguation", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    goto LABEL_55;
  }

  v51[1] = ObjectType;
  outlined init with copy of UUID?(a1, v10);
  a1 = v12 + 6;
  isa = v12[6].isa;
  if (isa(v10, 1, v11) == 1)
  {
    v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (v12[2].isa)(KeyPath, v1 + v19, v11);
    a1 = isa(v10, 1, v11);
    v20 = v17;
    if (a1 != 1)
    {
      outlined destroy of UUID?(v10);
    }
  }

  else
  {
    (v12[4].isa)(KeyPath, v10, v11);
    v25 = v17;
  }

  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  ObjectType = v53;
  swift_beginAccess();
  (v12[5].isa)(ObjectType + v26, KeyPath, v11);
  swift_endAccess();

  v61 = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v62);

  v27 = v62[0];
  if (v62[0] >> 62)
  {
    v28 = __CocoaSet.count.getter();
    v52 = v17;
    if (v28)
    {
      goto LABEL_15;
    }

LABEL_53:
    v10 = MEMORY[0x277D84F90];
LABEL_54:

    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v10;
    v22 = v52;
    static Published.subscript.setter();
    result = swift_dynamicCastClass();
    if (!result)
    {
      goto LABEL_55;
    }

    return result;
  }

  v28 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v17;
  if (!v28)
  {
    goto LABEL_53;
  }

LABEL_15:
  v56 = v11;
  v11 = 0;
  v59 = v27 & 0xC000000000000001;
  v54 = v27 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x277D84F90];
  v55 = v12 + 7;
  v57 = v27;
  while (1)
  {
    if (v59)
    {
      v29 = MEMORY[0x20F2E7A20](v11, v27);
    }

    else
    {
      if (v11 >= *(v54 + 16))
      {
        goto LABEL_50;
      }

      v29 = *(v27 + 8 * v11 + 32);
    }

    a1 = v29;
    v30 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    ObjectType = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v31 = *(&a1->isa + ObjectType);
    v12 = a1;
    if (![v31 requiresDisambiguation])
    {

      KeyPath = v12;
      v1 = &v61;
      MEMORY[0x20F2E6F30]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_19;
    }

    v32 = v28;
    v33 = *(&a1->isa + ObjectType);
    v22 = v12;
    v34 = v22;
    if ([v33 requiresLocationDisambiguation])
    {
      break;
    }

LABEL_29:
    v37 = *(&a1->isa + ObjectType);

    a1 = [v37 requiresSwimmingLocationDisambiguation];
    if (a1)
    {
      ObjectType = v58;
      (v55->isa)(v58, 1, 1, v56);
      v38 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(ObjectType, 0, 1, 1, 0, 1, 1);
      outlined destroy of UUID?(ObjectType);
      if (!v38)
      {

LABEL_44:
        v45 = v52;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static WOLog.core);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_20AEA4000, v47, v48, "Unable to copy GoalWorkoutConfiguration for forced swimming location disambiguation", v49, 2u);
          MEMORY[0x20F2E9420](v49, -1, -1);
        }

        return 0;
      }

      type metadata accessor for GoalWorkoutConfiguration(0);
      v39 = swift_dynamicCastClass();
      if (!v39)
      {

        goto LABEL_44;
      }

      a1 = v39;

      v34 = a1;
    }

    KeyPath = v34;
    v1 = &v61;
    MEMORY[0x20F2E6F30]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v28 = v32;
    v27 = v57;
LABEL_19:

    v10 = v61;
    ++v11;
    if (v30 == v28)
    {
      goto LABEL_54;
    }
  }

  v35 = v58;
  (v55->isa)(v58, 1, 1, v56);
  v36 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(v35, 3, 0, 0, 1, 1, 1);
  outlined destroy of UUID?(v35);
  if (v36)
  {
    type metadata accessor for GoalWorkoutConfiguration(0);
    v34 = swift_dynamicCastClass();

    if (!v34)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v36 = v22;
LABEL_37:

  v40 = v52;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static WOLog.core);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_20AEA4000, v42, v43, "Unable to copy GoalWorkoutConfiguration for forced location disambiguation", v44, 2u);
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

LABEL_55:
  return 0;
}