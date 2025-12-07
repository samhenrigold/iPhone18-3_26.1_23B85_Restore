uint64_t static LocalLSDatabaseObserver.update(identity:host:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v55 = *(a1 + 9);
  log = *(a1 + 8);
  LODWORD(v54) = *(a1 + 10);
  LODWORD(v53) = *(a1 + 11);
  v63 = MEMORY[0x1E69E7CD0];
  specialized Sequence.flatMap<A>(_:)(v11);
  v13 = v12;
  v14 = specialized Sequence.flatMap<A>(_:)(v12);

  *v59 = a2;
  *&v59[8] = a3;
  *&v59[16] = a4;
  *&v59[24] = a5;
  v60 = v14;
  if (specialized static LocalLSDatabaseObserver.canAdd(extensionPointRecords:host:)(v14, a2, a3, a4, a5))
  {
    if (v14 >> 62)
    {
LABEL_36:
      v15 = __CocoaSet.count.getter();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        if (v15 < 1)
        {
          __break(1u);
LABEL_41:
          v32 = __CocoaSet.count.getter();
          goto LABEL_20;
        }

        v51 = a6;
        v16 = 0;
        v17 = 0;
        a6 = 0;
        v52 = v14 & 0xC000000000000001;
        do
        {
          v14 = v15;
          if (v52)
          {
            v18 = MEMORY[0x1865F3F40](a6, v60);
          }

          else
          {
            v18 = *(v60 + 8 * a6 + 32);
          }

          v13 = v18;
          LOBYTE(atoken.val[0]) = log;
          BYTE1(atoken.val[0]) = v55;
          BYTE2(atoken.val[0]) = v54;
          HIBYTE(atoken.val[0]) = v53;
          v19 = specialized static LocalLSDatabaseObserver.results(for:host:options:)(v18, *v59, *&v59[8], *&v59[16], *&v59[24], &atoken);
          v21 = v20;
          v23 = v22;
          a5 = &v63;
          specialized Set.formUnion<A>(_:)(v19);

          v24 = __OFADD__(v17, v21);
          v17 += v21;
          if (v24)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v24 = __OFADD__(v16, v23);
          v16 += v23;
          if (v24)
          {
            goto LABEL_35;
          }

          a6 = (a6 + 1);
          v15 = v14;
        }

        while (v14 != a6);

        v25 = v63;
        a6 = v51;
        v26 = *(v63 + 16);
        if (!v26)
        {
          goto LABEL_38;
        }

        goto LABEL_13;
      }
    }

    v16 = 0;
    v17 = 0;
    v25 = MEMORY[0x1E69E7CD0];
    v26 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v26)
    {
LABEL_38:

      v27 = MEMORY[0x1E69E7CC0];
      goto LABEL_39;
    }

LABEL_13:
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation03AppH8IdentityV_Tt1g5(v26, 0);
    v28 = specialized Sequence._copySequenceContents(initializing:)(&atoken, (v27 + 4), v26, v25);
    result = outlined consume of [String : Any].Iterator._Variant(*atoken.val);
    if (v28 != v26)
    {
      __break(1u);
      goto LABEL_15;
    }

LABEL_39:
    *a6 = v27;
    a6[1] = v17;
    a6[2] = v16;
    return result;
  }

LABEL_15:
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.monitor);

  v13 = Logger.logObject.getter();
  LOBYTE(a5) = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v13, a5))
  {

LABEL_33:

    v49 = objc_opt_self();
    v50 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C2B00);
    [v49 _EX_errorWithCode_description_];

    return swift_willThrow();
  }

  v31 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v62 = v53;
  v54 = v31;
  *v31 = 136446466;
  if (v14 >> 62)
  {
    goto LABEL_41;
  }

  v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v56 = a5;
  loga = v13;
  if (!v32)
  {

    v34 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v45 = MEMORY[0x1865F38E0](v34, MEMORY[0x1E69E6158]);
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v62);

    *(v54 + 1) = v48;
    *(v54 + 6) = 1024;
    atoken = *v59;
    *(v54 + 14) = audit_token_to_pid(&atoken);
    v13 = loga;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x1865F56C0](v53, -1, -1);
    MEMORY[0x1865F56C0](v54, -1, -1);
    goto LABEL_33;
  }

  *atoken.val = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = *atoken.val;
    v35 = v14 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        v36 = MEMORY[0x1865F3F40](v33, v14);
      }

      else
      {
        v36 = *(v14 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = [v36 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      *atoken.val = v34;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v34 = *atoken.val;
      }

      ++v33;
      *(v34 + 16) = v43 + 1;
      v44 = v34 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v14 = v60;
    }

    while (v32 != v33);

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LocalLSDatabaseObserver.makeSequence(for:host:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v44 = a7;
  v45 = a8;
  v38 = a1;
  v39 = a5;
  v37 = a4;
  v42 = a10;
  v43 = a11;
  v41 = a9;
  v14 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v15 = (v14 - 8);
  v40 = *(v14 - 8);
  v16 = *(v40 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v46 = a2;
  v47 = a3;
  v48 = v37;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
  v26 = v38;
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v22 + 8))(v24, v21);
  (*(*(v25 - 8) + 16))(&v20[v15[9]], v26, v25);
  v27 = v39;

  UUID.init()();
  v28 = &v20[v15[7]];
  *v28 = v27;
  v28[8] = a6 & 1;
  v28[9] = BYTE1(a6) & 1;
  v28[10] = BYTE2(a6) & 1;
  v28[11] = HIBYTE(a6) & 1;
  v29 = &v20[v15[8]];
  v30 = v45;
  *v29 = v44;
  v29[1] = v30;
  v31 = v42;
  v29[2] = v41;
  v29[3] = v31;
  v32 = v43;
  LocalLSDatabaseObserver.addObserver(_:)(v20);
  outlined init with copy of LocalLSDatabaseObserver.Observer(v20, v18);
  v33 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  outlined init with take of LocalLSDatabaseObserver.Observer(v18, v34 + v33);
  v35 = v32;
  AsyncThrowingStream.Continuation.onTermination.setter();
  return outlined destroy of LocalLSDatabaseObserver.Observer(v20);
}

void LocalLSDatabaseObserver.addObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = *(v2 + OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observersLock);
  os_unfair_lock_lock(v10 + 4);
  v11 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observers;
  swift_beginAccess();
  v12 = *(v2 + v11);

  v13 = specialized Set.contains(_:)(a1, v12);

  if ((v13 & 1) == 0)
  {
    outlined init with copy of LocalLSDatabaseObserver.Observer(a1, v7);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v9, v7);
    outlined destroy of LocalLSDatabaseObserver.Observer(v9);
    swift_endAccess();
    if (*(*(v2 + v11) + 16) == 1)
    {
      LocalLSDatabaseObserver.startObservingLS()();
    }
  }

  os_unfair_lock_unlock(v10 + 4);
}

void LocalLSDatabaseObserver.removeObserver(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation23LocalLSDatabaseObserverC0E0VSgMd, &_s19ExtensionFoundation23LocalLSDatabaseObserverC0E0VSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3];
  v5 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observersLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observers;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16) == 1)
  {
    LocalLSDatabaseObserver.stopObserviceLS()();
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v4);
  outlined destroy of NSObject?(v4, &_s19ExtensionFoundation23LocalLSDatabaseObserverC0E0VSgMd, &_s19ExtensionFoundation23LocalLSDatabaseObserverC0E0VSgMR);
  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
}

void closure #1 in LocalLSDatabaseObserver.update(observers:)(uint64_t a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - v3;
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v37 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v30 - v8;
  v9 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observers;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v31 = (v2 + 8);
  v38 = v10;

  v16 = 0;
  v34 = v4;
  v35 = v11;
  while (v14)
  {
    v18 = v16;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v36;
    outlined init with copy of LocalLSDatabaseObserver.Observer(*(v38 + 48) + *(v37 + 72) * (v19 | (v18 << 6)), v36);
    outlined init with take of LocalLSDatabaseObserver.Observer(v20, v7);
    type metadata accessor for LocalLSDatabaseObserver();
    v21 = *(v4 + 24);
    v22 = &v7[*(v4 + 20)];
    v23 = *v22;
    v24 = v22[9];
    v40 = v22[8];
    v25 = v22[10];
    LOBYTE(v22) = v22[11];
    v39 = v23;
    v41 = v24;
    v42 = v25;
    v43 = v22;
    v27 = *&v7[v21];
    v26 = *&v7[v21 + 8];
    v28 = *&v7[v21 + 16];
    v29 = *&v7[v21 + 24];

    static LocalLSDatabaseObserver.update(identity:host:)(&v39, v27, v26, v28, v29, &v44);

    v4 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
    v17 = v32;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*v31)(v17, v33);
    outlined destroy of LocalLSDatabaseObserver.Observer(v7);
    v16 = v18;
    v11 = v35;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t evaluate #1 (record:) in static LocalLSDatabaseObserver.canAdd(extensionPointRecords:host:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *(&v94 + 1) = a3;
  *&v94 = a2;
  v103 = *MEMORY[0x1E69E9840];
  v7 = &selRef_setService_;
  if ([a1 extensionPointType] != 2)
  {
    if (one-time initialization token for monitor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.monitor);
    v21 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v101 = v13;
    *v12 = 136446210;
    v22 = [v21 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v101);
    v7 = &selRef_setService_;

    *(v12 + 4) = v26;
    v19 = "Skipping host app record lookup for system extension point: %{public}s";
    goto LABEL_11;
  }

  v97 = [a1 parentAppRecord];
  if (!v97)
  {
    if (one-time initialization token for monitor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.monitor);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v101 = v13;
    *v12 = 136446210;
    v14 = [v9 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v101);
    v7 = &selRef_setService_;

    *(v12 + 4) = v18;
    v19 = "Extension point:  %{public}s has no parent app.";
LABEL_11:
    _os_log_impl(&dword_1847D1000, v10, v11, v19, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865F56C0](v13, -1, -1);
    MEMORY[0x1865F56C0](v12, -1, -1);
LABEL_12:

    v97 = 0;
  }

  if ([a1 v7[11]] && objc_msgSend(a1, v7[11]) != 1)
  {
    v31 = [a1 SDKDictionary];
    v32 = MEMORY[0x1865F36D0](0xD00000000000001ALL, 0x80000001848C2850);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    v33 = [v31 objectForKey:v32 ofClass:swift_getObjCClassFromMetadata()];

    if (v33)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
    }

    v101 = v99;
    v102 = v100;
    if (*(&v100 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
LABEL_35:
        v44 = v98;
LABEL_38:
        v96 = v44;
        goto LABEL_39;
      }
    }

    else
    {
      outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);
    }

    v44 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v27 = [a1 SDKDictionary];
  v28 = MEMORY[0x1865F36D0](0xD00000000000001ALL, 0x80000001848C2850);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [v27 objectForKey:v28 ofClass:ObjCClassFromMetadata];

  if (v30)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);
  }

  v34 = [a1 SDKDictionary];
  v35 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C2C00);
  v36 = [v34 objectForKey:v35 ofClass:ObjCClassFromMetadata];

  if (v36)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BA260;
  *(inited + 32) = 0xD000000000000037;
  *(inited + 40) = 0x80000001848C2C20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1848BA260;
  v39 = [a1 identifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 48) = isa;
  v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);
LABEL_39:
  v45 = HIDWORD(a5);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v93 = a5;
  v46 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v94, *(&v94 + 1), a4, a5);
  v52 = v46;
  if (v46)
  {
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (v53)
    {
      v54 = v53;
      v55 = v52;
      v56 = [v54 containingBundleRecord];
      if (v56)
      {

        v52 = [v54 containingBundleRecord];
      }
    }
  }

  v47 = v52 == 0;
  if (v97)
  {
    if (!v52)
    {
      if ([a1 extensionPointType] == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v48 = v97;
    v49 = v52;
    v47 = static NSObject.== infix(_:_:)();
  }

  if ([a1 extensionPointType] == 2)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (*(specialized _dictionaryUpCast<A, B, C, D>(_:)(v96) + 16))
    {
      v101 = v94;
      *&v102 = a4;
      *(&v102 + 1) = __PAIR64__(v45, v93);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;
      HasRequiredEntitlements = _EXAuditTokenHasRequiredEntitlements(&v101, v50, 0);

      if ((HasRequiredEntitlements & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
    }

    if (one-time initialization token for monitor != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.monitor);
    v73 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_69;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v101 = v65;
    *v64 = 136446210;
    v74 = [v73 identifier];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v101);

    *(v64 + 4) = v78;
    v71 = "Extension point '%{public}s' is declared by the Host, allowing discovery.";
    goto LABEL_68;
  }

LABEL_55:
  if (*(specialized _dictionaryUpCast<A, B, C, D>(_:)(v96) + 16))
  {
    v101 = v94;
    *&v102 = a4;
    *(&v102 + 1) = __PAIR64__(v45, v93);
    v58 = Dictionary._bridgeToObjectiveC()().super.isa;
    v59 = _EXAuditTokenHasRequiredEntitlements(&v101, v58, 0);

    if (!v59)
    {

      v57 = 0;
LABEL_74:
      v86 = v52;
      v52 = v97;
      goto LABEL_87;
    }
  }

  else
  {
  }

  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.monitor);
  v61 = a1;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v62, v63))
  {
    goto LABEL_69;
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  *&v101 = v65;
  *v64 = 136446210;
  v66 = [v61 identifier];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v101);

  *(v64 + 4) = v70;
  v71 = "Extension point '%{public}s' requires no entitlements.";
LABEL_68:
  _os_log_impl(&dword_1847D1000, v62, v63, v71, v64, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  MEMORY[0x1865F56C0](v65, -1, -1);
  MEMORY[0x1865F56C0](v64, -1, -1);
LABEL_69:

  v79 = [a1 SDKDictionary];
  v80 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C27B0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v81 = [v79 objectForKey:v80 ofClass:swift_getObjCClassFromMetadata()];

  if (v81)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v82 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyp_Tt1g5(&v101, 0, 0);
  v84 = v82;
  v85 = v83;
  if (v83 < 2)
  {
    outlined consume of _ScopeRestriction(v82, v83);

    v57 = 1;
    goto LABEL_74;
  }

  v87 = specialized AuditToken.entitlement<A>(name:)(0xD000000000000025, 0x80000001848C2BD0, v94, *(&v94 + 1), a4, v93);
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = MEMORY[0x1E69E7CC0];
  }

  v89 = (v88 + 40);
  v90 = *(v88 + 16) + 1;
  while (--v90)
  {
    if (v84 != *(v89 - 1) || v85 != *v89)
    {
      v89 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    outlined consume of _ScopeRestriction(v84, v85);

    v57 = 1;
    goto LABEL_86;
  }

  outlined consume of _ScopeRestriction(v84, v85);

LABEL_54:

  v57 = 0;
LABEL_86:
  v86 = v97;
LABEL_87:

  return v57;
}

void closure #2 in static LocalLSDatabaseObserver.update(identity:host:)(void **a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v20 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  v3 = *(static Platform.available + 16);
  if (v3)
  {
    v4 = (static Platform.available + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v4++;
      v8 = v9;
      v10 = [v2 identifier];
      if (!v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x1865F36D0](v11);
      }

      v12 = dword_1848BB580[v8];
      v13 = [v2 parentAppRecord];
      v14 = objc_allocWithZone(MEMORY[0x1E6963668]);
      v19 = 0;
      v15 = [v14 initWithIdentifier:v10 platform:v12 parentAppRecord:v13 error:&v19];

      if (v15)
      {
        v16 = v19;

        v17 = v15;
        MEMORY[0x1865F38A0]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v20;
      }

      else
      {
        v6 = v19;
        v7 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *v18 = v5;
}

Swift::Void __swiftcall LocalLSDatabaseObserver.startObservingLS()()
{
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.monitor);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1847D1000, v3, v4, "%{public}@ LS database observing started.", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  aBlock[4] = partial apply for closure #1 in LocalLSDatabaseObserver.startObservingLS();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  v12 = [v8 addChangeObserver_];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_settingsStoreToken;
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, &v11[v13]);
  swift_endAccess();
  [*&v11[OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_lsObserver] startObserving];
}

uint64_t closure #1 in LocalLSDatabaseObserver.startObservingLS()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observersLock);
  os_unfair_lock_lock(v2 + 4);
  v3 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observers;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v11 = v2;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5(v5, 0);
  v7 = *(type metadata accessor for LocalLSDatabaseObserver.Observer(0) - 8);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v12, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
  v9 = v12;

  result = outlined consume of [String : Any].Iterator._Variant(v9);
  if (v8 == v5)
  {
    v2 = v11;
LABEL_4:
    os_unfair_lock_unlock(v2 + 4);
    specialized LocalLSDatabaseObserver.update(observers:)();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LocalLSDatabaseObserver.stopObserviceLS()()
{
  [*&v0[OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_lsObserver] stopObserving];
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.monitor);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1847D1000, v3, v4, "%{public}@ LS database observing stopped", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_settingsStoreToken;
  swift_beginAccess();
  outlined init with copy of Any?(&v2[v8], &v10);
  if (v11)
  {
    outlined init with take of Any(&v10, &v12);
    v9 = [objc_opt_self() sharedInstance];
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    [v9 removeChangeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  }

  else
  {
    outlined destroy of NSObject?(&v10, &_sypSgMd, &_sypSgMR);
  }
}

id LocalLSDatabaseObserver.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocalLSDatabaseObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized Array.append<A>(contentsOf:)(int64_t a1, uint64_t *a2)
{
  v5 = String.count.getter();
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 3) >> 1, v11 < v8))
  {
    if (v7 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v6);
    v11 = *(v6 + 3) >> 1;
  }

  v13 = *(v6 + 2);
  v14 = v11 - v13;
  v15 = specialized Sequence._copySequenceContents(initializing:)(&v31, &v6[16 * v13 + 32], v11 - v13, a1, a2);
  if (v15 < v9)
  {
    goto LABEL_15;
  }

  if (v15 >= 1)
  {
    v16 = *(v6 + 2);
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
      __break(1u);
LABEL_29:
      *(v6 + 2) = a1;
LABEL_30:
      v2 = a2;
      goto LABEL_13;
    }

    *(v6 + 2) = v18;
  }

  if (v15 == v14)
  {
LABEL_16:
    a2 = v2;
    a1 = *(v6 + 2);
    v22 = String.Iterator.next()();
    object = v22.value._object;
    countAndFlagsBits = v22.value._countAndFlagsBits;
    if (v22.value._object)
    {
      while (1)
      {
        v23 = *(v6 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < a1 + 1)
        {
          v28 = countAndFlagsBits;
          v29 = object;
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a1 + 1, 1, v6);
          object = v29;
          v6 = v30;
          countAndFlagsBits = v28;
          v24 = *(v6 + 3) >> 1;
        }

        if (a1 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a1;
        }

        v26 = &v6[16 * a1 + 40];
        while (v25 != a1)
        {
          *(v26 - 1) = countAndFlagsBits;
          *v26 = object;
          ++a1;
          v27 = String.Iterator.next()();
          object = v27.value._object;
          countAndFlagsBits = v27.value._countAndFlagsBits;
          v26 += 16;
          if (!v27.value._object)
          {
            goto LABEL_29;
          }
        }

        *(v6 + 2) = v25;
        a1 = v25;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ19ExtensionFoundation03AppB5PointV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_15:
    v13 = (*(result + 48) + 32 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[3];
    Hasher.init(_seed:)();

    v26 = v16;
    v17 = v16;
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 32 * v20);
      v23 = *v22 == v15 && v22[1] == v14;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v24;
    v7 = v25;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

double partial apply for closure #1 in AppExtensionPoint.Monitor.identity.getter@<D0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in AppExtensionPoint.Monitor.identity.getter(a1);
}

{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 34);
  v5 = *(v1 + 35);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation24_EXServiceClientObserver_pGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation24_EXServiceClientObserver_pGMR, &_s19ExtensionFoundation24_EXServiceClientObserver_pMd, &_s19ExtensionFoundation24_EXServiceClientObserver_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo22LSPersistentIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo22LSPersistentIdentifieraGMR, type metadata accessor for LSPersistentIdentifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo12_EXSceneRoleaGMd, &_ss23_ContiguousArrayStorageCySo12_EXSceneRoleaGMR, type metadata accessor for _EXSceneRole);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMR, &type metadata for AppExtensionIdentity);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD8IdentityVGMR, &type metadata for _AppExtensionIdentity);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation22_EXActiveQueryObserver_pGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation22_EXActiveQueryObserver_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation22_EXActiveQueryObserver_pMd, &_s19ExtensionFoundation22_EXActiveQueryObserver_pMR);
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 11) | (32 * v10)) + 24);
    Hasher.init(_seed:)();

    v12 = v11;
    String.hash(into:)();
    v13 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1865F42C0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1865F3F40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1865F3F40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = String.Iterator.next()();
      if (!v11.value._object)
      {
        a4 = v13;
        a5 = v14;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      if (v8 == v10)
      {
        break;
      }

      ++v9;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v13;
    a5 = v14;
LABEL_15:
    v7 = v15;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t specialized static AppExtensionPoint.Monitor.Identity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  if (_sSh2eeoiySbShyxG_ABtFZ19ExtensionFoundation03AppB5PointV_Tt1g5(*a1, *a2))
  {
    v10 = (v2 ^ v6 | v3 ^ v7 | v4 ^ v8 | v5 ^ v9) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC19ExtensionFoundation03AppE5PointV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (2)
    {
      v6 = (v23 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      Hasher.init(_seed:)();

      v11 = v9;
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 32 * i);
        if (*v16 != v8 || v16[1] != v7)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      v18 = (*(v3 + 48) + 32 * i);
      *v18 = v8;
      v18[1] = v7;
      v18[2] = v10;
      v18[3] = v9;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (!v20)
      {
        *(v3 + 16) = v21;
LABEL_4:
        if (++v4 == v22)
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint.Monitor.Options and conformance AppExtensionPoint.Monitor.Options()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Options and conformance AppExtensionPoint.Monitor.Options;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Options and conformance AppExtensionPoint.Monitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Options and conformance AppExtensionPoint.Monitor.Options);
  }

  return result;
}

uint64_t type metadata completion function for AppExtensionPoint.Monitor(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t dispatch thunk of AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 136) + **(v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Monitor.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Monitor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Monitor.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Monitor.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of AppExtensionPoint.Monitor.Source.makeSequence(for:host:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, v8, a3);
}

void type metadata completion function for LocalLSDatabaseObserver.Observer(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation);
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Monitor.Identity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Monitor.Identity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint.Monitor.Identity and conformance AppExtensionPoint.Monitor.Identity()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Identity and conformance AppExtensionPoint.Monitor.Identity;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Identity and conformance AppExtensionPoint.Monitor.Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.Identity and conformance AppExtensionPoint.Monitor.Identity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined consume of Set<AppExtensionPoint>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

BOOL specialized static LocalLSDatabaseObserver.canAdd(extensionPointRecords:host:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (AuditToken.canHostOrDiscoverAnyExtension.getter(a2, a3, a4, a5))
  {
    return 1;
  }

  if (!(a1 >> 62))
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (one-time initialization token for monitor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.monitor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1847D1000, v16, v17, "Invalid extension points", v18, 2u);
      MEMORY[0x1865F56C0](v18, -1, -1);
    }

    return 0;
  }

LABEL_16:
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_18;
  }

  v10 = __CocoaSet.count.getter();
LABEL_5:
  v11 = 0;
  do
  {
    v9 = v10 != v11;
    if (v10 == v11)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1865F3F40](v11, a1);
    }

    else
    {
      if (v11 >= *(v20 + 16))
      {
        goto LABEL_15;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = evaluate #1 (record:) in static LocalLSDatabaseObserver.canAdd(extensionPointRecords:host:)(v12, a2, a3, a4, a5);

    ++v11;
  }

  while ((v14 & 1) == 0);
  return v9;
}

void *specialized static LocalLSDatabaseObserver.results(for:host:options:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 *a6)
{
  v143 = a5;
  *&v144 = a1;
  v158 = *MEMORY[0x1E69E9840];
  v130 = type metadata accessor for NSFastEnumerationIterator();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a6;
  v13 = a6[1];
  v140 = a6[2];
  v14 = a6[3];
  v146 = MEMORY[0x1E69E7CD0];
  if (v12 == 1)
  {
    if (v13)
    {
      v15 = 0xA000000000000000;
    }

    else
    {
      v15 = 0x8000000000000000;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v15 |= 0x10uLL;
    goto LABEL_12;
  }

  if (v13)
  {
    v15 = 0x2000000000000000;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_12:
  v137 = HIDWORD(a2);
  v136 = HIDWORD(a3);
  v135 = HIDWORD(a4);
  v134 = HIDWORD(v143);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v145 = *static AuditToken.current;
  v16 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v138 = a2;
  v17 = a2;
  v139 = a3;
  v124 = v16;
  v18 = 0;
  v19 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v17, a3, a4, v143);
  v20 = &OBJC_IVAR____EXExtensionPoint__variant;
  v133 = a4;
  p_atoken = v19;
  objc_opt_self();
  v142 = swift_dynamicCastObjCClass();
  if (!v142)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = [v23 containingBundleRecord];
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v142 = swift_dynamicCastObjCClass();
        if (v142)
        {
          goto LABEL_21;
        }
      }
    }

    v142 = 0;
    goto LABEL_21;
  }

  v22 = p_atoken;
LABEL_21:
  if (one-time initialization token for monitor != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.monitor);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v141 = v15;
      v121 = v18;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *atoken.val = v30;
      *v29 = 136446210;
      v31 = v142;
      if (v142 && (v31 = [v142 bundleIdentifier]) != 0)
      {
        v32 = v20;
        v33 = v31;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v20 = v32;
        v31 = v34;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v36, &atoken);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_1847D1000, v27, v28, "Resolved host app record: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x1865F56C0](v30, -1, -1);
      MEMORY[0x1865F56C0](v29, -1, -1);

      v18 = v121;
      v15 = v141;
    }

    else
    {
    }

    v121 = v18;
    if (*(v20 + 3736) != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    v39 = __swift_project_value_buffer(v38, static Logger.monitor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      p_atoken = &atoken;
      v42 = swift_slowAlloc();
      *v42 = 67109376;
      atoken = v145;
      *(v42 + 4) = audit_token_to_pid(&atoken);
      *(v42 + 8) = 1024;
      atoken.val[0] = v138;
      atoken.val[1] = v137;
      atoken.val[2] = v139;
      atoken.val[3] = v136;
      atoken.val[4] = v133;
      atoken.val[5] = v135;
      atoken.val[6] = v143;
      atoken.val[7] = v134;
      *(v42 + 10) = audit_token_to_pid(&atoken);
      _os_log_impl(&dword_1847D1000, v40, v41, "Process %d) enumeration extensions for process %d)", v42, 0xEu);
      MEMORY[0x1865F56C0](v42, -1, -1);
    }

    v128 = [objc_opt_self() enumeratorWithExtensionPointRecord:v144 options:v15];
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    v44 = v140;
    if (v157)
    {
      break;
    }

LABEL_103:
    v132 = 0;
    v131 = 0;
LABEL_104:
    (*(v129 + 8))(v11, v130);
    v114 = v146;
    v115 = *(v146 + 16);
    if (!v115)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v116 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation03AppH8IdentityV_Tt1g5(*(v146 + 16), 0);
    v18 = specialized Sequence._copySequenceContents(initializing:)(&atoken, (v116 + 4), v115, v114);
    outlined consume of [String : Any].Iterator._Variant(*atoken.val);
    v88 = v18 == v115;
    v117 = v142;
    if (v88)
    {

      return v116;
    }

    __break(1u);
LABEL_110:
    swift_once();
  }

  v131 = 0;
  v132 = 0;
  v127 = "ion/Monitor.swift";
  v125 = "xtension-management";
  v122 = "ost.any-extension";
  *&v43 = 136446210;
  v144 = v43;
  *&v43 = 136446466;
  v119 = v43;
  while (1)
  {
    outlined init with take of Any(&v156, &atoken);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v155 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
    *&atoken.val[6] = &type metadata for AppExtensionIdentity.RecordIdentity;
    *atoken.val = v149;
    if (v44)
    {
      if ([v149 appProtectionLocked])
      {
        outlined init with copy of AppExtensionIdentity(&atoken, &v149);
        v49 = Logger.logObject.getter();
        p_atoken = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v49, p_atoken))
        {

          goto LABEL_42;
        }

        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v147 = v46;
        *v45 = v144;
        outlined init with copy of _InnerAppExtensionIdentity(&v149, &v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v47 = String.init<A>(describing:)();
        v20 = v48;
        outlined destroy of AppExtensionIdentity(&v149);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v20, &v147);

        *(v45 + 4) = v15;
        _os_log_impl(&dword_1847D1000, v49, p_atoken, "Skipping because extension is locked: %{public}s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x1865F56C0](v46, -1, -1);
        MEMORY[0x1865F56C0](v45, -1, -1);

        goto LABEL_36;
      }

      v51 = *&atoken.val[6];
      v50 = v155;
    }

    else
    {
      v50 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
      v51 = &type metadata for AppExtensionIdentity.RecordIdentity;
    }

    __swift_project_boxed_opaque_existential_1(&atoken, v51);
    LODWORD(v141) = (v50[51])(v51, v50);
    v52 = *&atoken.val[6];
    v53 = v155;
    __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
    p_atoken = (v53[28])(v52, v53);
    v55 = v54;
    v56 = *&atoken.val[6];
    v57 = v155;
    __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
    v58 = (v57[32])(v56, v57);
    if (!v58)
    {
      if (!v142)
      {
        v74 = 0;
        v126 = 0;
        v123 = 1;
        goto LABEL_57;
      }

      v63 = 0;
      goto LABEL_50;
    }

    v59 = v58;
    v60 = v142;
    v61 = v142;
    if (v60)
    {
      v62 = v61;
      v63 = static NSObject.== infix(_:_:)();

LABEL_50:
      v123 = v63;
      if (v141)
      {
        v64 = *&atoken.val[6];
        v65 = v155;
        __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
        v126 = (v65 + 54);
        v120 = v65[54];
        v66 = v39;
        v67 = v11;
        v68 = v142;
        v69 = v142;
        v70 = v68;
        v11 = v67;
        v39 = v66;
        v71 = (v120)(v70, v64, v65);
        v44 = v140;
        v72 = v71;

        v73 = v72 | 2;
        if ((v63 & 1) == 0)
        {
          v73 = v72;
        }

        v126 = v73;
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v123 = 0;
LABEL_55:
    v126 = 0;
LABEL_57:
    *&v149 = __PAIR64__(v137, v138);
    *(&v149 + 1) = __PAIR64__(v136, v139);
    v150 = v133;
    v151 = v135;
    v152 = v143;
    v153 = v134;
    v75 = MEMORY[0x1865F36D0](0xD000000000000033, v127 | 0x8000000000000000);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = _EXAuditTokenGetEntitlementValue(&v149, v75, ObjCClassFromMetadata);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast() && (v147 & 1) != 0 || (v77 = MEMORY[0x1865F36D0](0xD000000000000031, v125 | 0x8000000000000000), v78 = _EXAuditTokenGetEntitlementValue(&v149, v77, ObjCClassFromMetadata), v77, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), swift_dynamicCast()) && (v147 & 1) != 0)
    {
      v20 = 0;
      v79 = 1;
      if (v55)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v89 = *&atoken.val[6];
      v15 = v155;
      __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
      if ((*(v15 + 216))(v89, v15))
      {
        outlined init with copy of AppExtensionIdentity(&atoken, &v149);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v15 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v147 = v120;
          *v15 = v119;
          outlined init with copy of _InnerAppExtensionIdentity(&v149, &v148);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
          v92 = String.init<A>(describing:)();
          v94 = v93;
          outlined destroy of AppExtensionIdentity(&v149);
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v147);

          *(v15 + 4) = v95;
          *(v15 + 12) = 1024;
          v96 = v91;
          v79 = v123;
          *(v15 + 14) = v123 & 1;
          _os_log_impl(&dword_1847D1000, v90, v96, "Extension: %{public}s must be contained in host app. hostIsContainer: %{BOOL}d", v15, 0x12u);
          v97 = v120;
          __swift_destroy_boxed_opaque_existential_0Tm(v120);
          MEMORY[0x1865F56C0](v97, -1, -1);
          MEMORY[0x1865F56C0](v15, -1, -1);

          v20 = 1;
          if (v55)
          {
            goto LABEL_62;
          }
        }

        else
        {

          outlined destroy of AppExtensionIdentity(&v149);
          v20 = 1;
          v79 = v123;
          if (v55)
          {
LABEL_62:
            v80 = *&atoken.val[6];
            v81 = v155;
            __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
            v82 = v81[60];
            v83 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
            v84 = v82(0xD000000000000025, v122 | 0x8000000000000000, v83, v80, v81);
            if (!v84 || (*&v149 = 0, v85 = v84, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v85, (v86 = v149) == 0))
            {

              v86 = MEMORY[0x1E69E7CC0];
            }

            v44 = v140;
            v87 = (v86 + 40);
            v15 = *(v86 + 16) + 1;
            while (--v15)
            {
              v88 = p_atoken == *(v87 - 1) && v55 == *v87;
              if (!v88)
              {
                v87 += 2;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              if (v141 & v20)
              {
                goto LABEL_83;
              }

              goto LABEL_94;
            }

            if (v20 & v141)
            {
              goto LABEL_36;
            }

LABEL_94:
            outlined init with copy of AppExtensionIdentity(&atoken, &v148);
            specialized Set._Variant.insert(_:)(&v149, &v148);
LABEL_42:
            outlined destroy of AppExtensionIdentity(&v149);
            goto LABEL_36;
          }
        }
      }

      else
      {
        v79 = 1;
        v20 = 1;
        if (v55)
        {
          goto LABEL_62;
        }
      }
    }

    if ((v141 & v20) != 1)
    {
      goto LABEL_94;
    }

    if ((v79 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_83:
    if ((v126 & 2) != 0)
    {
      outlined init with copy of AppExtensionIdentity(&atoken, &v149);
      v103 = Logger.logObject.getter();
      p_atoken = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, p_atoken))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v147 = v105;
        *v104 = v144;
        outlined init with copy of _InnerAppExtensionIdentity(&v149, &v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v106 = String.init<A>(describing:)();
        v20 = v107;
        outlined destroy of AppExtensionIdentity(&v149);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v20, &v147);

        *(v104 + 4) = v15;
        _os_log_impl(&dword_1847D1000, v103, p_atoken, "Extension %{public}s is enabled", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v105);
        MEMORY[0x1865F56C0](v105, -1, -1);
        MEMORY[0x1865F56C0](v104, -1, -1);
      }

      else
      {

        outlined destroy of AppExtensionIdentity(&v149);
      }

      goto LABEL_94;
    }

    if (v126)
    {
      outlined init with copy of AppExtensionIdentity(&atoken, &v149);
      v108 = Logger.logObject.getter();
      p_atoken = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v108, p_atoken))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v147 = v110;
        *v109 = v144;
        outlined init with copy of _InnerAppExtensionIdentity(&v149, &v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v111 = String.init<A>(describing:)();
        v20 = v112;
        outlined destroy of AppExtensionIdentity(&v149);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v20, &v147);

        *(v109 + 4) = v15;
        _os_log_impl(&dword_1847D1000, v108, p_atoken, "Extension %{public}s is disabled", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v110);
        MEMORY[0x1865F56C0](v110, -1, -1);
        MEMORY[0x1865F56C0](v109, -1, -1);
      }

      else
      {

        outlined destroy of AppExtensionIdentity(&v149);
      }

      v113 = __OFADD__(v132++, 1);
      if (v113)
      {
        __break(1u);
        goto LABEL_103;
      }
    }

    else
    {
      outlined init with copy of AppExtensionIdentity(&atoken, &v149);
      v98 = Logger.logObject.getter();
      p_atoken = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, p_atoken))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v147 = v100;
        *v99 = v144;
        outlined init with copy of _InnerAppExtensionIdentity(&v149, &v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v101 = String.init<A>(describing:)();
        v20 = v102;
        outlined destroy of AppExtensionIdentity(&v149);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v20, &v147);

        *(v99 + 4) = v15;
        _os_log_impl(&dword_1847D1000, v98, p_atoken, "Extension %{public}s is unelected", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        MEMORY[0x1865F56C0](v100, -1, -1);
        MEMORY[0x1865F56C0](v99, -1, -1);
      }

      else
      {

        outlined destroy of AppExtensionIdentity(&v149);
      }

      v113 = __OFADD__(v131++, 1);
      if (v113)
      {
        __break(1u);
      }
    }

LABEL_36:
    outlined destroy of AppExtensionIdentity(&atoken);
    NSFastEnumerationIterator.next()();
    if (!v157)
    {
      goto LABEL_104;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 32; ; i += 8)
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v7 = Strong;

    if (v7 == a2)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = v5 + 2;
    v10 = v5[2];
    if (v9 == v10)
    {
      return v8;
    }

    v12 = 8 * result + 40;
    while (v9 < v10)
    {
      outlined init with copy of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v5 + v12, v17);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = Strong;

        result = outlined destroy of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v17);
        if (v14 != a2)
        {
          if (v9 != v8)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v15 = *v11;
            if (v8 >= *v11)
            {
              goto LABEL_25;
            }

            result = outlined init with copy of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(&v5[v8 + 4], v17);
            if (v9 >= v15)
            {
              goto LABEL_26;
            }

            outlined init with copy of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v5 + v12, v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
            }

            result = outlined assign with take of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v16, &v5[v8 + 4]);
            if (v9 >= v5[2])
            {
              goto LABEL_27;
            }

            result = outlined assign with take of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v17, v5 + v12);
            *a1 = v5;
          }

          ++v8;
        }
      }

      else
      {
        result = outlined destroy of AppExtensionPoint.Monitor.ObserverController.WeakMonitor(v17);
      }

      ++v9;
      v11 = v5 + 2;
      v10 = v5[2];
      v12 += 8;
      if (v9 == v10)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 8 * a3;
  v12 = v7 + 32 + 8 * a2;
  if (result < v12 || result >= v12 + 8 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized LocalLSDatabaseObserver.update(observers:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_updateQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in LocalLSDatabaseObserver.update(observers:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_59;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1865F3C00](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1865F3F40](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for _EXExtensionIdentity();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for _EXExtensionIdentity();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t outlined destroy of LocalLSDatabaseObserver.Observer(uint64_t a1)
{
  v2 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in LocalLSDatabaseObserver.makeSequence(for:host:)(uint64_t a1)
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 48);
  if (*(v1 + 50))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 51))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return closure #1 in LocalLSDatabaseObserver.makeSequence(for:host:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v3 | v4 | v5, *(v1 + 52), *(v1 + 60), *(v1 + 68), *(v1 + 76), *(v1 + 88));
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

uint64_t lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined consume of AppExtensionPoint.Monitor.ObserverController.Observer?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in AppExtensionPoint.Monitor.identity.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v4 = *(v0 + 34);
  v5 = *(v0 + 35);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  *(v1 + 34) = v4;
  *(v1 + 35) = v5;
}

uint64_t partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  if (*(v1 + 81))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | *(v1 + 80);
  if (*(v1 + 82))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (*(v1 + 83))
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 | v10;
  v12 = *(v1 + 88);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(a1, v4, v5, v1 + 32, v6, v8 | v11, v12);
}

void outlined consume of AppExtensionPoint?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Monitor.ObserverController.WeakMonitor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Monitor.ObserverController.WeakMonitor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t _AppExtensionIdentity.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 56))(v6, v7);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static _AppExtensionIdentity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 56))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 56))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

void _AppExtensionIdentity.init(serviceIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v38 = a2;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_7:
    static os_log_type_t.error.getter();
    if (one-time initialization token for discovery != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

  v8 = [v7 applicationExtensionRecords];
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
  lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v6;
  v35 = a3;
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v10 = v39;
    v11 = v40;
    v12 = v41;
    v13 = v42;
    v14 = v43;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9;
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);

    v13 = 0;
  }

  while (v10 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v22 = v44, v20 = v13, v21 = v14, !v44))
    {
LABEL_30:
      outlined consume of [String : Any].Iterator._Variant(v10);

      v30 = static os_log_type_t.error.getter();
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v31 = static OS_os_log.discovery;
      if (os_log_type_enabled(static OS_os_log.discovery, v30))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v44 = v33;
        *v32 = 136315138;
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v38, &v44);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_1847D1000, v31, v30, "Current process does not contain an extension with bundle ID %s.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x1865F56C0](v33, -1, -1);
        MEMORY[0x1865F56C0](v32, -1, -1);
      }

      else
      {
      }

      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.extensionKit.errorDomain" code:5 userInfo:0];
      swift_willThrow();

      return;
    }

LABEL_23:
    v23 = [v22 bundleIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == a1 && v27 == v38)
      {

LABEL_37:
        outlined consume of [String : Any].Iterator._Variant(v10);

        v35[3] = &type metadata for AppExtensionIdentity.RecordIdentity;
        v35[4] = &protocol witness table for AppExtensionIdentity.RecordIdentity;

        *v35 = v22;
        return;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_37;
      }
    }

    v13 = v20;
    v14 = v21;
  }

  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_19:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v19 = *(v11 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_8:
  os_log(_:dso:log:_:_:)();
  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.extensionKit.errorDomain" code:5 userInfo:0];
  swift_willThrow();
}

uint64_t _AppExtensionIdentity.init(applicationExtensionRecord:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for AppExtensionIdentity.RecordIdentity;
  a2[4] = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *a2 = result;
  return result;
}

uint64_t _AppExtensionIdentity.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t _AppExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t _AppExtensionIdentity.bundleVersion.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 80))(v1, v2);
}

void *_AppExtensionIdentity.containingApplicationRecord.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 256))(v1, v2);
  if (result)
  {
    v4 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t _AppExtensionIdentity.localizedName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t _AppExtensionIdentity.developerName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t _AppExtensionIdentity.presentsUserInterface.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 104))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.requiresMacCatalystBehavior.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.attributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 304))(v1, v2);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

uint64_t _AppExtensionIdentity.nsExtensionAttributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 176))(v1, v2);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

uint64_t _AppExtensionIdentity.icon.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t _AppExtensionIdentity.url.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 272))(v1, v2);
}

uint64_t _AppExtensionIdentity.enabled.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 416))(0, v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.platform.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 88))(v1, v2);
}

id _AppExtensionIdentity.extensionPointRecord.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 264))(v2, v3);
  if (!v4 || (v5 = v4, v6 = [v4 extensionPointRecord], v5, (result = v6) == 0))
  {
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    v10 = (*(v9 + 40))(v8, v9);
    v12 = v11;
    v13 = v1[3];
    v14 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v13);
    v15 = (*(v14 + 88))(v13, v14);
    v16 = objc_allocWithZone(MEMORY[0x1E6963668]);
    return @nonobjc LSExtensionPointRecord.init(identifier:platform:)(v10, v12, v15);
  }

  return result;
}

uint64_t _AppExtensionIdentity.enable()(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 448))(a1, 0, v3, v4);
}

uint64_t _AppExtensionIdentity.showsInExtensionsManager.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 392))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.isSystemComponent.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 320))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.canDisable.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 400))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.spotlightIndexable.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 240))(v1, v2) & 1;
}

uint64_t _AppExtensionIdentity.spotlightImporterIdentifiers.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 248))(v1, v2);
}

uint64_t _AppExtensionIdentity.requiresLegacyInfrastructure.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 200))(v1, v2) & 1;
}

id _AppExtensionIdentity.exExtensionRepresenting.getter(uint64_t a1)
{
  outlined init with copy of _InnerAppExtensionIdentity(v1, v8);
  v2 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v8, v7);
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v4 = v2;
  outlined assign with take of _InnerAppExtensionIdentity?(v7, v2 + v3);
  swift_endAccess();

  type metadata accessor for _EXExtensionIdentity();
  if ([v4 isKindOfClass_])
  {
    return v4;
  }

  v6 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id _AppExtensionIdentity.nsExtension.getter()
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtension, 0x1E696ABD0);
  v0 = _AppExtensionIdentity.exExtensionIdentity.getter();
  v1 = specialized @nonobjc NSExtension.init(identity:)(v0);

  return v1;
}

Swift::Int _AppExtensionIdentity.hashValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 56))(v5, v6);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _AppExtensionIdentity()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 56))(v5, v6);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _AppExtensionIdentity(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 56))(v6, v7);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _AppExtensionIdentity(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 56))(v6, v7);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance _AppExtensionIdentity()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _AppExtensionIdentity(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 56))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 56))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

char *_AppExtensionIdentity.inner.getter()
{
  outlined init with copy of _InnerAppExtensionIdentity(v0, v6);
  v1 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v6, v5);
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v3 = v1;
  outlined assign with take of _InnerAppExtensionIdentity?(v5, v1 + v2);
  swift_endAccess();

  return v3;
}

uint64_t _AppExtensionIdentity.init(inner:)@<X0>(uint64_t a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of _InnerAppExtensionIdentity?(v3 + v4, &v6);
  if (v7)
  {

    return outlined init with take of _InnerAppExtensionIdentity(&v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject)
  {
    type metadata accessor for NSDictionary(255, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject);
  }

  return result;
}

id @nonobjc LSExtensionPointRecord.init(identifier:platform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1865F36D0](a1);

  v10[0] = 0;
  v6 = [v3 initWithIdentifier:v5 platform:a3 error:v10];

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

id specialized @nonobjc NSExtension.init(identity:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() extensionWithIdentity:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type _AppExtensionIdentity and conformance _AppExtensionIdentity()
{
  result = lazy protocol witness table cache variable for type _AppExtensionIdentity and conformance _AppExtensionIdentity;
  if (!lazy protocol witness table cache variable for type _AppExtensionIdentity and conformance _AppExtensionIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AppExtensionIdentity and conformance _AppExtensionIdentity);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AppExtensionIdentity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _AppExtensionIdentity(uint64_t result, int a2, int a3)
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

uint64_t _AppExtensionPoint.serviceGroupIdentifier.getter(void *a1)
{
  v1 = [a1 SDKDictionary];
  v2 = MEMORY[0x1865F36D0](0x6369767265535845, 0xED00006570795465);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v17;
      v4 = v18;
      if (v17 == 0x656C646E7542 && v18 == 0xE600000000000000)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of NSObject?(v21, &_sypSgMd, &_sypSgMR);
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_11:
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v6._countAndFlagsBits = 0x3A70756F7247;
    v6._object = 0xE600000000000000;
    if (String.hasPrefix(_:)(v6))
    {
      v7 = String.count.getter();
      v8 = specialized Collection.dropFirst(_:)(v7, v5, v4);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = MEMORY[0x1865F3760](v8, v10, v12, v14);

      return v15;
    }
  }

LABEL_14:

  return 0;
}

unint64_t _AppExtensionPoint.requiredHostEntitlements.getter(void *a1)
{
  if (![a1 extensionPointType] || objc_msgSend(a1, sel_extensionPointType) == 1)
  {
    v2 = [a1 SDKDictionary];
    v3 = MEMORY[0x1865F36D0](0xD00000000000001ALL, 0x80000001848C2850);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [v2 objectForKey:v3 ofClass:ObjCClassFromMetadata];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v25 = v23;
    v24 = v22;
    if (*(&v23 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        result = v26;
        if (v26)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of NSObject?(&v24, &_sypSgMd, &_sypSgMR);
    }

    v26 = 0;
LABEL_15:
    v8 = [a1 SDKDictionary];
    v9 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C2C00);
    v10 = [v8 objectForKey:v9 ofClass:ObjCClassFromMetadata];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v25 = v23;
    v24 = v22;
    if (*(&v23 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      v11 = swift_dynamicCast();
      v12 = v21;
      if (!v11)
      {
        v12 = 0;
      }
    }

    else
    {
      outlined destroy of NSObject?(&v24, &_sypSgMd, &_sypSgMR);
      v12 = 0;
    }

    v26 = v12;

    result = v26;
    if (!v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BA260;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1848BA260;
      v16 = [a1 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(inited + 48) = v15;
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v26 = v20;

      result = v26;
      if (!v26)
      {
        __break(1u);
      }
    }

    return result;
  }

  v6 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v6);
}

void protocol witness for Identifiable.id.getter in conformance _AppExtensionPoint(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _AppExtensionPoint()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _AppExtensionPoint(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type _AppExtensionPoint and conformance _AppExtensionPoint()
{
  result = lazy protocol witness table cache variable for type _AppExtensionPoint and conformance _AppExtensionPoint;
  if (!lazy protocol witness table cache variable for type _AppExtensionPoint and conformance _AppExtensionPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AppExtensionPoint and conformance _AppExtensionPoint);
  }

  return result;
}

__CFString *specialized _AppExtensionPoint.init(identifier:)(uint64_t a1, uint64_t a2)
{
  active_platform = dyld_get_active_platform();
  v6 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  objc_allocWithZone(MEMORY[0x1E6963668]);
  v9 = v8;

  v10 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(a1, a2, active_platform, v8);
  if (v2)
  {

    v11 = objc_allocWithZone(MEMORY[0x1E6963668]);
    v12 = a1;
    v13 = a2;
    v14 = active_platform;
  }

  else
  {
    v16 = v10;

    if (v16)
    {

      return v16;
    }

    v18 = objc_allocWithZone(MEMORY[0x1E6963668]);
    v12 = a1;
    v13 = a2;
    v14 = active_platform;
  }

  v15 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(v12, v13, v14, 0);
  v16 = v15;
  if (!v15)
  {
    v16 = @"com.apple.extensionKit.errorDomain";
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.extensionKit.errorDomain" code:13 userInfo:0];
    swift_willThrow();
  }

  return v16;
}

id _EXDiscoveryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXDiscoveryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  return a1() & 1;
}

void _EXDiscoveryController.observerDidObserveSettingsChange()()
{
  v1 = OBJC_IVAR____EXDiscoveryController_activeQueries;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v10;
    v13 = v5;
    v14 = v10;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v6 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      outlined consume of [String : Any].Iterator._Variant(v6);
      return;
    }

    while (1)
    {
      _EXActiveQuery.update()();

      v10 = v14;
      v5 = v15;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        type metadata accessor for _EXQuery();
        swift_dynamicCast();
        v16 = v17;
        type metadata accessor for _EXActiveQuery();
        swift_dynamicCast();
        v14 = v10;
        v15 = v5;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(void *a1)
{
  return specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(a1, 0x68636E75614CLL, 0xE600000000000000);
}

{
  return specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(a1, 0x7265766F63736944, 0xE900000000000079);
}

{
  return specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(a1, 0x726576726573624FLL, 0xE800000000000000);
}

{
  return specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(a1, 0x79786F7250434354, 0xE800000000000000);
}

id specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1865F36D0](0x6976726553435058, 0xEA00000000006563);
  [a1 setDomain_];

  v7 = MEMORY[0x1865F36D0](a2, a3);
  [a1 setService_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static Service.shared;

  return [a1 setDelegate_];
}

id _EXService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXService();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t closure #1 in variable initialization expression of Service.sigtermSource()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x1E69E9630);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  aBlock[4] = closure #1 in closure #1 in variable initialization expression of Service.sigtermSource;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_101;
  v10 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v10);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  OS_dispatch_source.resume()();
  return v9;
}

void closure #1 in closure #1 in variable initialization expression of Service.sigtermSource()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.general);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1847D1000, v1, v2, "Received SIGTERM, exiting.", v3, 2u);
    MEMORY[0x1865F56C0](v3, -1, -1);
  }

  exit(0);
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id _EXService.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void closure #2 in Service.listener(_:didReceive:withContext:)(void *a1)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.general);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1847D1000, v4, v5, "Host XPC connection %{public}@ invalidated, invalidating associated assertions.", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v7, -1, -1);
    MEMORY[0x1865F56C0](v6, -1, -1);
  }

  NSXPCConnection.invalidateAllAssertions()();
}

void closure #1 in Service.beginExtensionsQuery(_:listenerEndpoint:reply:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const char *a5, uint64_t a6)
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.discovery);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v13 + 4) = Strong;
    *v14 = Strong;
    _os_log_impl(&dword_1847D1000, v11, v12, a5, v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v14, -1, -1);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

  v16 = *(a2 + OBJC_IVAR____TtC19ExtensionFoundation7Service_discoveryController);
  type metadata accessor for _EXQuery();
  if ([a4 isKindOfClass_])
  {
    specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(a3, a4, v16);
  }

  else
  {
    v17 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t closure #1 in Service.beginObserving(configuration:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[42] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Service.beginObserving(configuration:reply:), 0, 0);
}

uint64_t closure #1 in Service.beginObserving(configuration:reply:)()
{
  v45 = v0;

  AppExtensionPoint.init(extensionPointRecords:)(v1, v0 + 32);
  v2 = v0[42];
  v31 = v0[32];
  v3 = v0[35];
  v35 = v0[34];
  v37 = v0[33];
  v0[48] = v37;
  v0[49] = v35;
  v33 = v3;
  v0[50] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  v0[51] = v4;
  if (one-time initialization token for observerUpdateInterface != -1)
  {
    swift_once();
  }

  v5 = v0[42];
  v6 = v0[43];
  [v4 setRemoteObjectInterface_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v0[14] = partial apply for closure #1 in closure #1 in Service.beginObserving(configuration:reply:);
  v0[15] = v8;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[13] = &block_descriptor_55;
  v9 = _Block_copy(v0 + 10);
  v10 = v4;
  v11 = v6;
  v12 = v5;

  [v10 setInvalidationHandler_];
  _Block_release(v9);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v11;
  v14[4] = v12;
  v0[20] = partial apply for closure #2 in closure #1 in Service.beginObserving(configuration:reply:);
  v0[21] = v14;
  v0[16] = MEMORY[0x1E69E9820];
  v0[17] = 1107296256;
  v0[18] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[19] = &block_descriptor_62;
  v15 = _Block_copy(v0 + 16);
  v16 = v11;
  v17 = v12;

  [v10 setInterruptionHandler_];
  _Block_release(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BA260;
  *(inited + 32) = v32;
  *(inited + 40) = v37;
  *(inited + 48) = v36;
  *(inited + 56) = v34;

  v19 = v34;
  v20 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC19ExtensionFoundation03AppE5PointV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of AppExtensionPoint(inited + 32);
  v21 = v17[OBJC_IVAR___ObserverConfiguration__options];
  v22 = v17[OBJC_IVAR___ObserverConfiguration__options + 1];
  v23 = v17[OBJC_IVAR___ObserverConfiguration__options + 2];
  v24 = v17[OBJC_IVAR___ObserverConfiguration__options + 3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = v0[44];
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  [v25 auditToken];
  v26 = v44;
  *(v0 + 27) = v43;
  *(v0 + 28) = v26;
  *(v0 + 464) = 0;
  LocalLSDatabaseObserver.makeSequence(for:host:)(&v38, v0 + 54, (v0 + 22));

  v28 = v0[25];
  v27 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v28);
  v29 = swift_task_alloc();
  v0[52] = v29;
  *v29 = v0;
  v29[1] = closure #1 in Service.beginObserving(configuration:reply:);

  return MEMORY[0x1EEE6DB20](v0 + 36, &async function pointer to closure #3 in closure #1 in Service.beginObserving(configuration:reply:), 0, v28, v27);
}

{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = closure #1 in Service.beginObserving(configuration:reply:);
  }

  else
  {
    v2 = closure #1 in Service.beginObserving(configuration:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[51];
  v22 = v0[50];
  v21 = v0[47];
  v20 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[36];
  if (v4)
  {
    v5 = v0[38];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[37];
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v0[36];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of _InnerAppExtensionIdentity((v0 + 22), (v0 + 27));
  type metadata accessor for Service.Observer();
  swift_allocObject();
  v8 = v1;
  v9 = specialized Service.Observer.init(updates:connection:)(v0 + 27, v8);

  v10 = OBJC_IVAR___ObserverConfiguration__id;
  v11 = OBJC_IVAR____TtC19ExtensionFoundation7Service_activeObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v3 + v10, isUniquelyReferenced_nonNull_native);
  *(v2 + v11) = v23;
  swift_endAccess();
  v13 = objc_allocWithZone(type metadata accessor for Service.ObserverUpdate());
  v14 = Service.ObserverUpdate.init(identities:disabledCount:unelectedCount:)(v7, v5, v6);
  v20(v14, 0);
  [v9[7] activate];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v9;

  v17 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #1 in Service.Observer.activate(), v16);

  v9[9] = v17;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);

  v18 = v0[1];

  return v18();
}

{
  v1 = *(v0 + 400);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  v2 = *(v0 + 424);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.discovery);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1847D1000, v5, v6, "Failed to start observering with error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v8, -1, -1);
    MEMORY[0x1865F56C0](v7, -1, -1);
  }

  v11 = *(v0 + 360);

  v12 = objc_opt_self();
  v13 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C3060);
  v14 = [v12 _EX_errorWithCode_description_];

  v15 = v14;
  v11(0, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #1 in closure #1 in Service.beginObserving(configuration:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.discovery);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = a3;
    v15 = a4;
    v16 = v13;
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = Strong;
    *v17 = Strong;
    v19 = v15;
    a3 = v14;
    v6 = v22;
    _os_log_impl(&dword_1847D1000, v11, v12, v19, v16, 0xCu);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v17, -1, -1);
    MEMORY[0x1865F56C0](v16, -1, -1);
  }

  (*(v7 + 16))(v9, a3 + OBJC_IVAR___ObserverConfiguration__id, v6);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v9);
  return swift_endAccess();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned Service.ObserverUpdate?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t Service.Observer.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1865F3A10](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in Service.Observer.activate()()
{
  v1 = v0[28];
  v2 = *(v1 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[17] = swift_getAssociatedTypeWitness();
  v0[18] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[17];
  v7 = v0[18];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v6);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = closure #1 in Service.Observer.activate();

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0, v0 + 26, v6, v7);
}

{

  if (v0)
  {
    v1 = closure #1 in Service.Observer.activate();
  }

  else
  {
    v1 = closure #1 in Service.Observer.activate();
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = v0[23];
  if (!v1)
  {
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
    v4 = v0[1];

    return v4();
  }

  v2 = v0[24];
  v3 = v0[25];
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  v6 = v0[28];
  v7 = objc_allocWithZone(type metadata accessor for Service.ObserverUpdate());
  v8 = Service.ObserverUpdate.init(identities:disabledCount:unelectedCount:)(v1, v3, v2);
  v9 = *(v6 + 56);
  v0[6] = closure #1 in Service.Observer.notify(update:);
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v0[5] = &block_descriptor_72;
  v10 = _Block_copy(v0 + 2);
  v11 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation7ServiceC22ObserverUpdateProtocol_pMd, &_s19ExtensionFoundation7ServiceC22ObserverUpdateProtocol_pMR);
  swift_dynamicCast();
  v12 = v0[27];
  v0[12] = destructiveProjectEnumData for Platform;
  v0[13] = 0;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[11] = &block_descriptor_75;
  v13 = _Block_copy(v0 + 8);
  [v12 observer:v8 reply:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  v14 = v0[17];
  v15 = v0[18];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v14);
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = closure #1 in Service.Observer.activate();

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0, v0 + 26, v14, v15);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

id _EXConnectionActiveQueryObserver.init(connection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_id;
  UUID.init()();
  *&v1[OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_connection] = a1;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  v9 = a1;
  _StringGuts.grow(_:)(19);

  strcpy(v27, "Active query: ");
  HIBYTE(v27[1]) = -18;
  (*(v5 + 16))(v7, &v1[v8], v4);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v10);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x1865F37A0](45, 0xE100000000000000);
  v26 = [v9 processIdentifier];
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v11);

  String.utf8CString.getter();

  v12 = os_transaction_create();

  if (v12)
  {
    *&v2[OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_transaction] = v12;
    active = type metadata accessor for _EXConnectionActiveQueryObserver(0);
    v25.receiver = v2;
    v25.super_class = active;
    v15 = objc_msgSendSuper2(&v25, sel_init);
    v16 = one-time initialization token for discovery;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.discovery);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v17;
      v23 = v17;
      _os_log_impl(&dword_1847D1000, v19, v20, "Active query observer added: %@", v21, 0xCu);
      outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v22, -1, -1);
      MEMORY[0x1865F56C0](v21, -1, -1);
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _EXConnectionActiveQueryObserver.__deallocating_deinit()
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.discovery);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1847D1000, v3, v4, "Active query removed: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for _EXConnectionActiveQueryObserver(0);
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t type metadata accessor for _EXConnectionActiveQueryObserver(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXConnectionActiveQueryObserver;
  if (!type metadata singleton initialization cache for _EXConnectionActiveQueryObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _EXConnectionActiveQueryObserver.query(_:resultDidUpdate:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_connection);
  v16 = closure #1 in _EXConnectionActiveQueryObserver.query(_:resultDidUpdate:);
  v17 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v15 = &block_descriptor_2;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation23_EXQueryResultsProtocol_pMd, &_s19ExtensionFoundation23_EXQueryResultsProtocol_pMR);
  swift_dynamicCast();
  type metadata accessor for _EXQueryResultUpdate();
  if ([a2 isKindOfClass_])
  {
    v16 = destructiveProjectEnumData for Platform;
    v17 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15 = &block_descriptor_24;
    v8 = _Block_copy(&aBlock);
    [v11 query:a1 resultDidUpdate:a2 reply:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void closure #1 in Service.Observer.notify(update:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.discovery);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1847D1000, oslog, v6, a2, v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v8, -1, -1);
    MEMORY[0x1865F56C0](v7, -1, -1);
  }
}

uint64_t _EXConnectionActiveQueryObserver.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of NSObject?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for _EXConnectionActiveQueryObserver(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v1)
  {

    return 1;
  }

  else
  {
    v2 = [*&v1[OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_connection] isEqual_];

    return v2;
  }
}

unint64_t _EXConnectionActiveQueryObserver.description.getter()
{
  _StringGuts.grow(_:)(40);

  v1 = [*(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_connection) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1865F37A0](v2, v4);

  MEMORY[0x1865F37A0](96, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t type metadata completion function for _EXConnectionActiveQueryObserver(uint64_t a1)
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

uint64_t protocol witness for Identifiable.id.getter in conformance _EXConnectionActiveQueryObserver@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t instantiation function for generic protocol witness table for _EXConnectionActiveQueryObserver(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type _EXConnectionActiveQueryObserver and conformance _EXConnectionActiveQueryObserver, type metadata accessor for _EXConnectionActiveQueryObserver, &protocol conformance descriptor for _EXConnectionActiveQueryObserver);
  *(a1 + 8) = result;
  return result;
}

id specialized static Service.runAsXPCService()()
{
  static Service._inExtensionKitService = 1;
  v14 = specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v13 = &block_descriptor_104;
  v1 = _Block_copy(&v10);
  v2 = objc_opt_self();
  v3 = [v2 listenerWithConfigurator_];
  _Block_release(v1);

  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_6;
  }

  v0 = &selRef_setService_;
  [v3 activate];
  v14 = specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v13 = &block_descriptor_107;
  v4 = _Block_copy(&v10);
  v5 = [v2 listenerWithConfigurator_];
  _Block_release(v4);

  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v5 activate];
  v14 = specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v13 = &block_descriptor_110;
  v6 = _Block_copy(&v10);
  v7 = [v2 listenerWithConfigurator_];
  _Block_release(v6);

  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v7 activate];
  v14 = specialized thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v13 = &block_descriptor_113;
  v8 = _Block_copy(&v10);
  v2 = [v2 listenerWithConfigurator_];
  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  [v2 v0[296]];
  result = [objc_opt_self() activateXPCService];
  __break(1u);
  return result;
}

void specialized Service.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = [a1 remoteProcess];
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.general);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v4 pid];

    _os_log_impl(&dword_1847D1000, v5, v6, "Received connection request from '%d'", v7, 8u);
    MEMORY[0x1865F56C0](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  v8 = [a1 service];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x7265766F63736944 && v11 == 0xE900000000000079)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    if (one-time initialization token for discoveryServiceInterface != -1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v13 = &static NSXPCInterface.discoveryServiceInterface;
LABEL_12:
      v14 = *v13;
      v4 = v4;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = [v4 pid];

        _os_log_impl(&dword_1847D1000, v15, v16, "Starting XPC listener for connection request from '%d'", v17, 8u);
        MEMORY[0x1865F56C0](v17, -1, -1);
      }

      else
      {

        v15 = v4;
      }

      v52 = destructiveProjectEnumData for Platform;
      v53 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
      v51 = &block_descriptor_92;
      v18 = _Block_copy(&aBlock);

      v19 = [a1 extractNSXPCConnectionWithConfigurator_];
      _Block_release(v18);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_50:
      swift_once();
    }

    [v19 setExportedInterface_];
    [v19 setExportedObject_];
    v20 = [a1 service];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == 0x68636E75614CLL && v23 == 0xE600000000000000)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
LABEL_21:
        [v19 activate];

        return;
      }
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    v52 = partial apply for closure #2 in Service.listener(_:didReceive:withContext:);
    v53 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v51 = &block_descriptor_98;
    v26 = _Block_copy(&aBlock);
    v27 = v19;

    [v27 setInvalidationHandler_];
    _Block_release(v26);
    goto LABEL_21;
  }

  v28 = [a1 service];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == 0x726576726573624FLL && v31 == 0xE800000000000000)
  {

LABEL_26:
    if (one-time initialization token for observerServiceInterface != -1)
    {
      swift_once();
    }

    v13 = &static NSXPCInterface.observerServiceInterface;
    goto LABEL_12;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_26;
  }

  v33 = [a1 service];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == 0x68636E75614CLL && v36 == 0xE600000000000000)
  {

LABEL_33:
    if (one-time initialization token for launchServiceInterface != -1)
    {
      swift_once();
    }

    v13 = &static NSXPCInterface.launchServiceInterface;
    goto LABEL_12;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_33;
  }

  v38 = [a1 service];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v39 == 0x79786F7250434354 && v41 == 0xE800000000000000)
  {

LABEL_40:
    if (one-time initialization token for tccProxyServiceInterface != -1)
    {
      swift_once();
    }

    v13 = &static NSXPCInterface.tccProxyServiceInterface;
    goto LABEL_12;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_40;
  }

  v47 = v4;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = [v47 pid];

    _os_log_impl(&dword_1847D1000, v43, v44, "No XPC interface available. XPC listener was *not* started for connection request from '%d'", v45, 8u);
    MEMORY[0x1865F56C0](v45, -1, -1);
  }

  else
  {

    v43 = v47;
  }

  [a1 invalidate];
}

void specialized Service.extensions(with:reply:)(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v21 = [objc_opt_self() currentConnection];
  if (!v21)
  {
    _Block_release(a3);
    __break(1u);
    goto LABEL_15;
  }

  if ((specialized static _EXDiscoveryController.canRun(query:)(a1) & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x1865F36D0](0xD00000000000001FLL, 0x80000001848C30B0);
    v11 = [v9 _EX_errorWithCode_description_];

    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.discovery);
    v8 = v21;
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543618;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 1024;
      v18 = v13;
      v19 = [v8 processIdentifier];

      *(v16 + 14) = v19;
      outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v17, -1, -1);
      MEMORY[0x1865F56C0](v16, -1, -1);
    }

    else
    {

      v14 = v8;
    }

    v7 = v11;
    v21 = _convertErrorToNSError(_:)();
    a3[2](a3, 0);

    goto LABEL_11;
  }

  v5 = _EXDiscoveryController.identities(matching:)(a1);
  type metadata accessor for _EXQueryResult();
  if (([v5 isKindOfClass_] & 1) == 0)
  {
LABEL_15:
    _Block_release(a3);
    v20 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v6 = a3[2];
  v7 = v5;
  (v6)(a3, v7, 0);
  v8 = v7;
LABEL_11:
}

void specialized Service.beginExtensionsQuery(_:listenerEndpoint:reply:)(void *a1, uint64_t a2, char *a3, void (**a4)(void, void))
{
  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    _Block_release(a4);
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  type metadata accessor for _EXQuery();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([a1 isKindOfClass_] & 1) == 0)
  {
LABEL_17:
    _Block_release(a4);
    v47 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
LABEL_18:
    _Block_release(v49);
    v48 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (specialized static _EXDiscoveryController.canRun(query:)(a1))
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
    if (one-time initialization token for queryResultsInterface != -1)
    {
      swift_once();
    }

    v49 = a4;
    [v11 setRemoteObjectInterface_];
    v12 = objc_allocWithZone(type metadata accessor for _EXConnectionActiveQueryObserver(0));
    v13 = v11;
    v14 = _EXConnectionActiveQueryObserver.init(connection:)(v13);
    v15 = *&a3[OBJC_IVAR____TtC19ExtensionFoundation7Service_discoveryController];
    v16 = v14;
    if ([a1 isKindOfClass_])
    {
      v17 = v16;
      specialized _EXDiscoveryController.add(activeQueryObserver:query:)(v17, a1, v15);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a3;
      v19[4] = v17;
      v19[5] = a1;
      v55 = partial apply for closure #1 in Service.beginExtensionsQuery(_:listenerEndpoint:reply:);
      v56 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_82;
      v20 = _Block_copy(&aBlock);
      v21 = v13;
      v22 = v17;
      v23 = a1;
      v24 = a3;

      [v21 setInvalidationHandler_];
      _Block_release(v20);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v24;
      v26[4] = v22;
      v26[5] = v23;
      v55 = partial apply for closure #2 in Service.beginExtensionsQuery(_:listenerEndpoint:reply:);
      v56 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_89;
      v27 = _Block_copy(&aBlock);
      v28 = v22;
      v29 = v23;
      v30 = v24;

      [v21 setInterruptionHandler_];
      _Block_release(v27);
      [v21 activate];
      a4[2](a4, 0);

      return;
    }

    goto LABEL_18;
  }

  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.discovery);
  v32 = v9;
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138543618;
    *(v36 + 4) = v33;
    *v37 = v33;
    *(v36 + 12) = 1024;
    v38 = v33;
    v39 = [v32 processIdentifier];

    *(v36 + 14) = v39;
    outlined destroy of NSObject?(v37, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v37, -1, -1);
    MEMORY[0x1865F56C0](v36, -1, -1);
  }

  else
  {

    v34 = v32;
  }

  v40 = objc_opt_self();
  _StringGuts.grow(_:)(37);

  aBlock = 0xD000000000000022;
  v52 = 0x80000001848C3080;
  v41 = [v33 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  MEMORY[0x1865F37A0](v42, v44);

  MEMORY[0x1865F37A0](96, 0xE100000000000000);
  v45 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C3080);

  v46 = [v40 _EX_errorWithCode_description_];

  v50 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v50);
}

void *specialized Service.Observer.init(updates:connection:)(void *a1, void *a2)
{
  v3 = v2;
  v3[9] = 0;
  outlined init with copy of _InnerAppExtensionIdentity(a1, (v3 + 2));
  v3[7] = a2;
  v6 = a2;
  MEMORY[0x1865F37A0](0x726576726573624FLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSci_p19ExtensionFoundation03AppA5PointV7MonitorC5StateV7ElementSciRts_s5Error_p7FailureSciRtsXPMd, _sSci_p19ExtensionFoundation03AppA5PointV7MonitorC5StateV7ElementSciRts_s5Error_p7FailureSciRtsXPMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F37A0](45, 0xE100000000000000);
  [v6 processIdentifier];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v7);

  String.utf8CString.getter();

  v8 = os_transaction_create();

  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v3[8] = v8;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized Service.photoServiceAuthorizationStatus(forExtensionUUID:completion:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  LODWORD(v3) = [v3 photoServiceAuthorizationStatusWithExtensionUUID:isa error:v11];

  if (v3)
  {
    v5 = *(a2 + 16);
    v6 = v11[0];
    v5(a2, 1, 0);
  }

  else
  {
    v7 = v11[0];
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = _convertErrorToNSError(_:)();
    v10 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v10);
  }
}

uint64_t partial apply for closure #1 in Service.beginObserving(configuration:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in Service.beginObserving(configuration:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in Service.Observer.activate()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in Service.Observer.activate()(a1, v4, v5, v6);
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t closure #2 in static QueryController.execute(queries:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR____EXQueryResult_identities);
  if (v3)
  {
    v4 = v3;
  }

  else if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v4 = v7;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  a2(v5);
}

id QueryController.__deallocating_deinit()
{
  QueryController.suspend()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in QueryController.resume()(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____EXQueryResult_identities))
  {
    v1 = *(a1 + OBJC_IVAR____EXQueryResult_identities);
  }

  else if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v1 = v4;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
  *&v2[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____EXQueryResult_identities] = v1;
  *&v2[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for _EXQueryResult();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  QueryController.resultDidUpdate(_:)(v3);
}

Swift::Void __swiftcall QueryController.suspend()()
{
  if (one-time initialization token for discovery != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.discovery);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1847D1000, v3, v4, "Suspending Query observer: '%{public}@'", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 preferInProcessDiscovery];

  if (v9)
  {
    v0 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries];
    if (v0 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v11 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1865F3F40](v11, v0);
        }

        else
        {
          if (v11 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v12 = *(v0 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v15 = static _EXDiscoveryController.shared;
        type metadata accessor for _EXQuery();
        if (![v13 isKindOfClass_])
        {
          break;
        }

        v16 = v13;
        specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(v2, v16, v15);

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_22;
        }
      }

      v21 = [objc_opt_self() _EX_parameterError];
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
LABEL_22:
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v17 = static _EXServiceClient.shared;
    v22[3] = type metadata accessor for QueryController(0);
    v23 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
    v22[0] = v2;
    v18 = *(v17 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
    MEMORY[0x1EEE9AC00](v23);
    v19 = v2;
    os_unfair_lock_lock(v18 + 4);
    partial apply for closure #1 in _EXServiceClient.remove(queryObserver:)(v20);
    os_unfair_lock_unlock(v18 + 4);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }
}

Swift::Void __swiftcall QueryController.remapCurrentIdentities()()
{
  v1 = v0;
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.discovery);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1847D1000, v3, v4, "Query controller remapping extensions", v5, 2u);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);

  os_unfair_lock_lock(v6 + 4);
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  os_unfair_lock_unlock(v6 + 4);
}

char *closure #1 in QueryController.remapCurrentIdentities()(char *result)
{
  v1 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions;
  if (*&result[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions])
  {
    v2 = result;
    v3 = result;

    ControllerC22remapCurrentIdentitiesyyFyyYbXEfU_So20_dE8CAFXEfU_0H10Foundation0jK0CTf1cn_nTf4nd_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20_EXExtensionIdentityCG_AGs5NeverOTg5082_s19ExtensionFoundation15QueryControllerC22remapCurrentIdentitiesyyFyyYbXEfU_So20_dE8CAFXEfU_0H10Foundation0jK0CTf1cn_nTf4nd_n(v4);

    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(ControllerC22remapCurrentIdentitiesyyFyyYbXEfU_So20_dE8CAFXEfU_0H10Foundation0jK0CTf1cn_nTf4nd_n);

    *&v2[v1] = v6;
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

uint64_t getEnumTagSinglePayload for QueryController.Callbacks(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryController.Callbacks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t protocol witness for _EXServiceClientObserver.query(_:resultDidUpdate:) in conformance QueryController(uint64_t a1, void *a2)
{
  type metadata accessor for _EXQueryResultUpdate();
  if ([a2 isKindOfClass_])
  {
    return QueryController.resultDidUpdate(_:)(a2);
  }

  v4 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n085_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20_EXExtensionIdentityCG_AGs5NeverOTg5088_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v67 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v71 = a1 & 0xC000000000000001;
  v81 = &v63 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
      return result;
    }

    v86 = MEMORY[0x1E69E7CC0];
    v15 = v13;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v83 = result;
    v84 = v17;
    v85 = 1;
    if (v15 < 0)
    {
      goto LABEL_55;
    }

    v18 = v15;
    v11 = v81;
  }

  else
  {
    v19 = *(a1 + 16);
    result = MEMORY[0x1E69E7CC0];
    if (!v19)
    {
      return result;
    }

    v86 = MEMORY[0x1E69E7CC0];
    v20 = v19;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = _HashTable.startBucket.getter();
    v18 = v20;
    v21 = *(a1 + 36);
    v83 = result;
    v84 = v21;
    v85 = 0;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = 0;
  v79 = a2 + 56;
  v78 = v67 + 16;
  v23 = (v67 + 8);
  v66 = a1 + 56;
  if (a1 < 0)
  {
    v24 = a1;
  }

  else
  {
    v24 = v12;
  }

  v68 = v24;
  v64 = a1 + 64;
  *&v16 = 138543618;
  v65 = v16;
  v80 = a2;
  v69 = v18;
  v70 = a1;
  while (v22 < v18)
  {
    v26 = __OFADD__(v22, 1);
    v27 = v22 + 1;
    if (v26)
    {
      goto LABEL_51;
    }

    v28 = v85;
    v72 = v27;
    v73 = v83;
    v76 = v3;
    v77 = v84;
    specialized Set.subscript.getter(v83, v84, v85, a1);
    v74 = v29;
    v30 = [v29 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = *(a2 + 16);
    v75 = v28;
    if (v31 && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v79 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      v36 = *(v67 + 72);
      v37 = *(v67 + 16);
      while (1)
      {
        v37(v9, *(v80 + 48) + v36 * v34, v6);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *v23;
        (*v23)(v9, v6);
        if (v38)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        v11 = v81;
        if (((*(v79 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v39(v81, v6);
      v3 = v76;
      a2 = v80;
      a1 = v70;
    }

    else
    {
LABEL_21:
      (*v23)(v11, v6);
      v40 = v74;
      _EXExtensionIdentity.remappedCopy()(v41);
      v3 = v42;
      if (v42)
      {
        if (one-time initialization token for discovery != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.discovery);
        v44 = v40;
        v45 = v42;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = v65;
          *(v48 + 4) = v44;
          *v49 = v44;
          *(v48 + 12) = 2112;
          v50 = v44;
          v51 = v42;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 14) = v52;
          v49[1] = v52;
          _os_log_impl(&dword_1847D1000, v46, v47, "couldn't remap %{public}@: %@", v48, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1865F56C0](v49, -1, -1);
          MEMORY[0x1865F56C0](v48, -1, -1);
        }

        else
        {
        }

        v3 = 0;
      }

      else
      {
      }

      a2 = v80;
      a1 = v70;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v71)
    {
      if (!v75)
      {
        goto LABEL_56;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20_EXExtensionIdentityC_GMd, &_sSh5IndexVySo20_EXExtensionIdentityC_GMR);
      v25 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v25(v82, 0);
    }

    else
    {
      v53 = v77;
      if (v75)
      {
        goto LABEL_57;
      }

      result = v73;
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v54 = 1 << *(a1 + 32);
      if (v73 >= v54)
      {
        goto LABEL_52;
      }

      v55 = v73 >> 6;
      v56 = *(v66 + 8 * (v73 >> 6));
      if (((v56 >> v73) & 1) == 0)
      {
        goto LABEL_53;
      }

      if (*(a1 + 36) != v77)
      {
        goto LABEL_54;
      }

      v57 = v56 & (-2 << (v73 & 0x3F));
      if (v57)
      {
        v54 = __clz(__rbit64(v57)) | v73 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v58 = v55 << 6;
        v59 = v55 + 1;
        v60 = (v64 + 8 * v55);
        while (v59 < (v54 + 63) >> 6)
        {
          v62 = *v60++;
          v61 = v62;
          v58 += 64;
          ++v59;
          if (v62)
          {
            result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v73, v77, 0);
            v53 = v77;
            v54 = __clz(__rbit64(v61)) + v58;
            goto LABEL_47;
          }
        }

        result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v73, v77, 0);
        v53 = v77;
      }

LABEL_47:
      v83 = v54;
      v84 = v53;
      v85 = 0;
    }

    v18 = v69;
    v22 = v72;
    v11 = v81;
    if (v72 == v69)
    {
      outlined consume of Set<AppExtensionPoint>.Index._Variant(v83, v84, v85);
      return v86;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20_EXExtensionIdentityCG_AGs5NeverOTg5082_s19ExtensionFoundation15QueryControllerC22remapCurrentIdentitiesyyFyyYbXEfU_So20_dE8CAFXEfU_0H10Foundation0jK0CTf1cn_nTf4nd_n(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      return result;
    }

    v47 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v44 = result;
    v45 = v5;
    v46 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return result;
  }

  v47 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v6 = *(v1 + 36);
  v44 = result;
  v45 = v6;
  v46 = 0;
LABEL_7:
  v7 = 0;
  v39 = v1 + 56;
  v37 = v1 + 64;
  v40 = v2;
  v38 = v1;
  v41 = v3;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_39;
    }

    v10 = v44;
    v11 = v46;
    v42 = v45;
    specialized Set.subscript.getter(v44, v45, v46, v1);
    v13 = v12;
    _EXExtensionIdentity.remappedCopy()(v14);
    if (v15)
    {
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.discovery);
      v17 = v13;
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543618;
        *(v21 + 4) = v17;
        *v22 = v17;
        *(v21 + 12) = 2112;
        v23 = v17;
        v24 = v15;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v25;
        v22[1] = v25;
        _os_log_impl(&dword_1847D1000, v19, v20, "couldn't remap %{public}@: %@", v21, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        v26 = v22;
        v2 = v40;
        MEMORY[0x1865F56C0](v26, -1, -1);
        v27 = v21;
        v1 = v38;
        MEMORY[0x1865F56C0](v27, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v2)
    {
      if (!v11)
      {
        goto LABEL_43;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20_EXExtensionIdentityC_GMd, &_sSh5IndexVySo20_EXExtensionIdentityC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v43, 0);
      if (v7 == v41)
      {
LABEL_36:
        outlined consume of Set<AppExtensionPoint>.Index._Variant(v44, v45, v46);
        return v47;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_44;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v28 = 1 << *(v1 + 32);
      if (v10 >= v28)
      {
        goto LABEL_40;
      }

      v29 = v10 >> 6;
      v30 = *(v39 + 8 * (v10 >> 6));
      if (((v30 >> v10) & 1) == 0)
      {
        goto LABEL_41;
      }

      if (*(v1 + 36) != v42)
      {
        goto LABEL_42;
      }

      v31 = v30 & (-2 << (v10 & 0x3F));
      if (v31)
      {
        v28 = __clz(__rbit64(v31)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v29 << 6;
        v33 = v29 + 1;
        v34 = (v37 + 8 * v29);
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v10, v42, 0);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_34;
          }
        }

        result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v10, v42, 0);
LABEL_34:
        v2 = v40;
      }

      v44 = v28;
      v45 = v42;
      v46 = 0;
      v3 = v41;
      if (v7 == v41)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v54 = a1;
  v6 = type metadata accessor for UUID();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v49 - v9;
  v57 = a3;
  v58 = 0;
  v13 = 0;
  v14 = *(a3 + 56);
  v53 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v66 = a4 + 56;
  v64 = v10 + 16;
  v56 = v10;
  v68 = (v10 + 8);
  *&v11 = 138543362;
  v52 = v11;
  v67 = a4;
  v55 = v18;
  v51 = &v49 - v9;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = *(v57 + 48);
    v60 = v22;
    v63 = *(v23 + 8 * v22);
    v24 = [v63 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(a4 + 16);
    v59 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v25 && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v26 = dispatch thunk of Hashable._rawHashValue(seed:)(), v27 = -1 << *(a4 + 32), v28 = v26 & ~v27, ((*(v66 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v61 = v17;
      v62 = v13;
      v29 = v12;
      v30 = ~v27;
      v31 = *(v56 + 72);
      v32 = *(v56 + 16);
      while (1)
      {
        v33 = v65;
        v32(v65, *(v67 + 48) + v31 * v28, v6);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v68;
        (*v68)(v33, v6);
        if (v34)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v66 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          a4 = v67;
          v12 = v29;
          v17 = v61;
          v13 = v62;
          v18 = v55;
          v35(v12, v6);
          goto LABEL_19;
        }
      }

      v12 = v29;
      v35(v29, v6);
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.discovery);
      v38 = v63;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      v41 = os_log_type_enabled(v39, v40);
      a4 = v67;
      v17 = v61;
      v13 = v62;
      v18 = v55;
      if (v41)
      {
        v42 = swift_slowAlloc();
        LODWORD(v63) = v40;
        v43 = v42;
        v44 = swift_slowAlloc();
        *v43 = v52;
        *(v43 + 4) = v38;
        *v44 = v38;
        v45 = v44;
        v46 = v38;
        _os_log_impl(&dword_1847D1000, v39, v63, "Query results: removing '%{public}@'", v43, 0xCu);
        outlined destroy of NSObject?(v45);
        v47 = v45;
        v12 = v51;
        MEMORY[0x1865F56C0](v47, -1, -1);
        MEMORY[0x1865F56C0](v43, -1, -1);
      }
    }

    else
    {
      (*v68)(v12, v6);
LABEL_19:

      *(v54 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      if (__OFADD__(v58++, 1))
      {
        goto LABEL_29;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      v48 = v57;

      specialized _NativeSet.extractSubset(using:count:)(v54, v50, v58, v48);
      return;
    }

    v21 = *(v53 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t partial apply for closure #3 in QueryController.resultDidUpdate(_:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppExtensionXPCConfiguration.init(connectionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionXPCConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtensionXPCConfiguration(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Void __swiftcall _EXQuery.encode(with:)(NSCoder with)
{
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = MEMORY[0x1865F36D0](0x7954746C75736572, 0xEA00000000006570);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];

  v5 = *(v1 + OBJC_IVAR____EXQuery_allowsDuplicates);
  v6 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C3270);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXQuery_includePostprocessing);
  v8 = MEMORY[0x1865F36D0](0xD000000000000015, 0x80000001848C3290);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____EXQuery_includeUpdatingApps);
  v10 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C32B0);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____EXQuery_excludeLockedApps);
  v12 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C32D0);
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____EXQuery_excludeDisabled);
  v14 = MEMORY[0x1865F36D0](0x446564756C637865, 0xEF64656C62617369);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v1 + v15, v18);
  v16 = v19;
  v17 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v17 + 88))(with.super.isa, v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

id _EXQuery.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized _EXQuery.init(coder:)(a1);

  return v4;
}

id _EXQuery.init(coder:)(void *a1)
{
  v2 = specialized _EXQuery.init(coder:)(a1);

  return v2;
}

void static _EXQuery.decodeInnerQuery(coder:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = MEMORY[0x1865F36D0](0x65755172656E6E69, 0xEE00657079547972);
  v6 = [a1 decodeIntegerForKey_];

  if (v6 == 1)
  {
    specialized _EXQuery.RecordQuery.init(coder:)(a1);
    if (!v2)
    {
      a2[3] = &type metadata for _EXQuery.RecordQuery;
      a2[4] = &protocol witness table for _EXQuery.RecordQuery;
      v7 = swift_allocObject();
      *a2 = v7;
      v8 = v14;
      *(v7 + 16) = v13;
      *(v7 + 32) = v8;
      *(v7 + 48) = v15;
    }
  }

  else if (v6)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    specialized _EXQuery.ValuesQuery.init(coder:)(a1, v11);
    if (!v2)
    {
      a2[3] = &type metadata for _EXQuery.ValuesQuery;
      a2[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v9 = swift_allocObject();
      *a2 = v9;
      v10 = v11[1];
      *(v9 + 16) = v11[0];
      *(v9 + 32) = v10;
      *(v9 + 48) = v11[2];
      *(v9 + 64) = v12;
    }
  }
}

Swift::Bool __swiftcall _EXQuery.matches(_:)(_EXExtensionIdentity *a1)
{
  v2 = v1;
  v4 = [(_EXExtensionIdentity *)a1 extensionPointIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v2 + v8, v18);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  if (v13)
  {
    if (v5 == v11 && v13 == v7)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v17 = *(v2 + OBJC_IVAR____EXQuery_predicate);
    result = (v17 == 0) & v15;
    if (v17)
    {
      if (v15)
      {
        return [*(v2 + OBJC_IVAR____EXQuery_predicate) evaluateWithObject_];
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

BOOL _EXQuery.matches(record:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v1 + v4, v27);
  v5 = v28;
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v7 = (*(v6 + 8))(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v11 = [a1 extensionPointRecord];
    v12 = [v11 identifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v9 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    outlined init with copy of _InnerAppExtensionIdentity(v2 + v4, v27);
    v23 = v28;
    v24 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v21 = (*(v24 + 40))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v22 = [a1 extensionPointRecord];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    outlined init with copy of _InnerAppExtensionIdentity(v1 + v4, v27);
    v19 = v28;
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v21 = (*(v20 + 40))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v22 = [a1 extensionPointRecord];
  }

  v25 = v22;
  v26 = [v25 platform];

  return (v21 + 1) <= 1 || v26 == v21;
}

id _EXQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall _EXQuery.ValuesQuery.encode(with:)(NSCoder with)
{
  if (v1[1])
  {
    v3 = MEMORY[0x1865F36D0](*v1);
    v4 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C3400);
    [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  }

  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];
}

uint64_t protocol witness for InnerQuery.extensionPointIdentifier.setter in conformance _EXQuery.ValuesQuery(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void _EXQuery.RecordQuery.extensionPointIdentifier.setter()
{

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.general);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    MEMORY[0x1865F56C0](v2, -1, -1);
  }
}

uint64_t protocol witness for InnerQuery.extensionPointIdentifier.getter in conformance _EXQuery.RecordQuery()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for InnerQuery.extensionPointRecords.getter in conformance _EXQuery.RecordQuery()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1848BBBA0;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

void protocol witness for InnerQuery.encode(with:) in conformance _EXQuery.RecordQuery(void *a1)
{
  v3 = [*v1 persistentIdentifier];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);

  v8 = MEMORY[0x1865F36D0](0x64726F636572, 0xE600000000000000);
  [a1 encodeObject:isa forKey:v8];
}

uint64_t closure #1 in static _EXQuery.execute(query:completion:)(unint64_t a1, void (*a2)(uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    v5 = _bridgeCocoaArray<A>(_:)();

    v3 = v5;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  a2(v3);
}

id specialized static _EXQuery.makeQuery(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  active_platform = dyld_get_active_platform();
  v5 = _EXAuditTokenForCurrentProcess();
  v6 = v5[1];
  v18 = *v5;
  v19 = v6;
  v7 = type metadata accessor for _EXQuery();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v8[OBJC_IVAR____EXQuery_predicate] = 0;
  v8[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v9 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 queryAllowsDuplicates];

  v8[v9] = v11;
  v8[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  *v21 = active_platform;
  *&v21[4] = v18;
  *&v21[20] = v19;
  v22[0] = a1;
  v22[1] = a2;
  v23 = active_platform;
  v24 = v18;
  v25 = v19;

  outlined init with copy of _EXQuery.ValuesQuery(&v20, v17);
  outlined destroy of _EXQuery.ValuesQuery(v22);
  v12 = &v8[OBJC_IVAR____EXQuery_inner];
  v12[3] = &type metadata for _EXQuery.ValuesQuery;
  v12[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v13 = swift_allocObject();
  *v12 = v13;
  v14 = *v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  *(v13 + 48) = *&v21[16];
  *(v13 + 64) = *&v21[32];
  v16.receiver = v8;
  v16.super_class = v7;
  return objc_msgSendSuper2(&v16, sel_init);
}

id specialized static _EXQuery.query(extensionPointIdentifier:platform:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = _EXAuditTokenForCurrentProcess();
  v7 = v6[1];
  v19 = *v6;
  v20 = v7;
  v8 = type metadata accessor for _EXQuery();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v9[OBJC_IVAR____EXQuery_predicate] = 0;
  v9[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v10 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 queryAllowsDuplicates];

  v9[v10] = v12;
  v9[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *v22 = a3;
  *&v22[4] = v19;
  *&v22[20] = v20;
  v23[0] = a1;
  v23[1] = a2;
  v24 = a3;
  v25 = v19;
  v26 = v20;

  outlined init with copy of _EXQuery.ValuesQuery(&v21, v18);
  outlined destroy of _EXQuery.ValuesQuery(v23);
  v13 = &v9[OBJC_IVAR____EXQuery_inner];
  v13[3] = &type metadata for _EXQuery.ValuesQuery;
  v13[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v14 = swift_allocObject();
  *v13 = v14;
  v15 = *v22;
  *(v14 + 16) = v21;
  *(v14 + 32) = v15;
  *(v14 + 48) = *&v22[16];
  *(v14 + 64) = *&v22[32];
  v17.receiver = v9;
  v17.super_class = v8;
  return objc_msgSendSuper2(&v17, sel_init);
}

id specialized _EXQuery.init(extensionPointRecord:)(void *a1)
{
  *&v1[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v1[OBJC_IVAR____EXQuery_predicate] = 0;
  v1[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v3 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 queryAllowsDuplicates];

  v1[v3] = v5;
  v1[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v1[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v1[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  v6 = a1;
  v7 = _EXAuditTokenForCurrentProcess();
  v8 = v7[1];
  v14 = *v7;
  v15 = v8;
  v9 = &v1[OBJC_IVAR____EXQuery_inner];
  v9[3] = &type metadata for _EXQuery.RecordQuery;
  v9[4] = &protocol witness table for _EXQuery.RecordQuery;
  v10 = swift_allocObject();
  *v9 = v10;
  *(v10 + 16) = v6;
  v11 = v15;
  *(v10 + 24) = v14;
  *(v10 + 40) = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for _EXQuery();
  return objc_msgSendSuper2(&v13, sel_init);
}

void specialized _EXQuery.RecordQuery.platform.setter()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.general);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    MEMORY[0x1865F56C0](v2, -1, -1);
  }
}

void specialized _EXQuery.ValuesQuery.init(coder:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v16 = 0;
  v17 = 0;
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v5 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
  v6 = [a1 decodeIntegerForKey_];

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(v6))
  {
LABEL_9:
    __break(1u);
    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = [v7 connection]) != 0)
  {
    v9 = v8;
    [v8 auditToken];

    a1 = v9;
  }

  else
  {
    v10 = _EXAuditTokenForCurrentProcess();
    v11 = v10[1];
    v21 = *v10;
    v22 = v11;
  }

  v14 = 0uLL;
  *v15 = v6;
  *&v15[4] = v21;
  *&v15[20] = v22;
  v16 = 0;
  v17 = 0;
  v18 = v6;
  v19 = v21;
  v20 = v22;
  outlined init with copy of _EXQuery.ValuesQuery(&v14, v13);
  outlined destroy of _EXQuery.ValuesQuery(&v16);
  v12 = *v15;
  *a2 = v14;
  *(a2 + 16) = v12;
  *(a2 + 32) = *&v15[16];
  *(a2 + 48) = *&v15[32];
}

void specialized _EXQuery.RecordQuery.init(coder:)(Class isa)
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v3 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v3)
  {
    v4 = v3;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  [objc_opt_self() _EX_parameterError];
  swift_willThrow();
}

id specialized _EXQuery.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____EXQuery_resultType;
  *&v1[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v1[OBJC_IVAR____EXQuery_predicate] = 0;
  v4 = OBJC_IVAR____EXQuery_includePostprocessing;
  v1[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v5 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 queryAllowsDuplicates];

  v1[v5] = v7;
  v8 = OBJC_IVAR____EXQuery_includeUpdatingApps;
  v1[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v9 = OBJC_IVAR____EXQuery_excludeLockedApps;
  v1[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v10 = OBJC_IVAR____EXQuery_excludeDisabled;
  v1[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  v11 = MEMORY[0x1865F36D0](0x7954746C75736572, 0xEA00000000006570);
  v12 = [a1 decodeIntegerForKey_];

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *&v1[v3] = v12;
    v13 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C3270);
    v14 = [a1 decodeBoolForKey_];

    v1[v5] = v14;
    v15 = MEMORY[0x1865F36D0](0xD000000000000015, 0x80000001848C3290);
    v16 = [a1 decodeBoolForKey_];

    v1[v4] = v16;
    v17 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C32B0);
    v18 = [a1 decodeBoolForKey_];

    v1[v8] = v18;
    v19 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C32D0);
    v20 = [a1 decodeBoolForKey_];

    v1[v9] = v20;
    v21 = MEMORY[0x1865F36D0](0x446564756C637865, 0xEF64656C62617369);
    v22 = [a1 decodeBoolForKey_];

    v1[v10] = v22;
    v23 = type metadata accessor for _EXQuery();
    static _EXQuery.decodeInnerQuery(coder:)(a1, v26);
    outlined init with take of _InnerAppExtensionIdentity(v26, &v1[OBJC_IVAR____EXQuery_inner]);
    v25.receiver = v1;
    v25.super_class = v23;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _EXQuery.ValuesQuery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _EXQuery.ValuesQuery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id _EXHostConfiguration.().init()()
{
  *&v0[OBJC_IVAR____EXHostConfiguration__extensionIdentity] = 0;
  v1 = &v0[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = 0;
  *&v0[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = 0;
  *&v0[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  v2 = &v0[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____EXHostConfiguration_launchPersona] = 0;
  v3 = OBJC_IVAR____EXHostConfiguration_assertionAttributes;
  *&v0[v3] = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v0[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = 0;
  v4 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
  v5 = type metadata accessor for NWApplicationID();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _EXHostConfiguration(0);
  return objc_msgSendSuper2(&v7, sel_init);
}

id _EXHostConfiguration.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
  v5 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(a1, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *_EXHostConfiguration.__allocating_init(processConfiguration:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppExtensionIdentity(a1, v39);
  outlined init with copy of _InnerAppExtensionIdentity(v39, v38);
  v14 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined destroy of AppExtensionIdentity(v39);
  outlined init with take of _InnerAppExtensionIdentity(v38, v37);
  v15 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v16 = v14;
  outlined assign with take of AppExtensionIdentity?(v37, v14 + v15, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  v18 = objc_allocWithZone(v1);
  v19 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
  v20 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v17, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v21 = *(a1 + 48);
  v22 = &v20[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v24 = *&v20[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v23 = *&v20[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  *v22 = *(a1 + 40);
  *(v22 + 1) = v21;
  v25 = v20;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v24, v23);

  v26 = type metadata accessor for AppExtensionProcess.Configuration(0);
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(a1 + v26[6], v10);
  outlined init with take of UUID?(v10, v7);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v27 = v35;
    (*(v12 + 32))(v35, v7, v11);
    v28 = v36;
    (*(v12 + 16))(v36, v27, v11);
    (*(v12 + 56))(v28, 0, 1, v11);
    v29 = objc_allocWithZone(type metadata accessor for _EXExtensionInstanceIdentifier(0));
    v30 = _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(v28);
    (*(v12 + 8))(v27, v11);
    v31 = *&v25[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    *&v25[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = v30;
  }

  v25[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = *(a1 + v26[7]);
  v32 = *(a1 + v26[8]);

  outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for AppExtensionProcess.Configuration);
  *&v25[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = v32;

  return v25;
}

id _EXHostConfiguration.init(with:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
  v3 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(a1, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id _EXHostConfiguration.__allocating_init(with:instanceIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(a1, a2);

  return v6;
}

id _EXHostConfiguration.init(with:instanceIdentifier:)(void *a1, void *a2)
{
  v4 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(a1, a2);

  return v4;
}

uint64_t _EXHostConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-v6];
  v8 = *(v1 + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____EXHostConfiguration_instanceIdentifier);
    v10 = type metadata accessor for _EXHostConfiguration(0);
    v11 = objc_allocWithZone(v10);
    v12 = v9;
    v13 = v8;
    v14 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v13, v9);

    v15 = *(v2 + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
    v16 = *(v2 + OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8);
    v17 = &v14[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
    v18 = *&v14[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
    v19 = *&v14[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
    *v17 = v15;
    v17[1] = v16;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSXPCConnection) -> (@unowned Bool))?(v15, v16);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v18, v19);
    *&v14[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = *(v2 + OBJC_IVAR____EXHostConfiguration_preferredLanguages);

    *&v14[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = *(v2 + OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables);

    v20 = *(v2 + OBJC_IVAR____EXHostConfiguration_launchPersona);
    v21 = *&v14[OBJC_IVAR____EXHostConfiguration_launchPersona];
    *&v14[OBJC_IVAR____EXHostConfiguration_launchPersona] = v20;
    v22 = v20;

    *&v14[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = *(v2 + OBJC_IVAR____EXHostConfiguration_assertionAttributes);

    v14[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = *(v2 + OBJC_IVAR____EXHostConfiguration_requireInvalidation);
    v23 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined init with copy of NWApplicationID?(v2 + v23, v7);
    v24 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v7, &v14[v24], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    result = swift_endAccess();
    a1[3] = v10;
    *a1 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXHostConfiguration.description.getter()
{
  v1 = v0;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v15.receiver = v0;
  v15.super_class = type metadata accessor for _EXHostConfiguration(0);
  v2 = objc_msgSendSuper2(&v15, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v16 = v3;
  v17 = v5;
  result = MEMORY[0x1865F37A0](0x7469746E65646920, 0xEB00000000203A79);
  v7 = *&v0[OBJC_IVAR____EXHostConfiguration__extensionIdentity];
  if (v7)
  {
    v8 = v7;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    MEMORY[0x1865F37A0](v10, v12);

    MEMORY[0x1865F37A0](0x636E6174736E6920, 0xEB00000000203A65);
    v13 = *&v1[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMd, &_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMR);
    v14 = String.init<A>(describing:)();
    MEMORY[0x1865F37A0](v14);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _EXHostConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXHostConfiguration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _EXHostConfiguration.rbsProcessIdentity.getter()
{
  v1 = getpid();
  v2 = [objc_opt_self() identifierWithPid_];
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.general);
  v4 = v0;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v4;
    v9[1] = v2;
    v10 = v4;
    v11 = v5;
    _os_log_impl(&dword_1847D1000, v6, v7, "Vending RBSProcessIdentity for: %{public}@ with host: %{public}@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v9, -1, -1);
    MEMORY[0x1865F56C0](v8, -1, -1);
  }

  if (v5)
  {
    v12 = v4;
    v13 = v5;
    v14 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v12);
    v15 = [v14 rbsProcessIdentityWithHost_];
    if (v15)
    {
      v16 = v15;

      return v16;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id _EXHostConfiguration.init(with:)(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
    v4 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v2, 0);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(27);
    MEMORY[0x1865F37A0](0xD000000000000019, 0x80000001848C3840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _EXHostConfiguration.extensionRepresenting.setter(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    *&v1[OBJC_IVAR____EXHostConfiguration__extensionIdentity] = v2;
  }

  else
  {
    swift_unknownObjectRelease();
    _StringGuts.grow(_:)(27);
    MEMORY[0x1865F37A0](0xD000000000000019, 0x80000001848C3840);
    [v1 extension];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t outlined init with copy of AppExtensionProcess._InstanceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized _EXHostConfiguration.init(with:instanceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {

    return [v3 initWithExtensionIdentity:v5 instanceIdentifier:a2];
  }

  else
  {
    _StringGuts.grow(_:)(27);
    MEMORY[0x1865F37A0](0xD000000000000019, 0x80000001848C3840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of NSObject?(a1, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of NSObject?(v7, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_19ExtensionFoundation24_EXServiceClientObserver_ps5NeverOTg504_s19f13Foundation16_hi66C06ActiveD5Query33_591406279EDD09BF7033B88E7B83DCFDLLC07ServiceD11j41SetC10allObjectsSayAA01_cdN0_pGvgAaJ_ps11dE6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v21 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v21 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v5, v23);
    outlined init with copy of AnyHashable(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation24_EXServiceClientObserver_pMd, &_s19ExtensionFoundation24_EXServiceClientObserver_pMR);
    swift_dynamicCast();
    outlined destroy of AnyHashable(v23);
    v25 = v2;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v2 = v25;
    }

    *(v2 + 16) = v12 + 1;
    result = outlined init with take of _InnerAppExtensionIdentity(&v24, v2 + 40 * v12 + 32);
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v21 + 8 * v9);
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

unint64_t _EXServiceClient.extensions(with:)(unint64_t result)
{
  v1 = result;
  v13 = MEMORY[0x1E69E7CD0];
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_14:
    v10 = type metadata accessor for _EXQueryResult();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____EXQueryResult_identities] = v9;
    *&v11[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v12.receiver = v11;
    v12.super_class = v10;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1865F3F40](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      v6 = _EXServiceClient.result(with:)(v4);
      if (*&v6[OBJC_IVAR____EXQueryResult_identities])
      {

        specialized Set.formUnion<A>(_:)(v7, v8);
      }
    }

    v9 = v13;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t _EXServiceClient.fetchExtensions(with:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v29 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = swift_allocObject();
  *(v42 + 16) = MEMORY[0x1E69E7CD0];
  v41 = dispatch_group_create();
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v22 = swift_allocObject();
    v23 = v29;
    v22[2] = v42;
    v22[3] = v23;
    v22[4] = v30;
    v48 = partial apply for closure #2 in _EXServiceClient.fetchExtensions(with:completion:);
    v49 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v47 = &block_descriptor_137;
    v24 = _Block_copy(&aBlock);

    v25 = v31;
    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v26 = v33;
    v27 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v41;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v24);

    (*(v35 + 8))(v26, v27);
    (*(v32 + 8))(v25, v34);
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result >= 1)
  {
    v8 = 0;
    v38 = &v46;
    v39 = a1 & 0xC000000000000001;
    v40 = a1;
    v37 = result;
    do
    {
      if (v39)
      {
        v9 = MEMORY[0x1865F3F40](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = v41;
      dispatch_group_enter(v41);
      v12 = swift_allocObject();
      *(v12 + 16) = v42;
      *(v12 + 24) = v11;

      v13 = v11;
      v14 = _EXServiceClient.discoveryConnection.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for closure #1 in _EXServiceClient.fetchExtensions(with:completion:);
      *(v15 + 24) = v12;
      v48 = closure #1 in _EXServiceClient.fetchResults(with:completion:)partial apply;
      v49 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v47 = &block_descriptor_124;
      v16 = _Block_copy(&aBlock);

      v17 = [v14 remoteObjectProxyWithErrorHandler_];
      _Block_release(v16);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
      swift_dynamicCast();
      v18 = v43;
      v19 = swift_allocObject();
      v19[2] = v10;
      v19[3] = partial apply for closure #1 in _EXServiceClient.fetchExtensions(with:completion:);
      v19[4] = v12;
      v48 = closure #2 in _EXServiceClient.fetchResults(with:completion:)partial apply;
      v49 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
      v47 = &block_descriptor_131;
      v20 = _Block_copy(&aBlock);

      v21 = v10;

      [v18 extensionsWith:v21 reply:v20];
      _Block_release(v20);

      swift_unknownObjectRelease();
      a1 = v40;
    }

    while (v37 != v8);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id one-time initialization function for shared(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for _EXServiceClient()) init];
  static _EXServiceClient.shared = result;
  return result;
}

id _EXServiceClient.().init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v15 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____EXServiceClient_connectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR____EXServiceClient__discoveryConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__observerConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__tccProxyConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__launchConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient_activeQueries] = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____EXServiceClient_activeQueriesLock;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____EXServiceClient_activeObservers] = MEMORY[0x1E69E7CC8];
  v9 = OBJC_IVAR____EXServiceClient_activeObserversLock;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v0[v9] = v10;
  v14 = OBJC_IVAR____EXServiceClient_notifyQueue;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v15, *MEMORY[0x1E69E8090], v17);
  *&v0[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for _EXServiceClient();
  v18.receiver = v0;
  v18.super_class = v11;
  return objc_msgSendSuper2(&v18, sel_init);
}

id _EXServiceClient.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____EXServiceClient__discoveryConnection];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *&v0[OBJC_IVAR____EXServiceClient__observerConnection];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *&v0[OBJC_IVAR____EXServiceClient__tccProxyConnection];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *&v0[OBJC_IVAR____EXServiceClient__launchConnection];
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for _EXServiceClient();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v8, v7);
  outlined destroy of AnyHashable(v8);
  return swift_endAccess();
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.remove<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v7, v8);
  outlined destroy of AnyHashable(v7);
  outlined destroy of NSObject?(v8, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  return swift_endAccess();
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakAssign();
}

uint64_t _EXServiceClient.ActiveClientQuery.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v6, &_sypSgMd, &_sypSgMR);
  if (!v7)
  {
    outlined destroy of NSObject?(v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXServiceClient.ActiveClientQuery();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == v1)
  {

    v3 = 1;
  }

  else
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v2 = *&v5[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
    v3 = static NSObject.== infix(_:_:)();
  }

  return v3 & 1;
}

id _EXServiceClient.discoveryConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = OBJC_IVAR____EXServiceClient__discoveryConnection;
  v6 = *(v0 + OBJC_IVAR____EXServiceClient__discoveryConnection);
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

  v13 = MEMORY[0x1865F36D0](0x7265766F63736944, 0xE900000000000079);
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
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265766F63736944, 0xE900000000000079, &aBlock);
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
  v32 = &block_descriptor_91;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 NSXPCConnectionWithEndpoint:v14 configurator:v16];
  _Block_release(v16);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for discoveryServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v17 setRemoteObjectInterface_];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #2 in _EXServiceClient.discoveryConnection.getter;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_95;
  v19 = _Block_copy(&aBlock);

  [v17 setInterruptionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #3 in _EXServiceClient.discoveryConnection.getter;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_99;
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

void closure #2 in _EXServiceClient.discoveryConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.discoveryConnection.getter(v3);
  os_unfair_lock_unlock(v2 + 4);

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR____EXServiceClient_activeQueriesLock];
  os_unfair_lock_lock(v5 + 4);
  partial apply for closure #1 in _EXServiceClient.reconnectActiveQueries()(v6);
  os_unfair_lock_unlock(v5 + 4);
}

uint64_t closure #3 in _EXServiceClient.discoveryConnection.getter(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.discoveryConnection.getter();
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in _EXServiceClient.reconnectActiveQueries()(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____EXServiceClient_activeQueries;
  swift_beginAccess();
  v28 = a2;
  v4 = *(a2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXServiceClient.ActiveClientQuery();
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type _EXServiceClient.ActiveClientQuery and conformance NSObject, type metadata accessor for _EXServiceClient.ActiveClientQuery, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v4 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v27 = v4;
  while (v4 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17 || (v30 = v17, type metadata accessor for _EXServiceClient.ActiveClientQuery(), swift_dynamicCast(), v16 = aBlock, v14 = v7, v15 = v8, !aBlock))
    {
LABEL_22:
      outlined consume of [String : Any].Iterator._Variant(v4);
      return;
    }

LABEL_18:
    v29 = v15;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      swift_unknownObjectWeakAssign();
      [v19 invalidate];
    }

    v20 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started;
    v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
    os_unfair_lock_assert_owner((*(v28 + OBJC_IVAR____EXServiceClient_activeQueriesLock) + 16));
    if ((v16[v20] & 1) == 0)
    {
      v21 = _EXServiceClient.discoveryConnection.getter();
      v35 = closure #1 in _EXServiceClient.begin(activeQuery:);
      v36 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v34 = &block_descriptor_102;
      v22 = _Block_copy(&aBlock);
      v23 = [v21 remoteObjectProxyWithErrorHandler_];
      _Block_release(v22);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
      swift_dynamicCast();
      v16[v20] = 1;
      v24 = *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
      v25 = [*&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] endpoint];
      v35 = closure #2 in _EXServiceClient.begin(activeQuery:);
      v36 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v4 = v27;
      v33 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v34 = &block_descriptor_105;
      v26 = _Block_copy(&aBlock);
      [v30 beginExtensionsQuery:v24 listenerEndpoint:v25 reply:v26];
      _Block_release(v26);
      swift_unknownObjectRelease();

      v16 = v25;
    }

    v7 = v14;
    v8 = v29;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id _EXServiceClient.result(with:)(char *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *&a1[OBJC_IVAR____EXQuery_predicate];
  v4 = v3;
  v5 = _EXServiceClient.discoveryConnection.getter();
  v21 = closure #1 in _EXServiceClient.result(with:);
  v22 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v20 = &block_descriptor_143;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
  swift_dynamicCast();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = v2;
  v21 = partial apply for closure #2 in _EXServiceClient.result(with:);
  v22 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v20 = &block_descriptor_149;
  v9 = _Block_copy(&aBlock);
  v10 = v4;
  v11 = a1;

  [v16 extensionsWith:v11 reply:v9];
  _Block_release(v9);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
  }

  v14 = v13;

  swift_unknownObjectRelease();

  return v14;
}

void closure #2 in _EXServiceClient.result(with:)(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3 && *&a1[OBJC_IVAR____EXQueryResult_identities] && !*(a4 + OBJC_IVAR____EXQuery_resultType))
    {
      v19 = a3;
      v20 = a1;

      v22 = specialized Set._Variant.filter(_:)(v21, v19);

      v23 = type metadata accessor for _EXQueryResult();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____EXQueryResult_identities] = v22;
      *&v24[OBJC_IVAR____EXQueryResult_availablility] = 0;
      v28.receiver = v24;
      v28.super_class = v23;
      v25 = objc_msgSendSuper2(&v28, sel_init);

      swift_beginAccess();
      v26 = *(a5 + 16);
      *(a5 + 16) = v25;
    }

    else
    {
      swift_beginAccess();
      v7 = *(a5 + 16);
      *(a5 + 16) = a1;
      v8 = a1;
    }
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.discovery);
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_1847D1000, oslog, v12, "Query failed with error: %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v14, -1, -1);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }
  }
}

uint64_t _EXServiceClient.fetchResults(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _EXServiceClient.discoveryConnection.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v19 = partial apply for closure #1 in _EXServiceClient.fetchResults(with:completion:);
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v18 = &block_descriptor_81;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
  swift_dynamicCast();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v19 = partial apply for closure #2 in _EXServiceClient.fetchResults(with:completion:);
  v20 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v18 = &block_descriptor_87;
  v11 = _Block_copy(&aBlock);

  v12 = a1;

  [v14 extensionsWith:v12 reply:v11];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

void closure #1 in _EXServiceClient.fetchResults(with:completion:)(void *a1, void (*a2)(void))
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.discovery);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1847D1000, v6, v7, "Query failed with error: %{public}@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v9, -1, -1);
    MEMORY[0x1865F56C0](v8, -1, -1);
  }

  v12 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
  a2();
}

void closure #2 in _EXServiceClient.fetchResults(with:completion:)(char *a1, void *a2, uint64_t a3, void (*a4)(id))
{
  if (a1)
  {
    v6 = *(a3 + OBJC_IVAR____EXQuery_predicate);
    if (v6 && *&a1[OBJC_IVAR____EXQueryResult_identities] && !*(a3 + OBJC_IVAR____EXQuery_resultType))
    {
      v18 = v6;
      v19 = a1;

      v21 = specialized Set._Variant.filter(_:)(v20, v18);

      v22 = type metadata accessor for _EXQueryResult();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____EXQueryResult_identities] = v21;
      *&v23[OBJC_IVAR____EXQueryResult_availablility] = 0;
      v28.receiver = v23;
      v28.super_class = v22;
      v24 = objc_msgSendSuper2(&v28, sel_init);
      if ([v24 isKindOfClass_])
      {
        v25 = swift_dynamicCastClassUnconditional();
        a4(v25);
      }

      else
      {
        v26 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
      }

      return;
    }

    v27 = v6;
    v7 = a1;
    (a4)();
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.discovery);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_1847D1000, v11, v12, "Query failed with error: %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v14, -1, -1);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }

    v27 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
    (a4)();
  }
}

void closure #1 in _EXServiceClient.fetchExtensions(with:completion:)(uint64_t a1, uint64_t a2, dispatch_group_t group)
{
  if (*(a1 + OBJC_IVAR____EXQueryResult_identities))
  {
    swift_beginAccess();

    specialized Set.formUnion<A>(_:)(v4, v5);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void closure #2 in _EXServiceClient.fetchExtensions(with:completion:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _EXQueryResult();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____EXQueryResult_identities] = v4;
  *&v6[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v8.receiver = v6;
  v8.super_class = v5;

  v7 = objc_msgSendSuper2(&v8, sel_init);
  a2();
}

unint64_t specialized Set.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.index(for:)();
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else if (*(a2 + 16) && (type metadata accessor for _EXServiceClient.ActiveClientQuery(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v4 = v5 & ~v6, ((*(a2 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v7 = ~v6;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v4);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v7;
      if (((*(a2 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1865F3E10](a1, a2, v7);
      type metadata accessor for _EXExtensionIdentity();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for _EXExtensionIdentity();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1865F3E10](a1, a2, v7);
      type metadata accessor for _EXServiceClient.ActiveClientQuery();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for _EXServiceClient.ActiveClientQuery();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}