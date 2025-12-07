id _EXExtensionAvailability.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized _EXExtensionAvailability.init(coder:)(a1);

  return v4;
}

id _EXExtensionAvailability.init(coder:)(void *a1)
{
  v2 = specialized _EXExtensionAvailability.init(coder:)(a1);

  return v2;
}

id _EXExtensionAvailability.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _EXExtensionAvailability();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _EXExtensionAvailabilityObserver.__deallocating_deinit()
{
  _EXExtensionAvailabilityObserver.invalidate()();
  v1 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _EXExtensionAvailabilityObserver.start()()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v4 = MEMORY[0x1865F3F40](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_8:
    v7 = static _EXDiscoveryController.shared;
    type metadata accessor for _EXQuery();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if ([v1 isKindOfClass_])
    {
      v9 = v1;
      specialized _EXDiscoveryController.add(activeQueryObserver:query:)(v2, v9, v7);

      if (([v9 isKindOfClass_] & 1) == 0)
      {
LABEL_25:
        v14 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
        goto LABEL_26;
      }

      v20 = v9;
      v10 = _EXDiscoveryController.identities(matching:)(v20);

      v11 = *&v10[OBJC_IVAR____EXQueryResult_availablility];
      if (v11)
      {
        v12 = *(v2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
        type metadata accessor for _EXExtensionAvailability();
        v13 = swift_getObjCClassFromMetadata();
        v14 = v11;
        if ([v14 isKindOfClass_])
        {
          v12(v14);

          return;
        }

LABEL_26:
        v19 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();

        swift_unexpectedError();
        __break(1u);
        return;
      }

      __break(1u);
    }

    v18 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(v3 + 32);
LABEL_6:
  v1 = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 preferInProcessDiscovery];

  if (v6)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static _EXServiceClient.shared;
  v21[3] = type metadata accessor for _EXExtensionAvailabilityObserver(0);
  v22 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  v21[0] = v2;
  v16 = *(v15 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
  MEMORY[0x1EEE9AC00](v22);

  os_unfair_lock_lock(v16 + 4);
  partial apply for closure #1 in _EXServiceClient.add(queryObserver:)(v17);
  os_unfair_lock_unlock(v16 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  _EXServiceClient.fetchResults(with:completion:)(v1, partial apply for closure #1 in _EXExtensionAvailabilityObserver.start(), v2);
}

void closure #1 in _EXExtensionAvailabilityObserver.start()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____EXQueryResult_availablility);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(a2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  type metadata accessor for _EXExtensionAvailability();
  if (![v2 isKindOfClass_])
  {
LABEL_7:
    v4 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v5 = v2;
  v3();
}

Swift::Void __swiftcall _EXExtensionAvailabilityObserver.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v2 = MEMORY[0x1865F3F40](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_8:
    v5 = static _EXDiscoveryController.shared;
    type metadata accessor for _EXQuery();
    if ([v1 isKindOfClass_])
    {
      v10 = v1;
      specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(v0, v10, v5);
    }

    else
    {
      v9 = [objc_opt_self() _EX_parameterError];
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    return;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v1 = v2;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 preferInProcessDiscovery];

  if (v4)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static _EXServiceClient.shared;
  v11[3] = type metadata accessor for _EXExtensionAvailabilityObserver(0);
  v12 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  v11[0] = v0;
  v7 = *(v6 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock(v7 + 4);
  partial apply for closure #1 in _EXServiceClient.remove(queryObserver:)(v8);
  os_unfair_lock_unlock(v7 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t protocol witness for Identifiable.id.getter in conformance _EXExtensionAvailabilityObserver@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for _EXExtensionAvailabilityObserver(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionAvailabilityObserver()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionAvailabilityObserver(uint64_t a1)
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

void static _EXExtensionAvailability.add(changeObserver:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _EXExtensionAvailabilityObserver(0);
  v7 = swift_allocObject();
  UUID.init()();
  v8 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries;
  v9 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];
  *&v9[OBJC_IVAR____EXQuery_resultType] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1848BBBA0;
  *(v7 + v8) = v10;
  *(v10 + 32) = v9;
  v11 = (v7 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  *v11 = a1;
  v11[1] = a2;

  _EXExtensionAvailabilityObserver.start()();
  a3[3] = v6;
  *a3 = v7;
}

void specialized _EXDiscoveryController.add(activeQueryObserver:query:)(uint64_t a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v19 = *(v18 + 16);
    }

    v28 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v28)
    {
      type metadata accessor for _EXActiveQuery();
      v29 = swift_allocObject();
      v29[2] = v9;
      v29[3] = v8;
      v30 = MEMORY[0x1E69E7CD0];
      v29[4] = MEMORY[0x1E69E7CD0];
      v29[5] = v30;
      v29[6] = v30;
      swift_beginAccess();
      v31 = *&v8[v17];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 >= 0)
        {
          v31 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v32 = v8;
        v33 = v9;

        v34 = __CocoaSet.count.getter();
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v31, v34 + 1);
      }

      else
      {
        v35 = v8;
        v36 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v59;
      swift_endAccess();
      v38 = v9;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v57 = v16;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&dword_1847D1000, v39, v40, "New active query %{public}@'", v41, 0xCu);
        outlined destroy of NSObject?(v42, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v42, -1, -1);
        v44 = v41;
        v16 = v57;
        MEMORY[0x1865F56C0](v44, -1, -1);
      }
    }

    swift_beginAccess();
    swift_retain_n();
    specialized Set._Variant.insert(_:)(&v59, a1, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v59, a1, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v19 <= 0)
    {
      v45 = v8;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138543362;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&dword_1847D1000, v46, v47, "%{public}@ LS database observing started.", v48, 0xCu);
        outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v49, -1, -1);
        MEMORY[0x1865F56C0](v48, -1, -1);
      }

      v51 = [objc_opt_self() sharedInstance];
      v52 = swift_allocObject();
      *(v52 + 16) = v45;
      aBlock[4] = partial apply for closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:);
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_6;
      v53 = _Block_copy(aBlock);
      v54 = v45;

      v55 = [v51 addChangeObserver_];
      _Block_release(v53);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v56 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v54[v56]);
      swift_endAccess();
      [*&v54[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.discovery);
    v21 = a3;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v22;
      *v25 = v21;
      v25[1] = v22;
      v26 = v21;
      v27 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v25, -1, -1);
      MEMORY[0x1865F56C0](v24, -1, -1);
    }
  }
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(void *a1, void *a2, void *a3)
{
  specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(a1, a2, a3, lazy protocol witness table cache variable for type _EXConnectionActiveQueryObserver and conformance _EXConnectionActiveQueryObserver, type metadata accessor for _EXConnectionActiveQueryObserver, &protocol conformance descriptor for _EXConnectionActiveQueryObserver);
}

{
  specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(a1, a2, a3, &lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(void *a1, void *a2, void *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(a4, a5, a6);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.discovery);
  v12 = a3;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = v11;
    v18 = swift_slowAlloc();
    *v16 = 138543618;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2114;
    *(v16 + 14) = v13;
    *v18 = v12;
    v18[1] = v13;
    v19 = v12;
    v20 = v13;
    _os_log_impl(&dword_1847D1000, v14, v15, "%{public}@ Removing observer for query '%{public}@'", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v21 = v18;
    v11 = v17;
    MEMORY[0x1865F56C0](v21, -1, -1);
    MEMORY[0x1865F56C0](v16, -1, -1);
  }

  v22 = *&v12[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
  os_unfair_lock_lock(v22 + 4);
  v23 = OBJC_IVAR____EXDiscoveryController_activeQueries;
  swift_beginAccess();
  v24 = *&v12[v23];

  v25 = specialized Dictionary.subscript.getter(v13, v24);

  if (v25)
  {
    swift_beginAccess();
    v26 = a1;
    specialized Set._Variant.remove(_:)(v26, v9);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v26, v9);
    swift_endAccess();

    swift_unknownObjectRelease();

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v27);

    v29 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);

    if (!v29)
    {
      v30 = v12;
      v31 = v13;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v48 = v11;
        v35 = swift_slowAlloc();
        *v34 = 138543618;
        *(v34 + 4) = v30;
        *(v34 + 12) = 2114;
        *(v34 + 14) = v31;
        *v35 = v30;
        v35[1] = v31;
        v36 = v30;
        v37 = v31;
        _os_log_impl(&dword_1847D1000, v32, v33, "%{public}@  No more observers for query '%{public}@ '", v34, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v35, -1, -1);
        MEMORY[0x1865F56C0](v34, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v31);
      swift_endAccess();
    }

    v38 = *&v12[v23];
    if ((v38 & 0xC000000000000001) != 0)
    {

      v39 = __CocoaSet.count.getter();

      if (v39)
      {
LABEL_12:

        goto LABEL_19;
      }
    }

    else if (*(v38 + 16))
    {
      goto LABEL_12;
    }

    [*&v12[OBJC_IVAR____EXDiscoveryController_observer] stopObserving];
    v40 = v12;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_1847D1000, v41, v42, "%{public}@ LS database observing stopped", v43, 0xCu);
      outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v44, -1, -1);
      MEMORY[0x1865F56C0](v43, -1, -1);
    }

    v46 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
    swift_beginAccess();
    outlined init with copy of Any?(&v40[v46], &v49);
    if (v50)
    {
      outlined init with take of Any(&v49, &v51);
      v47 = [objc_opt_self() sharedInstance];
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      [v47 removeChangeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    }

    else
    {

      outlined destroy of NSObject?(&v49, &_sypSgMd, &_sypSgMR);
    }
  }

LABEL_19:
  os_unfair_lock_unlock(v22 + 4);
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(uint64_t a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.discovery);
  v9 = a3;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v8;
    v15 = swift_slowAlloc();
    *v13 = 138543618;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    *v15 = v9;
    v15[1] = v10;
    v16 = v9;
    v17 = v10;
    _os_log_impl(&dword_1847D1000, v11, v12, "%{public}@ Removing observer for query '%{public}@'", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v18 = v15;
    v8 = v14;
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

  v19 = *&v9[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
  os_unfair_lock_lock(v19 + 4);
  v20 = OBJC_IVAR____EXDiscoveryController_activeQueries;
  swift_beginAccess();
  v21 = *&v9[v20];

  v22 = specialized Dictionary.subscript.getter(v10, v21);

  if (v22)
  {
    swift_beginAccess();

    specialized Set._Variant.remove(_:)(v23, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1, v6);
    swift_endAccess();

    swift_unknownObjectRelease();

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v24);

    v26 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);

    if (!v26)
    {
      v27 = v9;
      v28 = v10;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v8;
        v32 = swift_slowAlloc();
        *v31 = 138543618;
        *(v31 + 4) = v27;
        *(v31 + 12) = 2114;
        *(v31 + 14) = v28;
        *v32 = v27;
        v32[1] = v28;
        v33 = v27;
        v34 = v28;
        _os_log_impl(&dword_1847D1000, v29, v30, "%{public}@  No more observers for query '%{public}@ '", v31, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v32, -1, -1);
        MEMORY[0x1865F56C0](v31, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v28);
      swift_endAccess();
    }

    v35 = *&v9[v20];
    if ((v35 & 0xC000000000000001) != 0)
    {

      v36 = __CocoaSet.count.getter();

      if (v36)
      {
LABEL_12:

        goto LABEL_19;
      }
    }

    else if (*(v35 + 16))
    {
      goto LABEL_12;
    }

    [*&v9[OBJC_IVAR____EXDiscoveryController_observer] stopObserving];
    v37 = v9;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_1847D1000, v38, v39, "%{public}@ LS database observing stopped", v40, 0xCu);
      outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v41, -1, -1);
      MEMORY[0x1865F56C0](v40, -1, -1);
    }

    v43 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
    swift_beginAccess();
    outlined init with copy of Any?(&v37[v43], &v46);
    if (v47)
    {
      outlined init with take of Any(&v46, &v48);
      v44 = [objc_opt_self() sharedInstance];
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      [v44 removeChangeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    }

    else
    {

      outlined destroy of NSObject?(&v46, &_sypSgMd, &_sypSgMR);
    }
  }

LABEL_19:
  os_unfair_lock_unlock(v19 + 4);
}

void specialized _EXExtensionAvailabilityObserver.query(_:resultDidUpdate:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____EXQueryResult_availablility);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  type metadata accessor for _EXExtensionAvailability();
  if (![v2 isKindOfClass_])
  {
LABEL_7:
    v4 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v5 = v2;
  v3();
}

id specialized _EXExtensionAvailability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____EXExtensionAvailability_enabledCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_enabledCount] = 0;
  v4 = OBJC_IVAR____EXExtensionAvailability_disabledCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_disabledCount] = 0;
  v5 = OBJC_IVAR____EXExtensionAvailability_unelectedCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_unelectedCount] = 0;
  v6 = MEMORY[0x1865F36D0](0x4364656C62616E65, 0xEC000000746E756FLL);
  v7 = [a1 decodeIntegerForKey_];

  *&v1[v3] = v7;
  v8 = MEMORY[0x1865F36D0](0x64656C6261736964, 0xED0000746E756F43);
  v9 = [a1 decodeIntegerForKey_];

  *&v1[v4] = v9;
  v10 = MEMORY[0x1865F36D0](0x657463656C656E75, 0xEE00746E756F4364);
  v11 = [a1 decodeIntegerForKey_];

  *&v1[v5] = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for _EXExtensionAvailability();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t type metadata accessor for _EXExtensionAvailabilityObserver(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXExtensionAvailabilityObserver;
  if (!type metadata singleton initialization cache for _EXExtensionAvailabilityObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _EXExtensionAvailabilityObserver(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t instantiation function for generic protocol witness table for _EXExtensionAvailabilityObserver(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver, &protocol conformance descriptor for _EXExtensionAvailabilityObserver);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _EXExtensionInstanceIdentifier.effectiveIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {
    v4 = type metadata accessor for UUID();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
    v10 = type metadata accessor for UUID();
    v12 = *(v10 - 8);
    (*(v12 + 16))(a1, v2 + v9, v10);
    v5 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v6 = v10;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t static _EXExtensionInstanceIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static _EXExtensionInstanceIdentifier.supportsSecureCoding = a1;
  return result;
}

id static _EXExtensionInstanceIdentifier.default()()
{
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  v1 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;

  return v1;
}

id _EXExtensionInstanceIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXExtensionInstanceIdentifier.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v7 = [v1 initWithIdentifier_];

  return v7;
}

id _EXExtensionInstanceIdentifier.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v10 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v8 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v7, v4);
    v12.receiver = v8;
    v12.super_class = v2;
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _EXExtensionInstanceIdentifier.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v9 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v7, v4);
    v10 = type metadata accessor for _EXExtensionInstanceIdentifier(0);
    v12.receiver = v2;
    v12.super_class = v10;
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionInstanceIdentifier.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x1865F36D0](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];
}

uint64_t _EXExtensionInstanceIdentifier.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _EXExtensionInstanceIdentifier.isDefault.getter()
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t _EXExtensionInstanceIdentifier.description.getter()
{
  _StringGuts.grow(_:)(36);

  v0 = type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v2);

  MEMORY[0x1865F37A0](93, 0xE100000000000000);
  return 0xD000000000000021;
}

id _EXExtensionInstanceIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionInstanceIdentifier(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for _extensionProcessBackgroundQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static _EXExtensionProcess._extensionProcessBackgroundQueue = result;
  return result;
}

xpc_connection_t _EXExtensionProcess.makeLibXPCConnection()()
{
  v1 = *(*(v0 + OBJC_IVAR____EXExtensionProcess__processHandle) + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v2)
    {
      return xpc_connection_create_from_endpoint(v2);
    }
  }

  v4 = objc_opt_self();
  v5 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
  [v4 _EX_errorWithCode_description_];

  return swift_willThrow();
}

Swift::Void __swiftcall _EXExtensionProcess.invalidate()()
{
  v1 = OBJC_IVAR____EXExtensionProcess__observer;
  v2 = *(v0 + OBJC_IVAR____EXExtensionProcess__observer);
  v3 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  v4 = *&v2[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock];
  v5 = v2;
  os_unfair_lock_lock(v4 + 4);
  v6 = &v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v7 = *&v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v8 = *&v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  os_unfair_lock_unlock((*&v2[v3] + 16));

  v9 = *(v0 + OBJC_IVAR____EXExtensionProcess__processHandle);
  v10 = *(v0 + v1);
  v11 = *(v9 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
  v12 = v10;
  os_unfair_lock_lock(v11 + 4);
  [*(v9 + OBJC_IVAR____EXExtensionProcessHandle_observers) removeObject_];
  os_unfair_lock_unlock(v11 + 4);

  _EXExtensionProcessHandle.invalidate()();
}

id _EXExtensionProcess.isValid.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXExtensionProcess__processHandle);
  v2 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
  os_unfair_lock_lock((*(v1 + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock) + 16));
  v3 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v3)
  {
    v4 = [v3 isValid];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((*(v1 + v2) + 16));
  return v4;
}

id _EXExtensionProcess.configuration.getter()
{
  v1 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void _EXExtensionProcess.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id _EXExtensionProcess.extensionIdentity.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 extensionIdentity];

  return v2;
}

BOOL _EXExtensionProcess.matchesProcess(_:)(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [v1 auditToken];
  [a1 auditToken];
  return _EXAuditTokenEqual(&v5, &v4);
}

id _EXExtensionProcess.processPredicate()()
{
  [v0 rbs_pid];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v2 = [objc_opt_self() predicateMatchingIdentifier_];

  return v2;
}

void __swiftcall _EXExtensionProcess.init()(_EXExtensionProcess *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _EXExtensionProcess.init(appExtensionProcess:)(void **a1)
{
  v1 = *a1;

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = _EXLaunchConfiguration.hostConfiguration.getter();
  v4 = [v2 initWithProcessHandle:v1 configuration:v3];

  return v4;
}

id _EXExtensionProcessHandle.ProcessObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized _EXExtensionProcess.init(processHandle:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v5 = OBJC_IVAR____EXExtensionProcess__processHandle;
  *&v1[OBJC_IVAR____EXExtensionProcess__processHandle] = a1;
  v6 = v4;
  v7 = a1;
  v8 = _EXLaunchConfiguration.hostConfiguration.getter();
  *&v2[OBJC_IVAR____EXExtensionProcess_configuration] = v8;
  v9 = *&v8[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v10 = *&v8[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v12 = destructiveProjectEnumData for Platform;
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&v15[v17] = v18;
  *v16 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  v16[1] = v13;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSXPCConnection) -> (@unowned Bool))?(v9, v10);
  v26.receiver = v15;
  v26.super_class = v14;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  *&v2[OBJC_IVAR____EXExtensionProcess__observer] = v19;
  v20 = *&v2[v5];
  v21 = *&v20[OBJC_IVAR____EXExtensionProcessHandle_observersLock];
  v22 = v19;
  v23 = v20;
  os_unfair_lock_lock(v21 + 4);
  [*&v23[OBJC_IVAR____EXExtensionProcessHandle_observers] addObject_];
  os_unfair_lock_unlock(v21 + 4);

  v25.receiver = v2;
  v25.super_class = _EXExtensionProcess;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of UUID?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id _EXNSExtensionShim.makeDefaultImplementation()()
{
  v1 = [v0 identity];
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v1 + v2, &v19, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v20)
  {

    outlined init with take of _InnerAppExtensionIdentity(&v19, v21);
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = type metadata accessor for _EXNSExtensionShim.Implementation();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *&v8[v9] = v10;
    v11 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requests;
    v12 = v0;
    *&v8[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v13 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
    *v13 = 0;
    *(v13 + 1) = 0;
    outlined init with copy of AppExtensionIdentity(v21, &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity]);
    v14 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
    *v14 = partial apply for closure #1 in _EXNSExtensionShim.makeDefaultImplementation();
    v14[1] = v4;
    v15 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
    *v15 = partial apply for closure #2 in _EXNSExtensionShim.makeDefaultImplementation();
    v15[1] = v5;
    v16 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
    *v16 = partial apply for closure #3 in _EXNSExtensionShim.makeDefaultImplementation();
    v16[1] = v6;
    v18.receiver = v8;
    v18.super_class = v7;
    v17 = objc_msgSendSuper2(&v18, sel_init);
    outlined destroy of AppExtensionIdentity(v21);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, uint64_t a2, id a3)
{
  v4 = [a3 requestCompletionBlock];
  if (v4)
  {
    v5 = v4;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
      v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v6.super.isa = 0;
    }

    (v5)[2](v5, isa, v6.super.isa);

    _Block_release(v5);
  }
}

void closure #2 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, uint64_t a2, id a3)
{
  v4 = [a3 requestCancellationBlock];
  if (v4)
  {
    v5 = v4;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    (v5)[2](v5, isa, v6);

    _Block_release(v5);
  }
}

void closure #3 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, id a2)
{
  v2 = [a2 requestInterruptionBlock];
  if (v2)
  {
    v3 = v2;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v3)[2](v3, isa);
    _Block_release(v3);
  }
}

void _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v8 = v2 + *(v21 + 36);
  v9 = *(v8 + 8);
  v10 = *v8;
  v11 = v9;
  v12.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(0).super.isa;

  if (!v13)
  {
    v14 = specialized static NSXPCInterface.defaultImplementationXPCInterface.getter();
    [(objc_class *)v12.super.isa setRemoteObjectInterface:v14];

    [(objc_class *)v12.super.isa resume];
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 16) = v20;
    *(v16 + 24) = v17;
    (*(v5 + 32))(v16 + v15, v7, v4);
    aBlock[4] = partial apply for closure #1 in _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_49;
    v18 = _Block_copy(aBlock);

    [(objc_class *)v12.super.isa setInvalidationHandler:v18];
    _Block_release(v18);
    v19 = *(v21 + 40);

    *(v3 + v19) = v12;
  }
}

uint64_t _EXNSExtensionShim.Implementation.Request.begin()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](_EXNSExtensionShim.Implementation.Request.begin(), 0, 0);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v3 = *(v1 + *(v2 + 40));
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v1 + *(v2 + 20));
    v5 = v3;
    v6 = [v4 inputItems];
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized _arrayForceCast<A, B>(_:)(v7);
    v0[5] = v8;

    v9 = swift_task_alloc();
    v0[6] = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[7] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15NSExtensionItemCGMd, &_sSaySo15NSExtensionItemCGMR);
    *v10 = v0;
    v10[1] = _EXNSExtensionShim.Implementation.Request.begin();

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x29286E69676562, 0xE700000000000000, partial apply for closure #1 in _EXNSExtensionShim.Implementation.Request.begin(), v9, v11);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = _EXNSExtensionShim.Implementation.Request.begin();
  }

  else
  {

    v2 = _EXNSExtensionShim.Implementation.Request.begin();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v20 = *(v6 + 16);
  v20(&v17 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v18 = *(v6 + 32);
  v18(v10 + v9, v8, v5);
  v27 = partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin();
  v28 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v26 = &block_descriptor_8;
  v11 = _Block_copy(&aBlock);

  v12 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation34EXDefaultImplementationXPCProtocol_pMd, &_s19ExtensionFoundation34EXDefaultImplementationXPCProtocol_pMR);
  swift_dynamicCast();
  v13 = v22;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20(v8, v21, v5);
  v15 = swift_allocObject();
  v18(v15 + v9, v8, v5);
  v27 = partial apply for closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin();
  v28 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@guaranteed [NSExtensionItem]?, @guaranteed NSError?) -> ();
  v26 = &block_descriptor_43;
  v16 = _Block_copy(&aBlock);

  [v13 performRequestWithInputItems:isa response:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t result, void *a2)
{
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [NSExtensionItem]?, @guaranteed NSError?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id _EXNSExtensionShim.Implementation.process.getter@<X0>(char ***a1@<X8>)
{
  v4 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = &v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
  v14 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
  v15 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process + 8];
  if (v14)
  {
    v16 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
    v17 = v15;
LABEL_3:
    *a1 = v16;
    a1[1] = v17;
    return outlined copy of AppExtensionProcess?(v14, v15);
  }

  v45 = a1;
  v46 = 0;
  v50 = v2;
  v47 = v15;
  outlined init with copy of AppExtensionIdentity(&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity], v49);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  outlined init with copy of AppExtensionIdentity(v49, v12);
  v20 = v4[6];
  v21 = one-time initialization token for nilInstanceIdentifier;
  v22 = v1;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v24 = __swift_project_value_buffer(v23, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v24, &v12[v20], type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  v12[v4[7]] = 0;
  v25 = v4[8];
  v26 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  outlined destroy of AppExtensionIdentity(v49);
  *&v12[v25] = v26;
  *(v12 + 5) = partial apply for closure #1 in _EXNSExtensionShim.Implementation.process.getter;
  *(v12 + 6) = v19;
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v12, v10, type metadata accessor for AppExtensionProcess.Configuration);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v10, v7, type metadata accessor for AppExtensionProcess.Configuration);
  v27 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v7);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v28 = v50;
  v29 = _EXExtensionProcessMannger.process(configuration:)(v27);
  if (!v28)
  {
    v30 = v29;
    v31 = *(v10 + 5);
    v43 = *(v10 + 6);
    v44 = v31;
    v32 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
    v33 = objc_allocWithZone(v32);
    v50 = 0;
    v34 = &v33[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
    *v34 = 0;
    *(v34 + 1) = 0;
    v35 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *&v33[v35] = v36;
    v37 = v43;
    *v34 = v44;
    *(v34 + 1) = v37;
    v48.receiver = v33;
    v48.super_class = v32;

    v38 = objc_msgSendSuper2(&v48, sel_init);
    v39 = *(v30 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
    v40 = v38;
    os_unfair_lock_lock(v39 + 4);
    [*(v30 + OBJC_IVAR____EXExtensionProcessHandle_observers) addObject_];
    os_unfair_lock_unlock(v39 + 4);

    outlined destroy of _EXNSExtensionShim.Implementation.Request(v10, type metadata accessor for AppExtensionProcess.Configuration);
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v12, type metadata accessor for AppExtensionProcess.Configuration);
    v41 = *v13;
    v42 = *(v13 + 1);
    *v13 = v30;
    *(v13 + 1) = v40;
    v16 = v30;
    v17 = v40;
    outlined consume of AppExtensionProcess?(v41, v42);
    v14 = v46;
    v15 = v47;
    a1 = v45;
    goto LABEL_3;
  }

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v10, type metadata accessor for AppExtensionProcess.Configuration);
  return outlined destroy of _EXNSExtensionShim.Implementation.Request(v12, type metadata accessor for AppExtensionProcess.Configuration);
}

uint64_t _EXNSExtensionShim.Implementation.asyncProcess.getter(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = type metadata accessor for AppExtensionProcess.Configuration(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_EXNSExtensionShim.Implementation.asyncProcess.getter, 0, 0);
}

uint64_t _EXNSExtensionShim.Implementation.asyncProcess.getter()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v0[14] = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v3 = &v1[v2];
  v4 = *v3;
  v0[15] = *v3;
  v5 = *(v3 + 1);
  v0[16] = v5;
  if (v4)
  {
    v6 = v0[9];
    *v6 = v4;
    v6[1] = v5;
    outlined copy of AppExtensionProcess?(v4, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[13];
    v10 = v0[11];
    outlined init with copy of AppExtensionIdentity(&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity], (v0 + 2));
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    outlined init with copy of AppExtensionIdentity((v0 + 2), v9);
    v12 = *(v10 + 24);
    v13 = one-time initialization token for nilInstanceIdentifier;
    v14 = v1;
    if (v13 != -1)
    {
      swift_once();
    }

    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];
    v18 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v19 = __swift_project_value_buffer(v18, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
    outlined init with copy of _EXNSExtensionShim.Implementation.Request(v19, v9 + v12, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
    *(v15 + *(v17 + 28)) = 0;
    v20 = *(v17 + 32);
    v21 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
    outlined destroy of AppExtensionIdentity((v0 + 2));
    *(v15 + v20) = v21;
    *(v15 + 40) = partial apply for closure #1 in _EXNSExtensionShim.Implementation.asyncProcess.getter;
    *(v15 + 48) = v11;
    outlined init with copy of _EXNSExtensionShim.Implementation.Request(v15, v16, type metadata accessor for AppExtensionProcess.Configuration);
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = _EXNSExtensionShim.Implementation.asyncProcess.getter;
    v23 = v0[12];

    return AppExtensionProcess.init(configuration:)((v0 + 7), v23);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = _EXNSExtensionShim.Implementation.asyncProcess.getter;
  }

  else
  {
    v2 = _EXNSExtensionShim.Implementation.asyncProcess.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10] + v0[14];
  outlined destroy of _EXNSExtensionShim.Implementation.Request(v0[13], type metadata accessor for AppExtensionProcess.Configuration);
  v2 = v0[7];
  v3 = v0[8];
  v5 = *v1;
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = v2;
  v7 = v3;
  outlined consume of AppExtensionProcess?(v5, v4);
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[9];
  *v10 = v6;
  v10[1] = v7;
  outlined copy of AppExtensionProcess?(v8, v9);

  v11 = v0[1];

  return v11();
}

{
  outlined destroy of _EXNSExtensionShim.Implementation.Request(*(v0 + 104), type metadata accessor for AppExtensionProcess.Configuration);

  v1 = *(v0 + 8);

  return v1();
}

id _EXNSExtensionShim.Implementation.begin(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _EXNSExtensionShim.Implementation.process.getter(v48);
  if (!v3)
  {
    v39 = v11;
    v40 = v8;
    v41 = a2;
    v13 = v48[0];
    v14 = v48[1];
    v47 = 0;
    v49 = swift_allocBox();
    v16 = v15;
    v17 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
    v18 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock + 8];
    v19 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock + 8];
    v44 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
    v45 = v17;
    v20 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
    v21 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock + 8];
    v42 = a1;
    v43 = v20;
    v22 = v13;
    v23 = v14;

    UUID.init()();
    *(v16 + v9[10]) = 0;
    *(v16 + v9[5]) = a1;
    v24 = (v16 + v9[9]);
    v46 = v22;
    *v24 = v22;
    v24[1] = v23;
    v25 = (v16 + v9[6]);
    v26 = v44;
    *v25 = v45;
    v25[1] = v18;
    v27 = (v16 + v9[7]);
    *v27 = v26;
    v27[1] = v19;
    v28 = (v16 + v9[8]);
    *v28 = v43;
    v28[1] = v21;
    v29 = swift_allocObject();
    *(v29 + 16) = v2;
    v30 = v42;
    v31 = v2;
    v32 = v47;
    _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:), v29);
    if (v32)
    {
    }

    else
    {

      v33 = v39;
      outlined init with copy of _EXNSExtensionShim.Implementation.Request(v16, v39, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
      _EXNSExtensionShim.Implementation.addRequest(_:)(v33);
      outlined destroy of _EXNSExtensionShim.Implementation.Request(v33, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
      v34 = type metadata accessor for TaskPriority();
      v35 = v40;
      (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v49;
      v36[5] = v31;
      v37 = v31;

      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #2 in _EXNSExtensionShim.Implementation.begin(_:), v36);

      swift_beginAccess();
      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 16))(v41, v16, v38);
    }
  }

  return result;
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #2 in _EXNSExtensionShim.Implementation.begin(_:), 0, 0);
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)()
{
  v1 = v0[12];
  v2 = v0[13];
  swift_beginAccess();
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v2, v1, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);

  return _EXNSExtensionShim.Implementation.Request.begin()();
}

{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  swift_beginAccess();
  (*(v4 + 16))(v3, v2, v5);
  _EXNSExtensionShim.Implementation.completeRequest(for:items:)(v3, v1);

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[12];
  if (v1)
  {
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v5, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
    v6 = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);
  }

  else
  {
    v4[16] = a1;
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v5, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
    v6 = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v7[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v7[11] = v8;
  *v8 = v7;
  v8[1] = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);

  return _EXNSExtensionShim.Implementation.asyncProcess.getter((v7 + 2));
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  else
  {
    v2 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  v33 = v0[5];
  v34 = v0[12];
  v4 = v0[2];
  v5 = v0[3];
  v0[13] = v4;
  v0[14] = v5;
  v6 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock + 8];
  v7 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock + 8];
  v31 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
  v32 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
  v8 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock + 8];
  v30 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
  v9 = v4;
  v10 = v5;

  UUID.init()();
  *(v2 + v1[10]) = 0;
  *(v2 + v1[5]) = v33;
  v11 = (v2 + v1[9]);
  *v11 = v9;
  v11[1] = v10;
  v12 = (v2 + v1[6]);
  *v12 = v32;
  v12[1] = v6;
  v13 = (v2 + v1[7]);
  *v13 = v31;
  v13[1] = v7;
  v14 = (v2 + v1[8]);
  *v14 = v30;
  v14[1] = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v16 = v33;
  v17 = v3;
  _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:), v15);
  v18 = v0[10];
  if (v34)
  {
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v0[10], type metadata accessor for _EXNSExtensionShim.Implementation.Request);

    v19 = v0[8];
    v20 = v0[6];
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = v34;
    v20(v19, v34);

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[8];
    v26 = v0[6];

    _EXNSExtensionShim.Implementation.addRequest(_:)(v18);
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v25, v18, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
    v26(v25, 0);
    outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v29 = swift_task_alloc();
    v0[15] = v29;
    *v29 = v0;
    v29[1] = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);

    return _EXNSExtensionShim.Implementation.Request.begin()();
  }
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  _EXNSExtensionShim.Implementation.completeRequest(for:items:)(v3, v0[17]);

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v3, type metadata accessor for _EXNSExtensionShim.Implementation.Request);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  v3(v2, v1);

  outlined destroy of NSObject?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v2, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v3;
  v5(v4, v3);

  outlined destroy of NSObject?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  outlined init with copy of UUID?(a1, &v13 - v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

uint64_t _EXNSExtensionShim.Implementation.addRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v12 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v12 + 4);

  (*(v8 + 16))(v10, a1, v7);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(a1, v6, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v13 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v6, v10);
  swift_endAccess();
  v14 = *(v2 + v11);

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t _EXNSExtensionShim.Implementation.cancelRequest(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v15 = *(v1 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v15 + 4);

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v13);
  swift_endAccess();
  v16 = *(v2 + v14);

  os_unfair_lock_unlock(v16 + 4);

  outlined init with copy of UUID?(v13, v11, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v11, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v11, v7);
    v18 = *(v4 + 40);
    v19 = *&v7[v18];
    if (v19)
    {
      [*&v7[v18] setInvalidationHandler_];
      [v19 invalidate];
    }

    *&v7[v18] = 0;
    (*(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock))(a1, 0);
    outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v7, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

uint64_t _EXNSExtensionShim.Implementation.completeRequest(for:items:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v5 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v16 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v16 + 4);

  swift_beginAccess();
  v25 = a1;
  specialized Dictionary.removeValue(forKey:)(a1, v14);
  swift_endAccess();
  v17 = *(v3 + v15);

  os_unfair_lock_unlock(v17 + 4);

  outlined init with copy of UUID?(v14, v12, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v14, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v12, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v12, v8);
    v19 = *(v5 + 40);
    v20 = *&v8[v19];
    if (v20)
    {
      [*&v8[v19] setInvalidationHandler_];
      [v20 invalidate];
    }

    *&v8[v19] = 0;
    v21 = *(v3 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock);
    v22 = specialized _arrayForceCast<A, B>(_:)(v24);
    v21(v25, v22);

    outlined destroy of NSObject?(v14, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v8, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

uint64_t _EXNSExtensionShim.Implementation.invalidateRequest(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v15 = *(v1 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v15 + 4);

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v13);
  swift_endAccess();
  v16 = *(v2 + v14);

  os_unfair_lock_unlock(v16 + 4);

  outlined init with copy of UUID?(v13, v11, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v11, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v11, v7);
    v18 = *(v4 + 40);
    v19 = *&v7[v18];
    if (v19)
    {
      [*&v7[v18] setInvalidationHandler_];
      [v19 invalidate];
    }

    *&v7[v18] = 0;
    (*(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock))(a1);
    outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v7, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

id _EXNSExtensionShim.Implementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXNSExtensionShim.Implementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _EXNSExtensionShim.Implementation.Request(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXNSExtensionShim.Implementation.Request;
  if (!type metadata singleton initialization cache for _EXNSExtensionShim.Implementation.Request)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for _EXNSExtensionShim.Implementation.Request(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for EXExtensionRequest, off_1E6E4D1B0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        type metadata accessor for NSXPCConnection?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for NSXPCConnection?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NSXPCConnection?)
  {
    type metadata accessor for NSDictionary(255, &lazy cache variable for type metadata for NSXPCConnection, 0x1E696B0B8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NSXPCConnection?);
    }
  }
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 0x1010101);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      CTt1g5 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(CTt1g5 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, CTt1g5);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      CTt1g5 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  CTt1g5 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(CTt1g5 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, CTt1g5);

LABEL_11:
  *v2 = CTt1g5;
  return v12;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
    v20 = *(v13 - 8);
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v12 + *(v20 + 72) * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for _EXQuery();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for _EXActiveQuery();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t partial apply for closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);

  return closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(a1);
}

uint64_t objectdestroy_36Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);

  return closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(a1, a2);
}

uint64_t specialized static NSXPCInterface.defaultImplementationXPCInterface.getter()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1848BCEF0;
  v1 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSArrayCmMd, &_sSo7NSArrayCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSDictionaryCmMd, &_sSo12NSDictionaryCmMR);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCmMd, &_sSo8NSStringCmMR);
  *(v0 + 96) = v3;
  v4 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSExtensionItemCmMd, &_sSo15NSExtensionItemCmMR);
  *(v0 + 128) = v4;
  v5 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCmMd, &_sSo7NSErrorCmMR);
  *(v0 + 160) = v5;
  v6 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6NSUUIDCmMd, &_sSo6NSUUIDCmMR);
  *(v0 + 192) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

void partial apply for closure #1 in _EXNSExtensionShim.Implementation.asyncProcess.getter()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v2 = *v1;
  v3 = *(v1 + 8);
  *v1 = 0;
  *(v1 + 8) = 0;
  outlined consume of AppExtensionProcess?(v2, v3);
}

uint64_t outlined init with copy of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void outlined consume of AppExtensionProcess?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id outlined copy of AppExtensionProcess?(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _ServiceExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  v2[5] = swift_task_alloc();
  v3 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) - 8);
  v2[6] = v3;
  v2[7] = *(v3 + 64);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_ServiceExtensionProcess.init(configuration:), 0, 0);
}

uint64_t _ServiceExtensionProcess.init(configuration:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  outlined init with copy of _ServiceExtensionProcess.Configuration(v4, v1, type metadata accessor for _ServiceExtensionProcess.Configuration);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with take of _ServiceExtensionProcess.Configuration(v1, v7 + v6, type metadata accessor for _ServiceExtensionProcess.Configuration);
  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC19ExtensionFoundation08_ServiceE7ProcessV5Inner33_B444E02B49700CE9F619AE54934FF0D0LLV_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in _ServiceExtensionProcess.init(configuration:), v7);
  v0[10] = v8;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v9 = v0;
  v9[1] = _ServiceExtensionProcess.init(configuration:);
  v12 = v0[4];
  v11 = v0[5];
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v11, v8, v12, v10, v13);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = _ServiceExtensionProcess.init(configuration:);
  }

  else
  {
    v2 = _ServiceExtensionProcess.init(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[2];
  outlined destroy of _ServiceExtensionProcess.Configuration(v0[3], type metadata accessor for _ServiceExtensionProcess.Configuration);
  outlined init with take of _ServiceExtensionProcess.Configuration(v1, v2, type metadata accessor for _ServiceExtensionProcess.Inner);

  v3 = v0[1];

  return v3();
}

{
  outlined destroy of _ServiceExtensionProcess.Configuration(*(v0 + 24), type metadata accessor for _ServiceExtensionProcess.Configuration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in _ServiceExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in _ServiceExtensionProcess.init(configuration:), 0, 0);
}

uint64_t closure #1 in _ServiceExtensionProcess.init(configuration:)()
{
  static _ServiceExtensionProcess.launch(configuration:)(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in _ServiceExtensionProcess.init(configuration:)(uint64_t a1)
{
  v4 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in _ServiceExtensionProcess.init(configuration:)(a1, v6, v7, v1 + v5);
}

uint64_t outlined init with take of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void static _ServiceExtensionProcess.launch(configuration:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v100 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = _ServiceExtensionProcess.Configuration._rbsProcessIdentity.getter();
  if (!v2)
  {
    v11 = v10;
    v89 = v7;
    v90 = v9;
    v88 = v5;
    v91 = 0;
    v12 = [objc_opt_self() contextWithIdentity_];
    v13 = *(a1 + *(v4 + 32));
    v14 = a1;
    v87 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v13)
    {
      if (v13 >> 62)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);

        _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      }

      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = v8;
    }

    else
    {
      v15.super.isa = 0;
      v16 = v8;
    }

    [v12 setAttributes_];

    if (*(v14 + 40) == 1)
    {
      v17 = [objc_opt_self() predicateMatchingIdentity_];
      v18 = v11;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
      v19 = v17;
      v20 = v91;
      v21 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v19);
      v91 = v20;
      if (v20)
      {

        return;
      }

      v22 = v21;

      v23 = [objc_opt_self() identifierWithPid_];
      [v12 setRequiredExistingProcess_];
    }

    else
    {
      v18 = v11;
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69C7598]) initWithContext_];
    v25 = [v24 executeRequest];
    if ([v25 error])
    {
      swift_willThrow();

LABEL_14:
      return;
    }

    v26 = [v25 process];
    if (!v26)
    {
      v73 = objc_opt_self();
      v74 = v24;
      v75 = MEMORY[0x1865F36D0](0xD000000000000019, 0x80000001848C5020);
      [v73 _EX_errorWithCode_description_];

      swift_willThrow();
      goto LABEL_14;
    }

    v85 = v26;
    v86 = v24;
    v27 = [v25 managedEndpointByLaunchIdentifier];
    if (v27)
    {
      v28 = v27;
      v84 = v12;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSMachEndpoint, 0x1E69C75A8);
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = [v16 identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      aBlock = v31;
      v94 = v33;
      MEMORY[0x1865F37A0](58, 0xE100000000000000);
      MEMORY[0x1865F37A0](v89, v90);
      if (*(v29 + 16))
      {
        v34 = v29;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock, v94);
        v37 = v36;

        if (v37)
        {
          v83 = *(*(v34 + 56) + 8 * v35);

          v38 = [v25 assertion];
          if (v38)
          {
            v82 = v38;
            v39 = [v16 identifier];
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            aBlock = v40;
            v94 = v42;
            MEMORY[0x1865F37A0](58, 0xE100000000000000);
            v43 = v89;
            MEMORY[0x1865F37A0](v89, v90);
            v44 = aBlock;
            v45 = v94;
            v46 = v25;
            v47 = MEMORY[0x1865F36D0](v44, v45);

            v48 = MEMORY[0x1865F36D0](0x767265536E69614DLL, 0xEB00000000656369);
            v49 = objc_opt_self();
            aBlock = 0;
            v50 = [v49 endpointOfLaunchIdentifier:v47 fromLaunchResponse:v46 withService:v48 instance:0 error:&aBlock];

            v51 = aBlock;
            v81 = v46;

            if (v50)
            {
              v52 = [v16 identifier];
              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v14;
              v55 = v43;
              v57 = v56;

              aBlock = v53;
              v94 = v57;
              MEMORY[0x1865F37A0](58, 0xE100000000000000);
              MEMORY[0x1865F37A0](v55, v90);
              v58 = aBlock;
              v59 = v94;
              v60 = type metadata accessor for EXConnectionEndpoint();
              v61 = objc_allocWithZone(v60);
              v62 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
              *&v61[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
              v63 = &v61[OBJC_IVAR___EXConnectionEndpoint_identifier];
              *v63 = v58;
              *(v63 + 1) = v59;
              *&v61[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = v50;
              *&v61[v62] = 0;
              v99.receiver = v61;
              v99.super_class = v60;
              v64 = v50;
              v65 = objc_msgSendSuper2(&v99, sel_init);
              v66 = v87;
              outlined init with copy of _ServiceExtensionProcess.Configuration(v54, v87, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v67 = (*(v88 + 80) + 16) & ~*(v88 + 80);
              v68 = swift_allocObject();
              outlined init with take of _ServiceExtensionProcess.Configuration(v66, v68 + v67, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v97 = partial apply for closure #1 in static _ServiceExtensionProcess.launch(configuration:);
              v98 = v68;
              aBlock = MEMORY[0x1E69E9820];
              v94 = 1107296256;
              v95 = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
              v96 = &block_descriptor_36;
              v69 = _Block_copy(&aBlock);

              v70 = v85;
              [v85 monitorForDeath_];

              _Block_release(v69);
              v71 = v92;
              outlined init with copy of _ServiceExtensionProcess.Configuration(v54, v92, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v72 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
              *(v71 + v72[5]) = v70;
              *(v71 + v72[6]) = v65;
              *(v71 + v72[7]) = v82;
            }

            else
            {
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }

            return;
          }

          v79 = objc_opt_self();
          v80 = MEMORY[0x1865F36D0](0xD000000000000028, 0x80000001848C5070);
          [v79 _EX_errorWithCode_description_];

          swift_willThrow();
          v78 = v83;
LABEL_26:

          return;
        }
      }

      else
      {
      }

      v12 = v84;
    }

    v76 = objc_opt_self();
    v77 = MEMORY[0x1865F36D0](0xD00000000000002CLL, 0x80000001848C5040);
    [v76 _EX_errorWithCode_description_];

    swift_willThrow();
    v78 = v85;
    goto LABEL_26;
  }
}

uint64_t _ServiceExtensionProcess.init(configuration:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _ServiceExtensionProcess.launch(configuration:)(a1, v7);
  result = outlined destroy of _ServiceExtensionProcess.Configuration(a1, type metadata accessor for _ServiceExtensionProcess.Configuration);
  if (!v2)
  {
    return outlined init with take of _ServiceExtensionProcess.Configuration(v7, a2, type metadata accessor for _ServiceExtensionProcess.Inner);
  }

  return result;
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ServiceExtensionProcess.makeXPCConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for _ServiceExtensionProcess(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.launch);
  outlined init with copy of _ServiceExtensionProcess.Configuration(v0, v4, type metadata accessor for _ServiceExtensionProcess);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v30 = v9;
    *v8 = 136446210;
    v10 = v4[1];
    v11 = v4[2];
    *&aBlock = *v4;
    *(&aBlock + 1) = v10;
    v26 = v11;
    v12 = aBlock;

    v13 = String.init<A>(describing:)();
    v15 = v14;
    outlined destroy of _ServiceExtensionProcess.Configuration(v4, type metadata accessor for _ServiceExtensionProcess);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v30);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1847D1000, v6, v7, "Creating connection for extension: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1865F56C0](v9, -1, -1);
    MEMORY[0x1865F56C0](v8, -1, -1);
  }

  else
  {

    outlined destroy of _ServiceExtensionProcess.Configuration(v4, type metadata accessor for _ServiceExtensionProcess);
  }

  v17 = *(*(v1 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 24)) + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = objc_opt_self();
  v28 = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
  v29 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v27 = &block_descriptor_9;
  v1 = _Block_copy(&aBlock);
  v19 = v17;

  v20 = [v18 NSXPCConnectionWithEndpoint:v19 configurator:v1];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_9:
    v21 = objc_opt_self();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30 = aBlock;
    MEMORY[0x1865F37A0](0xD000000000000035, 0x80000001848C4FE0);
    v22 = v1[2];
    aBlock = *v1;
    v26 = v22;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F37A0](39, 0xE100000000000000);
    v20 = *(&v30 + 1);
    v23 = MEMORY[0x1865F36D0](v30, *(&v30 + 1));

    [v21 _EX_errorWithCode_description_];

    swift_willThrow();
  }

  return v20;
}

uint64_t outlined init with copy of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall _ServiceExtensionProcess.invalidate()()
{
  v1 = *(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 28));

  [v1 invalidate];
}

uint64_t _ServiceExtensionProcess.description.getter()
{
  _StringGuts.grow(_:)(17);

  strcpy(v3, "Process (pid: ");
  HIBYTE(v3[1]) = -18;
  [*(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 20)) pid];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v1);

  MEMORY[0x1865F37A0](41, 0xE100000000000000);
  return v3[0];
}

id _ServiceExtensionProcess.pid.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 20));

  return [v1 pid];
}

double _ServiceExtensionProcess.Configuration.serviceExtensionIdentity.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;

  return result;
}

__n128 _ServiceExtensionProcess.Configuration.serviceExtensionIdentity.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *v1;

  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  return result;
}

uint64_t key path setter for _ServiceExtensionProcess.Configuration.onInterruption : _ServiceExtensionProcess.Configuration(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 24) = _sytIegr_Ieg_TRTA_0;
  *(a2 + 32) = v5;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration.onInterruption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t _ServiceExtensionProcess.Configuration.onInterruption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration.init(serviceExtensionIdentity:onInterruption:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v11 = *(v10 + 28);
  if (one-time initialization token for nilInstanceIdentifier != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v13 = __swift_project_value_buffer(v12, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  result = outlined init with copy of _ServiceExtensionProcess.Configuration(v13, a4 + v11, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  *(a4 + *(v10 + 32)) = 0;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  return result;
}

double _ServiceExtensionProcess.Configuration._assertionAttributes.getter()
{
  type metadata accessor for _ServiceExtensionProcess.Configuration(0);

  return result;
}

uint64_t key path setter for _ServiceExtensionProcess.Configuration._assertionAttributes : _ServiceExtensionProcess.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);

  *(a2 + v4) = v3;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration._assertionAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*_ServiceExtensionProcess.Configuration._assertionAttributes.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return _ServiceExtensionProcess.Configuration._assertionAttributes.modify;
}

uint64_t _ServiceExtensionProcess.Configuration._assertionAttributes.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1 + 6);
  v4 = *a1;
  if (a2)
  {

    *(v2 + v3) = v4;
  }

  else
  {

    *(v2 + v3) = v4;
  }

  return result;
}

id _ServiceExtensionProcess.Configuration._rbsProcessIdentity.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-1] - v6;
  v9 = *v0;
  v8 = *(v0 + 8);
  v10 = *(v0 + 16);
  v22[0] = v9;
  v22[1] = v8;
  v22[2] = v10;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  *v4 = 0;
  *(v4 + 1) = 0;
  v12 = v9;

  *(v4 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + 3) = 0;
  v13 = *(v2 + 36);
  v14 = type metadata accessor for NWApplicationID();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[*(v2 + 40)];
  v16 = type metadata accessor for _EXExtensionProcessIdentity(0);
  *v15 = 0;
  *(v15 + 1) = 0;
  v17 = objc_allocWithZone(v16);
  v18 = _EXExtensionProcessIdentity.init(identity:instanceUUID:configuration:)(v22, v7, v4);
  v19 = [objc_opt_self() identityForExtensionIdentity_];

  return v19;
}

uint64_t type metadata completion function for _ServiceExtensionProcess(uint64_t a1)
{
  result = type metadata accessor for _ServiceExtensionProcess.Inner(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for _ServiceExtensionProcess.Configuration(uint64_t a1)
{
  type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppExtensionProcess._InstanceIdentifier(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [RBSDomainAttribute]?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [RBSDomainAttribute]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [RBSDomainAttribute]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18RBSDomainAttributeCGMd, &_sSaySo18RBSDomainAttributeCGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [RBSDomainAttribute]?);
    }
  }
}

uint64_t type metadata completion function for _ServiceExtensionProcess.Inner(uint64_t a1)
{
  result = type metadata accessor for _ServiceExtensionProcess.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for EXConnectionEndpoint();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall NSXPCConnection.invalidateAllAssertions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8018], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in NSXPCConnection.invalidateAllAssertions();
  *(v9 + 24) = v8;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v7, v10);

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void closure #1 in NSXPCConnection.invalidateAllAssertions()(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = NSXPCConnection.assertions.getter();
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
    lazy protocol witness table accessor for type AuditToken and conformance AuditToken();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    objc_setAssociatedObject(a1, "_EX_assertions", isa, 0x301);

    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v9;
LABEL_10:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      [*(*(v6 + 56) + ((v14 << 9) | (8 * v15))) invalidate];
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        return;
      }

      v12 = *(v6 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void one-time initialization function for observerServiceInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

Swift::Void __swiftcall Service.ObserverConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___ObserverConfiguration__extensionPointRecords);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_13:
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14 = MEMORY[0x1865F36D0](6580575, 0xE300000000000000);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v14];

    type metadata accessor for LSPersistentIdentifier(0);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    v16 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C50F0);
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

    v17 = *(v2 + OBJC_IVAR___ObserverConfiguration__endpoint);
    v18 = MEMORY[0x1865F36D0](0x6E696F70646E655FLL, 0xE900000000000074);
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    v19 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 1);
    v20 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 2);
    v21 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 3);
    v24[0] = *(v2 + OBJC_IVAR___ObserverConfiguration__options);
    v24[1] = v19;
    v24[2] = v20;
    v24[3] = v21;
    NSCoder.encode(_:forKey:)(v24, 0x736E6F6974706F5FLL, 0xE800000000000000);
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v22 = v1;
    v23 = with.super.isa;
    v6 = 0;
    v7 = v25;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1865F3F40](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 persistentIdentifier];

      v25 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v7 = v25;
      }

      ++v6;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
    }

    while (v5 != v6);
    v2 = v22;
    with.super.isa = v23;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t type metadata accessor for Service.ObserverConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for Service.ObserverConfiguration;
  if (!type metadata singleton initialization cache for Service.ObserverConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Service.ObserverConfiguration(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

id Service.ObserverUpdate.init(identities:disabledCount:unelectedCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a1 + 32;
    do
    {
      outlined init with copy of AppExtensionIdentity(v9, v21);
      outlined init with copy of AppExtensionIdentity(v21, v20);
      outlined init with copy of _InnerAppExtensionIdentity(v20, v19);
      v10 = [objc_allocWithZone(_EXExtensionIdentity) init];
      outlined destroy of AppExtensionIdentity(v20);
      outlined destroy of AppExtensionIdentity(v21);
      outlined init with take of _InnerAppExtensionIdentity(v19, v18);
      v11 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      v12 = v10;
      outlined assign with take of _InnerAppExtensionIdentity?(v18, v10 + v11);
      swift_endAccess();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 40;
      --v8;
    }

    while (v8);

    v13 = v22;
    v6 = a2;
    v5 = a3;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v4[OBJC_IVAR___ObserverUpdate__identities] = v13;
  *&v4[OBJC_IVAR___ObserverUpdate__disabledCount] = v6;
  *&v4[OBJC_IVAR___ObserverUpdate__unelectedCount] = v5;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for Service.ObserverUpdate();
  return objc_msgSendSuper2(&v17, sel_init);
}

Swift::Void __swiftcall Service.ObserverUpdate.encode(with:)(NSCoder with)
{
  type metadata accessor for _EXExtensionIdentity();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = MEMORY[0x1865F36D0](0x7469746E6564695FLL, 0xEB00000000736569);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];

  v5 = *(v1 + OBJC_IVAR___ObserverUpdate__disabledCount);
  v6 = MEMORY[0x1865F36D0](0x656C62617369645FLL, 0xEE00746E756F4364);
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___ObserverUpdate__unelectedCount);
  v8 = MEMORY[0x1865F36D0](0x7463656C656E755FLL, 0xEF746E756F436465);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id Service.ObserverConfiguration.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized Service.ObserverConfiguration.init(coder:)(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v8 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (!v8)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v9 = v8;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(&v2[OBJC_IVAR___ObserverConfiguration__id], v7, v4);
  v12 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v31 = v12;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v29 = a1;
    v30 = v2;
    v15 = 0;
    v2 = (v9 & 0xC000000000000001);
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v2)
      {
        v16 = MEMORY[0x1865F3F40](v15, v9);
      }

      else
      {
        if (v15 >= *(v31 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(v9 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v18, v20);
      a1 = [objc_allocWithZone(MEMORY[0x1E6963668]) initWithPersistentIdentifier_];

      if (!a1)
      {
        goto LABEL_22;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v15;
      if (v12 == i)
      {
        v14 = v33;
        v2 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_16:
  *&v2[OBJC_IVAR___ObserverConfiguration__extensionPointRecords] = v14;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSXPCListenerEndpoint, 0x1E696B0E0);
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;

  *&v2[OBJC_IVAR___ObserverConfiguration__endpoint] = v23;
  NSCoder.decodeOptions(forKey:)(0x736E6F6974706F5FLL, 0xE800000000000000, &v33);
  v24 = BYTE1(v33);
  v25 = BYTE2(v33);
  v26 = BYTE3(v33);
  v27 = &v2[OBJC_IVAR___ObserverConfiguration__options];
  *v27 = v33;
  v27[1] = v24;
  v27[2] = v25;
  v27[3] = v26;
  v28 = type metadata accessor for Service.ObserverConfiguration(0);
  v32.receiver = v2;
  v32.super_class = v28;
  objc_msgSendSuper2(&v32, sel_init);
}

id specialized Service.ObserverUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for _EXExtensionIdentity();
  v4 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v5 = v4;
  }

  *&v2[OBJC_IVAR___ObserverUpdate__identities] = v5;
  v6 = MEMORY[0x1865F36D0](0x656C62617369645FLL, 0xEE00746E756F4364);
  v7 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___ObserverUpdate__disabledCount] = v7;
  v8 = MEMORY[0x1865F36D0](0x7463656C656E755FLL, 0xEF746E756F436465);
  v9 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___ObserverUpdate__unelectedCount] = v9;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for Service.ObserverUpdate();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_AppExtension.hostAuditToken.getter()
{
  type metadata accessor for _EXRunningExtension();
  result = static _EXRunningExtension.sharedInstance()();
  if (result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken + 32])
  {
    __break(1u);
  }

  else
  {
    v1 = *&result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken];

    return v1;
  }

  return result;
}

{
  type metadata accessor for _EXRunningExtension();
  result = static _EXRunningExtension.sharedInstance()();
  if (result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken + 32])
  {
    __break(1u);
  }

  else
  {
    v1 = *&result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken];

    return v1;
  }

  return result;
}

void static _AppExtension.main()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v29 - v7;
  v32 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.debug.getter();
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.general;
  if (os_log_type_enabled(static OS_os_log.general, v11))
  {
    v13 = swift_slowAlloc();
    v30 = AssociatedTypeWitness;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v2;
    v16 = v15;
    *v14 = 138412290;
    type metadata accessor for _EXRunningExtension();
    v17 = static _EXRunningExtension.sharedInstance()();
    *(v14 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_1847D1000, v12, v11, "Launching extension %@", v14, 0xCu);
    outlined destroy of NSObject?(v16);
    MEMORY[0x1865F56C0](v16, -1, -1);
    v18 = v14;
    AssociatedTypeWitness = v30;
    MEMORY[0x1865F56C0](v18, -1, -1);
  }

  (*(a2 + 24))(a1, a2);
  (*(a2 + 32))(a1, a2);
  type metadata accessor for _EXRunningExtension();
  v19 = static _EXRunningExtension.sharedInstance()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _SceneWrapper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  v25 = specialized _SceneWrapper.__allocating_init(_:)(v8, v22, v23, v24);
  v26 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
  if (*&v19[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v27 = v25;
    (*(v33 + 8))(v8, AssociatedTypeWitness);
    (*(v32 + 8))(v10, a1);
    v28 = *&v19[v26];
    *&v19[v26] = v27;
  }
}

uint64_t @objc _SceneWrapper.shouldAccept(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = _SceneWrapper.shouldAccept(_:)(v4);

  return a1 & 1;
}

void *_SceneWrapper.makeScene(with:)(uint64_t a1)
{
  result = (*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 16))(a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  if (result)
  {
    v3 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id @objc _SceneWrapper.makeScene(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _SceneWrapper.makeScene(with:)(v4);

  return v6;
}

id _SceneWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _SceneWrapper(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void static _EXExtension.bootstrap(with:)(void *a1)
{
  type metadata accessor for _EXRunningExtension();
  v2 = static _EXRunningExtension.sharedInstance()();
  if (*(v2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = a1;
    v4 = v2;
    v3 = a1;
  }
}

id specialized _SceneWrapper.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for _SceneWrapper(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t type metadata completion function for _SceneWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall _EXQueryResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____EXQueryResult_identities);
  if (v3)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v3);
    type metadata accessor for _EXExtensionIdentity();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = MEMORY[0x1865F36D0](0x697469746E656469, 0xEA00000000007365);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v5];
  }

  v6 = *(v1 + OBJC_IVAR____EXQueryResult_availablility);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1865F36D0](0x6C62616C69617661, 0xED00007974696C69);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }
}

id _EXQueryResultUpdate.__allocating_init(addedExtensions:removedUUIDs:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = a2;
  *&v5[OBJC_IVAR____EXQueryResult_identities] = a1;
  *&v5[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for _EXQueryResult();
  return objc_msgSendSuper2(&v7, sel_init);
}

id _EXQueryResultUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSUUID();
  v4 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v6);

  *(v2 + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs) = v7;
  v8 = specialized _EXQueryResult.init(coder:)();

  return v8;
}

unint64_t _EXQueryResultUpdate.description.getter()
{
  _StringGuts.grow(_:)(47);

  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);

  v0 = Set.description.getter();
  v2 = v1;

  MEMORY[0x1865F37A0](v0, v2);

  MEMORY[0x1865F37A0](0xD000000000000010, 0x80000001848C52E0);
  type metadata accessor for UUID();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = Set.description.getter();
  MEMORY[0x1865F37A0](v3);

  return 0xD00000000000001BLL;
}

id _EXQueryResult.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for _EXExtensionIdentity();
    v5 = _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1865F3AE0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1865F3F40](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1865F3AE0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id specialized _EXQueryResult.init(coder:)()
{
  type metadata accessor for _EXExtensionIdentity();
  v1 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v1)
  {
    v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(v1);
  }

  else
  {
    v2 = 0;
  }

  *&v0[OBJC_IVAR____EXQueryResult_identities] = v2;
  type metadata accessor for _EXExtensionAvailability();
  *&v0[OBJC_IVAR____EXQueryResult_availablility] = NSCoder.decodeObject<A>(of:forKey:)();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _EXQueryResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19ExtensionFoundation23LocalLSDatabaseObserverC0F0V_ShyAHGTt0g5(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(a1[2], 0, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0H0VGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0H0VGMR, type metadata accessor for LocalLSDatabaseObserver.Observer);
  v4 = *(type metadata accessor for LocalLSDatabaseObserver.Observer(0) - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  outlined consume of [String : Any].Iterator._Variant(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

char *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(*(a1 + 16), 0, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  outlined consume of [String : Any].Iterator._Variant(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t static _EXExtensionProcessHandle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static _EXExtensionProcessHandle.supportsSecureCoding = a1;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSAssertion, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void @objc _EXExtensionProcessHandle.add(observer:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v8 = a1;
  specialized _EXExtensionProcessHandle.add(observer:)(a3, v8, v7, a4);
  swift_unknownObjectRelease();
}

xpc_connection_t _EXExtensionProcessHandle.makeLibXPCConnection()()
{
  v1 = *(v0 + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v2)
    {
      return xpc_connection_create_from_endpoint(v2);
    }
  }

  v4 = objc_opt_self();
  v5 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
  [v4 _EX_errorWithCode_description_];

  return swift_willThrow();
}

NSXPCConnection_optional __swiftcall _EXExtensionProcessHandle.makeSessionXPCConnection()()
{
  v2 = type metadata accessor for UUID();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.general);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  p_cb = &OBJC_PROTOCOL___OS_os_transaction.cb;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    *v10 = 138543362;
    v11 = *(*&v6[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration] + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
    *(v10 + 4) = v11;
    *v1 = v11;
    v12 = v11;
    _os_log_impl(&dword_1847D1000, v7, v8, "Creating connection for extension: '%{public}@'", v10, 0xCu);
    outlined destroy of NSObject?(v1);
    MEMORY[0x1865F56C0](v1, -1, -1);
    MEMORY[0x1865F56C0](v10, -1, -1);
  }

  v13 = *&v6[OBJC_IVAR____EXExtensionProcessHandle_sessionEndpoint];
  if (v13 && (v14 = *(v13 + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint)) != 0)
  {
    v15 = v14;
  }

  else
  {
    v1 = *&v6[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
    p_cb = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
    v16 = [*(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) serviceName];
    isa = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
    if (isa)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v18 = one-time initialization token for _defaultInstanceIdentifier;
      v19 = isa;
      if (v18 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {

        isa = 0;
      }

      else
      {
        v20 = v34;
        (*(v34 + 16))(v4, v19 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v2);

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v20 + 8))(v4, v2);
      }
    }

    v21 = MEMORY[0x1865F36D0](0x6C616E7265746E49, 0xEF65636976726553);
    v15 = [objc_opt_self() endpointForServiceName:v16 oneshot:isa service:v21 instance:0];

    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v22 = objc_opt_self();
  aBlock[4] = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_37;
  v6 = _Block_copy(aBlock);

  v23 = [v22 NSXPCConnectionWithEndpoint:v15 configurator:v6];
  _Block_release(v6);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_17:
  v25 = v6;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = *(p_cb + v1);
    *(v28 + 4) = v30;
    *v29 = v30;
    v31 = v30;
    _os_log_impl(&dword_1847D1000, v26, v27, "Failed to create connection endpoint for extension: '%@'", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x1865F56C0](v29, -1, -1);
    MEMORY[0x1865F56C0](v28, -1, -1);
  }

  v23 = 0;
LABEL_20:
  v32 = v23;
  result.value.super.isa = v32;
  result.is_nil = v24;
  return result;
}

id _EXExtensionProcessHandle.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____EXExtensionProcessHandle_assertion] invalidate];
  [*&v0[OBJC_IVAR____EXExtensionProcessHandle_launchAssertion] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in _EXExtensionProcessHandle._acquireAsertion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    _EXExtensionProcessHandle.cleanUpAfterInvalidation()();
  }
}

id _EXExtensionProcessHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation03AppH8IdentityV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void specialized _EXExtensionProcessHandle.add(observer:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(a2 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
  os_unfair_lock_lock(v7 + 4);
  [*(a2 + OBJC_IVAR____EXExtensionProcessHandle_observers) *a4];

  os_unfair_lock_unlock(v7 + 4);
}

id EXConnectionEndpoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EXConnectionEndpoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _ServiceExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _ServiceExtensionIdentity.groupIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

__CFString *_ServiceExtensionIdentity.init(identifier:groupIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __CFString *a3@<X2>, __CFString *a4@<X3>, __CFString **a5@<X8>)
{
  result = specialized _AppExtensionPoint.init(identifier:)(a1, a2);
  if (v5)
  {
  }

  *a5 = result;
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t static _ServiceExtensionIdentity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _ServiceExtensionIdentity.hash(into:)(uint64_t a1)
{
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int _ServiceExtensionIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _ServiceExtensionIdentity()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _ServiceExtensionIdentity(uint64_t a1)
{
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ServiceExtensionIdentity(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ServiceExtensionIdentity(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity()
{
  result = lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity;
  if (!lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v23;
  v22 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    v21 = *(*(a1 + 48) + 16 * v5);
    result = swift_unknownObjectRetain();
    if (v12 >= v11 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v21;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXActiveQuery.ActiveQueryObserver()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  v7 = v1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _EXActiveQuery.ActiveQueryObserver(uint64_t a1)
{
  v2 = *v1;
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v8 - v5;
  v8[1] = v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXActiveQuery.ActiveQueryObserver(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  v8 = v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return Hasher._finalize()();
}

unint64_t _EXActiveQuery.description.getter()
{
  _StringGuts.grow(_:)(37);

  v1 = [*(v0 + 16) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1865F37A0](v2, v4);

  MEMORY[0x1865F37A0](0x6576726573626F20, 0xEC000000203A7372);
  swift_beginAccess();

  C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v5);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation22_EXActiveQueryObserver_pMd, &_s19ExtensionFoundation22_EXActiveQueryObserver_pMR);
  v8 = MEMORY[0x1865F38E0](C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n, v7);
  v10 = v9;

  MEMORY[0x1865F37A0](v8, v10);

  return 0xD000000000000015;
}

uint64_t _EXActiveQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXActiveQuery()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXActiveQuery(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2)
{
  v30 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v29 = v2;
  v11 = *v2;
  Hasher.init(_seed:)();
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 56))(v12, v13);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v14 = *(v5 + 8);
  v14(v10, v4);
  v15 = Hasher._finalize()();
  v32 = v11 + 56;
  v33 = v11;
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = ~v16;
    while (1)
    {
      outlined init with copy of AppExtensionIdentity(*(v33 + 48) + 40 * v17, v35);
      v18 = v36;
      v19 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(v19 + 56))(v18, v19);
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v20);
      (*(v21 + 56))(v20, v21);
      v22 = static UUID.== infix(_:_:)();
      v14(v8, v4);
      v14(v10, v4);
      outlined destroy of AppExtensionIdentity(v35);
      if (v22)
      {
        break;
      }

      v17 = (v17 + 1) & v31;
      if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AppExtensionIdentity(a2);
    outlined init with copy of AppExtensionIdentity(*(v33 + 48) + 40 * v17, v30);
    return 0;
  }

  else
  {
LABEL_5:
    v23 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AppExtensionIdentity(a2, v35);
    v34 = *v23;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v35, v17, isUniquelyReferenced_nonNull_native);
    *v23 = v34;
    v25 = *(a2 + 16);
    v26 = v30;
    *v30 = *a2;
    v26[1] = v25;
    *(v26 + 4) = *(a2 + 32);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, void *a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v11 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v21 = (*(v11 + 48) + 32 * v14);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;

    v25 = v24;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;

    v19 = a5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v26;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v9 + 48) + v14 * v12, v8);
      v15 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v8);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of LocalLSDatabaseObserver.Observer(a2);
    outlined init with copy of LocalLSDatabaseObserver.Observer(*(v9 + 48) + v14 * v12, v19);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of LocalLSDatabaseObserver.Observer(a2, v8);
    v20 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    outlined init with take of LocalLSDatabaseObserver.Observer(a2, v17);
    return 1;
  }
}

{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1865F3E60](v16, a2);
      outlined destroy of AnyHashable(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AnyHashable(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v38 = (v3 + 8);
    v39 = v5;
    v14 = result + 56;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = *(v5 + 48) + 40 * (v19 | (v8 << 6));
      v23 = *(v22 + 32);
      v24 = *(v22 + 16);
      v42 = *v22;
      v43 = v24;
      v44 = v23;
      Hasher.init(_seed:)();
      v25 = *(&v43 + 1);
      v26 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v27 = v40;
      (*(v26 + 56))(v25, v26);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v28 = v41;
      dispatch thunk of Hashable.hash(into:)();
      (*v38)(v27, v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v5 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v5 = v39;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v42;
      v18 = v43;
      *(v16 + 32) = v44;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v5 + 32);
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    v2 = v37;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v29 = *(v18 + 8);
      v20 = *(v18 + 24);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v29;
      *(v14 + 24) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
      v20 = *(v31 + 72);
      outlined init with take of LocalLSDatabaseObserver.Observer(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of LocalLSDatabaseObserver.Observer(v5, *(v8 + 48) + v16 * v20);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    v6 = 0;
    v7 = *(v3 + 56);
    v32 = (v3 + 56);
    v33 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v36 = *(*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v35 = &v30;
      v19 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v21 = &v30 - v20;
      v37 = v36;
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      (*(v19 + 8))(v21, AssociatedTypeWitness);
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v3 = v33;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v3 = v33;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 16 * v13) = v36;
      ++*(v5 + 16);
      v10 = v34;
    }

    v15 = v6;
    result = v32;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v32[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v32, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v29;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v36 = v3;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR, outlined init with copy of AppExtensionIdentity);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v15 + 1);
  }

  v17 = *v3;
  Hasher.init(_seed:)();
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 56))(v18, v19);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v20 = *(v8 + 8);
  v39 = v8 + 8;
  v20(v14, v7);
  result = Hasher._finalize()();
  v37 = v17 + 56;
  v38 = v17;
  v21 = -1 << *(v17 + 32);
  a2 = result & ~v21;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    do
    {
      outlined init with copy of AppExtensionIdentity(*(v38 + 48) + 40 * a2, v40);
      v23 = v41;
      v24 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      (*(v24 + 56))(v23, v24);
      v25 = *(a1 + 3);
      v26 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v25);
      (*(v26 + 56))(v25, v26);
      v27 = static UUID.== infix(_:_:)();
      v20(v11, v7);
      v20(v14, v7);
      result = outlined destroy of AppExtensionIdentity(v40);
      if (v27)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v28 = *v36;
  *(v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 40 * a2;
  v30 = *a1;
  v31 = a1[1];
  *(v29 + 32) = *(a1 + 4);
  *v29 = v30;
  *(v29 + 16) = v31;
  v32 = *(v28 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v28 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v6;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v14 + 48) + 32 * a5);
      if (*v17 == v11 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v19 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = (*(v19 + 48) + 32 * a5);
  *v20 = v11;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      outlined init with copy of AnyHashable(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1865F3E60](v19, v6);
      result = outlined destroy of AnyHashable(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = v21;
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of LocalLSDatabaseObserver.Observer(*(v6 + 48) + v21, v5);
        result = outlined init with take of LocalLSDatabaseObserver.Observer(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 40 * (v18 | (v12 << 6));
        result = a3(*(v6 + 48) + v21, v25);
        v22 = *(v8 + 48) + v21;
        v23 = v25[0];
        v24 = v25[1];
        *(v22 + 32) = v26;
        *v22 = v23;
        *(v22 + 16) = v24;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 32 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v18 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v15 = v18;
    }

    v16 = *(v15 + 48) + 32 * v10;
    v17 = *(v16 + 24);
    *a3 = *v16;
    *(a3 + 8) = *(v16 + 8);
    *(a3 + 24) = v17;
    result = specialized _NativeSet._delete(at:)(v10);
    *v3 = v18;
  }

  else
  {
LABEL_9:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v20 = v2;
    v21 = v4;
    v22 = a2;
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v8 + 48) + v13 * v11, v7);
      v14 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v7);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v15 = 1;
        a2 = v22;
        goto LABEL_10;
      }
    }

    v16 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    v23 = *v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v18 = v23;
    }

    a2 = v22;
    outlined init with take of LocalLSDatabaseObserver.Observer(*(v18 + 48) + v13 * v11, v22);
    specialized _NativeSet._delete(at:)(v11);
    v15 = 0;
    *v16 = v23;
LABEL_10:
    v4 = v21;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v17 - v7;
  v17[1] = a1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v4 + 32);
  v11 = v9 & ~v10;
  if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
  while (1)
  {
    v18 = *(*(v4 + 48) + 16 * v11);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  *&v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v15 = v18;
  }

  v16 = *(*(v15 + 48) + 16 * v11);
  specialized _NativeSet._delete(at:)(v11);
  result = v16;
  *v2 = v18;
  return result;
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1865F3E60](v16, a1);
      result = outlined destroy of AnyHashable(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = specialized _NativeSet._delete(at:)(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v11 = v6;

  v12 = __CocoaSet.count.getter();
  v13 = swift_unknownObjectRetain();
  v14 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(v13, v12, a3, a4, a5);
  v24 = v14;
  v15 = *(v14 + 40);

  v16 = NSObject._rawHashValue(seed:)(v15);
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    a6(0);
    while (1)
    {
      v20 = *(*(v14 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v22 = *(*(v14 + 48) + 8 * v18);
  specialized _NativeSet._delete(at:)(v18);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v24;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v22 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v3 = *(v22 - 8);
  result = MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        outlined init with copy of LocalLSDatabaseObserver.Observer(*(v7 + 48) + v14 * v10, v6);
        Hasher.init(_seed:)();
        UUID.hash(into:)();
        v16 = Hasher._finalize()();
        outlined destroy of LocalLSDatabaseObserver.Observer(v6);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if (v14 * a1 < v15 || *(v7 + 48) + v14 * a1 >= (*(v7 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n052_s19ExtensionFoundation14_EXActiveQueryC6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of UUID?(v11);
          v45 = v61;

          return specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a2;
  v38 = a1;
  v6 = type metadata accessor for UUID();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v35 - v11;
  v12 = 0;
  v43 = a3;
  v13 = *(a3 + 56);
  v39 = a3 + 56;
  v40 = 0;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v46 = v10 + 16;
  v47 = a4 + 7;
  v37 = v10;
  v48 = (v10 + 8);
  v49 = a4;
  v42 = v17;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v45 = (v16 - 1) & v16;
LABEL_13:
    v21 = v18 | (v12 << 6);
    v22 = *(v43 + 48);
    v41 = v21;
    v44 = *(v22 + 8 * v21);
    v23 = [v44 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (v49[2] && (v24 = v49, lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v25 = dispatch thunk of Hashable._rawHashValue(seed:)(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v47 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      v29 = *(v37 + 72);
      v30 = *(v37 + 16);
      while (1)
      {
        v30(v9, v49[6] + v29 * v27, v6);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v48;
        (*v48)(v9, v6);
        if (v31)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v47 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v32(v50, v6);

      *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v33 = __OFADD__(v40++, 1);
      v17 = v42;
      v16 = v45;
      if (v33)
      {
        __break(1u);
LABEL_22:
        v34 = v43;

        specialized _NativeSet.extractSubset(using:count:)(v38, v36, v40, v34);
        return;
      }
    }

    else
    {
LABEL_5:
      (*v48)(v50, v6);

      v17 = v42;
      v16 = v45;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_22;
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v45 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _EXRunningLibXPCServiceExtension.__ivar_destroyer()
{
  outlined destroy of AppExtensionIdentity?(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension____lazy_storage____extensionIdentity);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler), *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler + 8));
}

id _EXRunningLibXPCServiceExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXRunningLibXPCServiceExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of AppExtensionIdentity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _AppExtensionQuery.extensionPointIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _AppExtensionQuery.extensionPointIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *_AppExtensionQuery.predicate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 _AppExtensionQuery.hostAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 _AppExtensionQuery.hostAuditToken.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void *_AppExtensionQuery.extensionPoint.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void _AppExtensionQuery.init(extensionPointIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 queryAllowsDuplicates];

  *(a3 + 72) = v5;
}

void _AppExtensionQuery.init(extensionPointIdentifier:predicate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 1;
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 sharedInstance];
  v9 = [v8 queryAllowsDuplicates];

  *(a4 + 72) = v9;
}

void _AppExtensionQuery.init(extensionPoint:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = 1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 64) = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 sharedInstance];
  LOBYTE(v5) = [v10 queryAllowsDuplicates];

  *(a2 + 72) = v5;
}

uint64_t _AppExtensionQuery.Results.AsyncIterator.next()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_AppExtensionQuery.Results.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  outlined init with copy of _AppExtensionQuery.Results.AsyncIterator(v0[3], v1);
  (*(v3 + 16))(v2, v1, v4);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[_AppExtensionIdentity]> and conformance AsyncStream<A>, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR, MEMORY[0x1E69E86A0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v5 = lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[_AppExtensionIdentity]>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMR, MEMORY[0x1E69E8690]);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = _AppExtensionQuery.Results.AsyncIterator.next();
  v7 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v5);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
    v6 = _AppExtensionQuery.Results.AsyncIterator.next();
  }

  else
  {
    v6 = _AppExtensionQuery.Results.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[1];

  return v6(v5);
}

{
  return (*(v0[5] + 8))(v0[10], v0[4]);
}

uint64_t outlined init with copy of _AppExtensionQuery.Results.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _AppExtensionQuery.Results.AsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance _AppExtensionQuery.Results.AsyncIterator;

  return _AppExtensionQuery.Results.AsyncIterator.next()();
}

{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _AppExtensionQuery.Results.AsyncIterator.next()();
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v4 + 72) = a1;
    v10 = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t _AppExtensionQuery.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _AppExtensionQuery.Results@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 32);

  return v4(a1, v1, v3);
}

uint64_t _AppExtensionQuery.results.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v14 - v3);
  v5 = v0[3];
  v18 = v0[2];
  v19[0] = v5;
  *(v19 + 9) = *(v0 + 57);
  v6 = v0[1];
  v16 = *v0;
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD5QueryVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD5QueryVGMR);
  inited = swift_initStackObject();
  inited[1] = xmmword_1848BA260;
  v8 = v17;
  inited[2] = v16;
  v9 = *(v19 + 9);
  v11 = v18;
  v10 = v19[0];
  inited[3] = v8;
  inited[4] = v11;
  inited[5] = v10;
  *(inited + 89) = v9;
  outlined init with copy of _AppExtensionQuery(&v16, &v15);
  v12 = specialized Collection<>.toEXQueries()(inited);
  swift_setDeallocating();
  outlined destroy of _AppExtensionQuery((inited + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
  *v4 = 1;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8640], v1);
  v14[2] = v12;
  AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t Collection<>.results.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = Collection<>.toEXQueries()(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
  *v7 = 1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8640], v4);
  v11 = v8;
  AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t specialized Collection<>.toEXQueries()(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v65 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      *&v64[9] = *(v4 + 57);
      v6 = v4[3];
      v63 = v4[2];
      *v64 = v6;
      v7 = v4[1];
      v61 = *v4;
      v62 = v7;
      v8 = *&v64[16];
      if (*&v64[16])
      {
        v9 = type metadata accessor for _EXQuery();
        v10 = objc_allocWithZone(v9);
        *&v10[OBJC_IVAR____EXQuery_resultType] = 0;
        *&v10[OBJC_IVAR____EXQuery_predicate] = 0;
        v10[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
        v11 = OBJC_IVAR____EXQuery_allowsDuplicates;
        v12 = objc_opt_self();
        outlined init with copy of _AppExtensionQuery(&v61, &v52);
        v13 = v8;
        v14 = [v12 sharedInstance];
        v15 = [v14 queryAllowsDuplicates];

        v10[v11] = v15;
        v10[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
        v10[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
        v10[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
        v16 = v13;
        v17 = _EXAuditTokenForCurrentProcess();
        v52 = *v17;
        *v53 = v17[1];
        v18 = &v10[OBJC_IVAR____EXQuery_inner];
        v18[3] = &type metadata for _EXQuery.RecordQuery;
        v18[4] = &protocol witness table for _EXQuery.RecordQuery;
        v19 = swift_allocObject();
        *v18 = v19;
        *(v19 + 16) = v16;
        v20 = *v53;
        *(v19 + 24) = v52;
        *(v19 + 40) = v20;
        v49.receiver = v10;
        v49.super_class = v9;
        objc_msgSendSuper2(&v49, sel_init);

        outlined destroy of _AppExtensionQuery(&v61);
      }

      else
      {
        v21 = *(&v61 + 1);
        v22 = v62;
        v23 = v61;
        if (v64[8])
        {
          outlined init with copy of _AppExtensionQuery(&v61, &v52);
          v24 = v22;

          v25 = _EXAuditTokenForCurrentProcess();
          v26 = v25[1];
          v55 = *v25;
          v56 = v26;
          v27 = type metadata accessor for _EXQuery();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____EXQuery_resultType] = 0;
          *&v28[OBJC_IVAR____EXQuery_predicate] = 0;
          v28[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
          v29 = OBJC_IVAR____EXQuery_allowsDuplicates;
          v30 = [objc_opt_self() sharedInstance];
          v31 = [v30 queryAllowsDuplicates];

          v28[v29] = v31;
          v28[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
          v28[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
          v28[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
          *&v60[4] = v55;
          *&v60[20] = v56;
          v57 = __PAIR128__(v21, v23);
          *v58 = 0;
          *&v58[4] = v55;
          *&v58[20] = v56;
          v59 = __PAIR128__(v21, v23);
          *v60 = 0;
          outlined init with copy of _EXQuery.ValuesQuery(&v57, &v52);
          outlined destroy of _EXQuery.ValuesQuery(&v59);
          v32 = &v28[OBJC_IVAR____EXQuery_inner];
          v32[3] = &type metadata for _EXQuery.ValuesQuery;
          v32[4] = &protocol witness table for _EXQuery.ValuesQuery;
          v33 = swift_allocObject();
          *v32 = v33;
          v34 = *v58;
          *(v33 + 16) = v57;
          *(v33 + 32) = v34;
          *(v33 + 48) = *&v58[16];
          *(v33 + 64) = *&v58[32];
          v51.receiver = v28;
          v51.super_class = v27;
          objc_msgSendSuper2(&v51, sel_init);
          outlined destroy of _AppExtensionQuery(&v61);
        }

        else
        {
          v46 = *v64;
          v45 = v63;
          v35 = DWORD2(v62);
          v36 = HIDWORD(v62);
          v48 = type metadata accessor for _EXQuery();
          v37 = objc_allocWithZone(v48);
          *&v37[OBJC_IVAR____EXQuery_resultType] = 0;
          *&v37[OBJC_IVAR____EXQuery_predicate] = 0;
          v37[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
          v38 = OBJC_IVAR____EXQuery_allowsDuplicates;
          v39 = objc_opt_self();
          outlined init with copy of _AppExtensionQuery(&v61, &v52);
          v47 = v22;

          v40 = [v39 sharedInstance];
          v41 = [v40 queryAllowsDuplicates];

          v37[v38] = v41;
          v37[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
          v37[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
          v37[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
          v59 = __PAIR128__(v21, v23);
          *v60 = 0;
          *&v60[4] = v35;
          *&v60[8] = v36;
          *&v60[12] = v45;
          *&v60[28] = v46;
          v52 = __PAIR128__(v21, v23);
          *v53 = 0;
          *&v53[4] = __PAIR64__(v36, v35);
          *&v53[12] = v45;
          v54 = v46;
          outlined init with copy of _EXQuery.ValuesQuery(&v59, &v57);
          outlined destroy of _EXQuery.ValuesQuery(&v52);
          v42 = &v37[OBJC_IVAR____EXQuery_inner];
          v42[3] = &type metadata for _EXQuery.ValuesQuery;
          v42[4] = &protocol witness table for _EXQuery.ValuesQuery;
          v43 = swift_allocObject();
          *v42 = v43;
          v44 = *v60;
          *(v43 + 16) = v59;
          *(v43 + 32) = v44;
          *(v43 + 48) = *&v60[16];
          *(v43 + 64) = *&v60[32];
          v50.receiver = v37;
          v50.super_class = v48;
          objc_msgSendSuper2(&v50, sel_init);
          outlined destroy of _AppExtensionQuery(&v61);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!i)
      {
        break;
      }

      v4 += 5;
    }

    return v65;
  }

  return result;
}

uint64_t *closure #1 in Collection<>.toEXQueries()@<X0>(_OWORD *a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];
  v12 = a1[2];
  v13[0] = v4;
  *(v13 + 9) = *(a1 + 57);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v9[2] = v12;
  v10[0] = v6;
  *(v10 + 9) = *(a1 + 57);
  v9[0] = v11[0];
  v9[1] = v3;
  outlined init with copy of _AppExtensionQuery(v11, &v8);
  result = specialized _EXQuery.__allocating_init(_:)(v9);
  *a2 = result;
  return result;
}

void specialized closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  (*(v3 + 16))(&v20 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  Controller = type metadata accessor for _QueryController();
  v9 = objc_allocWithZone(Controller);
  v10 = objc_allocWithZone(type metadata accessor for _EXQueryController());

  *&v9[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller] = _EXQueryController.init(queries:)(v11);
  v12 = &v9[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_handler];
  *v12 = partial apply for specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:);
  v12[1] = v7;
  v20.receiver = v9;
  v20.super_class = Controller;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  swift_unknownObjectWeakAssign();
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  AsyncStream.Continuation.onTermination.setter();
  v15 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v13;
    v19 = v14;
    _os_log_impl(&dword_1847D1000, v16, v15, "Resuming controller: %@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  QueryController.resume()();
}

unint64_t lazy protocol witness table accessor for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator;
  if (!lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _AppExtensionQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for _AppExtensionQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for AsyncStream<[_AppExtensionIdentity]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<[_AppExtensionIdentity]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
    v1 = type metadata accessor for AsyncStream();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<[_AppExtensionIdentity]>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for _AppExtensionQuery.Results(uint64_t a1)
{
  type metadata accessor for AsyncStream<[_AppExtensionIdentity]>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - v5;
  LOBYTE(v6) = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v7 = static OS_os_log.discovery;
    if (os_log_type_enabled(static OS_os_log.discovery, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v34[0] = v9;
      *v8 = 136315138;
      v10 = type metadata accessor for _EXExtensionIdentity();
      v11 = MEMORY[0x1865F38E0](a1, v10);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v34);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1847D1000, v7, v6, "_QueryController yeild results: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1865F56C0](v9, -1, -1);
      MEMORY[0x1865F56C0](v8, -1, -1);
    }

    v30 = v4;
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x1E69E7CC0];
    if (!v14)
    {
LABEL_18:
      *&v34[0] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
      v26 = v28;
      AsyncStream.Continuation.yield(_:)();
      return (*(v29 + 8))(v26, v30);
    }

    v36[0] = MEMORY[0x1E69E7CC0];
    v6 = v36;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      break;
    }

    v27 = a2;
    v16 = 0;
    a2 = a1 & 0xC000000000000001;
    v4 = v36[0];
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (a2)
      {
        v18 = MEMORY[0x1865F3F40](v16, a1);
      }

      else
      {
        if (v16 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      v6 = v18;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClassUnconditional();
      v20 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      result = outlined init with copy of UUID?(v19 + v20, &v32, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (!v33)
      {
        goto LABEL_24;
      }

      outlined init with take of _InnerAppExtensionIdentity(&v32, v34);
      v36[0] = v4;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        v6 = v36;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v4 = v36[0];
      }

      *(v4 + 16) = v22 + 1;
      v23 = v4 + 40 * v22;
      v24 = v34[0];
      v25 = v34[1];
      *(v23 + 64) = v35;
      *(v23 + 32) = v24;
      *(v23 + 48) = v25;
      ++v16;
      if (v17 == v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void specialized closure #2 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(uint64_t a1, void *a2)
{
  v3 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a2;
    *v6 = a2;
    v7 = a2;
    _os_log_impl(&dword_1847D1000, v4, v3, "Suspending controller: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  QueryController.suspend()();
}

Swift::Void __swiftcall _AvailabilityController.resume()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for _EXExtensionAvailabilityObserver(0);
  v3 = swift_allocObject();
  v4 = v0;
  UUID.init()();
  v5 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries;
  v6 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];
  *&v6[OBJC_IVAR____EXQuery_resultType] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1848BBBA0;
  *(v7 + 32) = v6;
  *(v3 + v5) = v7;
  v8 = (v3 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  *v8 = partial apply for closure #1 in _AvailabilityController.resume();
  v8[1] = v1;

  _EXExtensionAvailabilityObserver.start()();
  v10[3] = v2;

  v10[0] = v3;
  v9 = OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_token;
  swift_beginAccess();
  outlined assign with take of Any?(v10, v4 + v9);
  swift_endAccess();
}

Swift::Void __swiftcall _AvailabilityController.suspend()()
{
  v1 = OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_token;
  swift_beginAccess();
  outlined init with copy of UUID?(v0 + v1, &v2, &_sypSgMd, &_sypSgMR);
  if (v3)
  {
    outlined init with take of Any(&v2, v4);
    outlined init with copy of Any(v4, &v2);
    type metadata accessor for _EXExtensionAvailabilityObserver(0);
    if (swift_dynamicCast())
    {
      _EXExtensionAvailabilityObserver.invalidate()();

      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    outlined destroy of NSObject?(&v2, &_sypSgMd, &_sypSgMR);
  }
}

id _QueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in _AvailabilityController.resume()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____EXExtensionAvailability_disabledCount);
  v3 = *(a1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount);
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_handler);
  v6[0] = *(a1 + OBJC_IVAR____EXExtensionAvailability_enabledCount);
  v6[1] = v2;
  v6[2] = v3;
  return v4(v6);
}

uint64_t *specialized _EXQuery.__allocating_init(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[8];
  if (v3)
  {

    v4 = objc_allocWithZone(type metadata accessor for _EXQuery());
    v5 = specialized _EXQuery.init(extensionPointRecord:)(v3);

    return v5;
  }

  else
  {
    v7 = *a1;
    if (a1[7])
    {
      v8 = v2;

      v9 = _EXAuditTokenForCurrentProcess();
      v10 = v9[1];
      v39 = *v9;
      v40 = v10;
      v11 = type metadata accessor for _EXQuery();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____EXQuery_resultType] = 0;
      *&v12[OBJC_IVAR____EXQuery_predicate] = 0;
      v12[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
      v13 = OBJC_IVAR____EXQuery_allowsDuplicates;
      v14 = [objc_opt_self() sharedInstance];
      v15 = [v14 queryAllowsDuplicates];

      v12[v13] = v15;
      v12[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
      v12[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
      v12[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
      *&v41 = v7;
      *(&v41 + 1) = v1;
      *v42 = 0;
      *&v42[4] = v39;
      *&v42[20] = v40;
      v43 = v7;
      v44 = v1;
      v45 = 0;
      v46 = v39;
      v47 = v40;
      outlined init with copy of _EXQuery.ValuesQuery(&v41, v38);
      outlined destroy of _EXQuery.ValuesQuery(&v43);
      v16 = &v12[OBJC_IVAR____EXQuery_inner];
      v16[3] = &type metadata for _EXQuery.ValuesQuery;
      v16[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v17 = swift_allocObject();
      *v16 = v17;
      v18 = *v42;
      v19 = *&v42[16];
      *(v17 + 16) = v41;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      *(v17 + 64) = *&v42[32];
      v37.receiver = v12;
      v37.super_class = v11;
      v20 = objc_msgSendSuper2(&v37, sel_init);
    }

    else
    {
      v21 = a1[3];
      v22 = a1[4];
      v23 = a1[5];
      v24 = a1[6];
      v35 = type metadata accessor for _EXQuery();
      v25 = objc_allocWithZone(v35);
      *&v25[OBJC_IVAR____EXQuery_resultType] = 0;
      *&v25[OBJC_IVAR____EXQuery_predicate] = 0;
      v25[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
      v26 = OBJC_IVAR____EXQuery_allowsDuplicates;
      v27 = objc_opt_self();
      v34 = v2;

      v28 = [v27 sharedInstance];
      v29 = [v28 queryAllowsDuplicates];

      v25[v26] = v29;
      v25[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
      v25[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
      v25[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
      *&v41 = v7;
      *(&v41 + 1) = v1;
      *v42 = 0;
      *&v42[4] = v21;
      *&v42[12] = v22;
      *&v42[20] = v23;
      *&v42[28] = v24;
      v43 = v7;
      v44 = v1;
      v45 = 0;
      *&v46 = v21;
      *(&v46 + 1) = v22;
      *&v47 = v23;
      *(&v47 + 1) = v24;
      outlined init with copy of _EXQuery.ValuesQuery(&v41, v38);
      outlined destroy of _EXQuery.ValuesQuery(&v43);
      v30 = &v25[OBJC_IVAR____EXQuery_inner];
      v30[3] = &type metadata for _EXQuery.ValuesQuery;
      v30[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v31 = swift_allocObject();
      *v30 = v31;
      v32 = *v42;
      v33 = *&v42[16];
      *(v31 + 16) = v41;
      *(v31 + 32) = v32;
      *(v31 + 48) = v33;
      *(v31 + 64) = *&v42[32];
      v36.receiver = v25;
      v36.super_class = v35;
      v20 = objc_msgSendSuper2(&v36, sel_init);
      v8 = v34;
    }

    return v20;
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(a1, v4);
}

char *_EXExtensionIdentity.init(_:)(uint64_t a1)
{
  outlined init with copy of _InnerAppExtensionIdentity(a1, v7);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined destroy of AppExtensionIdentity(a1);
  outlined init with take of _InnerAppExtensionIdentity(v7, v6);
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v4 = v2;
  outlined assign with take of _InnerAppExtensionIdentity?(v6, v2 + v3);
  swift_endAccess();

  return v4;
}

{
  outlined init with copy of _InnerAppExtensionIdentity(a1, v12);
  v3 = v13;
  v4 = v14;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized _EXExtensionIdentity.init(_:)(v7, v1, v3, v4);
  outlined destroy of _AppExtensionIdentity(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v9;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXExtensionIdentity.remappedCopy()(_EXExtensionIdentity *__return_ptr retstr)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    v6 = *(v5 + 568);
    v14[3] = v4;
    v14[4] = v5;
    __swift_allocate_boxed_opaque_existential_1(v14);
    v6(v4, v5);
    if (v2)
    {
      __swift_deallocate_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
      outlined init with copy of _InnerAppExtensionIdentity(v14, &v11);
      v7 = [objc_allocWithZone(_EXExtensionIdentity) init];
      outlined init with take of _InnerAppExtensionIdentity(&v11, v10);
      v8 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      v9 = v7;
      outlined assign with take of _InnerAppExtensionIdentity?(v10, v7 + v8);
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1865F56C0);
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionIdentity.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v3, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(with.super.isa, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _EXExtensionIdentity.hash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.hashValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t _EXExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.bundleIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 64))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.bundleVersion.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 80))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}