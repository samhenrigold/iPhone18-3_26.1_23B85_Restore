void closure #2 in _EXServiceClient.begin(activeQuery:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.discovery);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1847D1000, oslog, v5, "Begin active query failed with error: %{public}@", v6, 0xCu);
      outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v7, -1, -1);
      MEMORY[0x1865F56C0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #1 in _EXServiceClient.add(queryObserver:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v53 = OBJC_IVAR____EXServiceClient_activeQueriesLock;
    v9 = OBJC_IVAR____EXServiceClient_activeQueries;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v10 = 0;
    v51 = v7 & 0xFFFFFFFFFFFFFF8;
    v52 = v7 & 0xC000000000000001;
    v49 = v7;
    v50 = a3;
    v47 = v9;
    v48 = i;
    while (1)
    {
      if (v52)
      {
        v20 = MEMORY[0x1865F3F40](v10, v7);
      }

      else
      {
        if (v10 >= *(v51 + 16))
        {
          goto LABEL_19;
        }

        v20 = *(v7 + 8 * v10 + 32);
      }

      v21 = v20;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v55 = *(a3 + v53);
      os_unfair_lock_assert_owner(v55 + 4);
      active = type metadata accessor for _EXServiceClient.ActiveClientQuery();
      v23 = objc_allocWithZone(active);
      v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      v24 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers;
      type metadata accessor for _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet();
      v25 = swift_allocObject();
      *(v25 + 16) = MEMORY[0x1E69E7CD0];
      *&v23[v24] = v25;
      swift_unknownObjectWeakInit();
      *&v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query] = v21;
      v26 = objc_opt_self();
      v56 = v21;
      v27 = [v26 anonymousListener];
      *&v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] = v27;
      v64.receiver = v23;
      v64.super_class = active;
      v28 = v27;
      v29 = objc_msgSendSuper2(&v64, sel_init);
      [v28 setDelegate_];
      [v28 resume];

      v30 = v9;
      v31 = *(a3 + v9);

      v32 = a3;
      v33 = specialized Set.firstIndex(of:)(v29, v31);
      v35 = v34;
      v37 = v36;
      LODWORD(v24) = ~v36;

      if (v24)
      {
        v38 = *(v32 + v30);

        specialized Set.subscript.getter(v33, v35, v37 & 1, v38);
        v40 = v39;
        outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(v33, v35, v37);
      }

      else
      {
        swift_beginAccess();
        v40 = v29;
        specialized Set._Variant.insert(_:)(&v63, v40);
        v41 = v63;
        swift_endAccess();
      }

      v42 = a2[3];
      v43 = a2[4];
      v44 = __swift_project_boxed_opaque_existential_1(a2, v42);

      _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.insert<A>(_:)(v44, v42, v43);

      os_unfair_lock_assert_owner(v55 + 4);
      v45 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started;
      if (v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started])
      {
        v7 = v49;
        a3 = v50;
        v18 = v48;
        v16 = v56;
        v19 = v10 + 1;
      }

      else
      {
        a3 = v50;
        v11 = _EXServiceClient.discoveryConnection.getter();
        v61 = closure #1 in _EXServiceClient.begin(activeQuery:);
        v62 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        v60 = &block_descriptor_108;
        v12 = _Block_copy(&aBlock);
        v13 = [v11 remoteObjectProxyWithErrorHandler_];
        _Block_release(v12);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
        swift_dynamicCast();
        v14 = v63;
        v40[v45] = 1;
        v15 = *&v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
        v16 = [*&v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] endpoint];
        v61 = closure #2 in _EXServiceClient.begin(activeQuery:);
        v62 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v60 = &block_descriptor_111;
        v17 = _Block_copy(&aBlock);
        [v14 beginExtensionsQuery:v15 listenerEndpoint:v16 reply:v17];

        _Block_release(v17);
        swift_unknownObjectRelease();
        v18 = v48;
        v7 = v49;
        v19 = v10 + 1;
      }

      ++v10;
      v9 = v47;
      if (v19 == v18)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

unint64_t closure #1 in _EXServiceClient.remove(queryObserver:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  result = (*(v5 + 32))(v4, v5);
  v7 = result;
  if (!(result >> 62))
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____EXServiceClient_activeQueries;
    v42 = *(a3 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
    v43 = v7 & 0xC000000000000001;
    v41 = objc_opt_self();
    swift_beginAccess();
    v10 = 0;
    p_cb = (&OBJC_PROTOCOL___OS_os_transaction + 64);
    v45 = v7;
    v46 = a3;
    v44 = v8;
    v48 = v9;
    do
    {
      if (v43)
      {
        v13 = MEMORY[0x1865F3F40](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      os_unfair_lock_assert_owner(v42 + 4);
      active = type metadata accessor for _EXServiceClient.ActiveClientQuery();
      v16 = objc_allocWithZone(active);
      v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      v17 = *(p_cb + 311);
      type metadata accessor for _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet();
      v18 = swift_allocObject();
      *(v18 + 16) = MEMORY[0x1E69E7CD0];
      *&v16[v17] = v18;
      swift_unknownObjectWeakInit();
      *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query] = v14;
      v49 = v14;
      v19 = [v41 anonymousListener];
      *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] = v19;
      v50.receiver = v16;
      v50.super_class = active;
      v20 = v19;
      v21 = objc_msgSendSuper2(&v50, sel_init);
      [v20 setDelegate_];
      [v20 resume];

      v22 = v9;
      v23 = *(a3 + v9);

      v24 = specialized Set.firstIndex(of:)(v21, v23);
      v25 = a3;
      v27 = v26;
      v29 = v28;
      LODWORD(v17) = ~v28;

      if (v17)
      {
        v30 = *(v25 + v22);

        specialized Set.subscript.getter(v24, v27, v29 & 1, v30);
        v12 = v31;
        outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(v24, v27, v29);
      }

      else
      {
        swift_beginAccess();
        v12 = v21;
        specialized Set._Variant.insert(_:)(&v51, v12);
        v32 = v51;
        swift_endAccess();
      }

      v33 = a2[3];
      v34 = a2[4];
      v35 = __swift_project_boxed_opaque_existential_1(a2, v33);
      p_cb = &OBJC_PROTOCOL___OS_os_transaction.cb;
      v36 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers;

      _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.remove<A>(_:)(v35, v33, v34);

      v37 = *&v12[v36];
      swift_beginAccess();
      v7 = v45;
      if (*(*(v37 + 16) + 16))
      {
        a3 = v46;
        swift_beginAccess();
        v38 = specialized Set._Variant.remove(_:)(v12);
        swift_endAccess();

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v40 = Strong;
          swift_unknownObjectWeakAssign();
          [v40 invalidate];
        }

        v12[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      }

      else
      {

        v12 = v49;
        a3 = v46;
      }

      ++v10;

      v9 = v48;
    }

    while (v44 != v10);
  }

  return result;
}

id _EXServiceClient.observerConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = OBJC_IVAR____EXServiceClient__observerConnection;
  v6 = *(v0 + OBJC_IVAR____EXServiceClient__observerConnection);
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(v4 + 4);
    return v7;
  }

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v3, v9);
  }

  v13 = MEMORY[0x1865F36D0](0x726576726573624FLL, 0xE800000000000000);
  v14 = [objc_opt_self() endpointForServiceName:v11 oneshot:isa service:v13 instance:0];

  if (!v14)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.general);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v27 + 12) = 2082;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x726576726573624FLL, 0xE800000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v28, -1, -1);
      MEMORY[0x1865F56C0](v27, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v15 = objc_opt_self();
  v33 = destructiveProjectEnumData for Platform;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v32 = &block_descriptor_5;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 NSXPCConnectionWithEndpoint:v14 configurator:v16];
  _Block_release(v16);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for observerServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v17 setRemoteObjectInterface_];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #2 in _EXServiceClient.observerConnection.getter;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_71;
  v19 = _Block_copy(&aBlock);

  [v17 setInterruptionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #3 in _EXServiceClient.observerConnection.getter;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_75_0;
  v21 = _Block_copy(&aBlock);

  [v17 setInvalidationHandler_];
  _Block_release(v21);
  v22 = *(v0 + v5);
  *(v0 + v5) = v17;
  v23 = v17;

  [v23 activate];
LABEL_14:
  os_unfair_lock_unlock(v4 + 4);
  return v23;
}

void closure #2 in _EXServiceClient.observerConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.observerConnection.getter(v3);
  os_unfair_lock_unlock(v2 + 4);

  v4 = swift_unknownObjectUnownedLoadStrong();
  _EXServiceClient.reconnectActiveObservers()();
}

Swift::Void __swiftcall _EXServiceClient.reconnectActiveObservers()()
{
  v40 = type metadata accessor for UUID();
  v1 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v33 + 4);
  v3 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v41 = v0;
  swift_beginAccess();
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v6 + v3);
    *(v6 + v3) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v6 + v3) = v42;
  }

  v37 = v3;
  swift_endAccess();
  v8 = v4 + 64;
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v4 + 64);
  v12 = (v9 + 63) >> 6;
  v35 = (v1 + 8);
  v36 = (v1 + 16);

  v13 = 0;
  *&v14 = 138412290;
  v34 = v14;
  v39 = v4;
  while (v11)
  {
LABEL_13:
    v16 = *(*(v4 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v17 = *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener];
    v18 = v16;
    [v17 invalidate];
    [*&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection] invalidate];
    v19 = _EXServiceClient.observerConnection.getter();
    _EXServiceClient.Observer.activate(connection:)(v19);
    if (v20)
    {

      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.discovery);
      v22 = v18;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = v34;
        *(v25 + 4) = v22;
        *v26 = v22;
        v22 = v22;
        _os_log_impl(&dword_1847D1000, v23, v24, "Failed to reconnect observer %@", v25, 0xCu);
        outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v26, -1, -1);
        v27 = v25;
        v4 = v39;
        MEMORY[0x1865F56C0](v27, -1, -1);
      }
    }

    else
    {

      v28 = v38;
      (*v36)(v38, &v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id], v40);
      v29 = v37;
      v30 = v41;
      swift_beginAccess();
      v23 = v18;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v30 + v29);
      *(v30 + v29) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v28, v31);
      (*v35)(v28, v40);
      *(v30 + v29) = v42;
      v4 = v39;
      swift_endAccess();
    }

    v11 &= v11 - 1;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      os_unfair_lock_unlock(v33 + 4);
      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t closure #3 in _EXServiceClient.observerConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.observerConnection.getter();
  os_unfair_lock_unlock(v2 + 4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXServiceClient.Observer.activate(connection:)(NSXPCConnection connection)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v47 - v4;
  v5 = type metadata accessor for UUID();
  v57 = *(v5 - 8);
  v6 = v57;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener);
  [v9 setDelegate_];
  [v9 resume];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v59 = v10;
  v60 = (v10 + 16);
  v69 = partial apply for closure #1 in _EXServiceClient.Observer.activate(connection:);
  v70 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v68 = &block_descriptor_176;
  v11 = _Block_copy(&aBlock);

  v12 = [(objc_class *)connection.super.isa synchronousRemoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation7ServiceC16ObserverProtocol_pMd, &_s19ExtensionFoundation7ServiceC16ObserverProtocol_pMR);
  swift_dynamicCast();
  v58 = v63;
  v13 = swift_allocObject();
  v13[2] = 0;
  v48 = v13 + 2;
  v13[3] = 0;
  v13[4] = 0;
  v14 = (v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity);
  specialized Sequence.flatMap<A>(_:)(*(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity));
  v56 = v15;
  v47 = v2;
  v16 = *(v6 + 16);
  v52 = v1;
  v16(v8, v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id, v5);
  v17 = v14[8];
  LOBYTE(v6) = v14[9];
  v54 = v14[10];
  v55 = v17;
  v53 = v14[11];
  v18 = [v9 endpoint];
  v19 = type metadata accessor for Service.ObserverConfiguration(0);
  v20 = objc_allocWithZone(v19);
  v16(&v20[OBJC_IVAR___ObserverConfiguration__id], v8, v5);
  v21 = v13;
  *&v20[OBJC_IVAR___ObserverConfiguration__extensionPointRecords] = v56;
  *&v20[OBJC_IVAR___ObserverConfiguration__endpoint] = v18;
  v22 = &v20[OBJC_IVAR___ObserverConfiguration__options];
  v23 = v54;
  *v22 = v55;
  v22[1] = v6;
  v25 = v58;
  v24 = v59;
  v22[2] = v23;
  v22[3] = v53;
  v64.receiver = v20;
  v64.super_class = v19;
  v26 = objc_msgSendSuper2(&v64, sel_init);
  v27 = v8;
  v28 = v26;
  (*(v57 + 8))(v27, v5);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  *(v29 + 24) = v13;
  v69 = partial apply for closure #3 in _EXServiceClient.Observer.activate(connection:);
  v70 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v68 = &block_descriptor_185;
  v30 = _Block_copy(&aBlock);

  [v25 beginObservingWithConfiguration:v28 reply:v30];
  _Block_release(v30);
  v31 = v60;
  swift_beginAccess();
  v32 = *v31;
  if (*v31)
  {
    v33 = v32;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.discovery);
    v35 = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      v40 = v32;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_1847D1000, v36, v37, "Begin observer failed with error: %{public}@", v38, 0xCu);
      outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v39, -1, -1);
      MEMORY[0x1865F56C0](v38, -1, -1);
    }
  }

  else
  {
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v48;
    swift_beginAccess();
    if (*v45)
    {
      v61 = *v45;
      v62 = *(v21 + 3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.yield(_:)();
      swift_unknownObjectRelease();

      (*(v43 + 8))(v42, v44);

      return;
    }

    v46 = objc_opt_self();
    v36 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3C40);
    [v46 _EX_errorWithCode_description_];
  }

  swift_willThrow();

  swift_unknownObjectRelease();
}

id closure #1 in _EXServiceClient.Observer.activate(connection:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void closure #3 in _EXServiceClient.Observer.activate(connection:)(char *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = *&a1[OBJC_IVAR___ObserverUpdate__identities];
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v36 = MEMORY[0x1E69E7CC0];
        v8 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          break;
        }

        v30 = v5;
        v31 = a4;
        v9 = 0;
        v10 = v36;
        while (1)
        {
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1865F3F40](v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v6 + 8 * v9 + 32);
          }

          v12 = v11;
          v13 = OBJC_IVAR____EXExtensionIdentity__inner;
          swift_beginAccess();
          outlined init with copy of UUID?(v12 + v13, &v32, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
          if (!v33)
          {
            goto LABEL_26;
          }

          outlined init with take of _InnerAppExtensionIdentity(&v32, v34);
          v36 = v10;
          a4 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (a4 >= v14 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), a4 + 1, 1);
            v10 = v36;
          }

          *(v10 + 16) = a4 + 1;
          v15 = v10 + 40 * a4;
          v16 = v34[0];
          v17 = v34[1];
          *(v15 + 64) = v35;
          *(v15 + 32) = v16;
          *(v15 + 48) = v17;
          ++v9;
          if (v5 == v7)
          {
            v5 = v30;
            a4 = v31;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v7 = __CocoaSet.count.getter();
        if (!v7)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
LABEL_23:
      v27 = v5;
      v10 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v28 = *&v5[OBJC_IVAR___ObserverUpdate__unelectedCount];
      v29 = *&v5[OBJC_IVAR___ObserverUpdate__disabledCount];

      swift_beginAccess();
      *(a4 + 16) = v10;
      *(a4 + 24) = v28;
      *(a4 + 32) = v29;
    }
  }

  else
  {
    if (a2)
    {
      swift_beginAccess();
      v20 = *(a3 + 16);
      *(a3 + 16) = a2;
      v21 = a2;
      v22 = v20;
    }

    else
    {
      v24 = objc_opt_self();
      v25 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3C60);
      v26 = [v24 _EX_errorWithCode_description_];

      swift_beginAccess();
      v22 = *(a3 + 16);
      *(a3 + 16) = v26;
    }
  }
}

id _EXServiceClient.ActiveClientQuery.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for _EXServiceClient.Observer(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXServiceClient.Observer;
  if (!type metadata singleton initialization cache for _EXServiceClient.Observer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for _EXServiceClient.Observer(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t protocol witness for Identifiable.id.getter in conformance _EXServiceClient.Observer@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t _EXServiceClient.makeSequence(for:host:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v27 = a2[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v27 - v10);
  v32 = *a1;
  v12 = *(a1 + 8);
  v30 = *(a1 + 9);
  v31 = v12;
  v29 = *(a1 + 10);
  v13 = *(a1 + 11);
  if (one-time initialization token for inExtensionKitService != -1)
  {
    v24 = &v27 - v10;
    swift_once();
    v11 = v24;
  }

  v14 = *(a2 + 32);
  v28 = v13;
  if (static Service.inExtensionKitService == 1)
  {
    if ((v14 & 1) == 0)
    {
      v15 = v6;
      v16 = v27;
LABEL_10:
      *v11 = 1;
      v17 = (*(v9 + 104))(v11, *MEMORY[0x1E69E8788]);
      v27 = &v27;
      MEMORY[0x1EEE9AC00](v17);
      *(&v27 - 8) = v32;
      v18 = v30;
      *(&v27 - 56) = v31;
      *(&v27 - 55) = v18;
      v19 = v28;
      *(&v27 - 54) = v29;
      *(&v27 - 53) = v19;
      *(&v27 - 52) = v15;
      *(&v27 - 44) = v5;
      *(&v27 - 36) = v7;
      *(&v27 - 7) = v16;
      *(&v27 - 6) = v20;
      v26 = v33;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMd, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMR);
      v22 = v34;
      v34[3] = v21;
      v22[4] = lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMd, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMR, MEMORY[0x1E69E87D0]);
      __swift_allocate_boxed_opaque_existential_1(v22);
      return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
    }
  }

  else if (v14)
  {
    if (one-time initialization token for current != -1)
    {
      v25 = v11;
      swift_once();
      v11 = v25;
    }

    v15 = *static AuditToken.current;
    v5 = *&static AuditToken.current[8];
    v7 = *&static AuditToken.current[16];
    v16 = *&static AuditToken.current[24];
    goto LABEL_10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _EXServiceClient.makeSequence(for:host:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a8;
  v31 = a4;
  v33 = a6;
  v34 = a7;
  v32 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = *(v12 + 16);
  v35 = a1;
  v15(&v30 - v13, a1, v11);
  v16 = type metadata accessor for _EXServiceClient.Observer(0);
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection] = 0;

  v18 = v30;
  UUID.init()();
  v19 = [objc_opt_self() anonymousListener];
  *&v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener] = v19;
  v20 = &v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity];
  *v20 = a2;
  v20[8] = a3 & 1;
  v20[9] = BYTE1(a3) & 1;
  v20[10] = BYTE2(a3) & 1;
  v20[11] = HIBYTE(a3) & 1;
  v21 = &v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_host];
  v22 = v32;
  *v21 = v31;
  v21[1] = v22;
  v23 = v34;
  v21[2] = v33;
  v21[3] = v23;
  v15(&v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_continuation], v14, v11);
  v37.receiver = v17;
  v37.super_class = v16;
  v24 = objc_msgSendSuper2(&v37, sel_init);
  (*(v12 + 8))(v14, v11);
  _EXServiceClient.addObserver(_:)(v24);
  v25 = _EXServiceClient.observerConnection.getter();
  _EXServiceClient.Observer.activate(connection:)(v25);

  if (v26)
  {
    v36 = v26;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  *(v27 + 24) = v24;
  v28 = v18;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

void _EXServiceClient.addObserver(_:)(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v5 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(&a1[v4]), v7 = v6, , (v7 & 1) != 0))
  {
    _StringGuts.grow(_:)(26);

    v10 = [a1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    MEMORY[0x1865F37A0](v11, v13);

    MEMORY[0x1865F37A0](0x79646165726C6120, 0xEF65766974636120);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + v5);
    *(v1 + v5) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &a1[v4], isUniquelyReferenced_nonNull_native);
    *(v1 + v5) = v14;
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void _EXServiceClient.removeObserver(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v7 + 4);
  v8 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v9 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (*(v10 + 16))
  {

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v8);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      v14 = v13;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  (*(v4 + 16))(v6, a1 + v8, v3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v6);
  swift_endAccess();
  if (v13)
  {
    v15 = *&v13[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener];
    v16 = v13;
    [v15 invalidate];
    v17 = *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection];
    [v17 invalidate];
  }

  os_unfair_lock_unlock(v7 + 4);
}

uint64_t closure #2 in _EXServiceClient.launchConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.launchConnection.getter(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t closure #3 in _EXServiceClient.launchConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.launchConnection.getter();
  os_unfair_lock_unlock(v2 + 4);
}

id _EXServiceClient.tccProxyConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = OBJC_IVAR____EXServiceClient__tccProxyConnection;
  v6 = *(v0 + OBJC_IVAR____EXServiceClient__tccProxyConnection);
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(v4 + 4);
    return v7;
  }

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v3, v9);
  }

  v13 = MEMORY[0x1865F36D0](0x79786F7250434354, 0xE800000000000000);
  v14 = [objc_opt_self() endpointForServiceName:v11 oneshot:isa service:v13 instance:0];

  if (!v14)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.general);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v27 + 12) = 2082;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x79786F7250434354, 0xE800000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v28, -1, -1);
      MEMORY[0x1865F56C0](v27, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v15 = objc_opt_self();
  v33 = destructiveProjectEnumData for Platform;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v32 = &block_descriptor_162;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 NSXPCConnectionWithEndpoint:v14 configurator:v16];
  _Block_release(v16);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for tccProxyServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v17 setRemoteObjectInterface_];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #2 in _EXServiceClient.tccProxyConnection.getter;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_166;
  v19 = _Block_copy(&aBlock);

  [v17 setInterruptionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #3 in _EXServiceClient.tccProxyConnection.getter;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_170;
  v21 = _Block_copy(&aBlock);

  [v17 setInvalidationHandler_];
  _Block_release(v21);
  v22 = *(v0 + v5);
  *(v0 + v5) = v17;
  v23 = v17;

  [v23 activate];
LABEL_14:
  os_unfair_lock_unlock(v4 + 4);
  return v23;
}

uint64_t closure #2 in _EXServiceClient.tccProxyConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.tccProxyConnection.getter(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in closure #2 in _EXServiceClient.discoveryConnection.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[*a3];

  [v5 invalidate];
  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *a3;
  v8 = *&v6[*a3];
  *&v6[v7] = 0;
}

uint64_t closure #3 in _EXServiceClient.tccProxyConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.tccProxyConnection.getter();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t _EXServiceClient.photoServiceAuthorizationStatus(for:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = _EXServiceClient.tccProxyConnection.getter();
  v13 = partial apply for closure #1 in _EXServiceClient.photoServiceAuthorizationStatus(for:);
  v14 = v0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v12 = &block_descriptor_156;
  v2 = _Block_copy(&v9);

  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation19_EXTCCProxyProtocol_pMd, _s19ExtensionFoundation19_EXTCCProxyProtocol_pMR);
  swift_dynamicCast();
  v4 = v15;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = partial apply for closure #2 in _EXServiceClient.photoServiceAuthorizationStatus(for:);
  v14 = v0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v12 = &block_descriptor_159;
  v6 = _Block_copy(&v9);

  [v4 photoServiceAuthorizationStatusForExtensionUUID:isa completion:v6];
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v0 + 16);
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  return swift_unknownObjectRelease();
}

void closure #1 in _EXServiceClient.launch(with:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, a4);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1847D1000, v12, v13, a5, v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v15, -1, -1);
    MEMORY[0x1865F56C0](v14, -1, -1);
  }

  v18 = _convertErrorToNSError(_:)();
  swift_beginAccess();
  v19 = *(a2 + 16);
  *(a2 + 16) = v18;
}

void closure #2 in _EXServiceClient.photoServiceAuthorizationStatus(for:)(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v6 = a2;
    v7 = _convertErrorToNSError(_:)();

    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = v7;
  }

  if ((a1 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x1865F36D0](0xD000000000000020, 0x80000001848C3BE0);
    v11 = [v9 _EX_errorWithCode_description_];

    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = v11;
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t partial apply for closure #1 in _EXServiceClient.makeSequence(for:host:)(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 27))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return closure #1 in _EXServiceClient.makeSequence(for:host:)(a1, *(v1 + 16), v3 | v4 | v5, *(v1 + 28), *(v1 + 36), *(v1 + 44), *(v1 + 52), *(v1 + 64));
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.observerConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__observerConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__observerConnection] = 0;
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
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v2;
    v31 = v4;
    do
    {
      v32 = 16 * v6;
      v11 = *(v2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = v3;
      v14 = *(v11 + 8);
      v15 = *(v11 + 9);
      v16 = *(v11 + 10);
      v17 = *(v11 + 11);
      Hasher.init(_seed:)();

      specialized Set.hash(into:)(v33, v12);
      v18 = v14;
      v3 = v13;
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      v19 = Hasher._finalize()();

      v20 = v19 & v7;
      if (v13 >= v8)
      {
        if (v20 < v8)
        {
          v2 = v30;
          v4 = v31;
        }

        else
        {
          v2 = v30;
          v4 = v31;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v30;
        v4 = v31;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 16 * v3);
          v23 = (v21 + v32);
          if (16 * v3 != v32 || v22 >= v23 + 1)
          {
            *v22 = *v23;
          }

          v24 = *(v2 + 56);
          v25 = v24 + 40 * v3;
          v26 = (v24 + 40 * v6);
          if (v3 != v6 || v25 >= v26 + 40)
          {
            v9 = *v26;
            v10 = v26[1];
            *(v25 + 32) = *(v26 + 4);
            *v25 = v9;
            *(v25 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for _EXNSExtensionShim.Implementation.Request(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Set<AppExtensionPoint>.Index._Variant(result, a2, a3 & 1);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n092_s19ExtensionFoundation16_EXServiceClientC6result4withAA14_EXQueryResultCAA01_G0C_tFyAGSg_s5s12_pSgtcfU0_Sbq1_iJ6CXEfU_So11NSPredicateCTf1nnc_nTm(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      outlined init with copy of AppExtensionIdentity(v2, v3);
      specialized Set._Variant.insert(_:)(v4, v3);
      result = outlined destroy of AppExtensionIdentity(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    [a1 setExportedObject_];
    if (one-time initialization token for queryResultsInterface != -1)
    {
      swift_once();
    }

    [a1 setExportedInterface_];
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = partial apply for closure #1 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:);
    v14 = v4;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12 = &block_descriptor_201;
    v5 = _Block_copy(&v9);

    [a1 setInterruptionHandler_];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = partial apply for closure #2 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:);
    v14 = v6;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12 = &block_descriptor_205;
    v7 = _Block_copy(&v9);

    [a1 setInvalidationHandler_];
    _Block_release(v7);
    swift_unknownObjectWeakAssign();
    [a1 activate];
  }

  return 1;
}

uint64_t specialized _EXServiceClient.ActiveClientQuery.query(_:resultDidUpdate:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.discovery);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1847D1000, v9, v10, "Remote query change notification %{public}@", v11, 0xCu);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v12, -1, -1);
    MEMORY[0x1865F56C0](v11, -1, -1);
  }

  (*(a4 + 16))(a4);
  swift_beginAccess();

  active = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_19ExtensionFoundation24_EXServiceClientObserver_ps5NeverOTg504_s19f13Foundation16_hi66C06ActiveD5Query33_591406279EDD09BF7033B88E7B83DCFDLLC07ServiceD11j41SetC10allObjectsSayAA01_cdN0_pGvgAaJ_ps11dE6VXEfU_Tf1cn_n(v14);

  v16 = *(active + 16);
  if (v16)
  {
    v17 = active + 32;
    do
    {
      outlined init with copy of _InnerAppExtensionIdentity(v17, v21);
      v18 = v22;
      v19 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v19 + 16))(v8, a2, v18, v19);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v17 += 40;
      --v16;
    }

    while (v16);
  }
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, id a4)
{
  v18 = a2;
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = [a4 evaluateWithObject_];
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return specialized _NativeSet.extractSubset(using:count:)(v19, v18, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v9);
    v11 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v27 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v7 = &selRef_setService_;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if ([v10 evaluateWithObject_])
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = specialized _NativeSet.extractSubset(using:count:)(v11, v25, v27, a1);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n092_s19ExtensionFoundation16_EXServiceClientC6result4withAA14_EXQueryResultCAA01_G0C_tFyAGSg_s5s12_pSgtcfU0_Sbq1_iJ6CXEfU_So11NSPredicateCTf1nnc_nTm(v22, v7, a1, v23);

  MEMORY[0x1865F56C0](v22, -1, -1);

  return v20;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for _EXExtensionIdentity();
    v2 = MEMORY[0x1E69E7CD0];
    do
    {
      swift_dynamicCast();
      if ([v3 evaluateWithObject_])
      {
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          specialized _NativeSet.resize(capacity:)(v4 + 1);
        }

        v2 = v16;
        result = NSObject._rawHashValue(seed:)(*(v16 + 40));
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v2;
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.discoveryConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__discoveryConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__discoveryConnection] = 0;
}

uint64_t objectdestroy_83Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.tccProxyConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__tccProxyConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__tccProxyConnection] = 0;
}

uint64_t specialized _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection;
  [*(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection) invalidate];
  [a1 setExportedObject_];
  if (one-time initialization token for observerUpdateInterface != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  v4 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = partial apply for closure #1 in _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:);
  v16 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14 = &block_descriptor_191;
  v5 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = partial apply for closure #2 in _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:);
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14 = &block_descriptor_195;
  v7 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v7);
  v8 = *(v1 + v3);
  *(v1 + v3) = a1;
  v9 = a1;

  [v9 activate];
  return 1;
}

void specialized _EXServiceClient.Observer.observer(_:reply:)(uint64_t a1, unint64_t a2, void (**a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(a1 + OBJC_IVAR___ObserverUpdate__identities);
  v27 = a1;
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_16:
      v20 = *(v27 + OBJC_IVAR___ObserverUpdate__unelectedCount);
      v21 = *(v27 + OBJC_IVAR___ObserverUpdate__disabledCount);
      *&v31 = v12;
      *(&v31 + 1) = v20;
      *&v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v7 + 8))(v9, v6);
      a3[2](a3);
      return;
    }

    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v22 = v9;
    v23 = v7;
    v24 = v6;
    v25 = a2;
    v26 = a3;
    v7 = 0;
    v12 = v34;
    a2 = v10 & 0xC000000000000001;
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    a3 = &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR;
    while (1)
    {
      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (a2)
      {
        v13 = MEMORY[0x1865F3F40](v7, v10);
      }

      else
      {
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v10 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      outlined init with copy of UUID?(v14 + v15, &v29, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (!v30)
      {
        goto LABEL_21;
      }

      outlined init with take of _InnerAppExtensionIdentity(&v29, &v31);
      v34 = v12;
      v6 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v6 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v6 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v6 + 1;
      v17 = v12 + 40 * v6;
      v18 = v31;
      v19 = v32;
      *(v17 + 64) = v33;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      ++v7;
      if (v9 == i)
      {
        a3 = v26;
        v7 = v23;
        v6 = v24;
        v9 = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:
  _Block_release(v26);
  __break(1u);
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.launchConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__launchConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__launchConnection] = 0;
}

void *closure #2 in _EXQueryController.init(queries:delegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = objc_opt_self();
    [v5 queryControllerDelegate:swift_unknownObjectWeakLoadStrong() didUpdateController:v4 enabledCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_enabledCount) disabledCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_disabledCount) unelectedCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount)];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _EXQueryController.description.getter()
{
  v1 = [*(v0 + OBJC_IVAR____EXQueryController_innerController) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _EXQueryController.extensions.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXQueryController_innerController);
  v2 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock);

  os_unfair_lock_lock(v3 + 4);

  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions))
  {
    v4 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    v7 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v7 = v6;
  }

  return v7;
}

id _EXQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXQueryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSExtensionPointType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSExtensionPointType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x53616E6F73726570;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD00000000000001ELL;
  if (!*v0)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized _EXExtensionProcessIdentity.JobConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _EXExtensionProcessIdentity.JobConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
    LOBYTE(v11) = 3;
    type metadata accessor for NWApplicationID();
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8], MEMORY[0x1E6977CB0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void _EXExtensionProcessIdentity.JobConfiguration.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for NWApplicationID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v1[2]);
  v10 = v1[3];
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865F42C0](*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 40;
      do
      {

        String.hash(into:)();

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  outlined init with copy of UUID?(v1 + *(v13 + 28), v9, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    NWApplicationID.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v1 + *(v13 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t _EXExtensionProcessIdentity.JobConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v11 + 2) = v12;
  *(v11 + 3) = 0;
  v13 = *(v9 + 36);
  v14 = type metadata accessor for NWApplicationID();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  v15 = *(v9 + 40);
  v38 = v11;
  v39 = a1;
  v16 = &v11[v15];
  *v16 = 0;
  v16[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v18 = v38;
  }

  else
  {
    v37 = v12;
    v31 = v13;
    v32 = v14;
    v30 = v16;
    v20 = v35;
    v19 = v36;
    LOBYTE(v41) = 0;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v38;
    *v38 = v21;
    v18[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v40 = 1;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v18[2] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v40 = 2;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18[3] = v41;
    LOBYTE(v41) = 3;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8], MEMORY[0x1E6977CB8]);
    v23 = v34;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppExtensionIdentity?(v23, v18 + v31, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    LOBYTE(v41) = 4;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v26;
    (*(v20 + 8))(v7, v19);
    v28 = v30;
    *v30 = v25;
    v28[1] = v27;
    outlined init with copy of _EXExtensionProcessIdentity.Inner(v18, v33, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  return outlined destroy of _EXExtensionProcessIdentity.Inner(v18, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
}

uint64_t _EXExtensionProcessIdentity.Inner.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[7] = 1;
    type metadata accessor for LSExtensionPointType(0);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type LSExtensionPointType and conformance LSExtensionPointType, type metadata accessor for LSExtensionPointType, &protocol conformance descriptor for LSExtensionPointType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[6] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[5] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
    v10[4] = 4;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[3] = 5;
    type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration and conformance _EXExtensionProcessIdentity.JobConfiguration, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration, &protocol conformance descriptor for _EXExtensionProcessIdentity.JobConfiguration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void _EXExtensionProcessIdentity.Inner.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 48))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 48))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v10 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  outlined init with copy of UUID?(v1 + *(v10 + 32), v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  specialized Optional<A>.hash(into:)(a1);
}

uint64_t _EXExtensionProcessIdentity.Inner.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 40);
  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 56);
  v42 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 44);
  v19 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v20 = *(*(v19 - 8) + 56);
  v41 = v18;
  v21 = v14;
  v20(&v14[v18], 1, 1, v19);
  v22 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();
  v38 = v10;
  v23 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v26 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    outlined destroy of NSObject?(&v14[v26], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return outlined destroy of NSObject?(&v14[v41], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  }

  else
  {
    v25 = v36;
    v24 = v37;
    v49 = 0;
    *v21 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 8) = v27;
    type metadata accessor for LSExtensionPointType(0);
    v48 = 1;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type LSExtensionPointType and conformance LSExtensionPointType, type metadata accessor for LSExtensionPointType, &protocol conformance descriptor for LSExtensionPointType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v21 + 16) = v45;
    v47 = 2;
    *(v21 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v21 + 32) = v28;
    v39 = v28;
    v46 = 3;
    *(v21 + 40) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v21 + 48) = v29;
    v33[1] = v29;
    v44 = 4;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppExtensionIdentity?(v7, v21 + v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v43 = 5;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration and conformance _EXExtensionProcessIdentity.JobConfiguration, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration, &protocol conformance descriptor for _EXExtensionProcessIdentity.JobConfiguration);
    v30 = v35;
    v31 = v38;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v31, v24);
    outlined assign with take of AppExtensionIdentity?(v30, v21 + v41, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    outlined init with copy of _EXExtensionProcessIdentity.Inner(v21, v34, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    return outlined destroy of _EXExtensionProcessIdentity.Inner(v21, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65644970756F7267;
  v3 = 0x65636E6174736E69;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _EXExtensionProcessIdentity.Inner.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized _EXExtensionProcessIdentity.Inner.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id _EXExtensionProcessIdentity.init(identity:instanceUUID:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v31 = a2;
  v4 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  v29 = *(a1 + 16);
  v30 = v8;
  v10 = [v9 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v9 extensionPointType];
  v15 = *(v5 + 44);
  v16 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v7[v15], 1, 1, v16);
  v18 = *(v5 + 40);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  *v7 = v11;
  *(v7 + 1) = v13;
  *(v7 + 4) = v14;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;

  v20 = v29;
  *(v7 + 5) = v30;
  *(v7 + 6) = v20;
  v21 = &v7[v18];
  v22 = v31;
  outlined assign with copy of UUID?(v31, v21);
  outlined destroy of NSObject?(&v7[v15], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v23 = v32;
  outlined init with copy of _EXExtensionProcessIdentity.Inner(v32, &v7[v15], type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  v17(&v7[v15], 0, 1, v16);
  v24 = v33;
  outlined init with take of _EXExtensionProcessIdentity.Inner(v7, v33 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  v25 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v34.receiver = v24;
  v34.super_class = v25;
  v26 = objc_msgSendSuper2(&v34, sel_init);
  outlined destroy of _EXExtensionProcessIdentity.Inner(v23, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v26;
}

uint64_t _EXExtensionProcessIdentity.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of NSObject?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for _EXExtensionProcessIdentity(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static _EXExtensionProcessIdentity.Inner.== infix(_:_:)((v1 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner), &v4[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner]);

  return v2 & 1;
}

id _EXExtensionProcessIdentity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessIdentity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

objc_class *static _EXExtensionIdentity.identity(fromDataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v9 = objc_allocWithZone(v8);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  outlined copy of Data._Representation(a1, a2);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner, type metadata accessor for _EXExtensionProcessIdentity.Inner, &protocol conformance descriptor for _EXExtensionProcessIdentity.Inner);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v7, v9 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    v11.receiver = v9;
    v11.super_class = v8;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    outlined consume of Data._Representation(a1, a2);
  }

  return v8;
}

void *_EXExtensionProcessIdentity.launchdJobDescriptor(for:)(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v111 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v114 = &v111 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  MEMORY[0x1EEE9AC00](v115);
  v15 = (&v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 hostIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = [a1 hostIdentity];
    if (v18)
    {
      v19 = v18;
      v113 = v7;
      v111 = v1;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
      v20 = v17;
      v21 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v20);
      v22 = v20;
      if (!v2)
      {
        v17 = v21;
        v112 = 0;

        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v23 = [v17 identity];
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {

          v1 = v111;
          v3 = v112;
          v7 = v113;
          goto LABEL_6;
        }

        v108 = objc_opt_self();
        v109 = MEMORY[0x1865F36D0](0xD000000000000030, 0x80000001848C4190);
        [v108 _EX_errorWithCode_description_];

        swift_willThrow();
        v22 = v17;
      }

      return v10;
    }

LABEL_6:
  }

  _EXExtensionProcessIdentity.JobDescriptor.init(_:host:)(v1, 0, v15);
  if (v3)
  {
    return v10;
  }

  v112 = 0;
  v113 = v7;
  URL.init(fileURLWithPath:)();
  v25 = v15[3];
  v26 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v25);
  v27 = (*(v26 + 64))(v25, v26);
  v29 = v28;
  v30 = objc_allocWithZone(MEMORY[0x1E69C75A0]);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v34 = MEMORY[0x1865F36D0](v27, v29);

  v35 = [v30 initWithExecutableURL:v33 bundleIdentifier:v34];

  (*(v11 + 8))(v13, v10);
  v10 = v35;
  _EXExtensionProcessIdentity.JobDescriptor.attributes.getter();
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setAttributes_];

  _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
  v37 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setLaunchRequestEndpointIdentifiers_];

  v38 = v15[3];
  v39 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v38);
  [v10 setBackoff_];
  _EXExtensionProcessIdentity.JobDescriptor._restiction.getter();
  v40 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setClientRestriction_];

  v41 = [v10 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v41 setProgramArguments_];

  v43 = [v10 jobProperties];
  v44 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v45)
  {
    v46 = MEMORY[0x1865F36D0](v44);
  }

  else
  {
    v46 = 0;
  }

  [v43 setSandboxProfile_];

  v47 = [v10 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
  v48 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v47 setEnvironmentVariables_];

  v49 = [v10 jobProperties];
  v50 = v15[3];
  v51 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v50);
  [v49 setAbandonCoalition_];

  v52 = [v10 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter();
  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v52 setAdditionalSubServices_];

  v54 = [v10 jobProperties];
  [v54 setJoinExistingSession_];

  v55 = [v10 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter();
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setManagedByServices_];

  v57 = [v10 jobProperties];
  [v57 setOmitSandboxParameters_];

  v58 = [v10 jobProperties];
  v59 = v114;
  outlined init with copy of UUID?(v15 + *(v115 + 24), v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v60 = type metadata accessor for UUID();
  v61 = *(v60 - 8);
  v62 = 0;
  if ((*(v61 + 48))(v59, 1, v60) != 1)
  {
    v62 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v61 + 8))(v59, v60);
  }

  [v58 setOneShotUUID_];

  v63 = [v10 &selRef_encodeBytes_length_forKey_];
  v64 = v113;
  outlined init with copy of UUID?(v15 + *(v115 + 20), v113, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v65 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    outlined destroy of NSObject?(v64, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
LABEL_17:
    v70 = 0;
    goto LABEL_18;
  }

  v66 = (v64 + *(v65 + 32));
  v67 = v64;
  v68 = *v66;
  v69 = v66[1];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v67, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  if (!v69)
  {
    goto LABEL_17;
  }

  v70 = MEMORY[0x1865F36D0](v68, v69);

LABEL_18:
  [v63 setPersonaString_];

  v71 = [v10 &selRef_encodeBytes_length_forKey_];
  [v71 setPlatform_];

  v72 = [v10 &selRef_encodeBytes_length_forKey_];
  v73 = v15[3];
  v74 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v73);
  v75 = (*(v74 + 96))(v73, v74);
  if (v76)
  {
    v77 = MEMORY[0x1865F36D0](v75);
  }

  else
  {
    v77 = 0;
  }

  [v72 setProcessType_];

  v78 = [v10 &selRef_encodeBytes_length_forKey_];
  v79 = v15[3];
  v80 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v79);
  if ((*(v80 + 232))(v79, v80))
  {
    v81 = MEMORY[0x1865F36D0](0x656C69626F6DLL, 0xE600000000000000);
  }

  else
  {
    v81 = 0;
  }

  [v78 setRoleAccount_];

  v82 = [v10 &selRef_encodeBytes_length_forKey_];
  v83 = _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter();
  v84 = MEMORY[0x1865F36D0](v83);

  [v82 setRunLoopType_];

  v85 = [v10 &selRef_encodeBytes_length_forKey_];
  v86 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v87)
  {
    v88 = MEMORY[0x1865F36D0](v86);
  }

  else
  {
    v88 = 0;
  }

  [v85 setSandboxProfile_];

  v89 = [v10 &selRef_encodeBytes_length_forKey_];
  v90 = v15[3];
  v91 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v90);
  v92 = (*(v91 + 232))(v90, v91);
  v93 = (v92 & 1) == 0;
  if (v92)
  {
    v94 = 0x6D6574737953;
  }

  else
  {
    v94 = 0x746163696C707041;
  }

  if (v93)
  {
    v95 = 0xEB000000006E6F69;
  }

  else
  {
    v95 = 0xE600000000000000;
  }

  v96 = MEMORY[0x1865F36D0](v94, v95);

  [v89 setServiceType_];

  v97 = [v10 &selRef_encodeBytes_length_forKey_];
  v98 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter();
  if (v99)
  {
    v100 = MEMORY[0x1865F36D0](v98);
  }

  else
  {
    v100 = 0;
  }

  [v97 setUiApplicationClass_];

  v101 = [v10 &selRef_encodeBytes_length_forKey_];
  v102 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter();
  if (v103)
  {
    v104 = MEMORY[0x1865F36D0](v102);
  }

  else
  {
    v104 = 0;
  }

  [v101 setUiApplicationDelegateClass_];

  v105 = [v10 &selRef_encodeBytes_length_forKey_];
  v106 = v15[3];
  v107 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v106);
  [v105 setWatchdogTimeout_];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v15, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
  return v10;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.init(_:host:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v172 = a2;
  v183 = *MEMORY[0x1E69E9840];
  v167 = type metadata accessor for URL();
  v166 = *(v167 - 8);
  v5 = MEMORY[0x1EEE9AC00](v167);
  v171 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v157 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v157 - v9;
  v11 = type metadata accessor for NSFastEnumerationIterator();
  v170 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v15 = (a3 + v14[9]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a3 + v14[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a3 + v14[11]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a3 + v14[12]);
  *v18 = 0;
  v18[1] = 0;
  *(a3 + v14[13]) = 0;
  v19 = v14[14];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a3 + v19) = v20;
  v21 = a1;
  *(a3 + v14[15]) = 0;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v22 = &a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner];
  v23 = *&a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner];
  v24 = *&a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner + 8];

  v25 = v23;
  v26 = v173;
  v27 = specialized _AppExtensionPoint.init(identifier:)(v25, v24);
  if (v26)
  {

LABEL_3:
    outlined destroy of NSObject?(&v180, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  }

  v169 = 0;
  v173 = v11;
  v161 = v22;
  v158 = v14;
  v163 = v10;
  v159 = a3;
  v29 = v27;
  v30 = _AppExtensionPoint.serviceGroupIdentifier.getter(v27);
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    v160 = v20;
    v164 = v21;
    v34 = objc_opt_self();
    v162 = v29;
    v35 = [v34 enumeratorWithExtensionPointRecord:v29 options:0];
    NSEnumerator.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (*(&v176 + 1))
    {
      v165 = MEMORY[0x1E69E7CC0];
      v36 = v173;
      while (1)
      {
        outlined init with take of Any(&v175, &v177);
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
        if (!swift_dynamicCast())
        {
          goto LABEL_87;
        }

        v37 = v174;
        v38 = specialized _InnerAppExtensionIdentity.groupIdentifier.getter(v174);
        if (!v39)
        {
          goto LABEL_7;
        }

        if (v38 == v32 && v39 == v33)
        {

LABEL_17:
          v42 = v165;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v165 = v42;
          v44 = v42[2];
          v43 = v42[3];
          if (v44 >= v43 >> 1)
          {
            v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v165);
          }

          v179 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
          *(&v178 + 1) = &type metadata for AppExtensionIdentity.RecordIdentity;
          *&v177 = v37;
          v45 = &v165[5 * v44];
          v165[2] = v44 + 1;
          outlined init with take of _InnerAppExtensionIdentity(&v177, (v45 + 4));
          NSFastEnumerationIterator.next()();
          v36 = v173;
          if (!*(&v176 + 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36 = v173;

          if (v41)
          {
            goto LABEL_17;
          }

LABEL_7:

          NSFastEnumerationIterator.next()();
          if (!*(&v176 + 1))
          {
            goto LABEL_28;
          }
        }
      }
    }

    v165 = MEMORY[0x1E69E7CC0];
    v36 = v173;
LABEL_28:
    (*(v170 + 8))(v13, v36);
    v53 = v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
    }

    v47 = v160;
    v29 = v162;
    v54 = v169;
    v55 = v171;
    v56 = v53[2];
    *&v177 = v53 + 4;
    *(&v177 + 1) = v56;
    specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v177);
    if (!v53[2])
    {

      v67 = objc_opt_self();
      v68 = MEMORY[0x1865F36D0](0xD00000000000001CLL, 0x80000001848C43C0);
      [v67 _EX_errorWithCode_description_];

      swift_willThrow();
      goto LABEL_3;
    }

    v169 = v54;
    outlined init with copy of _InnerAppExtensionIdentity((v53 + 4), &v175);

    outlined init with take of _InnerAppExtensionIdentity(&v175, &v177);
    v57 = [(__CFString *)v29 identifier];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    *&v175 = v58;
    *(&v175 + 1) = v60;
    MEMORY[0x1865F37A0](58, 0xE100000000000000);
    MEMORY[0x1865F37A0](v32, v33);

    v61 = *(&v175 + 1);
    v170 = v175;
    outlined destroy of NSObject?(&v180, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
    outlined init with take of _InnerAppExtensionIdentity(&v177, &v180);
    v62 = v172;
    v63 = v163;
    if (!v172)
    {
      goto LABEL_74;
    }

LABEL_32:
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    v64 = v62;
    [v64 auditToken];
    v65 = v169;
    v66 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v177, *(&v177 + 1), v178, *(&v178 + 1));
    if (v65)
    {

      goto LABEL_3;
    }

    v75 = v66;
    v173 = v61;
    v169 = 0;
    v76 = [(__CFString *)v29 parentAppRecord];
    v77 = v75;
    if (v76)
    {
      v78 = static NSObject.== infix(_:_:)();

      if (v78)
      {
        goto LABEL_51;
      }
    }

    outlined init with copy of UUID?(&v180, &v177, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
    v79 = *(&v178 + 1);
    if (!*(&v178 + 1))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v80 = v179;
    __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
    v81 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if ((v80[59])(v81, 0xD000000000000039, 0x80000001848C42F0, v79, v80))
    {
      objc_opt_self();
      v82 = swift_dynamicCastObjCClass();
      if (v82)
      {
        v83 = v82;
        __swift_destroy_boxed_opaque_existential_0Tm(&v177);
        LOBYTE(v83) = [v83 BOOLValue];
        swift_unknownObjectRelease();
        if (v83)
        {
LABEL_51:
          v165 = v77;
          v157 = v64;
          v160 = v47;
          v101 = *(&v181 + 1);
          if (!*(&v181 + 1))
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v102 = v182;
          v103 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v104 = *(v101 - 8);
          MEMORY[0x1EEE9AC00](v103);
          v106 = &v157 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v104 + 16))(v106);
          v107 = (*(v102 + 256))(v101, v102);
          (*(v104 + 8))(v106, v101);
          v108 = MEMORY[0x1E69E7CC0];
          if (v107)
          {
            v109 = v165;
            v110 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v110 = 0;
            v107 = v165;
          }

          v115 = *(&v181 + 1);
          if (!*(&v181 + 1))
          {
            goto LABEL_82;
          }

          v116 = v182;
          v117 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v118 = *(v115 - 8);
          MEMORY[0x1EEE9AC00](v117);
          v120 = &v157 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v118 + 16))(v120);
          LOBYTE(v116) = (*(v116 + 216))(v115, v116);
          (*(v118 + 8))(v120, v115);
          if (!(v110 & 1 | ((v116 & 1) == 0)))
          {
            v135 = v157;

            v136 = objc_opt_self();
            v137 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C4390);
            [v136 _EX_errorWithCode_description_];

            swift_willThrow();
            goto LABEL_3;
          }

          v121 = *(&v181 + 1);
          if (!*(&v181 + 1))
          {
            goto LABEL_86;
          }

          v122 = v182;
          v123 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v124 = *(v121 - 8);
          MEMORY[0x1EEE9AC00](v123);
          v126 = &v157 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v124 + 16))(v126);
          v127 = (*(v122 + 224))(v121, v122);
          v129 = v128;
          (*(v124 + 8))(v126, v121);
          if (v129)
          {
            [v157 auditToken];
            v130 = specialized AuditToken.entitlement<A>(name:)(0xD000000000000025, 0x80000001848C2BD0, v177, *(&v177 + 1), v178, *(&v178 + 1));
            if (v130)
            {
              v131 = v130;
            }

            else
            {
              v131 = v108;
            }

            v132 = (v131 + 40);
            v133 = *(v131 + 16) + 1;
            v63 = v163;
            while (--v133)
            {
              if (*(v132 - 1) != v127 || v129 != *v132)
              {
                v132 += 2;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

            v154 = v157;

            v155 = objc_opt_self();
            *&v177 = 0;
            *(&v177 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(41);

            *&v177 = 0xD000000000000026;
            *(&v177 + 1) = 0x80000001848C4360;
            MEMORY[0x1865F37A0](v127, v129);

            MEMORY[0x1865F37A0](96, 0xE100000000000000);
            v156 = MEMORY[0x1865F36D0](v177, *(&v177 + 1));

            [v155 _EX_errorWithCode_description_];

            swift_willThrow();
            goto LABEL_3;
          }

          v63 = v163;
LABEL_73:
          v55 = v171;
          v61 = v173;
LABEL_74:
          v173 = v61;
          v162 = v29;
          v138 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
          outlined init with copy of UUID?(&v161[*(v138 + 36)], v63, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
          v139 = *(&v181 + 1);
          if (*(&v181 + 1))
          {
            v140 = v182;
            v141 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
            v142 = *(v139 - 8);
            MEMORY[0x1EEE9AC00](v141);
            v144 = &v157 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v142 + 16))(v144);
            v145 = v168;
            v146 = v169;
            _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v139, v140, v168);
            v169 = v146;
            if (v146)
            {

              (*(v142 + 8))(v144, v139);
              outlined destroy of NSObject?(v163, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
              goto LABEL_3;
            }

            (*(v142 + 8))(v144, v139);
            URL.absoluteURL.getter();
            v147 = *(v166 + 8);
            v148 = v167;
            v147(v145, v167);
            v149 = URL.path(percentEncoded:)(0);

            v147(v55, v148);
            v150 = v158;
            v151 = v159;
            *(v159 + v158[8]) = v149;
            outlined init with copy of UUID?(&v180, &v177, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
            if (*(&v178 + 1))
            {

              outlined init with take of _InnerAppExtensionIdentity(&v177, v151);
              outlined init with take of _EXExtensionProcessIdentity.JobConfiguration?(v163, v151 + v150[5]);
              outlined init with copy of UUID?(&v161[*(v138 + 32)], v151 + v150[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

              v152 = (v151 + v150[7]);
              v153 = v173;
              *v152 = v170;
              v152[1] = v153;
              return outlined destroy of NSObject?(&v180, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
            }

            goto LABEL_84;
          }

          __break(1u);
          goto LABEL_81;
        }

LABEL_49:
        [v64 auditToken];
        v175 = v177;
        v176 = v178;
        v96 = objc_opt_self();
        v97 = _AppExtensionPoint.requiredHostEntitlements.getter(v29);
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v97);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v174 = 0;
        v99 = [v96 auditToken:&v175 hasRequiredEntitlements:isa error:&v174];

        if (!v99)
        {
          v111 = v174;

          v112 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v113 = objc_opt_self();
          v114 = MEMORY[0x1865F36D0](0xD000000000000025, 0x80000001848C4330);
          [v113 _EX_errorWithCode_description_];

          swift_willThrow();
          goto LABEL_3;
        }

        v100 = v174;
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v177);
    goto LABEL_49;
  }

  v46 = v172;
  v47 = v20;
  if (!v172)
  {
    v46 = v21;
    v69 = objc_opt_self();
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    *&v177 = 0xD00000000000001BLL;
    *(&v177 + 1) = 0x80000001848C42B0;
    v70 = [v46 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    MEMORY[0x1865F37A0](v71, v73);

    v74 = MEMORY[0x1865F36D0](v177, *(&v177 + 1));

    [v69 _EX_errorWithCode_description_];

    swift_willThrow();
    goto LABEL_36;
  }

  v164 = v21;
  v48 = *(v161 + 4);
  if (!v48)
  {
    v84 = objc_opt_self();
    v85 = MEMORY[0x1865F36D0](0xD000000000000019, 0x80000001848C42D0);
    [v84 _EX_errorWithCode_description_];

    swift_willThrow();
    goto LABEL_3;
  }

  v49 = *(v161 + 3);
  v50 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  swift_bridgeObjectRetain_n();
  v51 = v169;
  v52 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v49, v48);
  if (v51)
  {

LABEL_36:

    goto LABEL_3;
  }

  v169 = 0;
  *(&v178 + 1) = &type metadata for AppExtensionIdentity.RecordIdentity;
  v179 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *&v177 = v52;
  v86 = v52;
  outlined assign with take of AppExtensionIdentity?(&v177, &v180, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (*(&v181 + 1))
  {

    v88 = *(&v181 + 1);
    v87 = v182;
    v89 = __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
    v90 = *(v88 - 8);
    MEMORY[0x1EEE9AC00](v89);
    v92 = &v157 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v90 + 16))(v92);
    v170 = _InnerAppExtensionIdentity.serviceName.getter(v88, v87);
    v94 = v93;

    v95 = v88;
    v61 = v94;
    (*(v90 + 8))(v92, v95);
    v62 = v172;
    goto LABEL_32;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.attributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 232))(v1, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1848BBBA0;
    v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
    v5 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4290);
    v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];
LABEL_3:
    v7 = v6;

    *(v3 + 32) = v7;
    return v3;
  }

  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  if ((*(v9 + 48))(v8, v9) == 2)
  {
    v10 = v0[3];
    v11 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v10);
    v12 = (*(v11 + 104))(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1848BBBA0;
    if (v12)
    {
      v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
      v5 = MEMORY[0x1865F36D0](0x6574784578454955, 0xED00006E6F69736ELL);
    }

    else
    {
      v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
      v5 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C4270);
    }

    v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];
    goto LABEL_3;
  }

  v3 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  if (!(v3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);

    return v3;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  v14 = _bridgeCocoaArray<A>(_:)();

  return v14;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = (v0 + *(v1 + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v4 = (v0 + *(v1 + 28));
    v6 = *v4;
    v7 = v4[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0xD000000000000015, 0x80000001848C3EC0);
    v3 = v6;
    *v2 = v6;
    v2[1] = v7;
  }

  return v3;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = (v0 + *(v1 + 44));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v4 = (v0 + *(v1 + 28));
    v6 = *v4;
    v7 = v4[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0x7672657377656976, 0xEB00000000656369);
    v3 = v6;
    *v2 = v6;
    v2[1] = v7;
  }

  return v3;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor._restiction.getter()
{
  v1 = *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 60);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _EXExtensionProcessIdentity.JobDescriptor._restiction.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t closure #1 in _EXExtensionProcessIdentity.JobDescriptor._restiction.getter(uint64_t a1)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463697274736552;
  v4 = 0x7373616C43;
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v5 = *(&v92 + 1);
  v6 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v7 = (*(v6 + 232))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  v8 = &off_1848BA000;
  v9 = MEMORY[0x1E69E6158];
  if (v7)
  {
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
    v10 = *(&v92 + 1);
    v11 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
    v12 = (*(v11 + 72))(v10, v11);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(&v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1848BAB90;
      *(v16 + 32) = 0x7373616C43;
      *(v16 + 40) = 0xE500000000000000;
      *(v16 + 48) = 0xD000000000000012;
      *(v16 + 56) = 0x80000001848C4210;
      *(v16 + 72) = v9;
      *(v16 + 80) = 0x79747265706F7250;
      *(v16 + 88) = 0xE800000000000000;
      *(v16 + 96) = 0xD000000000000010;
      *(v16 + 104) = 0x80000001848C4230;
      *(v16 + 120) = v9;
      *(v16 + 128) = 0x65756C6156;
      *(v16 + 168) = v9;
      *(v16 + 136) = 0xE500000000000000;
      *(v16 + 144) = v14;
      *(v16 + 152) = v15;
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v16);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + 8 * v20 + 32) = v17;
      if (!*(v18 + 16))
      {
        goto LABEL_48;
      }

LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = *(v8 + 161);
      *(inited + 32) = 0x7373616C43;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0xD000000000000015;
      *(inited + 56) = 0x80000001848C41D0;
      *(inited + 72) = v9;
      *(inited + 80) = 0x6D656C7469746E45;
      *(inited + 120) = v9;
      *(inited + 88) = 0xEB00000000746E65;
      *(inited + 96) = 0xD000000000000031;
      *(inited + 104) = 0x80000001848C2B90;
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_45:
        v83 = *(v18 + 16);
        v82 = *(v18 + 24);
        if (v83 >= v82 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v18);
        }

        *(v18 + 16) = v83 + 1;
        *(v18 + 8 * v83 + 32) = v29;
        goto LABEL_48;
      }

LABEL_52:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      goto LABEL_45;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
LABEL_39:
    v18 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v21 = *(&v92 + 1);
  v22 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v23 = (*(v22 + 192))(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if (v23)
  {
    goto LABEL_39;
  }

  v87 = a1;
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v18 = *(&v92 + 1);
  v24 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v25 = (*(v24 + 184))(v18, v24);
  v26 = v25 + 64;
  v88 = v25;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  v2 = 0;
  v3 = (v27 + 63) >> 6;
  v89 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
LABEL_15:
    while (1)
    {
      v31 = __clz(__rbit64(v29)) | (v2 << 6);
      v32 = (*(v88 + 48) + 16 * v31);
      v33 = *v32;
      v34 = v32[1];
      v8 = *(*(v88 + 56) + 8 * v31);
      v94[0] = 0x7373616C43;
      v94[1] = 0xE500000000000000;
      v94[2] = 0x69746E4574736F48;
      v94[3] = 0xEF746E656D656C74;
      v94[5] = v9;
      v95[0] = 0x6D656C7469746E45;
      v95[1] = 0xEB00000000746E65;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yXl5valuetMd, &_sSS3key_yXl5valuetMR);
      v95[2] = v33;
      v95[3] = v34;
      v95[4] = v8;
      v95[5] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v36 = static _DictionaryStorage.allocate(capacity:)();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();

      outlined init with copy of UUID?(v94, &v90, &_sSS_yptMd, &_sSS_yptMR);
      v9 = v90;
      v4 = v91;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
      if (v38)
      {
        break;
      }

      v18 = (v36 + 8);
      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v37;
      v39 = (v36[6] + 16 * v37);
      *v39 = v9;
      v39[1] = v4;
      outlined init with take of Any(&v92, (v36[7] + 32 * v37));
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_51;
      }

      v36[2] = v42;
      outlined init with copy of UUID?(v95, &v90, &_sSS_yptMd, &_sSS_yptMR);
      v9 = v90;
      v4 = v91;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
      if (v44)
      {
        break;
      }

      *(v18 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v45 = (v36[6] + 16 * v43);
      *v45 = v9;
      v45[1] = v4;
      outlined init with take of Any(&v92, (v36[7] + 32 * v43));
      v46 = v36[2];
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_51;
      }

      v36[2] = v47;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
      }

      v4 = 0x7373616C43;
      v18 = v89[2];
      v48 = v89[3];
      if (v18 >= v48 >> 1)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v18 + 1, 1, v89);
      }

      v29 &= v29 - 1;
      swift_unknownObjectRelease();

      v89[2] = v18 + 1;
      v89[v18 + 4] = v36;
      v9 = MEMORY[0x1E69E6158];
      v8 = &off_1848BA000;
      if (!v29)
      {
        goto LABEL_11;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
LABEL_11:
    v30 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v30 >= v3)
    {
      break;
    }

    v29 = *(v26 + 8 * v30);
    ++v2;
    if (v29)
    {
      v2 = v30;
      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v49 = swift_initStackObject();
  *(v49 + 16) = *(v8 + 161);
  *(v49 + 32) = 0x7373616C43;
  *(v49 + 40) = 0xE500000000000000;
  *(v49 + 48) = 0x646E756F706D6F43;
  *(v49 + 56) = 0xEB000000006C6C41;
  v3 = 0x7463697274736552;
  *(v49 + 72) = v9;
  strcpy((v49 + 80), "Restrictions");
  v2 = 0xEC000000736E6F69;
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *(v49 + 96) = v89;
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v52 = *(v18 + 16);
  v51 = *(v18 + 24);
  if (v52 >= v51 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v18);
  }

  *(v18 + 16) = v52 + 1;
  *(v18 + 8 * v52 + 32) = v50;
  v53 = v87;
  outlined init with copy of _InnerAppExtensionIdentity(v87, &v90);
  v54 = *(&v92 + 1);
  v55 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v56 = (*(v55 + 48))(v54, v55);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if (v56 == 2)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1848BAB90;
    *(v57 + 32) = 0x7373616C43;
    *(v57 + 40) = 0xE500000000000000;
    strcpy((v57 + 48), "HostProperty");
    *(v57 + 61) = 0;
    *(v57 + 62) = -5120;
    v58 = MEMORY[0x1E69E6158];
    *(v57 + 72) = MEMORY[0x1E69E6158];
    *(v57 + 80) = 0x79747265706F7250;
    *(v57 + 88) = 0xE800000000000000;
    *(v57 + 96) = 0xD000000000000016;
    *(v57 + 104) = 0x80000001848C41F0;
    *(v57 + 120) = v58;
    *(v57 + 128) = 0x65756C6156;
    *(v57 + 136) = 0xE500000000000000;
    outlined init with copy of _InnerAppExtensionIdentity(v87, &v90);
    v59 = *(&v92 + 1);
    v60 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
    v61 = (*(v60 + 40))(v59, v60);
    *(v57 + 168) = v58;
    *(v57 + 144) = v61;
    *(v57 + 152) = v62;
    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
    v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v65 = *(v18 + 16);
    v64 = *(v18 + 24);
    if (v65 >= v64 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v18);
    }

    *(v18 + 16) = v65 + 1;
    *(v18 + 8 * v65 + 32) = v63;
    v3 = 0x7463697274736552;
    v4 = 0x7373616C43;
    v53 = v87;
  }

  outlined init with copy of _InnerAppExtensionIdentity(v53, &v90);
  v66 = *(&v92 + 1);
  v67 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v68 = (*(v67 + 256))(v66, v67);
  if (!v68 || (v69 = v68, v70 = [v68 bundleIdentifier], v69, !v70))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
    goto LABEL_43;
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  outlined init with copy of _InnerAppExtensionIdentity(v53, &v90);
  v74 = *(&v92 + 1);
  v75 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  LOBYTE(v74) = (*(v75 + 216))(v74, v75);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if ((v74 & 1) == 0)
  {

    v4 = 0x7373616C43;
LABEL_43:
    v9 = MEMORY[0x1E69E6158];
    v8 = &off_1848BA000;
    if (!*(v18 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1848BAB90;
  v4 = 0x7373616C43;
  *(v76 + 32) = 0x7373616C43;
  *(v76 + 40) = 0xE500000000000000;
  strcpy((v76 + 48), "HostProperty");
  *(v76 + 61) = 0;
  *(v76 + 62) = -5120;
  v77 = MEMORY[0x1E69E6158];
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x79747265706F7250;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 0x4449656C646E7542;
  *(v76 + 104) = 0xE800000000000000;
  *(v76 + 120) = v77;
  *(v76 + 128) = 0x65756C6156;
  *(v76 + 168) = v77;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = v71;
  *(v76 + 152) = v73;
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v80 = *(v18 + 16);
  v79 = *(v18 + 24);
  if (v80 >= v79 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v18);
  }

  v8 = &off_1848BA000;
  *(v18 + 16) = v80 + 1;
  *(v18 + 8 * v80 + 32) = v78;
  v9 = MEMORY[0x1E69E6158];
  if (*(v18 + 16))
  {
    goto LABEL_44;
  }

LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v84 = swift_initStackObject();
  *(v84 + 16) = *(v8 + 161);
  *(v84 + 32) = v4;
  *(v84 + 40) = 0xE500000000000000;
  *(v84 + 48) = 0x646E756F706D6F43;
  *(v84 + 56) = 0xEB00000000796E41;
  *(v84 + 72) = v9;
  *(v84 + 80) = v3;
  *(v84 + 88) = v2;
  *(v84 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *(v84 + 96) = v18;
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v84);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  return v85;
}

Swift::Int NWApplicationID.hashValue.getter()
{
  Hasher.init(_seed:)();
  NWApplicationID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for _EXExtensionProcessIdentity(uint64_t a1)
{
  result = type metadata accessor for _EXExtensionProcessIdentity.Inner(319);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchArguments(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for _EXExtensionProcessIdentity.Inner(uint64_t a1)
{
  type metadata accessor for LSExtensionPointType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for _EXExtensionProcessIdentity.JobConfiguration?, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LaunchArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LaunchArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LaunchArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LaunchArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10identifier_19ExtensionFoundation8PlatformO8platformtGMd, &_ss23_ContiguousArrayStorageCySS10identifier_19ExtensionFoundation8PlatformO8platformtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMd, &_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointV7MonitorC18ObserverControllerC04WeakH033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointV7MonitorC18ObserverControllerC04WeakH033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation09_InnerAppD8Identity_pGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation09_InnerAppD8Identity_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    v10 = MEMORY[0x1E69E7CC0];
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

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3 + 1;
LABEL_5:
    v28 = a3;
    v7 = v6;
    for (i = v5; ; i -= 40)
    {
      outlined init with copy of _InnerAppExtensionIdentity(i, &v23);
      outlined init with copy of _InnerAppExtensionIdentity(i - 40, v20);
      v9 = v24;
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      v11 = (*(v10 + 80))(v9, v10);
      v12 = MEMORY[0x1865F36D0](v11);

      MEMORY[0x1865F4620](&v26, v12);

      v13 = v21;
      v14 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v15 = (*(v14 + 80))(v13, v14);
      v16 = MEMORY[0x1865F36D0](v15);

      MEMORY[0x1865F4620](&v27, v16);

      v17 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      if (v17 != -1)
      {
LABEL_4:
        a3 = v28 + 1;
        v5 += 40;
        --v6;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      outlined init with take of _InnerAppExtensionIdentity(i, &v23);
      v18 = *(i - 24);
      *i = *(i - 40);
      *(i + 16) = v18;
      *(i + 32) = *(i - 8);
      result = outlined init with take of _InnerAppExtensionIdentity(&v23, i - 40);
      if (!v7)
      {
        goto LABEL_4;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v120 = result;
  v7 = *(a3 + 1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      v122 = v9;
      if (v8 + 1 >= v7)
      {
        ++v8;
      }

      else
      {
        v12 = *v6;
        outlined init with copy of _InnerAppExtensionIdentity(*v6 + 40 * v11, &v130);
        outlined init with copy of _InnerAppExtensionIdentity(v12 + 40 * v8, v127);
        v119 = v8;
        v13 = v131;
        v14 = v132;
        __swift_project_boxed_opaque_existential_1(&v130, v131);
        v15 = (*(v14 + 80))(v13, v14);
        v16 = MEMORY[0x1865F36D0](v15);

        MEMORY[0x1865F4620](&v133, v16);

        v17 = v128;
        v18 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v19 = *(v18 + 80);
        v20 = v18;
        v10 = v8;
        v21 = v19(v17, v20);
        v22 = MEMORY[0x1865F36D0](v21);

        MEMORY[0x1865F4620](&v135, v22);

        v125 = v133;
        v126 = v134;
        v123 = v135;
        v124 = v136;
        v23 = _LSVersionNumberCompare();
        __swift_destroy_boxed_opaque_existential_0Tm(v127);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
        v24 = v8 + 2;
        if (v8 + 2 >= v7)
        {
          v8 += 2;
        }

        else
        {
          v25 = v12 + 40 * v8 + 40;
          while (1)
          {
            v26 = v7;
            v27 = v24;
            v28 = v25 + 40;
            outlined init with copy of _InnerAppExtensionIdentity(v25 + 40, &v130);
            outlined init with copy of _InnerAppExtensionIdentity(v25, v127);
            v30 = v131;
            v29 = v132;
            __swift_project_boxed_opaque_existential_1(&v130, v131);
            v31 = (*(v29 + 80))(v30, v29);
            v32 = MEMORY[0x1865F36D0](v31);

            MEMORY[0x1865F4620](&v123, v32);

            v33 = v128;
            v34 = v129;
            __swift_project_boxed_opaque_existential_1(v127, v128);
            v35 = (*(v34 + 80))(v33, v34);
            v36 = MEMORY[0x1865F36D0](v35);

            MEMORY[0x1865F4620](&v125, v36);

            v37 = _LSVersionNumberCompare();
            __swift_destroy_boxed_opaque_existential_0Tm(v127);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
            if ((v23 == -1) == (v37 != -1))
            {
              break;
            }

            v24 = v27 + 1;
            v25 = v28;
            v7 = v26;
            if (v26 == v27 + 1)
            {
              v11 = v27;
              v8 = v26;
              goto LABEL_13;
            }
          }

          v11 = v27 - 1;
          v8 = v27;
LABEL_13:
          v10 = v119;
          v6 = a3;
        }

        if (v23 == -1)
        {
          if (v8 < v10)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return result;
          }

          if (v10 <= v11)
          {
            v99 = v10;
            v100 = v6;
            v101 = v5;
            v11 = 40 * v8 - 40;
            v102 = 40 * v99;
            v103 = v8;
            v104 = v8;
            v105 = v99;
            do
            {
              if (v105 != --v104)
              {
                v110 = *v100;
                if (!*v100)
                {
                  goto LABEL_131;
                }

                v106 = v110 + v102;
                v107 = v110 + v11;
                outlined init with take of _InnerAppExtensionIdentity((v110 + v102), &v130);
                v108 = *(v107 + 32);
                v109 = *(v107 + 16);
                *v106 = *v107;
                *(v106 + 16) = v109;
                *(v106 + 32) = v108;
                result = outlined init with take of _InnerAppExtensionIdentity(&v130, v107);
              }

              ++v105;
              v11 -= 40;
              v102 += 40;
            }

            while (v105 < v104);
            v5 = v101;
            v6 = v100;
            v8 = v103;
            v10 = v119;
          }
        }
      }

      v38 = *(v6 + 1);
      if (v8 < v38)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_123;
        }

        if (v8 - v10 < a4)
        {
          v39 = v10 + a4;
          if (__OFADD__(v10, a4))
          {
            goto LABEL_124;
          }

          if (v39 >= v38)
          {
            v39 = *(v6 + 1);
          }

          if (v39 < v10)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v8 != v39)
          {
            v116 = v5;
            v11 = *v6;
            v40 = *v6 + 40 * v8;
            v41 = v10 - v8 + 1;
            v121 = v39;
            do
            {
              v138 = v8;
              v42 = v41;
              for (i = v40; ; i -= 40)
              {
                outlined init with copy of _InnerAppExtensionIdentity(i, &v130);
                outlined init with copy of _InnerAppExtensionIdentity(i - 40, v127);
                v44 = v131;
                v45 = v132;
                __swift_project_boxed_opaque_existential_1(&v130, v131);
                v46 = (*(v45 + 80))(v44, v45);
                v47 = MEMORY[0x1865F36D0](v46);

                MEMORY[0x1865F4620](&v133, v47);

                v48 = v128;
                v49 = v129;
                __swift_project_boxed_opaque_existential_1(v127, v128);
                v50 = (*(v49 + 80))(v48, v49);
                v51 = MEMORY[0x1865F36D0](v50);

                MEMORY[0x1865F4620](&v135, v51);

                v125 = v133;
                v126 = v134;
                v123 = v135;
                v124 = v136;
                v52 = _LSVersionNumberCompare();
                __swift_destroy_boxed_opaque_existential_0Tm(v127);
                result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
                if (v52 != -1)
                {
                  break;
                }

                if (!v11)
                {
                  goto LABEL_128;
                }

                outlined init with take of _InnerAppExtensionIdentity(i, &v130);
                v53 = *(i - 24);
                *i = *(i - 40);
                *(i + 16) = v53;
                *(i + 32) = *(i - 8);
                outlined init with take of _InnerAppExtensionIdentity(&v130, i - 40);
                if (!v42)
                {
                  break;
                }

                ++v42;
              }

              v8 = v138 + 1;
              v40 += 40;
              --v41;
            }

            while (v138 + 1 != v121);
            v8 = v121;
            v5 = v116;
            v6 = a3;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_122;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v122;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 16) + 1, 1, v122);
        v9 = result;
      }

      v11 = *(v9 + 16);
      v54 = *(v9 + 24);
      v55 = v11 + 1;
      if (v11 >= v54 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v11 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v55;
      v56 = v9 + 16 * v11;
      *(v56 + 32) = v10;
      *(v56 + 40) = v8;
      v57 = *v120;
      if (!*v120)
      {
        goto LABEL_132;
      }

      if (v11)
      {
        while (1)
        {
          v10 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v58 = *(v9 + 32);
            v59 = *(v9 + 40);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_53:
            if (v61)
            {
              goto LABEL_111;
            }

            v74 = (v9 + 16 * v55);
            v76 = *v74;
            v75 = v74[1];
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_114;
            }

            v80 = (v9 + 32 + 16 * v10);
            v82 = *v80;
            v81 = v80[1];
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_118;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v10 = v55 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v84 = (v9 + 16 * v55);
          v86 = *v84;
          v85 = v84[1];
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_67:
          if (v79)
          {
            goto LABEL_113;
          }

          v87 = v9 + 16 * v10;
          v89 = *(v87 + 32);
          v88 = *(v87 + 40);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_116;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_74:
          v11 = v10 - 1;
          if (v10 - 1 >= v55)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*v6)
          {
            goto LABEL_129;
          }

          v95 = v9;
          v96 = *(v9 + 32 + 16 * v11);
          v97 = *(v9 + 32 + 16 * v10 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 40 * v96), (*v6 + 40 * *(v9 + 32 + 16 * v10)), *v6 + 40 * v97, v57);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = specialized _ArrayBuffer._consumeAndCreateNew()(v95);
          }

          if (v11 >= *(v95 + 2))
          {
            goto LABEL_108;
          }

          v98 = &v95[16 * v11];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          v137 = v95;
          result = specialized Array.remove(at:)(v10);
          v9 = v137;
          v55 = *(v137 + 16);
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = v9 + 32 + 16 * v55;
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_109;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_110;
        }

        v69 = (v9 + 16 * v55);
        v71 = *v69;
        v70 = v69[1];
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_112;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v73 >= v65)
        {
          v91 = (v9 + 32 + 16 * v10);
          v93 = *v91;
          v92 = v91[1];
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_119;
          }

          if (v60 < v94)
          {
            v10 = v55 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v7 = *(v6 + 1);
      if (v8 >= v7)
      {
        goto LABEL_92;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v10 = v6;
  v6 = *v120;
  if (!*v120)
  {
    goto LABEL_133;
  }

  v11 = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = v11;
  }

  else
  {
LABEL_126:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v111 = v5;
  v137 = result;
  v112 = *(result + 16);
  if (v112 >= 2)
  {
    v11 = 40;
    while (*v10)
    {
      v113 = *(result + 16 * v112);
      v114 = result;
      v5 = *(result + 16 * (v112 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v10 + 40 * v113), (*v10 + 40 * *(result + 16 * (v112 - 1) + 32)), *v10 + 40 * v5, v6);
      if (v111)
      {
      }

      if (v5 < v113)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v114);
      }

      if (v112 - 2 >= *(v114 + 2))
      {
        goto LABEL_121;
      }

      v115 = &v114[16 * v112];
      *v115 = v113;
      *(v115 + 1) = v5;
      v137 = v114;
      specialized Array.remove(at:)(v112 - 1);
      result = v137;
      v112 = *(v137 + 16);
      if (v112 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 40;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 40;
  if (v9 < v11)
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    if (v8 < 40 || v6 >= v5)
    {
      v48 = v7;
      v12 = &v4[40 * v9];
      goto LABEL_44;
    }

    v12 = &v4[40 * v9];
    while (1)
    {
      outlined init with copy of _InnerAppExtensionIdentity(v6, v59);
      outlined init with copy of _InnerAppExtensionIdentity(v4, v56);
      v13 = v60;
      v14 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v15 = (*(v14 + 80))(v13, v14);
      v16 = MEMORY[0x1865F36D0](v15);

      MEMORY[0x1865F4620](&v62, v16);

      v17 = v57;
      v18 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v19 = (*(v18 + 80))(v17, v18);
      v20 = MEMORY[0x1865F36D0](v19);

      MEMORY[0x1865F4620](&v63, v20);

      v21 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if (v21 != -1)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 40;
      if (!v23)
      {
        goto LABEL_10;
      }

LABEL_11:
      v7 += 40;
      if (v4 >= v12 || v6 >= v5)
      {
        v48 = v7;
        goto LABEL_44;
      }
    }

    v22 = v4;
    v23 = v7 == v4;
    v4 += 40;
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_10:
    v24 = *v22;
    v25 = *(v22 + 1);
    *(v7 + 4) = *(v22 + 4);
    *v7 = v24;
    *(v7 + 1) = v25;
    goto LABEL_11;
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 < 40 || v6 <= v7)
  {
    goto LABEL_43;
  }

  v55 = v7;
  v64 = v4;
  do
  {
    v26 = (v6 - 40);
    v27 = (v12 - 40);
    v5 -= 40;
    while (1)
    {
      v32 = v6;
      v33 = v27 + 40;
      v34 = v5 + 40;
      outlined init with copy of _InnerAppExtensionIdentity(v27, v59);
      v35 = v26;
      outlined init with copy of _InnerAppExtensionIdentity(v26, v56);
      v37 = v60;
      v36 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v38 = (*(v36 + 80))(v37, v36);
      v39 = MEMORY[0x1865F36D0](v38);

      MEMORY[0x1865F4620](&v62, v39);

      v40 = v57;
      v41 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v42 = (*(v41 + 80))(v40, v41);
      v43 = MEMORY[0x1865F36D0](v42);

      MEMORY[0x1865F4620](&v63, v43);

      v44 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if (v44 == -1)
      {
        break;
      }

      v6 = v32;
      if (v34 < v33 || v5 >= v33)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        *(v5 + 32) = *(v27 + 32);
        *v5 = v28;
        *(v5 + 16) = v29;
        v4 = v64;
        v26 = v35;
      }

      else
      {
        v4 = v64;
        v26 = v35;
        if (v34 != v33)
        {
          v45 = *v27;
          v46 = *(v27 + 16);
          *(v5 + 32) = *(v27 + 32);
          *v5 = v45;
          *(v5 + 16) = v46;
        }
      }

      v30 = v27 - 40;
      v5 -= 40;
      v31 = v27 > v4;
      v27 -= 40;
      if (!v31)
      {
        v12 = (v30 + 40);
LABEL_43:
        v48 = v6;
        goto LABEL_44;
      }
    }

    v12 = (v27 + 40);
    if (v34 < v32 || v5 >= v32)
    {
      v48 = v35;
      v51 = *v35;
      v52 = *(v35 + 1);
      *(v5 + 32) = *(v35 + 4);
      *v5 = v51;
      *(v5 + 16) = v52;
      v4 = v64;
      v47 = v55;
      if (v12 <= v64)
      {
        break;
      }

      goto LABEL_39;
    }

    v47 = v55;
    v48 = v35;
    if (v34 != v32)
    {
      v49 = *v35;
      v50 = *(v35 + 1);
      *(v5 + 32) = *(v35 + 4);
      *v5 = v49;
      *(v5 + 16) = v50;
    }

    v4 = v64;
    if (v12 <= v64)
    {
      break;
    }

LABEL_39:
    v6 = v48;
  }

  while (v48 > v47);
  v12 = (v27 + 40);
LABEL_44:
  v53 = (v12 - v4) / 40;
  if (v48 != v4 || v48 >= &v4[40 * v53])
  {
    memmove(v48, v4, 40 * v53);
  }

  return 1;
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void specialized Optional<A>.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for NWApplicationID();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  outlined init with copy of UUID?(v1, &v20 - v13, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v14, v11, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    Hasher._combine(_:)(1u);
    if (v11[1])
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v15 = v21;
    specialized Dictionary<>.hash(into:)(a1, v11[2]);
    v16 = v11[3];
    if (v16)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865F42C0](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + 40;
        do
        {

          String.hash(into:)();

          v18 += 16;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined init with copy of UUID?(v11 + *(v8 + 28), v7, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if ((*(v15 + 48))(v7, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v19 = v20;
      (*(v15 + 32))(v20, v7, v3);
      Hasher._combine(_:)(1u);
      NWApplicationID.hash(into:)();
      (*(v15 + 8))(v19, v3);
    }

    if (*(v11 + *(v8 + 32) + 8))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined destroy of _EXExtensionProcessIdentity.Inner(v11, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }
}

void specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1865F42C0](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

unint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static _EXExtensionProcessIdentity.JobConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NWApplicationID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSg_ADtMd, &_s7Network15NWApplicationIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v15)
  {
    goto LABEL_27;
  }

  v33 = v5;
  if (a1[3])
  {
    v34 = a1[3];

    specialized MutableCollection<>.sort(by:)(&v34);
    v16 = v34;
    v17 = a2[3];
    if (!v17)
    {
      if (!v34)
      {
        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_27;
    }
  }

  else
  {
    v17 = a2[3];
    if (!v17)
    {
      goto LABEL_21;
    }

    v16 = 0;
  }

  v34 = v17;

  specialized MutableCollection<>.sort(by:)(&v34);
  if (!v16)
  {
    if (!v34)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v34)
  {
    goto LABEL_20;
  }

  v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v34);

  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v32 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v19 = *(v32 + 28);
  v20 = *(v11 + 48);
  outlined init with copy of UUID?(a1 + v19, v13, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  outlined init with copy of UUID?(a2 + v19, &v13[v20], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v21 = v33;
  v22 = *(v33 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v13, v10, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if (v22(&v13[v20], 1, v4) == 1)
    {
      (*(v21 + 8))(v10, v4);
      goto LABEL_26;
    }

    (*(v21 + 32))(v7, &v13[v20], v4);
    v25 = static NWApplicationID.== infix(_:_:)();
    v26 = *(v21 + 8);
    v26(v7, v4);
    v26(v10, v4);
    outlined destroy of NSObject?(v13, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if (v25)
    {
      goto LABEL_30;
    }

LABEL_27:
    v23 = 0;
    return v23 & 1;
  }

  if (v22(&v13[v20], 1, v4) != 1)
  {
LABEL_26:
    outlined destroy of NSObject?(v13, &_s7Network15NWApplicationIDVSg_ADtMd, &_s7Network15NWApplicationIDVSg_ADtMR);
    goto LABEL_27;
  }

  outlined destroy of NSObject?(v13, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
LABEL_30:
  v27 = *(v32 + 32);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  v23 = (v29 | v31) == 0;
  if (v29 && v31)
  {
    if (*v28 == *v30 && v29 == v31)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v23 & 1;
}

uint64_t specialized static _EXExtensionProcessIdentity.Inner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = (&v47 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for UUID();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_31;
  }

  v21 = a1[4];
  v22 = a2[4];
  if (v21)
  {
    if (!v22 || (a1[3] != a2[3] || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v22)
  {
    goto LABEL_31;
  }

  v23 = a1[6];
  v24 = a2[6];
  if (v23)
  {
    if (!v24 || (a1[5] != a2[5] || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v24)
  {
    goto LABEL_31;
  }

  v49 = v11;
  v47 = v6;
  v48 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v25 = *(v48 + 32);
  v26 = *(v18 + 48);
  outlined init with copy of UUID?(a1 + v25, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50 = v26;
  outlined init with copy of UUID?(a2 + v25, &v20[v26], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = v54;
  v28 = *(v54 + 48);
  if (v28(v20, 1, v12) == 1)
  {
    if (v28(&v20[v50], 1, v12) == 1)
    {
      outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_24;
    }

LABEL_22:
    v29 = &_s10Foundation4UUIDVSg_ADtMd;
    v30 = &_s10Foundation4UUIDVSg_ADtMR;
    v31 = v20;
LABEL_30:
    outlined destroy of NSObject?(v31, v29, v30);
    goto LABEL_31;
  }

  outlined init with copy of UUID?(v20, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(&v20[v50], 1, v12) == 1)
  {
    (*(v27 + 8))(v17, v12);
    goto LABEL_22;
  }

  (*(v27 + 32))(v14, &v20[v50], v12);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v27 + 8);
  v33(v14, v12);
  v33(v17, v12);
  outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v32 & 1) == 0)
  {
LABEL_31:
    v41 = 0;
    return v41 & 1;
  }

LABEL_24:
  v34 = v49;
  v35 = *(v48 + 36);
  v36 = *(v9 + 48);
  outlined init with copy of UUID?(a1 + v35, v49, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v37 = a2 + v35;
  v38 = v34;
  outlined init with copy of UUID?(v37, v34 + v36, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v39 = v53;
  v40 = *(v52 + 48);
  if (v40(v34, 1, v53) != 1)
  {
    v42 = v34;
    v43 = v51;
    outlined init with copy of UUID?(v42, v51, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    if (v40(v38 + v36, 1, v39) != 1)
    {
      v45 = v38 + v36;
      v46 = v47;
      outlined init with take of _EXExtensionProcessIdentity.Inner(v45, v47, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      v41 = specialized static _EXExtensionProcessIdentity.JobConfiguration.== infix(_:_:)(v43, v46);
      outlined destroy of _EXExtensionProcessIdentity.Inner(v46, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      outlined destroy of _EXExtensionProcessIdentity.Inner(v43, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      outlined destroy of NSObject?(v38, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      return v41 & 1;
    }

    outlined destroy of _EXExtensionProcessIdentity.Inner(v43, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    goto LABEL_29;
  }

  if (v40(v34 + v36, 1, v39) != 1)
  {
LABEL_29:
    v29 = &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMd;
    v30 = &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMR;
    v31 = v38;
    goto LABEL_30;
  }

  outlined destroy of NSObject?(v34, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v41 = 1;
  return v41 & 1;
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t specialized _EXExtensionProcessIdentity.JobConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001848C44B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001848C35C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C35A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001848C3650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53616E6F73726570 && a2 == 0xED0000676E697274)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized _EXExtensionProcessIdentity.Inner.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001848C3400 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C3E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEC00000044495555 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4470 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

objc_class *specialized _EXExtensionProcessIdentity.__allocating_init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v9 = objc_allocWithZone(v8);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner, type metadata accessor for _EXExtensionProcessIdentity.Inner, &protocol conformance descriptor for _EXExtensionProcessIdentity.Inner);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v7, v9 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    v11.receiver = v9;
    v11.super_class = v8;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    outlined consume of Data._Representation(a1, a2);
  }

  return v8;
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.JobConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for _EXExtensionProcessIdentity.Inner.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LaunchArguments.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4490 == a2)
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

uint64_t one-time initialization function for prototypeInterfaces()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.prototypeInterfaces = result;
  return result;
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.prototypeInterfaces);
  __swift_project_value_buffer(v0, static Logger.prototypeInterfaces);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for preferences(uint64_t a1)
{
  return one-time initialization function for general(a1, 0x6E65726566657270, 0xEB00000000736563, &static OS_os_log.preferences);
}

{
  return one-time initialization function for general(a1, static Logger.preferences, 0x6E65726566657270, 0xEB00000000736563);
}

id static OS_os_log.general.getter(void *a1, void **a2, uint64_t a3)
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

uint64_t static Logger.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

id specialized static LSApplicationRecord.effective.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 bundleRecordForCurrentProcess];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 containingBundleRecord];

      if (v6)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized AuditToken.entitlement<A>(name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  String.utf8CString.getter();
  v6 = xpc_copy_entitlement_for_token();

  if (!v6)
  {
    return 0;
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _EXLaunchConfiguration.launchPersona.setter(void *a1)
{
  if (a1)
  {
    [a1 copyWithZone_];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXPersona, off_1E6E4D230);
    v3 = swift_dynamicCast();
    v4 = v6;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona) = v4;
}

id _EXDomainAttribute.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RBSProcessIdentity.Attachment.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RBSProcessIdentity.Attachment.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RBSProcessIdentity.Attachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RBSProcessIdentity.Attachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t specialized RBSProcessIdentity.Attachment.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001848C35E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C35A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001848C35C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001848C3650 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id NSError.init(code:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BA260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, String)(inited + 32);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = @"com.apple.extensionKit.errorDomain";
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithDomain:v10 code:a1 userInfo:isa];

  return v12;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19ExtensionFoundation03AppC5PointV7MonitorC8IdentityV_AG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v24 = v3 + 64;
    v29 = v3;

    v4 = (a1 + 40);
    while (1)
    {
      v25 = v1;
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v10 = *(v4 + 1);
      v11 = *(v4 + 2);
      v26 = *(v4 + 4);
      v27 = *(v4 + 3);
      v12 = *(v4 + 5);
      v13 = v7 ? 256 : 0;
      v28 = v13 | v6;
      v14 = v4[2] ? 0x10000 : 0;
      v15 = v4[3] ? 0x1000000 : 0;
      v16 = v14 | v15;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v28 | v16);
      if (v18)
      {
        break;
      }

      *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = v29[6] + 16 * result;
      *v19 = v5;
      *(v19 + 8) = v6;
      *(v19 + 9) = v7;
      *(v19 + 10) = v8;
      *(v19 + 11) = v9;
      v20 = (v29[7] + 40 * result);
      *v20 = v10;
      v20[1] = v11;
      v20[2] = v27;
      v20[3] = v26;
      v20[4] = v12;
      v21 = v29[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v4 += 56;
      v29[2] = v23;
      v1 = v25 - 1;
      if (v25 == 1)
      {

        return v29;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMd, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of UUID?(v9, v5, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMd, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
      result = outlined init with take of _EXNSExtensionShim.Implementation.Request(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _ScopeRestriction.value.getter@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = MEMORY[0x1E69E6158];
      *a3 = 1701736302;
      a3[1] = 0xE400000000000000;
    }

    else
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BA260;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000001848C4940;
      *(inited + 48) = v3;
      *(inited + 56) = a2;
      outlined copy of _ScopeRestriction(v3, a2);
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, String)(inited + 32);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      a3[3] = result;
      *a3 = v7;
    }
  }

  else
  {
    a3[3] = MEMORY[0x1E69E6158];
    *a3 = 0x746163696C707061;
    a3[1] = 0xEB000000006E6F69;
  }

  return result;
}

uint64_t AppExtensionPoint.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppExtensionPoint.init(extensionPointRecords:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    v27 = a2;
    if (!i)
    {
      goto LABEL_13;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    v6 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1865F3F40](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v25 = v6;
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v6 = v25;
      }

      ++v7;
      *(v6 + 2) = v15 + 1;
      v16 = &v6[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }

    while (i != v7);

    v2 = v24;
LABEL_13:
    v25 = v6;

    specialized MutableCollection<>.sort(by:)(&v25);
    i = v2;
    if (v2)
    {
      goto LABEL_23;
    }

    a2 = v25;
    v17 = 0xE000000000000000;
    v25 = 0;
    v26 = 0xE000000000000000;
    v18 = a2[2];
    if (!v18)
    {
LABEL_19:

      v23 = v27;
      *v27 = v18;
      v23[1] = v17;
      v23[2] = a1;
      v23[3] = 0;
      return result;
    }

    v19 = 0;
    v20 = a2 + 5;
    while (v19 < a2[2])
    {
      ++v19;
      v2 = *(v20 - 1);
      v21 = *v20;

      MEMORY[0x1865F37A0](v2, v21);

      v20 += 2;
      if (v18 == v19)
      {
        v18 = v25;
        v17 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

void static AppExtensionPoint.Definition.buildBlock<each A>(_:_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
  v12 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

LABEL_12:
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v31 = swift_allocError();
    *v32 = xmmword_1848BC9C0;
    swift_willThrow();
LABEL_16:
    a5[3] = v31;
    swift_getErrorValue();
    v40 = v31;
    *a5 = Error.localizedDescription.getter();
    a5[1] = v41;

    a5[2] = MEMORY[0x1E69E7CC0];
    return;
  }

  v15 = v14;
  v16 = [v14 bundleIdentifier];
  if (!v16)
  {
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v31 = swift_allocError();
    *v33 = xmmword_1848BC9B0;
    swift_willThrow();

    goto LABEL_16;
  }

  v44 = v11;
  v45 = v10;
  v46 = v9;
  v47 = v15;
  v48 = a5;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v19;
  v43 = v18;

  v21 = 0;
  v22 = 0;
  if (a3)
  {
    v23 = a4 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      MEMORY[0x1EEE9AC00](v20);
      (*(v25 + 16))(&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = swift_dynamicCast();
      if (v20)
      {

        v21 = v49;
        v22 = v50;
      }

      a2 += 8;
      v23 += 8;
      --a3;
    }

    while (a3);
  }

  v49 = v43;
  v50 = v42;
  MEMORY[0x1865F37A0](46, 0xE100000000000000);
  v26 = StaticString.description.getter();
  MEMORY[0x1865F37A0](v26);

  v27 = v50;
  v28 = v47;
  if (v22)
  {

    v49 = v21;
    v50 = v22;
    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    v29 = StaticString.description.getter();
    MEMORY[0x1865F37A0](v29);

    v30 = v49;
    v27 = v50;
  }

  else
  {
    v30 = v49;
  }

  v34 = v48;
  active_platform = dyld_get_active_platform();
  objc_allocWithZone(MEMORY[0x1E6963668]);
  v36 = v13;
  v37 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(v30, v27, active_platform, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1848BBBA0;
  *(v38 + 32) = v37;
  v39 = v37;
  AppExtensionPoint.init(extensionPointRecords:)(v38, v34);
}

void static AppExtensionPoint.Bind.buildBlock(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
  v5 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v5)
  {
    goto LABEL_10;
  }

  v21 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_10:
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v15 = swift_allocError();
    *v17 = xmmword_1848BC9E0;
    swift_willThrow();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 extensionPointRecord];
  v9 = [v8 identifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == v3 && v12 == v4)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
      v15 = swift_allocError();
      *v16 = xmmword_1848BC9D0;
      swift_willThrow();

LABEL_13:
      a2[3] = v15;
      swift_getErrorValue();
      v19 = v15;
      *a2 = Error.localizedDescription.getter();
      a2[1] = v20;

      a2[2] = MEMORY[0x1E69E7CC0];
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1848BBBA0;
  *(v18 + 32) = [v7 extensionPointRecord];
  AppExtensionPoint.init(extensionPointRecords:)(v18, a2);
}

uint64_t static AppExtensionPoint.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppExtensionPoint.hash(into:)(uint64_t a1)
{

  String.hash(into:)();
}

double AppExtensionPoint.init(identifier:)@<D0>(uint64_t a4@<X8>)
{
  v6 = StaticString.description.getter();
  v8 = v7;
  active_platform = dyld_get_active_platform();
  AppExtensionPoint.init(identifier:platform:)(v6, v8, active_platform, &v12);
  if (!v4)
  {
    v11 = v14;
    *a4 = v12;
    result = *&v13;
    *(a4 + 8) = v13;
    *(a4 + 24) = v11;
  }

  return result;
}

void AppExtensionPoint.init(identifier:platform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = specialized static LSApplicationRecord.effective.getter();
  if (v4)
  {

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E6963668]);
  v12 = v10;

  v16 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(a1, a2, a3, v10);

  if (v16)
  {

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1848BBBA0;
    *(v17 + 32) = v16;
    v18 = v16;
    AppExtensionPoint.init(extensionPointRecords:)(v17, &v20);

    v19 = v22;
    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 24) = v19;
    return;
  }

  if (v10 && (v13._countAndFlagsBits = 0x6C7070612E6D6F63, v13._object = 0xEA00000000002E65, String.hasPrefix(_:)(v13)))
  {
    v14 = objc_allocWithZone(MEMORY[0x1E6963668]);
    v15 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(a1, a2, a3, 0);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-10814 userInfo:0];
  swift_willThrow();
}

Swift::Int AppExtensionPoint.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Identifiable.id.getter in conformance AppExtensionPoint@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppExtensionPoint()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppExtensionPoint(uint64_t a1)
{

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionPoint(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppExtensionPoint(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppExtensionPoint.Name.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t AppExtensionPoint.Identifier.init(_:)@<X0>(uint64_t *a4@<X8>)
{
  result = StaticString.description.getter();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t AppExtensionPoint.Identifier.init(host:name:)@<X0>(uint64_t *a7@<X8>)
{
  v11 = StaticString.description.getter();
  v12 = v8;
  MEMORY[0x1865F37A0](46, 0xE100000000000000);
  v9 = StaticString.description.getter();
  MEMORY[0x1865F37A0](v9);

  *a7 = v11;
  a7[1] = v12;
  return result;
}

__n128 AppExtensionPoint.Scope.init(restriction:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  a2[1].n128_u8[1] = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error);
  }

  return result;
}

id specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1865F36D0](a1);

  v12[0] = 0;
  v8 = [v4 initWithIdentifier:v7 platform:a3 parentAppRecord:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint and conformance AppExtensionPoint()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19ExtensionFoundation03AppA5PointV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for AppExtensionPoint.Error(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Definition(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppExtensionPoint.Definition(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Name(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Name(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Identifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Scope(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Scope(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Scope.Restriction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t getEnumTag for AppExtensionPoint.Scope.Restriction(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AppExtensionPoint.Scope.Restriction(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.UserInterface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.UserInterface(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double outlined copy of _ScopeRestriction(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionAvailability.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____EXExtensionAvailability_enabledCount);
  v4 = MEMORY[0x1865F36D0](0x4364656C62616E65, 0xEC000000746E756FLL);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____EXExtensionAvailability_disabledCount);
  v6 = MEMORY[0x1865F36D0](0x64656C6261736964, 0xED0000746E756F43);
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount);
  v8 = MEMORY[0x1865F36D0](0x657463656C656E75, 0xEE00746E756F4364);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}