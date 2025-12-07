uint64_t static MOPresenterServer.getConnectionIdentifier(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && [a1 userInfo])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t MOPresenterServer.removeConnectionID(connectionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v73 = &v59[-v5];
  v6 = type metadata accessor for Logger();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v71 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v59[-v12];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v72 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v17);
  v68 = &v59[-v19];
  __chkstk_darwin(v18);
  v21 = &v59[-v20];
  outlined init with copy of (String, Date?)(a1, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v23 = *(v15 + 32);
  v23(v21, v13, v14);
  v24 = (*((swift_isaMask & *v2) + 0xC0))(v21);
  if (v24)
  {
    v25 = v24;
    v64 = *(v2 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
    [v64 lock];
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v21);
    swift_endAccess();

    swift_beginAccess();
    v26 = *(v25 + 16);
    v67 = v15 + 32;
    v66 = v23;
    if (v26)
    {
      v27 = [v26 remoteProcess];
    }

    else
    {
      v27 = 0;
    }

    v63 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v27);
    v29 = v28;

    if (v29)
    {
      v30 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
      swift_beginAccess();
      v31 = *(v2 + v30);
      if (*(v31 + 16))
      {

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v29);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 8 * v32);

          v35 = specialized Set.contains(_:)(v21, v34);

          if (v35)
          {
            v36 = MOPresenterServer._clientConnectionsImpl.modify(v75);
            v37 = specialized Dictionary.subscript.modify(v74, v63, v29);
            if (*v38)
            {
              specialized Set._Variant.remove(_:)(v21, v11);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              (v37)(v74, 0);

              (v36)(v75, 0);
            }

            else
            {
              (v37)(v74, 0);

              (v36)(v75, 0);
              (*(v15 + 56))(v11, 1, 1, v14);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            }

            goto LABEL_15;
          }
        }

        else
        {
        }
      }
    }

LABEL_15:
    v39 = *(v25 + 16);
    swift_beginAccess();
    v40 = *(v25 + 64);
    v65 = v40;
    v41 = v39;
    [v64 unlock];
    v64 = v41;
    [v41 invalidate];
    specialized MOPresenterServer.destroyScene(with:)(v40);
    if (v29)
    {
      type metadata accessor for CommonLogger();
      v42 = v71;
      static CommonLogger.presentation.getter();
      v43 = v68;
      (*(v15 + 16))(v68, v21, v14);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v61 = v44;
        v47 = v43;
        v48 = v46;
        v62 = swift_slowAlloc();
        v74[0] = v62;
        *v48 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v60 = v45;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v15 + 8))(v47, v14);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v74);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v29, v74);
        v53 = v61;
        _os_log_impl(&_mh_execute_header, v61, v60, "[MOPresenterServer] Connection  %s removed for client: %s", v48, 0x16u);
        swift_arrayDestroy();

        (*(v69 + 8))(v71, v70);
      }

      else
      {

        (*(v15 + 8))(v43, v14);
        (*(v69 + 8))(v42, v70);
      }
    }

    v54 = type metadata accessor for TaskPriority();
    v55 = v73;
    (*(*(v54 - 8) + 56))(v73, 1, 1, v54);
    v56 = v72;
    (*(v15 + 16))(v72, v21, v14);
    v57 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    v66(v58 + v57, v56, v14);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in MOPresenterServer.removeConnectionID(connectionID:), v58);
  }

  return (*(v15 + 8))(v21, v14);
}

id closure #1 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:)(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v39 = a4;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-v6];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v30[-v17];
  result = [a2 userInfo];
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v37 = v9;
      v38 = v8;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      v36 = *(v13 + 16);
      v36(v16, v18, v12);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v33 = v22;
        v34 = swift_slowAlloc();
        v41 = v34;
        *v22 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v32 = v20;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = *(v13 + 8);
        v31 = v21;
        v35 = v26;
        v26(v16, v12);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v41);

        v29 = v32;
        v28 = v33;
        *(v33 + 1) = v27;
        _os_log_impl(&_mh_execute_header, v29, v31, v39, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      else
      {

        v35 = *(v13 + 8);
        v35(v16, v12);
      }

      (*(v37 + 8))(v11, v38);
      v36(v7, v18, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      MOPresenterServer.removeConnectionID(connectionID:)(v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v35)(v18, v12);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id closure #3 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v27[-v12];
  result = [a2 userInfo];
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      (*(v8 + 16))(v11, v13, v7);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31 = v3;
        v18 = v17;
        v29 = v17;
        v30 = swift_slowAlloc();
        v32 = v30;
        *v18 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = v16;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v4;
        v22 = v21;
        v23 = *(v8 + 8);
        v23(v11, v7);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v32);

        v25 = v29;
        *(v29 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v15, v28, "Connection active: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);

        (*(v20 + 8))(v6, v31);
        return (v23)(v13, v7);
      }

      else
      {

        v26 = *(v8 + 8);
        v26(v11, v7);
        (*(v4 + 8))(v6, v3);
        return (v26)(v13, v7);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t MOPresenterServer.addConnection(connection:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v104 - v9;
  v10 = type metadata accessor for Logger();
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v109 = &v104 - v15;
  v16 = __chkstk_darwin(v14);
  v119 = &v104 - v17;
  __chkstk_darwin(v16);
  v118 = &v104 - v18;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v115 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = (&v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v112);
  v113 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v22 - 8);
  v111 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 remoteProcess];
  v116 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v24);
  v26 = v25;

  v120 = v26;
  if (!v26)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    (*(v5 + 16))(v8, a2, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v128[0] = v38;
      *v37 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v128);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "[MOPresenterServer] Can't add connection with nil clientID, connectionID=%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v121 + 8))(v13, v122);
    return 0;
  }

  v110 = a2;
  v27 = [a1 remoteProcess];
  v107 = v19;
  if (v27 && (v28 = v27, v29 = [v27 bundleIdentifier], v28, v29))
  {
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v117 = 0;
    v31 = 0;
  }

  v32 = [a1 remoteToken];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 valueForEntitlement:v33];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128[0] = v126;
  v128[1] = v127;
  if (!*(&v127 + 1))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v128, &_sypSgMd, &_sypSgMR);
    if (v31)
    {
      v109 = 0;
      v45 = 0;
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v43 = swift_dynamicCast();
  v44 = v125;
  if (v43)
  {
    v45 = v124;
  }

  else
  {
    v45 = 0;
  }

  if (v43)
  {
    v46 = v125;
  }

  else
  {
    v46 = 0;
  }

  if (v31)
  {
    v109 = v46;
LABEL_22:
    v47 = v31;
    v48 = v128 + 8;
    goto LABEL_23;
  }

  if (!v46)
  {
LABEL_30:

    type metadata accessor for CommonLogger();
    v65 = v109;
    static CommonLogger.presentation.getter();
    v66 = v108;
    (*(v5 + 16))(v108, v110, v4);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *&v128[0] = swift_slowAlloc();
      *v69 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v5;
      v73 = v72;
      (*(v71 + 8))(v66, v4);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, v128);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, v128);
      _os_log_impl(&_mh_execute_header, v67, v68, "[MOPresenterServer] Can't add connection with nil bundleID, connectionID=%s, applicationIdentifier=%s", v69, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v66, v4);
    }

    (*(v121 + 8))(v65, v122);
    return 0;
  }

  v47 = v46;

  v109 = v44;
  v105 = v45;
  v48 = &v129;
LABEL_23:
  *(v48 - 32) = v45;
  type metadata accessor for MOServerConnectionProperties();
  v49 = swift_allocObject();
  *(v49 + 32) = 0;
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  *(v49 + 40) = 4;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v50 = *(v49 + 16);
  *(v49 + 16) = a1;
  v51 = a1;

  v108 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1002A48B0;
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v53 = v117;
  *(v52 + 32) = v117;
  *(v52 + 40) = v47;

  String.init(format:_:)();
  v106 = v54;
  static DispatchQoS.userInitiated.getter();
  *&v126 = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v115)[13](v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
  v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  v56 = *(v49 + 24);
  *(v49 + 24) = v55;

  swift_beginAccess();
  v114 = (v49 + 128);
  *(v49 + 128) = v53;
  v57 = v47;
  *(v49 + 136) = v47;

  v58 = objc_allocWithZone(LSApplicationRecord);

  v59 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v53, v47, 1);
  v60 = v59;
  if (v59)
  {
    v61 = [v59 localizedName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  swift_beginAccess();
  *(v49 + 112) = v62;
  *(v49 + 120) = v64;

  type metadata accessor for CommonLogger();
  v76 = v118;
  static CommonLogger.presentation.getter();
  v77 = v60;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  v80 = os_log_type_enabled(v78, v79);
  v115 = v77;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v81 = 136315394;
    if (v60)
    {
      v82 = [v77 localizedName];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
    }

    else
    {
      v85 = 0xE700000000000000;
      v83 = 0x6E776F6E6B6E55;
    }

    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v123);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2080;
    *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v57, &v123);
    _os_log_impl(&_mh_execute_header, v78, v79, "[MOPresenterServer] Register app for data access, appName: %s, bundleID: %s", v81, 0x16u);
    swift_arrayDestroy();

    v86 = *(v121 + 8);
    v86(v118, v122);
  }

  else
  {

    v86 = *(v121 + 8);
    v86(v76, v122);
  }

  type metadata accessor for DataAccessManager();
  static DataAccessManager.registerApplicationsForDataAccess(applicationBundleIdentifier:)();

  v88 = v119;
  static CommonLogger.presentation.getter();

  v89 = v120;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v92 = 136315906;
    if (*(v49 + 120))
    {
      v93 = *(v49 + 112);
      v94 = *(v49 + 120);
    }

    else
    {
      v94 = 0xE300000000000000;
      v93 = 7104878;
    }

    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v123);

    *(v92 + 4) = v97;
    *(v92 + 12) = 2080;
    if (*(v49 + 136))
    {
      v98 = *v114;
      v99 = *(v49 + 136);
    }

    else
    {
      v99 = 0xE300000000000000;
      v98 = 7104878;
    }

    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v123);

    *(v92 + 14) = v100;
    *(v92 + 22) = 2080;
    if (v109)
    {
      v101 = v105;
    }

    else
    {
      v101 = 7104878;
    }

    if (v109)
    {
      v102 = v109;
    }

    else
    {
      v102 = 0xE300000000000000;
    }

    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v123);

    *(v92 + 24) = v103;
    *(v92 + 32) = 2080;
    v96 = v116;
    v89 = v120;
    *(v92 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v120, &v123);
    _os_log_impl(&_mh_execute_header, v90, v91, "[MOPresenterServer] added connection, appName: %s, bundleID: %s, applicationIdentifier=%s, clientID=%s", v92, 0x2Au);
    swift_arrayDestroy();

    v86(v119, v122);
    v95 = v110;
  }

  else
  {

    v86(v88, v122);
    v95 = v110;
    v96 = v116;
  }

  MOPresenterServer.addConnection(clientID:connectionID:properties:)(v96, v89, v95, v49);

  return 1;
}

void closure #2 in MOPresenterServer.listener(_:didReceive:withContext:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((swift_isaMask & *a1) + 0xC0))(a2);
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    if (*(v11 + 16))
    {
      [a3 activate];

      return;
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Connection was removed before activation, skipping activate call", v14, 2u);
  }

  (*(v7 + 8))(v9, v6);
}

id closure #1 in closure #1 in MOPresenterServer.setupListener()(void *a1, uint64_t a2)
{
  static ViewServiceConstants.momentsUIServiceDomain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static ViewServiceConstants.momentsUIServicePresenterIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t MOPresenterServer.getConnectionIdentifier(connection:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 userInfo])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd, &_sSo9NSCopying_pMR);
    v3 = type metadata accessor for UUID();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
  }

  else
  {
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

id MOPresenterServer.addConnection(clientID:connectionID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v30 = type metadata accessor for UUID();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v31 = *(v4 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v31 lock];
  v15 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
  swift_beginAccess();
  if (!*(*(v4 + v15) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), v17 = v16, , (v17 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(v4 + v15);
    *(v4 + v15) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&_swiftEmptySetSingleton, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v15) = v33[0];
    swift_endAccess();
  }

  v19 = MOPresenterServer._clientConnectionsImpl.modify(v34);
  v20 = specialized Dictionary.subscript.modify(v33, a1, a2);
  if (*v21)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMR);
    v23 = *(v22 + 48);
    (*(v9 + 16))(v11, a3, v30);
    v24 = specialized Set._Variant.insert(_:)(&v14[v23], v11);
    (v20)(v33, 0);
    (v19)(v34, 0);
    *v14 = v24 & 1;
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  }

  else
  {
    (v20)(v33, 0);
    (v19)(v34, 0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMR);
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMR);
  v26 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v27 = v32;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *(v5 + v26);
  *(v5 + v26) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, a3, v28);
  *(v5 + v26) = v33[0];
  swift_endAccess();
  return [v31 unlock];
}

uint64_t closure #2 in MOPresenterServer.removeConnectionID(connectionID:)()
{
  v1 = v0[2];
  type metadata accessor for MomentsUIManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[3] = v5;
  *(v5 + 16) = xmmword_1002A48B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #2 in MOPresenterServer.removeConnectionID(connectionID:);

  return static MomentsUIManager.releaseUserIsActivelyBrowsingOnUI(_:)(v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in MOPresenterServer.destroyScene(with:)(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MOPresenterServer] Error deactivating scene: %@", v7, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return (*(v2 + 8))(v4, v1);
}

void *MOPresenterServer.getConnectionHostID(with:)()
{
  v1 = (*((swift_isaMask & *v0) + 0xC0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = v3;

  return v3;
}

id MOPresenterServer.getConnectionProperties(connection:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v12 - v9;
  if (result)
  {
    result = [result userInfo];
    if (result)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();
        (*(v4 + 32))(v10, v7, v3);
        v11 = (*((swift_isaMask & *v1) + 0xC0))(v10);
        (*(v4 + 8))(v10, v3);
        return v11;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MOPresenterServer.shouldShowStateOfMindTip.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getStateForSetting:9];

  return v1 ^ 1;
}

uint64_t MOPresenterServer.retrieveOnboardingState()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *v1 = v0;
  v1[1] = NotificationRealTimeCheckManager.fetchLastVisit();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x80000001002BABE0, closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, v2);
}

uint64_t closure #1 in MOPresenterServer.retrieveOnboardingState()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd, &_sScCySo8NSNumberCs5NeverOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState(), v11);

  return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_sScPSgMd, &_sScPSgMR);
}

void closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v2)
    {
      __break(1u);
      return;
    }

    v3 = 0;
  }

  *(v0 + 16) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:OnboardingType.onboardingFlowStatus.getter(v3)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd, &_sScCySo8NSNumberCs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v4 = *(v0 + 8);

  v4();
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveOnboardingState()(const void *a1)
{
  *(v1 + 24) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *v2 = v1;
  v2[1] = @objc closure #1 in MOPresenterServer.retrieveOnboardingState();

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000019, 0x80000001002BABE0, closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, v3);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveOnboardingState()()
{

  return _swift_task_switch(@objc closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

double MOPresenterServer.requestPresentation(for:with:)(void *a1, void *a2)
{
  v166 = a2;
  v170 = a1;
  v2 = type metadata accessor for Client();
  v162 = *(v2 - 8);
  v163 = v2;
  __chkstk_darwin(v2);
  v4 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UISceneSessionActivationRequest();
  v160 = *(v5 - 8);
  v161 = v5;
  __chkstk_darwin(v5);
  v159 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _UIWindowSceneOverlayPlacement();
  v157 = *(v7 - 8);
  v158 = v7;
  __chkstk_darwin(v7);
  v156 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  ObjectType = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v167 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v168 = &v146 - v16;
  v17 = __chkstk_darwin(v15);
  v164 = &v146 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v146 - v20;
  __chkstk_darwin(v19);
  v23 = &v146 - v22;
  v173 = type metadata accessor for UUID();
  v171 = *(v173 - 8);
  v24 = *(v171 + 64);
  v25 = __chkstk_darwin(v173);
  v169 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v165 = &v146 - v27;
  v28 = __chkstk_darwin(v26);
  v155 = &v146 - v29;
  __chkstk_darwin(v28);
  v31 = &v146 - v30;
  v32 = objc_opt_self();
  v33 = [v32 currentContext];
  if (v33)
  {
    v34 = v33;
    v174 = v9;
    if ([v33 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v154 = (*((swift_isaMask & *v172) + 0xC0))(v31);
        if (v154)
        {
          v150 = v32;
          v35 = v31;
          v152 = type metadata accessor for CommonLogger();
          static CommonLogger.presentation.getter();
          v36 = v170;
          v37 = v170;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          v149 = v37;

          LODWORD(v153) = v39;
          v40 = v39;
          v41 = v38;
          v42 = os_log_type_enabled(v38, v40);
          v151 = v35;
          v148 = v4;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v177[0] = v147;
            *v43 = 136315138;
            if (v36)
            {
              v44 = [v149 stringRepresentation];
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;

              v48 = v45;
            }

            else
            {
              v48 = 0;
              v47 = 0xE000000000000000;
            }

            v54 = v150;
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v177);

            *(v43 + 4) = v55;
            _os_log_impl(&_mh_execute_header, v41, v153, "[MOPresenterServer] requestPresentation, activating new scene with token: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);

            v53 = v174;
            v153 = *(ObjectType + 8);
            v153(v23, v174);
          }

          else
          {

            v53 = v174;
            v153 = *(ObjectType + 8);
            v153(v23, v174);
            v54 = v150;
          }

          v56 = v154;
          swift_beginAccess();
          if (*(v56 + 32))
          {
            static CommonLogger.presentation.getter();

            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v177[0] = v60;
              *v59 = 134218242;
              swift_beginAccess();
              v61 = *(v56 + 40);
              if (v61 == 4)
              {
                v61 = -1;
              }

              *(v59 + 4) = v61;

              *(v59 + 12) = 2080;
              swift_beginAccess();
              if (*(v56 + 64))
              {
                v62 = 89;
              }

              else
              {
                v62 = 78;
              }

              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, 0xE100000000000000, v177);

              *(v59 + 14) = v63;
              _os_log_impl(&_mh_execute_header, v57, v58, "[MOPresenterServer] Client activation = %ld, session=%s", v59, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v60);
            }

            else
            {
            }

            v53 = v174;
            v153(v21, v174);
          }

          else
          {
            v64 = v170;
            *(v56 + 32) = v170;
            swift_beginAccess();
            *(v56 + 40) = 2;
            v178 = &type metadata for MOMomentsFeatureFlags;
            v179 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
            LOBYTE(v177[0]) = 7;
            v65 = v149;
            v66 = isFeatureEnabled(_:)();
            __swift_destroy_boxed_opaque_existential_0(v177);
            if (v66)
            {
              v67 = v164;
              static CommonLogger.presentation.getter();
              v68 = v65;
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();

              v71 = os_log_type_enabled(v69, v70);
              v150 = v68;
              if (v71)
              {
                v72 = swift_slowAlloc();
                v149 = swift_slowAlloc();
                v177[0] = v149;
                *v72 = 136315138;
                if (v64)
                {
                  v73 = [v68 stringRepresentation];
                  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v75 = v74;
                }

                else
                {
                  v75 = 0xE000000000000000;
                }

                v77 = v171;
                v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v75, v177);

                *(v72 + 4) = v78;
                _os_log_impl(&_mh_execute_header, v69, v70, "[MOPresenterServer] activating new scene with token: %s", v72, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v149);

                v153(v164, v174);
                v76 = v151;
                v64 = v170;
              }

              else
              {

                v153(v67, v53);
                v76 = v151;
                v77 = v171;
              }

              v79 = objc_allocWithZone(NSUserActivity);
              v80 = String._bridgeToObjectiveC()();
              v81 = [v79 initWithActivityType:v80];

              v82 = [v54 currentContext];
              if (v82)
              {
                v83 = v82;
                if ([v82 userInfo])
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v84 = v155;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
                    swift_unknownObjectRelease();

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1002A48B0;
                    strcpy(v177, "connectionId");
                    BYTE5(v177[1]) = 0;
                    HIWORD(v177[1]) = -5120;
                    AnyHashable.init<A>(_:)();
                    v86 = v173;
                    *(inited + 96) = v173;
                    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
                    (*(v77 + 16))(boxed_opaque_existential_1, v84, v86);
                    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
                    isa = Dictionary._bridgeToObjectiveC()().super.isa;

                    [v81 setUserInfo:isa];

                    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of MOPresenterServer.requestPresentation(for:with:));
                    v64 = v170;
                    outlined destroy of String(&unk_10030B0A0);
                    v89 = Set._bridgeToObjectiveC()().super.isa;

                    [v81 setRequiredUserInfoKeys:v89];

                    (*(v77 + 8))(v84, v86);
                  }

                  else
                  {

                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                }
              }

              v90 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
              if (v64)
              {
                v91 = v150;
                v92 = v156;
                _UIWindowSceneOverlayPlacement.init(targetSceneIdentity:)();
                v93 = v158;
                v178 = v158;
                v179 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type _UIWindowSceneOverlayPlacement and conformance _UIWindowSceneOverlayPlacement, 255, &type metadata accessor for _UIWindowSceneOverlayPlacement, &protocol conformance descriptor for _UIWindowSceneOverlayPlacement);
                v94 = __swift_allocate_boxed_opaque_existential_1(v177);
                v95 = v157;
                (*(v157 + 16))(v94, v92, v93);
                UIWindowSceneActivationRequestOptions.placement.setter();
                (*(v95 + 8))(v92, v93);
              }

              v170 = v81;
              v96 = v90;
              v97 = UIWindowSceneSessionRoleApplication;
              v98 = v159;
              UISceneSessionActivationRequest.init(role:userActivity:options:)();
              v99 = [objc_opt_self() sharedApplication];
              v100 = v165;
              v101 = v76;
              v102 = v173;
              (*(v77 + 16))(v165, v101, v173);
              v103 = (*(v77 + 80) + 24) & ~*(v77 + 80);
              v104 = swift_allocObject();
              v105 = v172;
              *(v104 + 16) = v172;
              (*(v77 + 32))(v104 + v103, v100, v102);
              v106 = v105;
              UIApplication.activateSceneSession(for:errorHandler:)();

              (*(v160 + 8))(v98, v161);
              v53 = v174;
              v56 = v154;
            }
          }

          v107 = v168;
          static CommonLogger.presentation.getter();

          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v177[0] = v111;
            *v110 = 136315138;
            v112 = *(v56 + 32);
            if (v112)
            {
              v113 = [v112 stringRepresentation];
              v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;

              v107 = v168;
            }

            else
            {
              v116 = 0xE400000000000000;
              v114 = 1701736302;
            }

            v119 = v151;
            v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v177);

            *(v110 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v108, v109, "[MOPresenterServer] Received picker presentation request with token: %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);

            v153(v107, v174);
            v117 = v173;
            v56 = v154;
            v118 = v169;
          }

          else
          {

            v153(v107, v53);
            v117 = v173;
            v118 = v169;
            v119 = v151;
          }

          v121 = v171;
          swift_beginAccess();
          if (*(v56 + 64) && (swift_beginAccess(), (v122 = *(v56 + 72)) != 0) && (swift_beginAccess(), *(v56 + 120)))
          {
            v174 = *(v56 + 112);
            ObjectType = swift_getObjectType();
            (*(v121 + 16))(v165, v119, v117);
            v170 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v123, type metadata accessor for MOPresenterServer, &protocol conformance descriptor for MOPresenterServer);
            swift_beginAccess();
            v169 = *(v56 + 128);
            v124 = v119;
            v125 = objc_opt_self();

            v126 = v122;

            [v125 isInternalBuild];
            swift_unknownObjectRetain();
            v127 = v148;
            Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
            dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:)();

            (*(v162 + 8))(v127, v163);
            (*(v121 + 8))(v124, v173);
          }

          else
          {
            v128 = v167;
            static CommonLogger.presentation.getter();
            (*(v121 + 16))(v118, v119, v117);

            v129 = Logger.logObject.getter();
            v130 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v176[0] = v172;
              *v131 = 136315394;
              swift_beginAccess();
              v132 = *(v56 + 120);
              if (v132)
              {
                v133 = *(v56 + 112);
                v134 = v132;
              }

              else
              {
                v134 = 0xE300000000000000;
                v133 = 7104878;
              }

              v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v176);

              *(v131 + 4) = v136;
              *(v131 + 12) = 2080;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v137 = v169;
              v138 = dispatch thunk of CustomStringConvertible.description.getter();
              v140 = v139;
              v141 = *(v121 + 8);
              v141(v137, v117);
              v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, v176);

              *(v131 + 14) = v142;
              _os_log_impl(&_mh_execute_header, v129, v130, "[MOPresenterServer] View is not ready to accept presentation, appName=%s, connectionID=%s", v131, 0x16u);
              swift_arrayDestroy();

              v153(v167, v174);
              v141(v151, v117);
              v56 = v154;
            }

            else
            {

              v135 = *(v121 + 8);
              v135(v118, v117);
              v153(v128, v174);
              v135(v119, v117);
            }

            swift_beginAccess();
            v143 = *(v56 + 88);
            v144 = v166;
            *(v56 + 88) = v166;

            v145 = v144;
          }

          return result;
        }

        (*(v171 + 8))(v31, v173);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v9 = v174;
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "[MOPresenterServer] Unexpected picker request from untracked connection", v51, 2u);
  }

  (*(ObjectType + 8))(v12, v9);
  return result;
}

double closure #1 in MOPresenterServer.requestPresentation(for:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOPresenterServer] Error activating scene: %@", v11, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(v6 + 8))(v8, v5);
  v14 = (*((swift_isaMask & *a2) + 0xC0))(a3);
  if (v14)
  {
    v16 = v14;
    swift_beginAccess();
    v17 = *(v16 + 32);
    *(v16 + 32) = 0;

    swift_beginAccess();
    *(v16 + 40) = 0;
  }

  return result;
}

Swift::Void __swiftcall MOPresenterServer.updatePicker(with:animated:)(NSNumber with, NSNumber animated)
{
  isa = animated.super.super.isa;
  ObjectType = with.super.super.isa;
  v69 = type metadata accessor for Client();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  v73 = *(v75 - 8);
  v3 = __chkstk_darwin(v75);
  v66 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v76 = v65 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v70 = v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v65 - v15;
  __chkstk_darwin(v14);
  v18 = v65 - v17;
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOPresenterServer] updatePicker", v21, 2u);
  }

  v22 = *(v8 + 8);
  v22(v18, v7);
  v23 = [objc_opt_self() currentContext];
  if (v23)
  {
    v24 = v23;
    if ([v23 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v25 = v73;
        v26 = v76;
        v27 = v75;
        (*(v73 + 32))();
        v28 = (*((swift_isaMask & *v74) + 0xC0))(v26);
        if (v28)
        {
          v29 = v28;
          [ObjectType integerValue];
          v30 = SuggestionSheetViewState.init(rawValue:)();
          if (v31)
          {
            (*(v25 + 8))(v26, v27);
LABEL_24:

            return;
          }

          v65[2] = v30;
          swift_beginAccess();
          v35 = v29;
          if (*(v29 + 64))
          {
            swift_beginAccess();
            v36 = *(v29 + 72);
            if (v36)
            {
              v65[1] = *(v35 + 80);
              swift_beginAccess();
              if (*(v35 + 120))
              {
                v70 = *(v35 + 112);
                ObjectType = swift_getObjectType();
                v37 = v27;
                v38 = v36;

                LODWORD(isa) = [(objc_class *)isa BOOLValue];
                (*(v25 + 16))(v66, v76, v37);
                v65[0] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v39, type metadata accessor for MOPresenterServer, &protocol conformance descriptor for MOPresenterServer);
                swift_beginAccess();
                v40 = objc_opt_self();

                v41 = v38;
                [v40 isInternalBuild];
                swift_unknownObjectRetain();
                v42 = v67;
                Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
                dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceiveUpdateRequest(with:animated:client:)();

                (*(v68 + 8))(v42, v69);
                (*(v25 + 8))(v76, v75);
                return;
              }
            }
          }

          swift_beginAccess();
          v74 = v35;
          if (*(v35 + 40) == 3)
          {
            static CommonLogger.presentation.getter();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();
            v45 = os_log_type_enabled(v43, v44);
            v46 = v76;
            if (v45)
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MOPresenterServer] View is getting ready to accept updates", v47, 2u);
            }

            v22(v16, v7);
            (*(v25 + 8))(v46, v27);
            v48 = v74;
            swift_beginAccess();
            v49 = v48[12];
            v50 = ObjectType;
            v48[12] = ObjectType;

            swift_beginAccess();
            v51 = v48[13];
            v52 = isa;
            v48[13] = isa;
            v53 = v50;

            v54 = v52;
            goto LABEL_24;
          }

          v55 = v70;
          static CommonLogger.presentation.getter();
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();
          v58 = os_log_type_enabled(v56, v57);
          v59 = v76;
          if (v58)
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "[MOPresenterServer] View is out of sync, updating client", v60, 2u);
          }

          v22(v55, v7);
          v61 = v74;
          swift_beginAccess();
          v62 = v61[2];
          if (v62)
          {
            swift_endAccess();
            if ([v62 remoteTarget])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v77 = 0u;
              v78 = 0u;
            }

            v79 = v77;
            v80 = v78;
            if (*(&v78 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd, &_s9MomentsUI17ViewServiceClient_pMR);
              if (swift_dynamicCast())
              {
                v63 = v77;
                swift_beginAccess();
                if (*(v61 + 56) == 1)
                {

                  swift_unknownObjectRelease();
                }

                else
                {
                  SuggestionSheetViewState.rawValue.getter();
                  v64 = Int._bridgeToObjectiveC()().super.super.isa;
                  [v63 didReceiveStateUpdateRequest:v64];

                  swift_unknownObjectRelease();
                }

                (*(v25 + 8))(v59, v27);
              }

              else
              {
                (*(v25 + 8))(v59, v27);
              }

              return;
            }

            (*(v25 + 8))(v59, v27);
          }

          else
          {
            (*(v25 + 8))(v59, v27);
            swift_endAccess();

            v79 = 0u;
            v80 = 0u;
          }

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v79, &_sypSgMd, &_sypSgMR);
          return;
        }

        (*(v25 + 8))(v26, v27);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  static CommonLogger.presentation.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[MOPresenterServer] Unexpected picker request from untracked connection", v34, 2u);
  }

  v22(v11, v7);
}

uint64_t MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(MOPresenterServer.retrieveNotificationScheduleType(connectionID:), 0, 0);
}

{
  *(*v1 + 128) = a1;

  return _swift_task_switch(MOPresenterServer.retrieveNotificationScheduleType(connectionID:), 0, 0);
}

uint64_t MOPresenterServer.retrieveNotificationScheduleType(connectionID:)()
{
  v1 = (*((swift_isaMask & **(v0 + 48)) + 0xC0))(*(v0 + 40));
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v2 + 128);
    *(v0 + 104) = v3;
    v4 = *(v2 + 136);
    *(v0 + 112) = v4;
    if (v4)
    {
      v5 = one-time initialization token for shared;

      if (v5 != -1)
      {
        swift_once();
      }

      v21 = (*((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x90) + **((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x90));
      v6 = swift_task_alloc();
      *(v0 + 120) = v6;
      *v6 = v0;
      v6[1] = MOPresenterServer.retrieveNotificationScheduleType(connectionID:);

      return v21(v3, v4);
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[MOPresenterServer] Missing bundleID from connection.", v16, 2u);
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);

    (*(v19 + 8))(v17, v18);
    lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Unexpected retrieval request from untracked connection.", v10, 2u);
    }

    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);

    (*(v12 + 8))(v11, v13);
    lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError();
    swift_allocError();
    swift_willThrow();
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v19 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v5 = v0[13];
    v4 = v0[14];
    v17 = v0[11];
    v6 = v0[7];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2080;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v18);

    *(v8 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notification schedule state: %lu for bundleID: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v7 + 8))(v17, v6);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[7];
    v13 = v0[8];

    (*(v13 + 8))(v11, v12);
  }

  v14.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;

  v15 = v0[1];

  return v15(v14.super.super.isa);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for UUID();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:);

  return MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(v7);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v8 = _convertErrorToNSError(_:)();

    (v6)[2](v6, 0, v8);

    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v9 = v5[1];

  return v9();
}

uint64_t MOPresenterServer.retrieveNotificationAvailability()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return specialized MOPresenterServer.retrieveNotificationAvailability()();
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess();

  return specialized MOPresenterServer.retrieveNotificationAvailability()();
}

uint64_t MOPresenterServer.getConnectionID()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v32[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  v15 = [objc_opt_self() currentContext];
  if (v15)
  {
    v16 = v15;
    if ([v15 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for CommonLogger();
        static CommonLogger.presentation.getter();
        (*(v9 + 16))(v12, v14, v8);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v34 = v19;
          v35 = swift_slowAlloc();
          v37 = v35;
          *v19 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v18;
          v22 = v21;
          (*(v9 + 8))(v12, v8);
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

          v24 = v34;
          *(v34 + 1) = v23;
          _os_log_impl(&_mh_execute_header, v17, v33, "[MOPresenterServer] connID found, uuid: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
        }

        (*(v2 + 8))(v7, v1);
        v30 = v36;
        (*(v9 + 32))(v36, v14, v8);
        v29 = v30;
        v28 = 0;
        return (*(v9 + 56))(v29, v28, 1, v8);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "[MOPresenterServer] no connectionID found", v27, 2u);
  }

  (*(v2 + 8))(v5, v1);
  v28 = 1;
  v29 = v36;
  return (*(v9 + 56))(v29, v28, 1, v8);
}

double MOPresenterServer.retrieveUrlForToken(_:type:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a4;
  v88 = a3;
  v96 = a5;
  v95 = type metadata accessor for Logger();
  v94 = *(v95 - 1);
  v6 = __chkstk_darwin(v95);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v84 - v10;
  __chkstk_darwin(v9);
  v92 = &v84 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v86);
  v90 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v14 - 8);
  v87 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v84 - v17;
  v19 = type metadata accessor for UUID();
  v20 = __chkstk_darwin(v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v84 - v24;
  v26 = __chkstk_darwin(v23);
  v93 = &v84 - v27;
  __chkstk_darwin(v26);
  v29 = &v84 - v28;
  v31 = v30;
  UUID.init(uuidString:)();
  if ((*(v31 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[MOPresenterServer] Unexpected picker request from untracked connection", v34, 2u);
    }

    (*(v94 + 8))(v8, v95);
LABEL_18:
    v54 = type metadata accessor for URL();
    (*(*(v54 - 8) + 56))(v96, 1, 1, v54);
    return result;
  }

  v91 = v31;
  v35 = *(v31 + 32);
  v85 = v29;
  v35(v29, v18, v19);
  v36 = [objc_opt_self() currentContext];
  v37 = v19;
  if (!v36)
  {
LABEL_15:
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "[MOPresenterServer] Unexpected picker request from untracked connection", v53, 2u);
    }

    (*(v94 + 8))(v11, v95);
    (*(v91 + 8))(v85, v19);
    goto LABEL_18;
  }

  v38 = v36;
  if (![v36 userInfo])
  {

    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  v39 = v93;
  v35(v93, v25, v37);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v40 = *(v5 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v40 lock];
  v41 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v42 = *(v5 + v41);
  if (!*(v42 + 16))
  {
    v56 = 0;
    v44 = v91;
    v45 = v85;
LABEL_22:
    v57 = v92;
    goto LABEL_34;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
  v44 = v91;
  v45 = v85;
  if ((v46 & 1) == 0)
  {

    v56 = 0;
    goto LABEL_22;
  }

  v47 = *(*(v42 + 56) + 8 * v43);

  swift_beginAccess();
  v48 = *(v47 + 144);
  if (*(v48 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v50 & 1) != 0))
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(*(v48 + 56) + 40 * v49, &v99);
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  swift_endAccess();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v102, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
  v102 = v99;
  v103 = v100;
  v104 = v101;
  (*(v44 + 16))(v22, v45, v37);
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v99, v22);
  swift_endAccess();
  swift_beginAccess();
  v58 = *(v47 + 16);
  if (!v58)
  {

    v99 = 0u;
    v100 = 0u;
    v57 = v92;
LABEL_33:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v99, &_sypSgMd, &_sypSgMR);
    v56 = 0;
    goto LABEL_34;
  }

  if ([v58 remoteTarget])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  v57 = v92;
  if (!*(&v98 + 1))
  {
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd, &_s9MomentsUI17ViewServiceClient_pMR);
  if (swift_dynamicCast())
  {
    v56 = v97;
  }

  else
  {
    v56 = 0;
  }

LABEL_34:
  [v40 unlock];
  outlined init with copy of (String, Date?)(&v102, &v97, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
  if (!*(&v98 + 1))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v97, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
LABEL_40:
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "[MOPresenterServer] Unexpected picker request from untracked connection", v77, 2u);
    }

    swift_unknownObjectRelease();
    (*(v94 + 8))(v57, v95);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v102, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
    v78 = *(v44 + 8);
    v78(v39, v37);
    v78(v45, v37);
    goto LABEL_18;
  }

  outlined init with take of URLBasedAsset(&v97, &v99);
  if (!v56)
  {
    __swift_destroy_boxed_opaque_existential_0(&v99);
    goto LABEL_40;
  }

  v95 = v56;
  v59 = swift_allocBox();
  v61 = v60;
  v62 = type metadata accessor for URL();
  v63 = *(v62 - 8);
  v64 = v63;
  v94 = *(v63 + 56);
  v92 = (v63 + 56);
  (v94)(v61, 1, 1, v62);
  v65 = dispatch_group_create();
  dispatch_group_enter(v65);
  v66 = type metadata accessor for TaskPriority();
  v67 = v87;
  (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
  outlined init with copy of MOProtectedAppsManagerDelegate(&v99, &v97);
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v59;
  outlined init with take of URLBasedAsset(&v97, (v68 + 5));
  v69 = v89;
  v68[10] = v88;
  v68[11] = v69;
  v68[12] = v65;

  v70 = v65;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v67, &async function pointer to partial apply for closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), v68);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v71 = v90;
  outlined init with copy of (String, Date?)(v61, v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v64 + 48))(v71, 1, v62) == 1)
  {

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v99);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v102, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
    v72 = *(v91 + 8);
    v72(v93, v37);
    v72(v45, v37);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v73 = v96;
    v74 = 1;
  }

  else
  {
    v79 = v45;
    v80 = v96;
    (*(v64 + 32))(v96, v71, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
    v81 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1002A48B0;
    (*(v64 + 16))(v82 + v81, v80, v62);
    specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(v82, v95);
    swift_unknownObjectRelease();

    swift_setDeallocating();
    (*(v64 + 8))(v82 + v81, v62);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v99);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v102, &_s9MomentsUI13URLBasedAsset_pSgMd, &_s9MomentsUI13URLBasedAsset_pSgMR);
    v83 = *(v91 + 8);
    v83(v93, v37);
    v83(v79, v37);
    v73 = v80;
    v74 = 0;
  }

  (v94)(v73, v74, 1, v62);

  return result;
}

uint64_t closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[9] = swift_task_alloc();
  v8[10] = swift_projectBox();

  return _swift_task_switch(closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), 0, 0);
}

uint64_t closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];

  return dispatch thunk of URLBasedAsset.getAssetURL(assetType:)(v5, v6, v7, v2, v3);
}

{

  return _swift_task_switch(closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_beginAccess();
  outlined assign with take of URL?(v1, v2);
  dispatch_group_leave(v3);

  v4 = v0[1];

  return v4();
}

uint64_t MOPresenterServer.refreshBundlesIfNecessary()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(MOPresenterServer.refreshBundlesIfNecessary(), 0, 0);
}

{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = MOPresenterServer.refreshBundlesIfNecessary();

  return MOBundleProcessingSession.refreshBundles()();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = MOPresenterServer.refreshBundlesIfNecessary();

    return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
  }
}

uint64_t MOPresenterServer.remoteTarget(client:)(uint64_t a1)
{
  v36 = type metadata accessor for Client();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Logger();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Client.connectionUUID.getter();
  v12 = (*((swift_isaMask & *v1) + 0xC0))(v11);
  v13 = *(v9 + 8);
  v33 = v9 + 8;
  v34 = v8;
  v13(v11, v8);
  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v14 = *(v12 + 16);
  if (!v14)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v40, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  if ([v14 remoteTarget])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd, &_s9MomentsUI17ViewServiceClient_pMR);
  if (swift_dynamicCast())
  {
    return v38;
  }

LABEL_11:
  v32 = v13;
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v17 = v35;
  v16 = v36;
  (*(v3 + 16))(v35, a1, v36);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v7;
    v29 = v22;
    *&v40 = v22;
    *v21 = 136315138;
    Client.connectionUUID.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = v34;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v32(v11, v23);
    (*(v3 + 8))(v17, v16);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v40);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[MOPresenterServer] No client found, uuid%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);

    (*(v31 + 8))(v30, v37);
  }

  else
  {

    (*(v3 + 8))(v17, v16);
    (*(v5 + 8))(v7, v37);
  }

  return 0;
}

void *MOPresenterServer.willSendUserSelection(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MOPresenterServer.remoteTarget(client:)(a1);
  if (result)
  {
    v7 = result;
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Inform client of suggestion selection", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    [v7 willReceiveUserSelection];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[8] = v5;
  *v5 = v3;
  v5[1] = MOPresenterServer.didSendUserSelection(suggestion:for:);

  return Suggestion.urlsForTransfer()();
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(MOPresenterServer.didSendUserSelection(suggestion:for:), 0, 0);
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = MOPresenterServer.remoteTarget(client:)(v0[3]);
    if (v2)
    {
      specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(v1, v2);
      swift_unknownObjectRelease();
    }
  }

  v3 = Suggestion.urlBasedAssetsForTransfer()();
  if (v3)
  {
    MOPresenterServer.authorizeURLBasedAssets(urlBasedAssets:for:)(v3);
  }

  v4 = MOPresenterServer.remoteTarget(client:)(v0[3]);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOPresenterServer] Inform client of suggestion selection", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = v0[2];

    (*(v10 + 8))(v9, v11);
    [v5 didReceiveUserSelectionWithSuggestion:v12];
    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

void MOPresenterServer.authorizeURLBasedAssets(urlBasedAssets:for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - v11;
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  Client.connectionUUID.getter();
  v15 = (*((swift_isaMask & *v1) + 0xC0))(v14);
  v47 = v7;
  v16 = v7;
  v17 = v6;
  v18 = *(v16 + 8);
  v18(v14, v17);
  v53 = v15;
  if (!v15)
  {
    return;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_19:

    return;
  }

  v20 = a1 + 32;
  v49 = v18;
  v50 = (v47 + 32);
  v51 = (v47 + 16);
  v52 = (v47 + 48);
  v48 = v5;
  while (1)
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(v20, v57);
    __swift_project_boxed_opaque_existential_0(v57, v57[3]);
    dispatch thunk of URLBasedAsset.token.getter();
    if ((*v52)(v5, 1, v17) != 1)
    {
      break;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v57);
    v20 += 40;
    if (!--v19)
    {
      goto LABEL_19;
    }
  }

  (*v50)(v12, v5, v17);
  v21 = v17;
  v22 = *v51;
  v23 = v54;
  v24 = v12;
  v25 = v21;
  (*v51)(v54, v12);
  v26 = v53;
  swift_beginAccess();
  outlined init with copy of MOProtectedAppsManagerDelegate(v57, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v26 + 144);
  v28 = v55;
  *(v26 + 144) = 0x8000000000000000;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (!__OFADD__(v31, v32))
  {
    v34 = v29;
    if (v28[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
      v37 = v55;
      if ((v34 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v38 = (v37[7] + 40 * v30);
      __swift_destroy_boxed_opaque_existential_0(v38);
      outlined init with take of URLBasedAsset(v56, v38);
      v17 = v25;
      v39 = v25;
      v40 = v49;
      v49(v54, v39);
LABEL_18:
      *(v53 + 144) = v37;

      swift_endAccess();
      v12 = v24;
      v40(v24, v17);
      v5 = v48;
      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v55;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v37 = v55;
      if (v34)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v37[(v30 >> 6) + 8] |= 1 << v30;
    v41 = v54;
    (v22)(v37[6] + *(v47 + 72) * v30, v54, v25);
    v17 = v25;
    outlined init with take of URLBasedAsset(v56, v37[7] + 40 * v30);
    v42 = v25;
    v40 = v49;
    v49(v41, v42);
    v43 = v37[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_22;
    }

    v37[2] = v45;
    goto LABEL_18;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void closure #1 in MOPresenterServer.sendNotificationScheduleChange(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v49 = a5;
  v48 = a4;
  v50 = a3;
  v51 = a2;
  v63 = type metadata accessor for UUID();
  v6 = *(v63 - 8);
  v7 = __chkstk_darwin(v63);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v47 - v10;
  v11 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
  swift_beginAccess();
  v69 = a1;
  v12 = *(a1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v64 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  v17 = (v14 + 63) >> 6;
  v58 = v6 + 16;
  v57 = v6 + 32;
  v60 = v6;
  v56 = (v6 + 8);
  v54 = v12;

  v18 = 0;
  v62 = v9;
  v53 = v13;
  v52 = v17;
LABEL_6:
  if (v16)
  {
    v19 = v18;
  }

  else
  {
    do
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_51;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
    }

    while (!v16);
  }

  v55 = (v16 - 1) & v16;
  v20 = *(*(v54 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));
  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v20 + 56);
  v61 = v20;

  swift_beginAccess();
  v25 = 0;
  v26 = (v22 + 63) >> 6;
  while (v24)
  {
LABEL_20:
    v28 = v60;
    v29 = v59;
    v30 = v63;
    (*(v60 + 16))(v59, *(v61 + 48) + *(v60 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v63);
    (*(v28 + 32))(v9, v29, v30);
    v31 = *(v69 + v64);
    if (*(v31 + 16))
    {

      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 8 * v32);

        swift_beginAccess();
        v36 = *(v34 + 128);
        v35 = *(v34 + 136);

        goto LABEL_25;
      }
    }

    v36 = 0;
    v35 = 0;
LABEL_25:
    v24 &= v24 - 1;
    v37 = *(v69 + v64);
    if (!*(v37 + 16))
    {
      goto LABEL_31;
    }

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
    if ((v39 & 1) == 0)
    {

LABEL_31:

      v9 = v62;
      (*v56)(v62, v63);
LABEL_32:
      v67 = 0u;
      v68 = 0u;
      goto LABEL_33;
    }

    v40 = *(*(v37 + 56) + 8 * v38);

    swift_beginAccess();
    v41 = *(v40 + 16);
    if (!v41)
    {
      v9 = v62;
      (*v56)(v62, v63);
      swift_endAccess();

      goto LABEL_32;
    }

    swift_endAccess();
    v42 = v41;

    v43 = [v42 remoteTarget];

    if (v43)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    v67 = v65;
    v68 = v66;
    if (*(&v66 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd, &_s9MomentsUI17ViewServiceClient_pMR);
      if (swift_dynamicCast())
      {
        v44 = v65;
        if (!v35)
        {
          goto LABEL_46;
        }

        if (v36 == v51 && v35 == v50)
        {

          goto LABEL_45;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
LABEL_45:
          v9 = v62;
          (*v56)(v62, v63);
          *v48 = v44;
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_46:
          swift_unknownObjectRetain();
          v46 = v49;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v9 = v62;
          (*v56)(v62, v63);
        }
      }

      else
      {
        v9 = v62;
        (*v56)(v62, v63);
      }
    }

    else
    {
      v9 = v62;
      (*v56)(v62, v63);

LABEL_33:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd, &_sypSgMR);
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      v18 = v19;
      v13 = v53;
      v17 = v52;
      v16 = v55;
      goto LABEL_6;
    }

    v24 = *(v21 + 8 * v27);
    ++v25;
    if (v24)
    {
      v25 = v27;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t MOPresenterServer.performRealTimeCheck(significantLocationEnabled:)(char a1)
{
  *(v1 + 32) = a1;
  return _swift_task_switch(MOPresenterServer.performRealTimeCheck(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 33) = a1;

  return _swift_task_switch(MOPresenterServer.performRealTimeCheck(significantLocationEnabled:), 0, 0);
}

uint64_t MOPresenterServer.performRealTimeCheck(significantLocationEnabled:)()
{
  v1 = [objc_allocWithZone(type metadata accessor for NotificationRealTimeCheckManager()) init];
  *(v0 + 16) = v1;
  v5 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = MOPresenterServer.performRealTimeCheck(significantLocationEnabled:);
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t protocol witness for SharedServer.didSendUserSelection(suggestion:for:) in conformance MOPresenterServer(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return MOPresenterServer.didSendUserSelection(suggestion:for:)(a1, a2);
}

uint64_t protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer, 0, 0);
}

{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer;

  return MOBundleProcessingSession.refreshBundles()();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer;

    return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer(char a1)
{
  *(v1 + 32) = a1;
  return _swift_task_switch(protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer, 0, 0);
}

{
  *(*v1 + 33) = a1;

  return _swift_task_switch(protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer, 0, 0);
}

uint64_t protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer()
{
  v1 = [objc_allocWithZone(type metadata accessor for NotificationRealTimeCheckManager()) init];
  *(v0 + 16) = v1;
  v5 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer;
  v3 = *(v0 + 32);

  return v5(v3);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 33);

  return v1(v2);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of (String, Date?)(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(void (*a1)(void, void), void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v127 = a3;
  v128 = a6;
  v130 = a4;
  v135 = a1;
  v7 = type metadata accessor for Client();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = __chkstk_darwin(v7);
  v117 = &v113[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v120 = &v113[-v10];
  v11 = type metadata accessor for UUID();
  v136 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v121 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v113[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = __chkstk_darwin(v16 - 8);
  v132 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v113[-v20];
  __chkstk_darwin(v19);
  v23 = &v113[-v22];
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v124 = &v113[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v116 = &v113[-v29];
  v30 = __chkstk_darwin(v28);
  v119 = &v113[-v31];
  v32 = __chkstk_darwin(v30);
  v125 = &v113[-v33];
  v34 = __chkstk_darwin(v32);
  v129 = &v113[-v35];
  __chkstk_darwin(v34);
  v37 = &v113[-v36];
  v134 = type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v133 = a2;
  outlined init with copy of (String, Date?)(a2, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v114 = v39;
    v115 = v25;
    v118 = v24;
    v126 = v15;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v137[0] = v41;
    *v40 = 136315138;
    outlined init with copy of (String, Date?)(v23, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v42 = v136;
    v43 = (*(v136 + 48))(v21, 1, v11);
    v131 = v11;
    if (v43 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v44 = 0xE300000000000000;
      v45 = 7104878;
    }

    else
    {
      v50 = UUID.uuidString.getter();
      v44 = v51;
      v52 = v11;
      v45 = v50;
      (*(v42 + 8))(v21, v52);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v137);

    *(v40 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v38, v114, "[MOPresenterServer] Connected to window, client connection: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);

    v46 = *(v115 + 8);
    v24 = v118;
    v46(v37, v118);
    v11 = v131;
    v49 = v135;
    v48 = v136;
    v47 = v126;
  }

  else
  {

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v46 = *(v25 + 8);
    v46(v37, v24);
    v47 = v15;
    v49 = v135;
    v48 = v136;
  }

  v54 = v132;
  outlined init with copy of (String, Date?)(v133, v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v48 + 48))(v54, 1, v11) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v129;
    static CommonLogger.presentation.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "[MOPresenterServer] Could not link new scene to client connection", v58, 2u);
    }

    v46(v55, v24);
    specialized MOPresenterServer.destroyScene(with:)(v49);
    return;
  }

  v135 = v46;
  (*(v48 + 32))(v47, v54, v11);
  v59 = (*((swift_isaMask & *v130) + 0xC0))(v47);
  if (v59)
  {
    v60 = v59;
    swift_beginAccess();
    *(v60 + 40) = 3;
    swift_beginAccess();
    v61 = *(v60 + 72);
    v63 = v127;
    v62 = v128;
    *(v60 + 72) = v127;
    *(v60 + 80) = v62;

    swift_beginAccess();
    v64 = *(v60 + 64);
    *(v60 + 64) = v49;
    v133 = v63;

    swift_beginAccess();
    v65 = *(v60 + 88);
    v131 = v11;
    if (v65)
    {
      swift_beginAccess();
      if (*(v60 + 120))
      {
        v66 = v47;
        v67 = v24;
        v126 = v66;
        v129 = *(v60 + 112);
        v68 = v49;
        v132 = v65;

        v69 = v119;
        static CommonLogger.presentation.getter();
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "[MOPresenterServer] Fulfilling previously unfulfillable presentation request", v72, 2u);
        }

        v135(v69, v67);
        (*(v48 + 16))(v121, v126, v131);
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v73, type metadata accessor for MOPresenterServer, &protocol conformance descriptor for MOPresenterServer);
        swift_beginAccess();
        v74 = v48;
        v75 = objc_opt_self();

        [v75 isInternalBuild];
        v76 = v133;
        v77 = v130;
        v78 = v120;
        Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
        swift_beginAccess();
        v79 = *(v60 + 72);
        if (v79)
        {
          swift_endAccess();
          swift_getObjectType();
          v80 = v79;
          v81 = v132;
          dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:)();

          (*(v122 + 8))(v78, v123);
          (*(v74 + 8))(v126, v131);
        }

        else
        {
          (*(v122 + 8))(v78, v123);
          (*(v74 + 8))(v126, v131);
          swift_endAccess();
        }

        goto LABEL_30;
      }
    }

    swift_beginAccess();
    v82 = *(v60 + 96);
    if (v82)
    {
      v83 = v49;
      v84 = v82;
      [v84 integerValue];
      v85 = SuggestionSheetViewState.init(rawValue:)();
      if ((v86 & 1) == 0)
      {
        v132 = v85;
        swift_beginAccess();
        v93 = v124;
        if (*(v60 + 120))
        {
          v118 = v24;
          v129 = *(v60 + 112);

          v100 = v116;
          static CommonLogger.presentation.getter();
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.info.getter();
          v103 = os_log_type_enabled(v101, v102);
          v126 = v47;
          if (v103)
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v101, v102, "[MOPresenterServer] Fulfilling previously unfulfillable update request", v104, 2u);
            v47 = v126;
          }

          v135(v100, v118);
          (*(v136 + 16))(v121, v47, v131);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v105, type metadata accessor for MOPresenterServer, &protocol conformance descriptor for MOPresenterServer);
          swift_beginAccess();
          v106 = objc_opt_self();

          [v106 isInternalBuild];
          v107 = v133;
          v108 = v130;
          v109 = v117;
          Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
          v110 = *(v60 + 72);
          if (v110)
          {
            swift_beginAccess();
            v111 = *(v60 + 104);
            v112 = v110;
            if (v111)
            {
              [v111 integerValue];
            }

            swift_getObjectType();
            dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceiveUpdateRequest(with:animated:client:)();
          }

          (*(v122 + 8))(v109, v123);
          (*(v136 + 8))(v126, v131);
          goto LABEL_30;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v92 = v49;
    }

    v93 = v124;
LABEL_26:
    static CommonLogger.presentation.getter();
    swift_retain_n();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109632;
      *(v96 + 4) = *(v60 + 88) != 0;

      *(v96 + 8) = 1024;
      swift_beginAccess();
      *(v96 + 10) = *(v60 + 120) != 0;

      *(v96 + 14) = 1024;
      *(v96 + 16) = *(v60 + 96) != 0;

      _os_log_impl(&_mh_execute_header, v94, v95, "[MOPresenterServer] Cannot fulfill previously unfulfillable update request, pendingPresentationOptions=%{BOOL}d, connectionProperties.appName=%{BOOL}d, unfulfilledUpdateState=%{BOOL}d", v96, 0x14u);
    }

    else
    {
    }

    v135(v93, v24);
    (*(v136 + 8))(v47, v131);
LABEL_30:
    v97 = *(v60 + 88);
    *(v60 + 88) = 0;

    swift_beginAccess();
    v98 = *(v60 + 96);
    *(v60 + 96) = 0;

    swift_beginAccess();
    v99 = *(v60 + 104);
    *(v60 + 104) = 0;

    return;
  }

  v87 = v47;
  v88 = v11;
  static CommonLogger.presentation.getter();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "[MOPresenterServer] connection removed before new scene creation completion", v91, 2u);
  }

  v135(v125, v24);
  specialized MOPresenterServer.destroyScene(with:)(v49);
  (*(v48 + 8))(v87, v88);
}

uint64_t specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForEntitlement:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    outlined init with copy of (String, Date?)(v19, &v17, &_sypSgMd, &_sypSgMR);
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = v15;
        v5 = v16;
        v7 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v7 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v17, &_sypSgMd, &_sypSgMR);
    }

    v8 = [v1 bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v10;

      v11 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v11 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    v5 = 0xE000000000000000;
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002A4A00;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    v13 = [v1 pid];
    *(v12 + 96) = &type metadata for Int32;
    *(v12 + 104) = &protocol witness table for Int32;
    *(v12 + 72) = v13;
    v4 = String.init(format:_:)();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_sypSgMd, &_sypSgMR);
    return v4;
  }

  return 0;
}

void specialized MOPresenterServer.destroyScene(with:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for CommonLogger();
    v6 = a1;
    static CommonLogger.presentation.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = v2;
      v11 = v10;
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      v13 = [v7 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, aBlock);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Destroying scene %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);

      (*(v3 + 8))(v5, v21);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v18 = [objc_opt_self() sharedApplication];
    aBlock[4] = closure #1 in MOPresenterServer.destroyScene(with:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_111_0;
    v19 = _Block_copy(aBlock);
    [v18 requestSceneSessionDestruction:v7 options:0 errorHandler:v19];
    _Block_release(v19);
  }
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized MOPresenterServer.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v130 = type metadata accessor for UUID();
  v136 = *(v130 - 8);
  v4 = __chkstk_darwin(v130);
  v126 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v122 = &v121 - v7;
  __chkstk_darwin(v6);
  v9 = &v121 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v128 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v124 = &v121 - v15;
  v16 = __chkstk_darwin(v14);
  v123 = &v121 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v121 - v19;
  __chkstk_darwin(v18);
  v22 = &v121 - v21;
  v133 = type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "[BSServiceConnectionHost] connection received", v25, 2u);
  }

  v26 = *(v11 + 8);
  v131 = v10;
  v134 = v26;
  v135 = v11 + 8;
  v26(v22, v10);
  static ViewServiceConstants.momentsUIServicePresenterIdentifier.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [objc_opt_self() interfaceWithIdentifier:v27];

  v29 = objc_opt_self();
  v30 = [v29 protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI11ViewService_];
  [v28 setServer:v30];

  v31 = [v29 protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI17ViewServiceClient_];
  [v28 setClient:v31];

  v32 = [objc_allocWithZone(NSUUID) init];
  v132 = v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v2;
  v33[4] = v32;
  v33[5] = a1;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for closure #1 in MOPresenterServer.listener(_:didReceive:withContext:);
  *(v34 + 24) = v33;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_120;
  v35 = _Block_copy(aBlock);
  v36 = v28;
  v127 = v2;
  v37 = v32;
  v38 = a1;

  [v38 configureConnection:v35];
  _Block_release(v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    [v36 unlock];
    __break(1u);
  }

  else
  {
    v129 = v36;
    if (BSServiceConnectionHost.isEntitled.getter())
    {
      v125 = v37;
      static CommonLogger.presentation.getter();
      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 67109378;
        v45 = [v40 remoteToken];
        v46 = [v45 pid];

        *(v43 + 4) = v46;
        *(v43 + 8) = 2080;
        v47 = [v40 remoteToken];
        v48 = [v47 bundleID];

        if (v48)
        {
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, aBlock);

        *(v43 + 10) = v66;
        _os_log_impl(&_mh_execute_header, v41, v42, "[BSServiceConnectionHost] valid connection, activating, processPID=%d, processBundleID=%s", v43, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
      }

      v67 = v131;
      v134(v20, v131);
      v68 = v130;
      v69 = v132;
      v70 = MOPresenterServer.addConnection(connection:with:)(v40, v132);
      v71 = (v136 + 16);
      v72 = v126;
      if (v70)
      {
        v73 = v123;
        static CommonLogger.presentation.getter();
        v74 = v122;
        (*v71)(v122, v69, v68);
        v75 = v40;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v78 = 136315394;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v82 = v74;
          v83 = *(v136 + 8);
          v83(v82, v68);
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, aBlock);

          *(v78 + 4) = v84;
          *(v78 + 12) = 2080;
          v85 = [v75 remoteProcess];
          v86 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v85);
          v88 = v87;

          if (v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = 7104878;
          }

          if (v88)
          {
            v90 = v88;
          }

          else
          {
            v90 = 0xE300000000000000;
          }

          v68 = v130;
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, aBlock);

          *(v78 + 14) = v91;
          _os_log_impl(&_mh_execute_header, v76, v77, "Activating connectionID: %s, clientID: %s", v78, 0x16u);
          swift_arrayDestroy();

          v69 = v132;

          v92 = v123;
        }

        else
        {

          v115 = v74;
          v83 = *(v136 + 8);
          v83(v115, v68);
          v92 = v73;
        }

        v134(v92, v131);
        v116 = v127;
        v117 = *(v127 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
        [v117 lock];
        closure #2 in MOPresenterServer.listener(_:didReceive:withContext:)(v116, v69, v75);
        [v117 unlock];

        v83(v69, v68);
      }

      else
      {
        v93 = v124;
        static CommonLogger.presentation.getter();
        v94 = v69;
        v95 = v93;
        (*v71)(v72, v94, v68);
        v96 = v40;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          aBlock[0] = v133;
          *v99 = 136315394;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v103 = v72;
          v104 = *(v136 + 8);
          v104(v103, v68);
          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, aBlock);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2080;
          v106 = [v96 remoteProcess];
          v107 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v106);
          v109 = v108;

          if (v109)
          {
            v110 = v107;
          }

          else
          {
            v110 = 7104878;
          }

          if (v109)
          {
            v111 = v109;
          }

          else
          {
            v111 = 0xE300000000000000;
          }

          v68 = v130;
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, aBlock);

          *(v99 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v97, v98, "Error activating connectionID: %s, clientID: %s", v99, 0x16u);
          swift_arrayDestroy();

          v113 = v124;
          v114 = v131;
        }

        else
        {

          v118 = v72;
          v104 = *(v136 + 8);
          v104(v118, v68);
          v113 = v95;
          v114 = v67;
        }

        v134(v113, v114);
        v119 = v129;
        [v96 invalidate];

        v104(v132, v68);
      }
    }

    else
    {
      v52 = v128;
      static CommonLogger.presentation.getter();
      v53 = v38;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v125 = v37;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 67109378;
        v58 = [v53 remoteToken];
        v59 = [v58 pid];

        *(v56 + 4) = v59;
        *(v56 + 8) = 2080;
        v60 = [v53 remoteToken];
        v61 = [v60 bundleID];

        if (v61)
        {
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v62 = 7104878;
          v64 = 0xE300000000000000;
        }

        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, aBlock);

        *(v56 + 10) = v120;
        _os_log_impl(&_mh_execute_header, v54, v55, "[BSServiceConnectionHost] invalid entitlement, processPID=%d, processBundleID=%s", v56, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v57);

        v134(v128, v131);
        v65 = v130;
        v37 = v125;
      }

      else
      {

        v134(v52, v131);
        v65 = v130;
      }

      [v53 invalidate];

      (*(v136 + 8))(v132, v65);
    }
  }
}

uint64_t sub_10023790C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in MOPresenterServer.removeConnectionID(connectionID:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #2 in MOPresenterServer.removeConnectionID(connectionID:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_100237AE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double partial apply for closure #1 in MOPresenterServer.requestPresentation(for:with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in MOPresenterServer.requestPresentation(for:with:)(a1, v4, v5);
}

unint64_t lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError()
{
  result = lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError;
  if (!lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError;
  if (!lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError);
  }

  return result;
}

uint64_t specialized MOPresenterServer.retrieveNotificationAvailability()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return _swift_task_switch(specialized MOPresenterServer.retrieveNotificationAvailability(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.isOnboarded.getter();
  if (v1 && (v3 = v2, v4 = v1, v5 = v1(), outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v3), v5 != 2) && (v5 & 1) != 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v16 = (*((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x98) + **((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x98));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = specialized MOPresenterServer.retrieveNotificationAvailability();

    return v16();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] user has not onboarded, notifications are unavailable.", v10, 2u);
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v11, v13);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v14.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

    v15 = v0[1];

    return v15(v14.super.super.isa);
  }
}

{
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MOPresenterServer] unAuthorizationStatus: %ld", v4, 0xCu);
  }

  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  (*(v8 + 8))(v6, v7);
  if (v5 >= 5)
  {
    v12 = v0[8];
    type metadata accessor for UNAuthorizationStatus(0);
    v0[2] = v12;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    NotificationAvailabilityStatus.rawValue.getter();
    v9.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;

    v10 = v0[1];

    return v10(v9.super.super.isa);
  }
}

uint64_t specialized MOPresenterServer.retrieveNotificationAvailability()(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(specialized MOPresenterServer.retrieveNotificationAvailability(), 0, 0);
}

uint64_t sub_1002382AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t partial apply for closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

void specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(uint64_t a1, void *a2)
{
  v54 = a2;
  v53 = type metadata accessor for Logger();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v12 = &v44 - v8;
  v13 = *(a1 + 16);
  if (v13)
  {
    v59 = APP_SANDBOX_READ;
    v58 = SANDBOX_EXTENSION_DEFAULT;
    v61 = *(v9 + 16);
    v62 = v9 + 16;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v56 = (v9 + 8);
    v57 = v15;
    v51 = (v3 + 8);
    v16 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;
    *&v11 = 136315138;
    v46 = v11;
    v52 = v10;
    v60 = &v44 - v8;
    v50 = v5;
    v45 = v6;
    v61(v12, v14, v6);
    while (1)
    {
      URL.path(percentEncoded:)(1);
      v17 = objc_allocWithZone(v16[165]);
      v18 = v16;
      v19 = v12;
      v20 = v17;
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 initWithString:v21];

      [v22 fileSystemRepresentation];
      v23 = sandbox_extension_issue_file();
      if (v23)
      {
        v24 = v23;
        v25 = [objc_allocWithZone(v18[165]) initWithUTF8String:v23];
        v16 = v18;
        if (v25)
        {
          v26 = v25;
          free(v24);
          type metadata accessor for CommonLogger();
          static CommonLogger.presentation.getter();
          v27 = v52;
          v61(v52, v60, v6);
          v28 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();
          v29 = os_log_type_enabled(v28, v55);
          v30 = v56;
          v31 = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          if (v29)
          {
            v32 = swift_slowAlloc();
            v49 = v31;
            v33 = v32;
            v47 = v32;
            v48 = swift_slowAlloc();
            v63 = v48;
            *v33 = v46;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v34 = v6;
            v35 = v30;
            v36 = dispatch thunk of CustomStringConvertible.description.getter();
            v38 = v37;
            v39 = v27;
            v40 = *v35;
            (*v35)(v39, v34);
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v63);
            v16 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;

            v42 = v47;
            *(v47 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v28, v55, "[MOPresenterServer] authorize URL: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v48);

            (*v51)(v50, v53);
            v6 = v45;
          }

          else
          {

            v43 = v27;
            v40 = *v30;
            (*v30)(v43, v6);
            (*v51)(v50, v53);
          }

          [v54 didReceiveSandboxExtensionToken:v26];

          v12 = v60;
          v40(v60, v6);
        }

        else
        {
          v12 = v60;
          (*v56)(v60, v6);
        }
      }

      else
      {
        (*v56)(v19, v6);

        v12 = v19;
        v16 = v18;
      }

      v14 += v57;
      if (!--v13)
      {
        break;
      }

      v61(v12, v14, v6);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()(v2);
}

uint64_t sub_100238A80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_61(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t sub_100238C28()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveOnboardingState()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveOnboardingState()(v2);
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100238EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd, &_sScCySo8NSNumberCs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd, &_sScCySo8NSNumberCs5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002390A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100239178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100239200()
{

  return _swift_deallocObject(v0, 24, 7);
}

_BYTE *MOSuggestionAddedView.__allocating_init(symbolOnly:)(char a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = a1;
  v4 = v3;
  [v4 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  return v4;
}

uint64_t *MOSuggestionAddedView.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.font;
}

uint64_t *MOSuggestionAddedView.config.unsafeMutableAddressor()
{
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.config;
}

id one-time initialization function for fontColor()
{
  result = [objc_opt_self() systemGrayColor];
  static MOSuggestionAddedView.fontColor = result;
  return result;
}

uint64_t *MOSuggestionAddedView.fontColor.unsafeMutableAddressor()
{
  if (one-time initialization token for fontColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.fontColor;
}

id MOSuggestionAddedView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnlyBackgroundRatio] = 0x3FE0000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionAddedView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

void MOSuggestionAddedView.initAddedView()()
{
  v1 = v0;
  v35 = [objc_allocWithZone(UIView) init];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v35 setBackgroundColor:v3];

  [v35 setAlpha:0.45];
  [v35 _setCornerRadius:8.0];
  [v1 insertSubview:v35 atIndex:0];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly) != 1)
  {
    v14 = [objc_allocWithZone(UIStackView) init];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAxis:0];
    [v14 setDistribution:2];
    [v14 setAlignment:3];
    [v1 addSubview:v14];
    v18 = [v2 systemWhiteColor];
    v19 = [v18 colorWithAlphaComponent:0.9];

    [v14 setBackgroundColor:v19];
    v20 = [v14 layer];
    [v20 setCornerRadius:12.0];

    [v14 setLayoutMarginsRelativeArrangement:1];
    [v14 setLayoutMargins:{3.0, 10.0, 3.0, 10.0}];

    v21 = [v14 superview];
    p_align = (&stru_100327FE8 + 24);
    if (v21)
    {
      v23 = v21;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = [v14 centerXAnchor];
      v25 = [v23 centerXAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      p_align = &stru_100327FE8.align;
      [v26 setConstant:0.0];
      [v26 setActive:1];
    }

    v27 = [v14 superview];
    if (v27)
    {
      v28 = v27;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v29 = [v14 centerYAnchor];
      v30 = [v28 centerYAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      [v31 *(p_align + 279)];
      [v31 setActive:1];
    }

    v32 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
    if (one-time initialization token for fontColor != -1)
    {
      swift_once();
    }

    v33 = static MOSuggestionAddedView.fontColor;
    [v32 setTintColor:static MOSuggestionAddedView.fontColor];
    [v14 addArrangedSubview:v32];
    v34 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel);
    [v34 setTextColor:v33];
    if (one-time initialization token for font != -1)
    {
      swift_once();
    }

    [v34 setFont:static MOSuggestionAddedView.font];
    [v14 addArrangedSubview:v34];
    goto LABEL_20;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView);
  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.9];

  [v4 setBackgroundColor:v6];
  [v1 addSubview:v4];
  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
  [v1 addSubview:v7];
  if (one-time initialization token for fontColor != -1)
  {
    swift_once();
  }

  [v7 setTintColor:static MOSuggestionAddedView.fontColor];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 centerXAnchor];
    v11 = [v9 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    if (v12)
    {
      [v12 setActive:1];
    }
  }

  v13 = [v7 superview];
  if (v13)
  {
    v14 = v13;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v7 centerYAnchor];
    v16 = [v14 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    if (v17)
    {
      [v17 setActive:1];
    }

LABEL_20:
  }

  (*((swift_isaMask & *v1) + 0x98))(0);
}

Swift::Void __swiftcall MOSuggestionAddedView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionAddedView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] == 1)
  {
    [v0 frame];
    Width = CGRectGetWidth(v5);
    v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView];
    v3 = Width * 0.5 * 0.5;
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    [v2 setFrame:?];
    [v2 _setCornerRadius:v3];
  }
}

Swift::Void __swiftcall MOSuggestionAddedView.updateRepresentation(interactionState:)(MomentsUIService::MOSuggestionCollectionViewInteractionState interactionState)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel);
  v4 = [objc_opt_self() mainBundle];
  if ((interactionState & 1) == 0)
  {
    v17._object = 0x80000001002BAF30;
    v9._countAndFlagsBits = 0x6465646441;
    v17._countAndFlagsBits = 0xD000000000000024;
    v9._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v4, v10, v17);

    v11 = String._bridgeToObjectiveC()();

    [v3 setText:v11];

    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
    if (one-time initialization token for config == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v16._object = 0x80000001002BAEF0;
  v5._countAndFlagsBits = 0x6465766153;
  v16._countAndFlagsBits = 0xD000000000000034;
  v5._object = 0xE500000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  v7 = String._bridgeToObjectiveC()();

  [v3 setText:v7];

  v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
  if (one-time initialization token for config != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v12 = static MOSuggestionAddedView.config;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  [v8 setImage:v14];
}

id MOSuggestionAddedView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAddedView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionAddedView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnlyBackgroundRatio) = 0x3FE0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionInterstitialListAssetViewModel.__allocating_init(motionAssets:)(unint64_t a1)
{
  v5 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v6 = *(v5 - 8);
  v200 = v5;
  v201 = v6;
  __chkstk_darwin(v5);
  v202 = v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v203 = v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  *&v204 = v180 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v19 = v180 - v17;
  if (!(a1 >> 62))
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 > 2)
    {
LABEL_3:

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static MOAngelLogger.shared);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Currently only supports 1 pair of motion activity", v24, 2u);
      }

      return 0;
    }

    v219 = _swiftEmptyArrayStorage;
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_58:

    v60 = 0;
    v59 = 0;
    goto LABEL_59;
  }

  v68 = v15;
  v1 = v180 - v17;
  v69 = v18;
  v70 = v16;
  if (_CocoaArrayWrapper.endIndex.getter() > 2)
  {
    goto LABEL_3;
  }

  v219 = _swiftEmptyArrayStorage;
  v71 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v70;
  v18 = v69;
  v19 = v1;
  v20 = v71;
  v15 = v68;
  if (!v20)
  {
    goto LABEL_58;
  }

LABEL_9:
  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_69;
  }

  v195 = v18;
  v196 = v19;
  v197 = v13;
  v198 = v15;
  v205 = 0;
  v207 = 0;
  v25 = 0;
  v206 = (v16 & 0xC000000000000001);
  v26 = v16;
  do
  {
    if (v206)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v16 + 8 * v25 + 32);
    }

    v28 = v27;
    v29 = [v27 assetType];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {

LABEL_12:

      v207 = v28;
      goto LABEL_13;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {

      goto LABEL_12;
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {

        goto LABEL_13;
      }
    }

    v205 = v28;
LABEL_13:
    v16 = v26;
    ++v25;
  }

  while (v20 != v25);

  if (!v207)
  {
    v59 = 0;
    v60 = v205;
LABEL_59:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static MOAngelLogger.shared);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Missing date information", v75, 2u);
    }

    return 0;
  }

  v42 = v207;
  p_align = &stru_100327FE8.align;
  v43 = [v42 content];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

    swift_unknownObjectRelease();
LABEL_46:
    v60 = v205;
    v59 = v207;
    goto LABEL_59;
  }

  v45 = v44;
  v46 = [v42 metadata];
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v47);
  v1 = v48;

  if (!v1)
  {
    goto LABEL_44;
  }

  if (!*(v1 + 2) || (v206 = v45, v49 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityTypeEnum), (v50 & 1) == 0))
  {

LABEL_44:
    swift_unknownObjectRelease();
LABEL_45:

    goto LABEL_46;
  }

  outlined init with copy of Any(*(v1 + 7) + 32 * v49, v218);
  type metadata accessor for MOSuggestionAssetMotionActivityType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  v51 = v216;
  if (!*(v1 + 2) || (v52 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStartDate), (v53 & 1) == 0))
  {

    swift_unknownObjectRelease();

    v54 = v204;
    (*(v197 + 56))(v204, 1, 1, v198);
LABEL_49:
    outlined destroy of Date?(v54);
    goto LABEL_46;
  }

  v193 = v42;
  v194 = v51;
  v192 = v43;
  outlined init with copy of Any(*(v1 + 7) + 32 * v52, v218);
  v54 = v204;
  v55 = v198;
  v56 = swift_dynamicCast();
  v57 = v197;
  v190 = *(v197 + 56);
  v191 = v197 + 56;
  v190(v54, v56 ^ 1u, 1, v55);
  v58 = *(v57 + 48);
  if (v58(v54, 1, v55) == 1)
  {

    swift_unknownObjectRelease();

    goto LABEL_49;
  }

  *&v204 = *(v57 + 32);
  (v204)(v196, v54, v198);
  if (!*(v1 + 2) || (v61 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityEndDate), (v62 & 1) == 0))
  {

    swift_unknownObjectRelease();

    v67 = v198;
    (*(v197 + 8))(v196, v198);
    v66 = v203;
    v190(v203, 1, 1, v67);
LABEL_55:
    outlined destroy of Date?(v66);
    goto LABEL_46;
  }

  outlined init with copy of Any(*(v1 + 7) + 32 * v61, v218);
  v63 = v203;
  v64 = v198;
  v65 = swift_dynamicCast();
  v190(v63, v65 ^ 1u, 1, v64);
  if (v58(v63, 1, v64) == 1)
  {
    (*(v197 + 8))(v196, v198);

    swift_unknownObjectRelease();

    v66 = v203;
    goto LABEL_55;
  }

  v2 = v193;

  (v204)(v195, v203, v198);
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v79 != v80)
  {
LABEL_69:
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v81)
    {
      goto LABEL_70;
    }

    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v151 = v150;
    if (v149 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v151 == v152)
    {
    }

    else
    {
      v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v153 & 1) == 0)
      {
        v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v157;
        if (v156 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v158 == v159)
        {
        }

        else
        {
          v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v169 & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        if (*(v1 + 2))
        {
          v170 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized);
          if (v171)
          {
            outlined init with copy of Any(*(v1 + 7) + 32 * v170, v218);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_107;
            }

            v203 = v216;
            v207 = v217;
            v181 = 22;
            v84 = 19;
LABEL_74:
            LODWORD(v189) = v84;
            v85 = *(v197 + 16);
            v86 = v202;
            v87 = v198;
            v85(v202, v196, v198);
            v88 = v200[5];
            v85(v86 + v88, v195, v87);
            v190(v86 + v88, 0, 1, v87);
            v89 = objc_opt_self();
            swift_unknownObjectRetain();
            *&v204 = [v89 redColor];
            v90 = String._bridgeToObjectiveC()();
            v200 = [v89 colorNamed:v90];

            v180[3] = type metadata accessor for MOSuggestionSheetImage();
            v91 = swift_allocObject();
            *(v91 + 40) = 0;
            *(v91 + 32) = 0;
            *(v91 + 24) = 0;
            *(v91 + 72) = 0u;
            *(v91 + 56) = 0u;
            *(v91 + 88) = 1;
            *(v91 + 96) = 0;
            *(v91 + 104) = 1;
            *(v91 + 16) = v206;
            swift_beginAccess();
            *(v91 + 24) = v204;
            swift_beginAccess();
            *(v91 + 32) = 0;
            swift_beginAccess();
            v92 = *(v91 + 40);
            *(v91 + 40) = v200;

            *(v91 + 48) = 0;
            swift_beginAccess();
            *(v91 + 72) = 0u;
            *(v91 + 56) = 0u;
            *(v91 + 88) = 1;
            swift_beginAccess();
            *(v91 + 96) = 0;
            v200 = v91;
            *(v91 + 104) = 1;

            v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
            v95 = *(v93 + 2);
            v94 = *(v93 + 3);
            v206 = v93;
            if (v95 >= v94 >> 1)
            {
              v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v206);
            }

            v96 = v206;
            *(v206 + 2) = v95 + 1;
            v97 = &v96[2 * v95];
            v98 = v207;
            *(v97 + 4) = v203;
            *(v97 + 5) = v98;
            v99 = [v193 identifier];
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;

            v214 = v100;
            v215 = v102;
            v212 = 35;
            v213 = 0xE100000000000000;
            v191 = lazy protocol witness table accessor for type String and conformance String();
            v103 = StringProtocol.components<A>(separatedBy:)();

            if (v103[2])
            {
              v104 = v103[4];
              v183 = v103[5];
              v184 = v104;

              v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
              v106 = *(v201 + 72);
              v107 = (*(v201 + 80) + 32) & ~*(v201 + 80);
              v187 = *(v201 + 80);
              v188 = v106;
              v190 = v105;
              v108 = swift_allocObject();
              v204 = xmmword_1002A48B0;
              v182 = v108;
              *(v108 + 16) = xmmword_1002A48B0;
              v201 = v107;
              outlined init with copy of MOSuggestionSheetAssetDateRange(v202, v108 + v107);
              v180[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v109 = swift_allocObject();
              *(v109 + 16) = v204;
              v110 = v207;
              *(v109 + 32) = v203;
              *(v109 + 40) = v110;
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v111 = swift_allocObject();
              v185 = xmmword_1002A4A70;
              *(v111 + 16) = xmmword_1002A4A70;
              *(v111 + 32) = v200;
              v180[1] = type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
              v112 = swift_allocObject();
              *(v112 + 32) = 0u;
              *(v112 + 48) = 0u;
              *(v112 + 16) = 0u;
              *(v112 + 64) = 0;
              *(v112 + 90) = 1;

              UUID.init()();
              swift_beginAccess();
              *(v112 + 16) = 0;

              swift_beginAccess();
              *(v112 + 24) = 0;
              *(v112 + 32) = 0;

              swift_beginAccess();
              *(v112 + 40) = v182;

              swift_beginAccess();
              *(v112 + 48) = v109;

              swift_beginAccess();
              *(v112 + 56) = v111;

              *(v112 + 65) = v189;
              v113 = v183;
              *(v112 + 72) = v184;
              *(v112 + 80) = v113;
              *(v112 + 90) = 1;
              *(v112 + 88) = 0;
              v203 = v112;

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_78;
              }
            }

            else
            {
              __break(1u);
            }

            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_78:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v114 = [v193 identifier];
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;

            v210 = v115;
            v211 = v117;
            v208 = 35;
            v209 = 0xE100000000000000;
            v118 = StringProtocol.components<A>(separatedBy:)();

            if (v118[2])
            {
              v119 = v118[4];
              v120 = v118[5];

              HIBYTE(v179) = 0;
              *(&v179 + 1) = 1;
              LOBYTE(v179) = v189;
              v199 = (*(v199 + 344))(v119, v120, 0, 0, 0, 0, 0, 0, v179);
              if (v205)
              {
                v121 = v205;
                v122 = *(p_align + 305);
                v207 = v121;
                v123 = [v121 v122];
                objc_opt_self();
                v205 = v123;
                v124 = swift_dynamicCastObjCClass();
                if (v124)
                {
                  v125 = v124;
                  v126 = swift_allocObject();
                  *(v126 + 40) = 0;
                  *(v126 + 32) = 0;
                  *(v126 + 24) = 0;
                  *(v126 + 72) = 0u;
                  *(v126 + 56) = 0u;
                  *(v126 + 88) = 1;
                  *(v126 + 96) = 0;
                  *(v126 + 104) = 1;
                  *(v126 + 16) = v125;
                  swift_beginAccess();
                  *(v126 + 24) = 0;
                  swift_beginAccess();
                  *(v126 + 32) = 0;
                  swift_beginAccess();
                  v127 = *(v126 + 40);
                  *(v126 + 40) = 0;
                  swift_unknownObjectRetain();

                  *(v126 + 48) = 0;
                  swift_beginAccess();
                  *(v126 + 72) = 0u;
                  *(v126 + 56) = 0u;
                  *(v126 + 88) = 1;
                  swift_beginAccess();
                  *(v126 + 96) = 0;
                  *(v126 + 104) = 1;
                  v189 = MOSuggestionAssetVisualSubType.singularLocalizedString.getter(v181);
                  v184 = v128;
                  v129 = [v207 identifier];
                  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v132 = v131;

                  v210 = v130;
                  v211 = v132;
                  v208 = 35;
                  v209 = 0xE100000000000000;
                  v133 = StringProtocol.components<A>(separatedBy:)();

                  if (v133[2])
                  {
                    v134 = v133[5];
                    v191 = v133[4];
                    v183 = v134;

                    v135 = v201;
                    v136 = swift_allocObject();
                    *(v136 + 16) = v204;
                    outlined init with copy of MOSuggestionSheetAssetDateRange(v202, v136 + v135);
                    v137 = swift_allocObject();
                    *(v137 + 16) = v204;
                    v138 = v184;
                    *(v137 + 32) = v189;
                    *(v137 + 40) = v138;
                    v139 = swift_allocObject();
                    *(v139 + 16) = v185;
                    *(v139 + 32) = v126;
                    v140 = swift_allocObject();
                    *(v140 + 32) = 0u;
                    *(v140 + 48) = 0u;
                    *(v140 + 64) = 0;
                    *(v140 + 16) = 0u;
                    *(v140 + 90) = 1;

                    UUID.init()();
                    swift_beginAccess();
                    *(v140 + 16) = 0;

                    swift_beginAccess();
                    *(v140 + 24) = 0;
                    *(v140 + 32) = 0;

                    swift_beginAccess();
                    *(v140 + 40) = v136;

                    swift_beginAccess();
                    *(v140 + 48) = v137;

                    swift_beginAccess();
                    *(v140 + 56) = v139;

                    *(v140 + 65) = v181;
                    v141 = v183;
                    *(v140 + 72) = v191;
                    *(v140 + 80) = v141;
                    *(v140 + 90) = 1;
                    *(v140 + 88) = 0;

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
LABEL_83:
                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      v142 = v219;
                      v144 = *(v206 + 2);
                      v143 = *(v206 + 3);
                      if (v144 >= v143 >> 1)
                      {
                        v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v144 + 1, 1, v206);
                      }

                      swift_unknownObjectRelease();

                      v145 = v206;
                      *(v206 + 2) = v144 + 1;
                      v146 = &v145[2 * v144];
                      v147 = v184;
                      *(v146 + 4) = v189;
                      *(v146 + 5) = v147;
                      v148 = v199;
                      swift_beginAccess();
                      *(v148 + 16) = v142;

                      goto LABEL_100;
                    }

LABEL_117:
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    goto LABEL_83;
                  }

LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                swift_unknownObjectRelease();
              }

              else
              {

                v207 = 0;
              }

LABEL_100:
              v160 = v199;
              v161 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
              v163 = v162;
              swift_beginAccess();
              v160[3] = v161;
              v160[4] = v163;

              swift_beginAccess();
              v160[6] = v206;

              v164 = swift_allocObject();
              *(v164 + 16) = v185;
              *(v164 + 32) = v200;
              swift_beginAccess();
              v160[7] = v164;

              v165 = v201;
              v166 = swift_allocObject();
              *(v166 + 16) = v204;
              outlined init with take of MOSuggestionSheetAssetDateRange(v202, v166 + v165);

              swift_unknownObjectRelease();

              v167 = v198;
              v168 = *(v197 + 8);
              v168(v195, v198);
              v168(v196, v167);
              swift_beginAccess();
              v160[5] = v166;

              return v160;
            }

            __break(1u);
            goto LABEL_116;
          }
        }

LABEL_106:

        goto LABEL_107;
      }
    }

    if (*(v1 + 2))
    {
      v154 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized);
      if (v155)
      {
        outlined init with copy of Any(*(v1 + 7) + 32 * v154, v218);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_107;
        }

        v203 = v216;
        v207 = v217;
        v181 = 21;
        v84 = 18;
        goto LABEL_74;
      }
    }

    goto LABEL_106;
  }

LABEL_70:
  if (*(v1 + 2) && (v82 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized), (v83 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 7) + 32 * v82, v218);

    if (swift_dynamicCast())
    {
      v203 = v216;
      v207 = v217;
      v181 = 20;
      v84 = 17;
      goto LABEL_74;
    }

LABEL_107:
    v2 = v193;
  }

  else
  {
  }

  v172 = v197;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static MOAngelLogger.shared);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&_mh_execute_header, v174, v175, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Missing steps/distance information", v176, 2u);
    v172 = v197;
  }

  swift_unknownObjectRelease();
  v177 = *(v172 + 8);
  v178 = v198;
  v177(v195, v198);
  v177(v196, v178);
  return 0;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);
  }
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

double *MOSuggestionInterstitialListAssetViewModel.__allocating_init(mediaAssets:)(unint64_t a1)
{
  v3 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v244 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v249 = &v219 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v219 - v9;
  v11 = type metadata accessor for Date();
  countAndFlagsBits = __chkstk_darwin(v11);
  v251 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_142:
    v214 = v13;
    v215 = countAndFlagsBits;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    countAndFlagsBits = v215;
    v13 = v214;
    if (v16 < 1)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 < 1)
    {
      goto LABEL_147;
    }
  }

  v256 = countAndFlagsBits;
  v257 = v15;
  v252 = v13;
  v254 = v10;
  v233 = v4;
  v234 = v3;
  v231 = v1;
  rawValue = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v10 = 0;
  v17._rawValue = rawValue;
  v260 = a1 & 0xC000000000000001;
  v259 = a1;
  do
  {
    if (v260)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a1 + 8 * v10 + 32);
    }

    v15 = v18;
    v19 = [v18 identifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v20;

    v261 = v3;
    v262 = v4;
    v264 = 35;
    v265 = 0xE100000000000000;
    v258 = lazy protocol witness table accessor for type String and conformance String();
    v1 = StringProtocol.components<A>(separatedBy:)();

    if (!v1[2])
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v4 = v1[4];
    v3 = v1[5];

    rawValue = v17._rawValue;
    v22 = *(v17._rawValue + 2);
    v21 = *(v17._rawValue + 3);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v17._rawValue = rawValue;
    }

    ++v10;
    *(v17._rawValue + 2) = v22 + 1;
    v23 = v17._rawValue + 16 * v22;
    *(v23 + 4) = v4;
    *(v23 + 5) = v3;
    a1 = v259;
  }

  while (v16 != v10);
  v24 = String.init(combinedIdentifiersFrom:)(v17);
  countAndFlagsBits = v24._countAndFlagsBits;
  v230 = v24._countAndFlagsBits;
  v267 = _swiftEmptyArrayStorage;
  v268 = _swiftEmptyArrayStorage;
  v266 = &_swiftEmptySetSingleton;
  object = v24._object;
  if (v257)
  {
    countAndFlagsBits = _CocoaArrayWrapper.endIndex.getter();
    v1 = countAndFlagsBits;
    if (!countAndFlagsBits)
    {
      goto LABEL_126;
    }

LABEL_13:
    v25 = 0;
    v255 = a1 & 0xFFFFFFFFFFFFFF8;
    v253 = (v252 + 56);
    v248 = (v252 + 48);
    v226 = 0x80000001002AEC30;
    v224 = 0x80000001002AEBE0;
    v225 = 0x80000001002AEC10;
    v228 = (v252 + 16);
    v235 = (v252 + 8);
    v236 = (v252 + 32);
    v15 = _swiftEmptyArrayStorage;
    v247 = 26;
    v232 = xmmword_1002A48B0;
    v227 = xmmword_1002A4A70;
    v250 = _swiftEmptyArrayStorage;
    v245 = _swiftEmptyArrayStorage;
    v246 = _swiftEmptyArrayStorage;
    v257 = v1;
    while (1)
    {
      if (v260)
      {
        countAndFlagsBits = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v255 + 16))
        {
          goto LABEL_141;
        }

        countAndFlagsBits = *(a1 + 8 * v25 + 32);
      }

      v26 = countAndFlagsBits;
      v27 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_140;
      }

      v28 = [countAndFlagsBits assetType];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {
        goto LABEL_33;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
        if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
        {
          goto LABEL_33;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          break;
        }
      }

LABEL_34:
      v45 = MOSuggestionAssetsTypePhoto;
LABEL_35:
      v3 = v45;

      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v46;
      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v47)
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {
          [v26 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            __swift_project_value_buffer(v49, static MOAngelLogger.shared);
            v50 = Logger.logObject.getter();
            v3 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v50, v3))
            {
              v4 = swift_slowAlloc();
              *v4 = 0;
              _os_log_impl(&_mh_execute_header, v50, v3, "[MOSuggestionInterstitialListAssetViewModel.mediaAssets] Mismatched init for asset type", v4, 2u);
            }

            goto LABEL_54;
          }
        }
      }

      v10 = [v26 content];
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v3 = v51;
        v52 = [v26 metadata];
        v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v4);
        v54 = v53;

        if (!v54)
        {
          swift_unknownObjectRelease();
LABEL_54:

          goto LABEL_15;
        }

        if (*(v54 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMediaStartDate), (v56 & 1) != 0))
        {
          v252 = v3;
          outlined init with copy of Any(*(v54 + 56) + 32 * v55, &v261);

          v57 = v254;
          v4 = v256;
          v58 = swift_dynamicCast();
          v3 = *v253;
          (*v253)(v57, v58 ^ 1u, 1, v4);
          if ((*v248)(v57, 1, v4) != 1)
          {
            v241 = v15;
            (*v236)(v251, v57, v4);
            v59 = [v252 mediaType];
            v4 = 0;
            v60 = 26;
            v61 = 1;
            v242 = v10;
            v243 = v3;
            if (v59 <= 4)
            {
              if (v59 == 1)
              {
                v68 = v252;
                v105 = [v252 artistName];
                v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v108 = v107;

                v261 = v106;
                v262 = v108;

                v109._countAndFlagsBits = 0x20A280E220;
                v109._object = 0xA500000000000000;
                String.append(_:)(v109);

                v111 = v261;
                v110 = v262;
                v112 = [v68 title];
                v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v115 = v114;

                v261 = v111;
                v262 = v110;
                a1 = v259;

                v116._countAndFlagsBits = v113;
                v116._object = v115;
                String.append(_:)(v116);

                v61 = 0;
                v60 = 0;
                v4 = v261;
                v67 = v262;
                goto LABEL_91;
              }

              if (v59 != 2)
              {
                v67 = 0;
                v68 = v252;
                if (v59 == 4)
                {
                  v69 = [v252 artistName];
                  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v72 = v71;

                  v261 = v70;
                  v262 = v72;

                  v73._countAndFlagsBits = 0x20A280E220;
                  v73._object = 0xA500000000000000;
                  String.append(_:)(v73);

                  v75 = v261;
                  v74 = v262;
                  v76 = [v68 albumTitle];
                  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v79 = v78;

                  v261 = v75;
                  v262 = v74;
                  a1 = v259;

                  v80._countAndFlagsBits = v77;
                  v80._object = v79;
                  String.append(_:)(v80);

                  v61 = 0;
                  v4 = v261;
                  v67 = v262;
                  v60 = 1;
                }

                goto LABEL_91;
              }

              goto LABEL_70;
            }

            if (v59 <= 6)
            {
              if (v59 != 5)
              {
                v62 = [v252 artistName];
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                if (v63 || v65 != 0xE000000000000000)
                {
                  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v129)
                  {
                    goto LABEL_79;
                  }

                  v68 = v252;
                  v142 = [v252 artistName];
                  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v145 = v144;

                  v261 = v143;
                  v262 = v145;

                  v146._countAndFlagsBits = 0x20A280E220;
                  v146._object = 0xA500000000000000;
                  String.append(_:)(v146);

                  v148 = v261;
                  v147 = v262;
                  v149 = [v68 title];
                }

                else
                {

LABEL_79:
                  v130 = [v252 albumTitle];
                  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v132;

                  if (!v131 && v133 == 0xE000000000000000)
                  {

                    goto LABEL_83;
                  }

                  v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v134)
                  {
LABEL_83:
                    v68 = v252;
                    v135 = [v252 title];
                    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v137 = v136;

                    v67 = v137;
                    v61 = 0;
                    goto LABEL_90;
                  }

                  v68 = v252;
                  v150 = [v252 albumTitle];
                  v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v153 = v152;

                  v261 = v151;
                  v262 = v153;

                  v154._countAndFlagsBits = 0x20A280E220;
                  v154._object = 0xA500000000000000;
                  String.append(_:)(v154);

                  v148 = v261;
                  v147 = v262;
                  v149 = [v68 title];
                }

                v155 = v149;
                v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v158 = v157;

                v261 = v148;
                v262 = v147;
                a1 = v259;

                v159._countAndFlagsBits = v156;
                v159._object = v158;
                String.append(_:)(v159);

                v61 = 0;
                v4 = v261;
                v67 = v262;
LABEL_90:
                v60 = 4;
LABEL_91:
                v237 = v60;
                v10 = [v68 albumArt];
                v160 = v243;
                if (v10)
                {
                  if (!v67)
                  {
LABEL_100:
                    if (one-time initialization token for shared != -1)
                    {
                      swift_once();
                    }

                    v164 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v164, static MOAngelLogger.shared);
                    v165 = Logger.logObject.getter();
                    v3 = static os_log_type_t.error.getter();
                    v166 = os_log_type_enabled(v165, v3);
                    v15 = v241;
                    if (v166)
                    {
                      v4 = swift_slowAlloc();
                      *v4 = 0;
                      _os_log_impl(&_mh_execute_header, v165, v3, "[MOSuggestionInterstitialListAssetViewModel.mediaAssets] Failed to construct valid media asset view model", v4, 2u);
                    }

                    else
                    {
                    }

                    swift_unknownObjectRelease();

                    goto LABEL_122;
                  }
                }

                else
                {
                  v238 = v67;
                  v161 = [v26 assetType];
                  specialized FallbackAssetSymbol.init(assetType:mediaType:)(v161, [v252 mediaType], 0);
                  v239 = v4;
                  v162 = String._bridgeToObjectiveC()();

                  v10 = [objc_opt_self() _systemImageNamed:v162];

                  v67 = v238;
                  v4 = v239;
                  if (!v238)
                  {
                    goto LABEL_100;
                  }
                }

                if (v10)
                {
                  v163 = v61;
                }

                else
                {
                  v163 = 1;
                }

                if (v163)
                {

                  goto LABEL_100;
                }

                v238 = v67;
                v239 = v4;
                v167 = v249;
                v168 = v256;
                (*v228)(v249, v251, v256);
                v160(v167 + *(v234 + 20), 1, 1, v168);
                v169 = objc_opt_self();
                v243 = v10;
                v246 = [v169 whiteColor];
                v245 = [v169 grayColor];
                type metadata accessor for MOSuggestionSheetImage();
                v170 = swift_allocObject();
                *(v170 + 40) = 0;
                v15 = (v170 + 40);
                *(v170 + 32) = 0;
                *(v170 + 24) = 0;
                *(v170 + 72) = 0u;
                *(v170 + 56) = 0u;
                *(v170 + 88) = 1;
                *(v170 + 96) = 0;
                *(v170 + 104) = 1;
                *(v170 + 16) = v243;
                swift_beginAccess();
                *(v170 + 24) = v246;
                swift_beginAccess();
                *(v170 + 32) = v245;
                swift_beginAccess();
                v171 = *(v170 + 40);
                *(v170 + 40) = 0;

                *(v170 + 48) = 0;
                swift_beginAccess();
                *(v170 + 72) = 0u;
                *(v170 + 56) = 0u;
                *(v170 + 88) = 1;
                swift_beginAccess();
                *(v170 + 96) = 0;
                *(v170 + 104) = 1;
                v172 = v247;
                if (v247 == 26)
                {
                  v172 = v237;
                }

                v247 = v172;
                v173 = [v26 identifier];
                v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v4 = v175;

                v261 = v174;
                v262 = v4;
                v264 = 35;
                v265 = 0xE100000000000000;
                v1 = StringProtocol.components<A>(separatedBy:)();

                if (!v1[2])
                {
                  goto LABEL_151;
                }

                v176 = v1[4];
                v245 = v1[5];
                v246 = v176;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
                v177 = (*(v233 + 80) + 32) & ~*(v233 + 80);
                v223 = *(v233 + 72);
                v178 = swift_allocObject();
                v221 = v178;
                v222 = v177;
                *(v178 + 16) = v232;
                outlined init with copy of MOSuggestionSheetAssetDateRange(v249, v178 + v177);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                v179 = swift_allocObject();
                v220 = v179;
                *(v179 + 16) = v232;
                v180 = v238;
                *(v179 + 32) = v239;
                *(v179 + 40) = v180;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v181 = swift_allocObject();
                v219 = v181;
                *(v181 + 16) = v227;
                *(v181 + 32) = v170;
                type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
                v10 = swift_allocObject();
                *(v10 + 32) = 0u;
                *(v10 + 48) = 0u;
                *(v10 + 64) = 0;
                *(v10 + 16) = 0u;
                *(v10 + 90) = 1;
                v4 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

                v229 = v170;

                UUID.init()();
                swift_beginAccess();
                *(v10 + 16) = 0;

                swift_beginAccess();
                *(v10 + 24) = 0;
                *(v10 + 32) = 0;

                swift_beginAccess();
                *(v10 + 40) = v221;

                swift_beginAccess();
                *(v10 + 48) = v220;

                swift_beginAccess();
                *(v10 + 56) = v219;

                *(v10 + 65) = v237;
                v182 = v245;
                *(v10 + 72) = v246;
                *(v10 + 80) = v182;
                *(v10 + 90) = 1;
                *(v10 + 88) = 0;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v245 = v268;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v250 + 2) + 1, 1, v250);
                }

                a1 = v259;
                v15 = v241;
                v184 = *(v250 + 2);
                v183 = *(v250 + 3);
                if (v184 >= v183 >> 1)
                {
                  v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, v250);
                }

                v185 = v250;
                *(v250 + 2) = v184 + 1;
                v186 = &v185[2 * v184];
                v187 = v238;
                *(v186 + 4) = v239;
                *(v186 + 5) = v187;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v267 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v267 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v246 = v267;
                outlined init with copy of MOSuggestionSheetAssetDateRange(v249, v244);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
                }

                v3 = *(v15 + 2);
                v188 = *(v15 + 3);
                if (v3 >= v188 >> 1)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v3 + 1, 1, v15);
                }

                *(v15 + 2) = v3 + 1;
                outlined init with take of MOSuggestionSheetAssetDateRange(v244, v15 + v222 + v3 * v223);
                specialized Set._Variant.insert(_:)(&v261, [v252 mediaType]);
                v189 = v243;

                swift_unknownObjectRelease();

                outlined destroy of MOSuggestionSheetAssetDateRange(v249);
LABEL_122:
                countAndFlagsBits = (*v235)(v251, v256);
                goto LABEL_15;
              }

LABEL_70:
              v68 = v252;
              v93 = [v252 artistName];
              v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v96 = v95;

              v261 = v94;
              v262 = v96;

              v97._countAndFlagsBits = 0x20A280E220;
              v97._object = 0xA500000000000000;
              String.append(_:)(v97);

              v99 = v261;
              v98 = v262;
              v100 = [v68 title];
              v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v103 = v102;

              v261 = v99;
              v262 = v98;
              a1 = v259;

              v104._countAndFlagsBits = v101;
              v104._object = v103;
              String.append(_:)(v104);

              v61 = 0;
              v4 = v261;
              v67 = v262;
              v60 = 2;
              goto LABEL_91;
            }

            if (v59 != 7)
            {
              v67 = 0;
              v68 = v252;
              if (v59 == 8)
              {
                v81 = [v252 artistName];
                v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v84 = v83;

                v261 = v82;
                v262 = v84;

                v85._countAndFlagsBits = 0x20A280E220;
                v85._object = 0xA500000000000000;
                String.append(_:)(v85);

                v87 = v261;
                v86 = v262;
                v88 = [v68 title];
                v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v91 = v90;

                v261 = v87;
                v262 = v86;
                a1 = v259;

                v92._countAndFlagsBits = v89;
                v92._object = v91;
                String.append(_:)(v92);

                v61 = 0;
                v4 = v261;
                v67 = v262;
                v60 = 6;
              }

              goto LABEL_91;
            }

            v117 = v252;
            v118 = [v252 artistName];
            v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v120 = v119;

            v121 = [v117 albumTitle];
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            if (v239 == v122 && v120 == v124)
            {

              goto LABEL_76;
            }

            v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v125)
            {
              goto LABEL_76;
            }

            v138 = [v252 artistName];
            v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v141 = v140;

            if (!v139 && v141 == 0xE000000000000000)
            {

              goto LABEL_76;
            }

            v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v190)
            {
LABEL_76:
              v68 = v252;
              v126 = [v252 albumTitle];
              v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v128 = v127;

              v67 = v128;
              v61 = 0;
            }

            else
            {
              v68 = v252;
              v191 = [v252 artistName];
              v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v194 = v193;

              v261 = v192;
              v262 = v194;

              v195._countAndFlagsBits = 0x20A280E220;
              v195._object = 0xA500000000000000;
              String.append(_:)(v195);

              v197 = v261;
              v196 = v262;
              v198 = [v68 albumTitle];
              v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v201 = v200;

              v261 = v197;
              v262 = v196;
              a1 = v259;

              v202._countAndFlagsBits = v199;
              v202._object = v201;
              String.append(_:)(v202);

              v61 = 0;
              v4 = v261;
              v67 = v262;
            }

            v60 = 5;
            goto LABEL_91;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v57 = v254;
          (*v253)(v254, 1, 1, v256);
        }

        countAndFlagsBits = outlined destroy of Date?(v57);
      }

      else
      {

        countAndFlagsBits = swift_unknownObjectRelease();
      }

LABEL_15:
      ++v25;
      v1 = v257;
      if (v27 == v257)
      {
        goto LABEL_127;
      }
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    if (v41 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v43 != v44)
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v45 = v28;
      if ((v66 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_33:

    goto LABEL_34;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1)
  {
    goto LABEL_13;
  }

LABEL_126:
  v15 = _swiftEmptyArrayStorage;
  v247 = 26;
  v250 = _swiftEmptyArrayStorage;
  v245 = _swiftEmptyArrayStorage;
  v246 = _swiftEmptyArrayStorage;
LABEL_127:

  v203 = v246;
  if (v246 >> 62)
  {
    v216 = _CocoaArrayWrapper.endIndex.getter();
    v204 = v247;
    if (!v216)
    {
      goto LABEL_145;
    }

LABEL_129:
    if ((v203 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v4 = *(v203 + 32);
    }

    specialized Collection.first.getter(v266);
    v206 = v205;

    if ((v206 & 1) != 0 || v204 == 26)
    {

      goto LABEL_146;
    }

    HIBYTE(v218) = 0;
    *(&v218 + 1) = 1;
    LOBYTE(v218) = v204;
    v1 = (v231[43])(v230, object, 0, 0, 0, 0, 0, 0, v218);
    if (!(v245 >> 62))
    {
      if (*((v245 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
LABEL_138:

        v210 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
        v212 = v211;
        swift_beginAccess();
        v1[3] = v210;
        v1[4] = v212;

        swift_beginAccess();
        v1[6] = v250;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v213 = swift_allocObject();
        *(v213 + 16) = xmmword_1002A4A70;
        *(v213 + 32) = v4;
        swift_beginAccess();
        v1[7] = v213;

        swift_beginAccess();
        v1[5] = v15;

        return v1;
      }

LABEL_137:

      v261 = specialized Array._copyToContiguousArray()(v208, v207);
      specialized MutableCollection<>.sort(by:)(&v261);

      v209 = v261;
      swift_beginAccess();
      v1[2] = v209;
      goto LABEL_138;
    }

LABEL_152:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

  v204 = v247;
  if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_129;
  }

LABEL_145:

LABEL_146:

LABEL_147:

  return 0;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UIScene();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UIScene();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

char *MOSuggestionWorkoutIconGlyphView.__allocating_init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *&v8[v9] = [objc_allocWithZone(UIImageView) init];
  *&v8[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
  *&v8[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
  v26.receiver = v8;
  v26.super_class = v4;
  v10 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v12 = *&v10[v11];
  v13 = v10;
  v14 = v12;
  v15 = [a1 imageWithRenderingMode:2];
  [v14 setImage:v15];

  v16 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v17 = *&v13[v16];
  *&v13[v16] = a2;
  v18 = a2;

  v19 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v20 = *&v13[v19];
  *&v13[v19] = a3;
  v21 = a3;

  [*&v10[v11] setTintColor:a4];
  [*&v10[v11] setContentMode:1];
  [v13 addSubview:*&v10[v11]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002A48B0;
  *(v22 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v22 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v13) + 0xB8))(v23);

  return v13;
}

id MOSuggestionWorkoutsSnowGlobeView.__allocating_init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v4);
  *&v14[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v33.receiver = v14;
  v33.super_class = v4;
  v15 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v27 = v15;
  v26 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  aBlock[4] = _s16MomentsUIService33MOSuggestionWorkoutsSnowGlobeViewC5icons25glyphLightBackgroundColor0i4DarkkL00i4TintL0ACSaySo7UIImageCG_So7UIColorCA2LtcfcyyScMYccfU_TA_0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_44;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v24 = v27;
  (*(v31 + 8))(v10, v22);
  (*(v29 + 8))(v13, v30);
  return v24;
}

void *MOSuggestionActivityIconAssetView.__allocating_init(imageView:name:assignedTileSize:frame:calories:duration:distance:averageHeartRate:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = objc_allocWithZone(v15);
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v30;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v25 colorNamed:v31];

  if (!v32)
  {
    v32 = [v25 systemRedColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *&v23[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *&v23[v35] = v36;
  v37 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v38 = [objc_allocWithZone(UIStackView) init];
  [v38 setAxis:1];
  [v38 setAlignment:1];
  *&v23[v37] = v38;
  v39 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
  *v39 = a2;
  v39[1] = a3;
  v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = a4;
  v40 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
  *v40 = a5;
  v40[1] = a6;
  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = a13;
  v41 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  *v41 = a7;
  v41[1] = a8;
  v42 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  *v42 = a14;
  v42[1] = a15;
  v52.receiver = v23;
  v52.super_class = v15;
  v43 = objc_msgSendSuper2(&v52, "initWithFrame:", a9, a10, a11, a12);
  [v43 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002A48B0;
  *(v44 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v44 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v43) + 0x108))(a1);

  return v43;
}

id MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v14 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v33.receiver = v4;
  v33.super_class = v14;
  v15 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v27 = v15;
  v26 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  aBlock[4] = closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)partial apply;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11_0;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v24 = v27;
  (*(v31 + 8))(v10, v22);
  (*(v29 + 8))(v13, v30);
  return v24;
}

void closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v38 = a1;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v38;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  v6 = a1;
  v42 = type metadata accessor for UITraitUserInterfaceStyle();
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v6 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v7 = v6;
    v8 = 0;
    v40 = v5;
    v41 = v6;
    do
    {
      if (v39)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v7 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = type metadata accessor for MOSuggestionWorkoutIconGlyphView();
      v12 = objc_allocWithZone(v11);
      v13 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
      v14 = objc_allocWithZone(UIImageView);
      v15 = v10;
      *&v12[v13] = [v14 init];
      *&v12[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
      *&v12[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
      v46.receiver = v12;
      v46.super_class = v11;
      v16 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v17 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
      swift_beginAccess();
      v18 = *&v16[v17];
      v19 = v16;
      v20 = v18;
      v21 = [v15 imageWithRenderingMode:2];
      [v20 setImage:v21];

      v22 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
      swift_beginAccess();
      v23 = *&v19[v22];
      *&v19[v22] = a2;
      v24 = a2;

      v25 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
      swift_beginAccess();
      v26 = *&v19[v25];
      *&v19[v25] = a3;
      v27 = a3;

      [*&v16[v17] setTintColor:a4];
      [*&v16[v17] setContentMode:1];
      v28 = *&v16[v17];
      v29 = v19;
      [v29 addSubview:v28];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1002A48B0;
      *(v30 + 32) = v42;
      *(v30 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
      UIView.registerForTraitChanges(_:action:)();
      swift_unknownObjectRelease();

      (*((swift_isaMask & *v29) + 0xB8))(v31);

      Strong = swift_unknownObjectWeakLoadStrong();
      v33 = v29;
      if (Strong)
      {
        v34 = Strong;
        v35 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v34[v35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[v35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v33 = v34;
      }

      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        v37 = v36;
        [v36 addSubview:v29];
      }

      ++v8;

      v7 = v41;
    }

    while (v40 != v8);
  }
}

id MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v22.receiver = v1;
  v22.super_class = v9;
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v11 = v10;
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
  return v11;
}

void closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; i != v3; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(a1 + 8 * i + 32);
      }

      v6 = v5;
      v7 = [objc_allocWithZone(UIImageView) initWithImage:v5];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
        swift_beginAccess();
        v11 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v9 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v12 addSubview:v7];
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionWorkoutsSnowGlobeView.layoutSubviews()()
{
  v1 = v0;
  if (one-time initialization token for assets != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.assets);
    v1 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
      swift_beginAccess();
      v7 = *&v1[v6];
      v8 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v5 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v3, v4, "[MOSuggestionWorkoutsSnowGlobeView] layoutSubviews iconsCount: %ld", v5, 0xCu);
    }

    else
    {
    }

    v9 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
    swift_beginAccess();
    v34 = v9;
    v10 = *&v1[v9];
    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        return;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      return;
    }

    [v1 bounds];
    v13 = v11;
    v14 = v12;
    v15 = *&v1[v9];
    if (v15 >> 62)
    {
      v37 = v12;
      v39 = v11;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v37;
      v13 = v39;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = specialized static MOSuggestionAssetSnowglobeEffect.layoutRectsFor(targetSize:count:)(v16, v13, v14);
    v18 = *&v1[v9];
    v19 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v19)
    {
      break;
    }

    v21 = 0;
    v36 = v18 & 0xFFFFFFFFFFFFFF8;
    v38 = v18 & 0xC000000000000001;
    v22 = (v17 + 56);
    *&v20 = 134218240;
    v32 = v20;
    v33 = v17;
    v35 = v19;
    while (v38)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
      v24 = v23;
      if (v21 >= *(v17 + 16))
      {

        goto LABEL_31;
      }

      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v18;
        v29 = swift_slowAlloc();
        *v29 = v32;
        v30 = *&v1[v34];
        if (v30 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v31;

        *(v29 + 12) = 2048;
        *(v29 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v26, v27, "[MOSuggestionWorkoutsSnowGlobeView] iconsCount: %ld index: %ld", v29, 0x16u);

        v18 = v28;
        v17 = v33;
      }

      else
      {

        v26 = v25;
      }

      if (v21 >= *(v17 + 16))
      {
        goto LABEL_34;
      }

      ++v21;
      [v24 setFrame:{*(v22 - 3), *(v22 - 2), *(v22 - 1), *v22}];

      v22 += 4;
      if (v35 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v21 < *(v36 + 16))
    {
      v23 = *(v18 + 8 * v21 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_29:

LABEL_31:
}

void MOSuggestionWorkoutsSnowGlobeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionWorkoutIconGlyphView.iconView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionWorkoutIconGlyphView.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionWorkoutIconGlyphView.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionWorkoutIconGlyphView.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionWorkoutIconGlyphView.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionWorkoutIconGlyphView.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *&v4[v8] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for MOSuggestionWorkoutIconGlyphView();
  v9 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;
  v13 = v11;
  v14 = [a1 imageWithRenderingMode:2];
  [v13 setImage:v14];

  v15 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v16 = *&v12[v15];
  *&v12[v15] = a2;
  v17 = a2;

  v18 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v19 = *&v12[v18];
  *&v12[v18] = a3;
  v20 = a3;

  [*&v9[v10] setTintColor:a4];
  [*&v9[v10] setContentMode:1];
  [v12 addSubview:*&v9[v10]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002A48B0;
  *(v21 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v21 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v12) + 0xB8))(v22);

  return v12;
}

uint64_t sub_1002401DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall MOSuggestionWorkoutIconGlyphView.layoutSubviews()()
{
  [v0 bounds];
  v2 = [v0 _setCornerRadius:v1 * 0.5];
  v3 = (*((swift_isaMask & *v0) + 0x68))(v2);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v3 setFrame:?];
}

void MOSuggestionWorkoutIconGlyphView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionWorkoutIconGlyphView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = (*((swift_isaMask & *v0) + 0x98))();
  }

  else
  {
    v3 = (*((swift_isaMask & *v0) + 0x80))();
  }

  v4 = v3;
  [v0 setBackgroundColor:?];
}

void closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() whiteColor];
    [v0 setTextColor:v6];

    [v0 setTextAlignment:0];
    [v0 setLineBreakMode:4];
    [v0 setNumberOfLines:2];
    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityIconAssetView.exerciseNameLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.exerciseNameLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() tertiaryLabelColor];
    [v0 setTextColor:v6];

    [v0 setTextAlignment:0];
    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityIconAssetView.workoutDataLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.workoutDataLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionActivityIconAssetView.labelStack.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.labelStack.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionActivityIconAssetView.init(imageView:name:assignedTileSize:frame:calories:duration:distance:averageHeartRate:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v30;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v25 colorNamed:v31];

  if (!v32)
  {
    v32 = [v25 systemRedColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *&v15[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *&v15[v35] = v36;
  v37 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v38 = [objc_allocWithZone(UIStackView) init];
  [v38 setAxis:1];
  [v38 setAlignment:1];
  *&v15[v37] = v38;
  v39 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
  *v39 = a2;
  v39[1] = a3;
  v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = a4;
  v40 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
  *v40 = a5;
  v40[1] = a6;
  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = a13;
  v41 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  *v41 = a7;
  v41[1] = a8;
  v42 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  *v42 = a14;
  v42[1] = a15;
  v51.receiver = v15;
  v51.super_class = type metadata accessor for MOSuggestionActivityIconAssetView();
  v43 = objc_msgSendSuper2(&v51, "initWithFrame:", a9, a10, a11, a12);
  [v43 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002A48B0;
  *(v44 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v44 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v43) + 0x108))(a1);

  return v43;
}

uint64_t objectdestroy_2Tm_2()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002412A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Void __swiftcall MOSuggestionActivityIconAssetView.makeUIView(imageView:)(UIView imageView)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v409 = &v402 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  [v2 setBackgroundColor:v8];

  [v2 setAccessibilityIgnoresInvertColors:1];
  *&v424 = imageView;
  v9 = [v2 addSubview:imageView.super.super.isa];
  v10 = (swift_isaMask & *v2) + 184;
  v420 = *((swift_isaMask & *v2) + 0xB8);
  v422 = v10;
  v11 = (v420)(v9);
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = *(v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories);
  v417 = *(v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories + 8);
  v418 = v13;
  v431 = 0;
  v432 = 0xE000000000000000;
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v14 = static MOSuggestionAssetWorkoutProvider.queue;
  v15 = swift_allocObject();
  *(v15 + 16) = &v431;
  *(v15 + 24) = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in MOSuggestionActivityIconAssetView.makeUIView(imageView:);
  *(v16 + 24) = v15;
  v408 = v15;
  v429 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v430 = v16;
  aBlock = _NSConcreteStackBlock;
  v426 = 1107296256;
  v427 = thunk for @escaping @callee_guaranteed () -> ();
  v428 = &block_descriptor_29_2;
  v17 = _Block_copy(&aBlock);
  v18 = v2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v411 = v5;
  v20 = *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate + 8];
  v414 = *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  v413 = v20;
  v21 = (swift_isaMask & *v18) + 208;
  v416 = *((swift_isaMask & *v18) + 0xD0);
  v415 = v21;
  v22 = (v416)(v19);
  v23 = [v7 systemWhiteColor];
  [v22 setTextColor:v23];

  v24 = v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize];
  v25 = v18;
  v423 = v18;
  v26 = v424;
  v407 = v2;
  v421 = v4;
  if (v24 > 8)
  {
    goto LABEL_54;
  }

  if (((1 << v24) & 0xD0) != 0)
  {
    p_align = &stru_100327FE8.align;
    v71 = [v424 superview];
    if (v71)
    {
      v72 = v71;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v73 = [v26 topAnchor];
      v74 = [v72 topAnchor];
      v75 = [v73 constraintEqualToAnchor:v74];

      [v75 setConstant:8.0];
      [v75 setActive:1];

      v26 = v424;
    }

    [v18 frame];
    v77 = v76 + -16.0;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v78 = [v26 widthAnchor];
    v79 = [v78 constraintEqualToConstant:v77];

    [v79 setActive:1];
    v80 = [v26 superview];
    if (v80)
    {
      v81 = v80;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v82 = [v26 bottomAnchor];
      v83 = [v81 bottomAnchor];
      v84 = [v82 constraintEqualToAnchor:v83];

      if (v84)
      {
        [v84 setConstant:-8.0];
        [v84 setActive:1];
      }

      v26 = v424;
    }

    LODWORD(v419) = v24;
    v85 = [v26 superview];
    if (v85)
    {
      v86 = v85;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v87 = [v26 leadingAnchor];
      v88 = [v86 leadingAnchor];
      v89 = [v87 constraintEqualToAnchor:v88];

      [v89 setConstant:8.0];
      [v89 setActive:1];

      v26 = v424;
    }

    v90 = *((swift_isaMask & *v18) + 0xE8);
    v91 = v90();
    v92 = v420();
    [v91 addArrangedSubview:v92];

    v93 = v90();
    v94 = v416();
    [v93 addArrangedSubview:v94];

    v95 = v90();
    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];

    v96 = v90();
    [v18 addSubview:v96];

    v97 = v90();
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    v98 = [v97 leadingAnchor];
    v99 = [v26 trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    [v100 setConstant:8.0];
    [v100 setActive:1];

    v101 = v90();
    v102 = [v101 superview];
    if (v102)
    {
      v103 = v102;
      [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
      v104 = [v101 centerYAnchor];
      v105 = [v103 centerYAnchor];
      v106 = [v104 constraintEqualToAnchor:v105];

      [v106 setConstant:0.0];
      if (v106)
      {
        [v106 setActive:1];
      }

      p_align = (&stru_100327FE8 + 24);
    }

    else
    {
      v106 = 0;
      v103 = v101;
    }

    v153 = v90();
    v154 = [v153 *(p_align + 271)];
    if (v154)
    {
      v155 = v154;
      [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
      v156 = [v153 trailingAnchor];
      v157 = [v155 trailingAnchor];
      v158 = [v156 constraintEqualToAnchor:v157];

      [v158 setConstant:-8.0];
      if (v158)
      {
        [v158 setActive:1];

        v159 = v417;
        v132 = &unk_10033B000;
        if ((v419 & 0xFE) != 6)
        {
LABEL_72:
          v160 = objc_opt_self();
          v161 = [v160 mainBundle];
          v437._object = 0x80000001002B55F0;
          v437._countAndFlagsBits = 0xD000000000000018;
          v162._countAndFlagsBits = 16421;
          v162._object = 0xE200000000000000;
          v163._countAndFlagsBits = 0;
          v163._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v162, 0, v161, v163, v437);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v164 = swift_allocObject();
          v424 = xmmword_1002A48B0;
          *(v164 + 16) = xmmword_1002A48B0;
          *(v164 + 56) = &type metadata for String;
          v165 = lazy protocol witness table accessor for type String and conformance String();
          *(v164 + 64) = v165;
          *(v164 + 32) = v418;
          *(v164 + 40) = v159;

          static String.localizedStringWithFormat(_:_:)();

          v167 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
          v166 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
          if (!v167 && v166 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_152;
          }

          v168 = [v160 mainBundle];
          v438._object = 0x80000001002B55D0;
          v438._countAndFlagsBits = 0xD000000000000018;
          v169._countAndFlagsBits = 16421;
          v169._object = 0xE200000000000000;
          v170._countAndFlagsBits = 0;
          v170._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, v168, v170, v438);

          v171 = swift_allocObject();
          *(v171 + 16) = v424;
          *(v171 + 56) = &type metadata for String;
          *(v171 + 64) = v165;
          *(v171 + 32) = v167;
          *(v171 + 40) = v166;

          static String.localizedStringWithFormat(_:_:)();

          goto LABEL_151;
        }

LABEL_80:
        v173 = v418;
        if (!v414 && v413 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v173 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!v173 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v174 = [objc_opt_self() mainBundle];
            v439._object = 0x80000001002BB210;
            v439._countAndFlagsBits = 0xD000000000000018;
            v175._countAndFlagsBits = 16421;
            v175._object = 0xE200000000000000;
            v176._countAndFlagsBits = 0;
            v176._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v175, 0, v174, v176, v439);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v177 = swift_allocObject();
            *(v177 + 16) = xmmword_1002A48B0;
            v179 = v431;
            v178 = v432;
            *(v177 + 56) = &type metadata for String;
            *(v177 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v177 + 32) = v179;
            *(v177 + 40) = v178;
LABEL_140:

            static String.localizedStringWithFormat(_:_:)();

            v25 = v423;
            v289 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
            v288 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
            v290 = HIBYTE(v288) & 0xF;
            if ((v288 & 0x2000000000000000) == 0)
            {
              v290 = v289 & 0xFFFFFFFFFFFFLL;
            }

            if (!v290)
            {
              goto LABEL_153;
            }

            v291 = v418;
            if ((v159 & 0x2000000000000000) != 0)
            {
              v292 = HIBYTE(v159) & 0xF;
            }

            else
            {
              v292 = v418 & 0xFFFFFFFFFFFFLL;
            }

            v293 = [objc_opt_self() mainBundle];
            if (v292)
            {
              v445._object = 0x80000001002BB180;
              v294._object = 0xAE00402520B7C220;
              v445._countAndFlagsBits = 0xD000000000000030;
              v294._countAndFlagsBits = 0x402520B7C2204025;
              v295._countAndFlagsBits = 0;
              v295._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v294, 0, v293, v295, v445);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v296 = swift_allocObject();
              *(v296 + 16) = xmmword_1002A55C0;
              *(v296 + 56) = &type metadata for String;
              v297 = lazy protocol witness table accessor for type String and conformance String();
              *(v296 + 32) = v289;
              *(v296 + 40) = v288;
              v298 = v431;
              v299 = v432;
              *(v296 + 96) = &type metadata for String;
              *(v296 + 104) = v297;
              *(v296 + 64) = v297;
              *(v296 + 72) = v298;
              *(v296 + 80) = v299;
              *(v296 + 136) = &type metadata for String;
              *(v296 + 144) = v297;
              *(v296 + 112) = v291;
              *(v296 + 120) = v159;
            }

            else
            {
              v446._object = 0x80000001002BB1C0;
              v446._countAndFlagsBits = 0xD000000000000025;
              v300._countAndFlagsBits = 0x402520B7C2204025;
              v300._object = 0xA800000000000000;
              v301._countAndFlagsBits = 0;
              v301._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v300, 0, v293, v301, v446);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v302 = swift_allocObject();
              *(v302 + 16) = xmmword_1002A4A00;
              *(v302 + 56) = &type metadata for String;
              v303 = lazy protocol witness table accessor for type String and conformance String();
              *(v302 + 32) = v289;
              *(v302 + 40) = v288;
              v304 = v431;
              v305 = v432;
              *(v302 + 96) = &type metadata for String;
              *(v302 + 104) = v303;
              *(v302 + 64) = v303;
              *(v302 + 72) = v304;
              *(v302 + 80) = v305;
            }

            static String.localizedStringWithFormat(_:_:)();

LABEL_151:

LABEL_152:
            v25 = v423;
            goto LABEL_153;
          }

          v180 = [objc_opt_self() mainBundle];
          v440._object = 0x80000001002BB1F0;
          v181._countAndFlagsBits = 0x402520B7C2204025;
          v440._countAndFlagsBits = 0xD00000000000001DLL;
          v181._object = 0xA800000000000000;
          v182._countAndFlagsBits = 0;
          v182._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v181, 0, v180, v182, v440);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v183 = swift_allocObject();
          *(v183 + 16) = xmmword_1002A4A00;
          *(v183 + 56) = &type metadata for String;
          v184 = lazy protocol witness table accessor for type String and conformance String();
          *(v183 + 32) = v173;
          *(v183 + 40) = v159;
          v185 = v431;
          v186 = v432;
          *(v183 + 96) = &type metadata for String;
          *(v183 + 104) = v184;
          *(v183 + 64) = v184;
          *(v183 + 72) = v185;
          *(v183 + 80) = v186;
        }

        else
        {
          v280 = [objc_opt_self() mainBundle];
          v444._object = 0x80000001002BB130;
          v281._object = 0x80000001002BB110;
          v444._countAndFlagsBits = 0xD000000000000046;
          v281._countAndFlagsBits = 0x1000000000000012;
          v282._countAndFlagsBits = 0;
          v282._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v281, 0, v280, v282, v444);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v283 = swift_allocObject();
          *(v283 + 16) = xmmword_1002A55C0;
          *(v283 + 56) = &type metadata for String;
          v284 = lazy protocol witness table accessor for type String and conformance String();
          *(v283 + 32) = v173;
          *(v283 + 40) = v159;
          v285 = v431;
          v286 = v432;
          *(v283 + 96) = &type metadata for String;
          *(v283 + 104) = v284;
          *(v283 + 64) = v284;
          *(v283 + 72) = v285;
          *(v283 + 80) = v286;
          *(v283 + 136) = &type metadata for String;
          *(v283 + 144) = v284;
          v287 = v413;
          *(v283 + 112) = v414;
          *(v283 + 120) = v287;
        }

        goto LABEL_140;
      }
    }

    else
    {
      v155 = v153;
    }

    v159 = v417;
    v132 = &unk_10033B000;
    v172 = v419;

    if ((v172 & 0xFE) != 6)
    {
      goto LABEL_72;
    }

    goto LABEL_80;
  }

  if (((1 << v24) & 0x120) == 0)
  {
    if (v24 == 3)
    {
      v107 = [v424 superview];
      if (v107)
      {
        v108 = v107;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v109 = [v26 topAnchor];
        v110 = [v108 topAnchor];
        v111 = [v109 constraintEqualToAnchor:v110];

        [v111 setConstant:5.0];
        [v111 setActive:1];

        v26 = v424;
      }

      v112 = [v26 superview];
      if (v112)
      {
        v113 = v112;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v114 = [v26 bottomAnchor];
        v115 = [v113 bottomAnchor];
        v116 = [v114 constraintEqualToAnchor:v115];

        if (v116)
        {
          [v116 setConstant:-5.0];
          [v116 setActive:1];
        }

        v26 = v424;
      }

      v117 = [v26 superview];
      if (v117)
      {
        v118 = v117;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v119 = [v26 trailingAnchor];
        v120 = [v118 trailingAnchor];
        v121 = [v119 constraintEqualToAnchor:v120];

        [v121 setConstant:-5.0];
        [v121 setActive:1];

        v26 = v424;
      }

      v122 = [v26 superview];
      if (v122)
      {
        v123 = v122;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v124 = [v26 leadingAnchor];
        v125 = [v123 leadingAnchor];
        v126 = [v124 constraintEqualToAnchor:v125];

        [v126 setConstant:5.0];
        [v126 setActive:1];

        v26 = v424;
      }

      v127 = [v26 superview];
      if (v127)
      {
        v128 = v127;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v129 = [v26 leadingAnchor];
        v130 = [v128 leadingAnchor];
        v131 = [v129 constraintEqualToAnchor:v130];

        [v131 setConstant:8.0];
        v132 = &unk_10033B000;
        if (v131)
        {
          [v131 setActive:1];
        }

        goto LABEL_152;
      }

      goto LABEL_77;
    }

LABEL_54:
    if (v24 == 2)
    {
      v133 = [v424 superview];
      if (v133)
      {
        v134 = v133;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v135 = [v26 topAnchor];
        v136 = [v134 topAnchor];
        v137 = [v135 constraintEqualToAnchor:v136];

        [v137 setConstant:8.0];
        [v137 setActive:1];

        v26 = v424;
      }

      v138 = [v26 superview];
      if (v138)
      {
        v139 = v138;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v140 = [v26 bottomAnchor];
        v141 = [v139 bottomAnchor];
        v142 = [v140 constraintEqualToAnchor:v141];

        if (v142)
        {
          [v142 setConstant:-8.0];
          [v142 setActive:1];
        }

        v26 = v424;
      }

      v143 = [v26 superview];
      if (v143)
      {
        v144 = v143;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v145 = [v26 trailingAnchor];
        v146 = [v144 trailingAnchor];
        v147 = [v145 constraintEqualToAnchor:v146];

        [v147 setConstant:-8.0];
        [v147 setActive:1];

        v26 = v424;
      }

      v148 = [v26 superview];
      if (!v148)
      {
LABEL_77:
        v25 = v423;
        v132 = &unk_10033B000;
        goto LABEL_153;
      }

      v149 = v148;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v150 = [v26 leadingAnchor];
      v151 = [v149 leadingAnchor];
      v152 = [v150 constraintEqualToAnchor:v151];

      [v152 setConstant:8.0];
      v25 = v423;
      if (v152)
      {
        [v152 setActive:1];
      }
    }

    v132 = &unk_10033B000;
    goto LABEL_153;
  }

  v410 = objc_opt_self();
  v27 = [v410 mainBundle];
  v433._object = 0x80000001002BB210;
  v433._countAndFlagsBits = 0xD000000000000018;
  v28._countAndFlagsBits = 16421;
  v28._object = 0xE200000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v433);

  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002A48B0;
  v32 = v431;
  v31 = v432;
  *(v30 + 56) = &type metadata for String;
  v33 = lazy protocol witness table accessor for type String and conformance String();
  *(v30 + 64) = v33;
  *(v30 + 32) = v32;
  *(v30 + 40) = v31;

  v419 = static String.localizedStringWithFormat(_:_:)();
  v35 = v34;

  v38 = v417;
  v37 = v418;
  if (v418)
  {
    v39 = 0;
  }

  else
  {
    v39 = v417 == 0xE000000000000000;
  }

  v40 = v39;
  if (!v39)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v36 & 1) == 0)
    {
      v41 = v37;

      v42 = [v410 mainBundle];
      v434._object = 0x80000001002B5550;
      v43._countAndFlagsBits = 0x402520B7C2204025;
      v434._countAndFlagsBits = 0xD000000000000021;
      v43._object = 0xA800000000000000;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v434);

      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002A4A00;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = v33;
      *(v45 + 32) = v41;
      *(v45 + 40) = v38;
      v46 = v431;
      v47 = v432;
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v33;
      *(v45 + 72) = v46;
      *(v45 + 80) = v47;

      v419 = static String.localizedStringWithFormat(_:_:)();
      v35 = v48;
    }
  }

  v49 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  v50 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
  if (v49 || v50 != 0xE000000000000000)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v36 & 1) == 0)
    {

      v51 = [v410 mainBundle];
      v435._object = 0x80000001002B5610;
      v52._countAndFlagsBits = 0x402520B7C2204025;
      v435._countAndFlagsBits = 0xD000000000000021;
      v52._object = 0xA800000000000000;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v435);

      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1002A4A00;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v33;
      *(v54 + 32) = v49;
      *(v54 + 40) = v50;
      v55 = v431;
      v56 = v432;
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v33;
      *(v54 + 72) = v55;
      *(v54 + 80) = v56;

      v419 = static String.localizedStringWithFormat(_:_:)();
      v35 = v57;
    }
  }

  v58 = v423;
  v59 = (v420)(v36);
  [v58 addSubview:v59];

  v60 = v416();
  [v58 addSubview:v60];

  if (v24 != 8)
  {
    goto LABEL_108;
  }

  if (!v414 && v413 == 0xE000000000000000 || (v61 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v61 & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_95;
    }

LABEL_25:
    v63 = v417;
    v62 = v418;
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v61)
    {
      goto LABEL_95;
    }

    v64 = [v410 mainBundle];
    v436._object = 0x80000001002BB1F0;
    v65._countAndFlagsBits = 0x402520B7C2204025;
    v436._countAndFlagsBits = 0xD00000000000001DLL;
    v65._object = 0xA800000000000000;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v436);

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1002A4A00;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v33;
    *(v67 + 32) = v62;
    *(v67 + 40) = v63;
    v68 = v431;
    v69 = v432;
    *(v67 + 96) = &type metadata for String;
    *(v67 + 104) = v33;
    *(v67 + 72) = v68;
    *(v67 + 80) = v69;

    goto LABEL_94;
  }

  if (v40)
  {
    goto LABEL_95;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_25;
  }

  v187 = [v410 mainBundle];
  v441._object = 0x80000001002BB130;
  v188._object = 0x80000001002BB110;
  v441._countAndFlagsBits = 0xD000000000000046;
  v188._countAndFlagsBits = 0x1000000000000012;
  v189._countAndFlagsBits = 0;
  v189._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v188, 0, v187, v189, v441);

  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1002A55C0;
  *(v190 + 56) = &type metadata for String;
  *(v190 + 64) = v33;
  *(v190 + 32) = v418;
  *(v190 + 40) = v417;
  v191 = v431;
  v192 = v432;
  *(v190 + 96) = &type metadata for String;
  *(v190 + 104) = v33;
  *(v190 + 72) = v191;
  *(v190 + 80) = v192;
  *(v190 + 136) = &type metadata for String;
  *(v190 + 144) = v33;
  v193 = v413;
  *(v190 + 112) = v414;
  *(v190 + 120) = v193;

LABEL_94:

  v419 = static String.localizedStringWithFormat(_:_:)();
  v35 = v194;

LABEL_95:
  v195 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v195 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v195)
  {

    v196 = v417;
    v197 = v418;
    if ((v417 & 0x2000000000000000) != 0)
    {
      v198 = HIBYTE(v417) & 0xF;
    }

    else
    {
      v198 = v418 & 0xFFFFFFFFFFFFLL;
    }

    v199 = [v410 mainBundle];
    if (v198)
    {
      v442._object = 0x80000001002BB180;
      v200._object = 0xAE00402520B7C220;
      v442._countAndFlagsBits = 0xD000000000000030;
      v200._countAndFlagsBits = 0x402520B7C2204025;
      v201._countAndFlagsBits = 0;
      v201._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v200, 0, v199, v201, v442);

      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_1002A55C0;
      *(v202 + 56) = &type metadata for String;
      *(v202 + 64) = v33;
      *(v202 + 32) = v49;
      *(v202 + 40) = v50;
      v203 = v431;
      v204 = v432;
      *(v202 + 96) = &type metadata for String;
      *(v202 + 104) = v33;
      *(v202 + 72) = v203;
      *(v202 + 80) = v204;
      *(v202 + 136) = &type metadata for String;
      *(v202 + 144) = v33;
      *(v202 + 112) = v197;
      *(v202 + 120) = v196;
    }

    else
    {
      v443._object = 0x80000001002BB1C0;
      v443._countAndFlagsBits = 0xD000000000000025;
      v205._countAndFlagsBits = 0x402520B7C2204025;
      v205._object = 0xA800000000000000;
      v206._countAndFlagsBits = 0;
      v206._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v205, 0, v199, v206, v443);

      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_1002A4A00;
      *(v207 + 56) = &type metadata for String;
      *(v207 + 64) = v33;
      *(v207 + 32) = v49;
      *(v207 + 40) = v50;
      v208 = v431;
      v209 = v432;
      *(v207 + 96) = &type metadata for String;
      *(v207 + 104) = v33;
      *(v207 + 72) = v208;
      *(v207 + 80) = v209;
    }

    v419 = static String.localizedStringWithFormat(_:_:)();
    v35 = v210;
  }

  v211 = (v420)(v61);
  v212 = objc_opt_self();
  v213 = [v212 preferredFontForTextStyle:UIFontTextStyleBody];
  v214 = [v213 fontDescriptor];
  v215 = [v214 fontDescriptorWithSymbolicTraits:2];

  if (!v215)
  {
    goto LABEL_155;
  }

  v216 = [v212 fontWithDescriptor:v215 size:0.0];

  [v211 setFont:v216];
  v217 = v416();
  v218 = [v212 preferredFontForTextStyle:UIFontTextStyleBody];
  v219 = [v218 fontDescriptor];
  v220 = [v219 fontDescriptorWithSymbolicTraits:2];

  if (v220)
  {
    v221 = [v212 fontWithDescriptor:v220 size:0.0];

    [v217 setFont:v221];
LABEL_108:
    v222 = v420;
    v223 = v420();
    v224 = &stru_100327FE8.align;
    v225 = [v223 superview];
    if (v225)
    {
      v226 = v225;
      [v223 setTranslatesAutoresizingMaskIntoConstraints:0];
      v227 = [v223 topAnchor];
      v228 = [v226 topAnchor];
      v229 = [v227 constraintEqualToAnchor:v228];

      [v229 setConstant:12.0];
      if (v229)
      {
        [v229 setActive:1];
      }

      v224 = (&stru_100327FE8 + 24);
    }

    else
    {
      v229 = 0;
      v226 = v223;
    }

    v230 = v222();
    v231 = [v230 *(v224 + 271)];
    if (v231)
    {
      v232 = v231;
      [v230 setTranslatesAutoresizingMaskIntoConstraints:0];
      v233 = [v230 leadingAnchor];
      v234 = [v232 leadingAnchor];
      v235 = [v233 constraintEqualToAnchor:v234];

      [v235 setConstant:16.0];
      if (v235)
      {
        [v235 setActive:1];
      }

      v224 = (&stru_100327FE8 + 24);
    }

    else
    {
      v235 = 0;
      v232 = v230;
    }

    v236 = v222();
    v237 = [v236 *(v224 + 271)];
    v412 = v35;
    if (v237)
    {
      v238 = v237;
      [v236 setTranslatesAutoresizingMaskIntoConstraints:0];
      v239 = [v236 trailingAnchor];
      v240 = [v238 trailingAnchor];
      v241 = [v239 constraintEqualToAnchor:v240];

      [v241 setConstant:-16.0];
      if (v241)
      {
        [v241 setActive:1];
      }
    }

    else
    {
      v241 = 0;
      v238 = v236;
    }

    v242 = v222();
    [v242 setTextAlignment:1];

    v243 = v424;
    [v424 setTranslatesAutoresizingMaskIntoConstraints:0];
    v244 = [v243 topAnchor];
    v245 = v222();
    v246 = [v245 bottomAnchor];

    v247 = [v244 constraintEqualToAnchor:v246 constant:5.0];
    [v247 setActive:1];

    v248 = [v243 bottomAnchor];
    v249 = v416;
    v250 = v416();
    v251 = [v250 topAnchor];

    v252 = [v248 constraintEqualToAnchor:v251 constant:-5.0];
    [v252 setActive:1];

    v253 = [v243 widthAnchor];
    v254 = [v243 heightAnchor];
    v255 = [v253 constraintEqualToAnchor:v254];

    [v255 setActive:1];
    v256 = [v243 centerXAnchor];
    v257 = [v423 centerXAnchor];
    v258 = [v256 constraintEqualToAnchor:v257];

    [v258 setActive:1];
    v259 = v249();
    [v259 setTextAlignment:1];

    v260 = v420();
    v25 = v423;
    [v260 setTextAlignment:1];

    v261 = v249();
    v262 = &stru_100327FE8.align;
    v263 = [v261 superview];
    if (v263)
    {
      v264 = v263;
      [v261 setTranslatesAutoresizingMaskIntoConstraints:0];
      v265 = [v261 bottomAnchor];
      v266 = [v264 bottomAnchor];
      v267 = [v265 constraintEqualToAnchor:v266];

      v132 = &unk_10033B000;
      if (v267)
      {
        [v267 setConstant:-12.0];
        [v267 setActive:1];
      }

      v25 = v423;
    }

    else
    {
      v267 = 0;
      v264 = v261;
      v132 = &unk_10033B000;
    }

    v268 = v416();
    v269 = [v268 superview];
    if (v269)
    {
      v270 = v269;
      [v268 setTranslatesAutoresizingMaskIntoConstraints:0];
      v271 = [v268 leadingAnchor];
      v272 = [v270 leadingAnchor];
      v273 = [v271 constraintEqualToAnchor:v272];

      [v273 setConstant:8.0];
      if (v273)
      {
        [v273 setActive:1];
      }

      v25 = v423;
      v262 = (&stru_100327FE8 + 24);
    }

    else
    {
      v273 = 0;
      v270 = v268;
    }

    v274 = v416();
    v275 = [v274 *(v262 + 271)];
    if (v275)
    {
      v276 = v275;
      [v274 setTranslatesAutoresizingMaskIntoConstraints:0];
      v277 = [v274 trailingAnchor];
      v278 = [v276 trailingAnchor];
      v279 = [v277 constraintEqualToAnchor:v278];

      [v279 setConstant:-8.0];
      if (v279)
      {
        [v279 setActive:1];
      }

      goto LABEL_152;
    }

LABEL_153:
    v306 = objc_allocWithZone(NSMutableAttributedString);
    v307 = String._bridgeToObjectiveC()();

    v308 = [v306 initWithString:v307];

    v410 = 0x80000001002B54F0;
    v419 = objc_opt_self();
    v309 = [v419 mainBundle];
    v447._object = 0x80000001002B54F0;
    v310._countAndFlagsBits = 16421;
    v310._object = 0xE200000000000000;
    v311._countAndFlagsBits = 0;
    v311._object = 0xE000000000000000;
    v447._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v310, 0, v309, v311, v447);

    v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v313 = swift_allocObject();
    v424 = xmmword_1002A48B0;
    *(v313 + 16) = xmmword_1002A48B0;
    v314 = &v25[v132[479]];
    v316 = v314[1];
    v405 = *v314;
    v315 = v405;
    *(v313 + 56) = &type metadata for String;
    v317 = lazy protocol witness table accessor for type String and conformance String();
    *(v313 + 64) = v317;
    v318 = v317;
    v422 = v317;
    *(v313 + 32) = v315;
    *(v313 + 40) = v316;
    v404 = v316;

    static String.localizedStringWithFormat(_:_:)();

    v319 = [v308 mutableString];
    v320 = String._bridgeToObjectiveC()();

    [v319 rangeOfString:v320 options:1];

    v412 = NSForegroundColorAttributeName;
    [v308 addAttribute:? value:? range:?];
    v321 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow];
    v406 = 0x80000001002B5510;
    v322 = v419;
    v323 = [v419 mainBundle];
    v448._object = 0x80000001002B5510;
    v324._countAndFlagsBits = 16421;
    v324._object = 0xE200000000000000;
    v325._countAndFlagsBits = 0;
    v325._object = 0xE000000000000000;
    v448._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v324, 0, v323, v325, v448);

    v420 = v312;
    v326 = swift_allocObject();
    *(v326 + 16) = v424;
    v328 = v431;
    v327 = v432;
    *(v326 + 56) = &type metadata for String;
    *(v326 + 64) = v318;
    *(v326 + 32) = v328;
    *(v326 + 40) = v327;

    static String.localizedStringWithFormat(_:_:)();

    v329 = v308;
    v330 = [v308 mutableString];
    v331 = String._bridgeToObjectiveC()();

    v332 = [v330 rangeOfString:v331 options:1];
    v334 = v333;

    v335 = v308;
    v336 = v412;
    [v335 addAttribute:v412 value:v321 range:{v332, v334}];
    v337 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink];
    v338 = [v322 mainBundle];
    v449._object = 0x80000001002B5530;
    v339._countAndFlagsBits = 16421;
    v339._object = 0xE200000000000000;
    v340._countAndFlagsBits = 0;
    v340._object = 0xE000000000000000;
    v449._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v339, 0, v338, v340, v449);

    v341 = swift_allocObject();
    *(v341 + 16) = v424;
    v342 = v422;
    *(v341 + 56) = &type metadata for String;
    *(v341 + 64) = v342;
    *(v341 + 32) = v418;
    *(v341 + 40) = v417;

    static String.localizedStringWithFormat(_:_:)();

    v343 = [v329 mutableString];
    v344 = String._bridgeToObjectiveC()();

    v345 = [v343 rangeOfString:v344 options:1];
    v347 = v346;

    [v329 addAttribute:v336 value:v337 range:{v345, v347}];
    v348 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed];
    v403 = 0x80000001002BB0F0;
    v349 = [v322 mainBundle];
    v450._object = 0x80000001002BB0F0;
    v350._countAndFlagsBits = 0x475641204025;
    v450._countAndFlagsBits = 0xD000000000000012;
    v350._object = 0xE600000000000000;
    v351._countAndFlagsBits = 0;
    v351._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v350, 0, v349, v351, v450);

    v352 = swift_allocObject();
    *(v352 + 16) = v424;
    *(v352 + 56) = &type metadata for String;
    *(v352 + 64) = v342;
    *(v352 + 32) = v414;
    *(v352 + 40) = v413;

    static String.localizedStringWithFormat(_:_:)();

    v353 = [v329 mutableString];
    v354 = String._bridgeToObjectiveC()();

    v355 = [v353 rangeOfString:v354 options:1];
    v357 = v356;

    [v329 addAttribute:v412 value:v348 range:{v355, v357}];
    v358 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v359 = [v322 mainBundle];
    v451._object = v410;
    v360._countAndFlagsBits = 16421;
    v360._object = 0xE200000000000000;
    v361._countAndFlagsBits = 0;
    v361._object = 0xE000000000000000;
    v451._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v360, 0, v359, v361, v451);

    v362 = swift_allocObject();
    *(v362 + 16) = v424;
    aBlock = v405;
    v426 = v404;
    v363 = v409;
    CharacterSet.init(charactersIn:)();
    v412 = lazy protocol witness table accessor for type String and conformance String();
    v364 = StringProtocol.trimmingCharacters(in:)();
    v366 = v365;
    v411 = *(v411 + 8);
    (v411)(v363, v421);
    v367 = v422;
    *(v362 + 56) = &type metadata for String;
    *(v362 + 64) = v367;
    *(v362 + 32) = v364;
    *(v362 + 40) = v366;
    static String.localizedStringWithFormat(_:_:)();

    v368 = [v329 mutableString];
    v369 = String._bridgeToObjectiveC()();

    [v368 rangeOfString:v369 options:1];

    v410 = NSFontAttributeName;
    v370 = v329;
    [v329 addAttribute:? value:? range:?];

    v371 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v372 = [v419 mainBundle];
    v452._object = v406;
    v373._countAndFlagsBits = 16421;
    v373._object = 0xE200000000000000;
    v374._countAndFlagsBits = 0;
    v374._object = 0xE000000000000000;
    v452._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v373, 0, v372, v374, v452);

    v375 = swift_allocObject();
    *(v375 + 16) = v424;
    aBlock = v418;
    v426 = v417;
    CharacterSet.init(charactersIn:)();
    v376 = StringProtocol.trimmingCharacters(in:)();
    v378 = v377;
    (v411)(v363, v421);
    v379 = v422;
    *(v375 + 56) = &type metadata for String;
    *(v375 + 64) = v379;
    *(v375 + 32) = v376;
    *(v375 + 40) = v378;
    static String.localizedStringWithFormat(_:_:)();

    v380 = v370;
    v381 = [v370 mutableString];
    v382 = String._bridgeToObjectiveC()();

    v383 = [v381 rangeOfString:v382 options:1];
    v385 = v384;

    [v370 addAttribute:v410 value:v371 range:{v383, v385}];
    v386 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v387 = [v419 mainBundle];
    v453._object = v403;
    v453._countAndFlagsBits = 0xD000000000000012;
    v388._countAndFlagsBits = 0x475641204025;
    v388._object = 0xE600000000000000;
    v389._countAndFlagsBits = 0;
    v389._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v388, 0, v387, v389, v453);

    v390 = swift_allocObject();
    *(v390 + 16) = v424;
    aBlock = v414;
    v426 = v413;
    CharacterSet.init(charactersIn:)();
    v391 = StringProtocol.trimmingCharacters(in:)();
    v393 = v392;
    (v411)(v363, v421);
    v394 = v422;
    *(v390 + 56) = &type metadata for String;
    *(v390 + 64) = v394;
    *(v390 + 32) = v391;
    *(v390 + 40) = v393;
    static String.localizedStringWithFormat(_:_:)();

    v395 = [v380 mutableString];
    v396 = String._bridgeToObjectiveC()();

    v397 = [v395 rangeOfString:v396 options:1];
    v399 = v398;

    [v380 addAttribute:v410 value:v386 range:{v397, v399}];
    v400 = v423;
    v401 = v416();
    [v401 setAttributedText:v380];

    (*((swift_isaMask & *v400) + 0x110))();

    return;
  }

LABEL_156:
  __break(1u);
}

void closure #1 in MOSuggestionActivityIconAssetView.makeUIView(imageView:)(uint64_t *a1, uint64_t a2)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation26MeasurementFormatUnitUsageVySo14NSUnitDurationCGMd, &_s10Foundation26MeasurementFormatUnitUsageVySo14NSUnitDurationCGMR);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMR);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMR);
  v30 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v28 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = [objc_allocWithZone(FIUIFormattingManager) init];
  v18 = [v17 stringWithDuration:2 durationFormat:*(a2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration)];
  if (v18)
  {
    v19 = v18;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v21;
  }

  else
  {
    v23 = [objc_opt_self() minutes];
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSUnitDuration, NSUnitDuration_ptr);
    Measurement.init(value:unit:)();
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    static MeasurementFormatUnitUsage.general.getter();
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    (*(v32 + 8))(v5, v33);
    outlined destroy of FloatingPointFormatStyle<Double>?(v8);
    (*(v29 + 8))(v10, v31);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMR, &protocol conformance descriptor for Measurement<A><>.FormatStyle);
    Measurement<>.formatted<A>(_:)();
    (*(v30 + 8))(v13, v11);
    (*(v28 + 8))(v16, v14);
    v39 = v41;
    v40 = v42;
    v37 = 32;
    v38 = 0xE100000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v25 = String.uppercased()();
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v26 = v34;
  *v34 = countAndFlagsBits;
  v26[1] = object;
}

Swift::Void __swiftcall MOSuggestionActivityIconAssetView.adjustForFontSizeChanges()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize);
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = static UIContentSizeCategory.> infix(_:_:)();
  if ((v2 & (((v1 - 6) & 0xFD) == 0)) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = (*((swift_isaMask & *v0) + 0xD0))();
  [v5 setNumberOfLines:v4];
}

id MOSuggestionWorkoutsSnowGlobeView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void specialized MOSuggestionActivityIconAssetView.init(coder:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  if (!v3)
  {
    v3 = [v2 systemBlueColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue) = v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 colorNamed:v4];

  if (!v5)
  {
    v5 = [v2 systemYellowColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 colorNamed:v6];

  if (!v7)
  {
    v7 = [v2 systemPinkColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v2 colorNamed:v8];

  if (!v9)
  {
    v9 = [v2 systemRedColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed) = v9;
  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v15 = [objc_allocWithZone(UIStackView) init];
  [v15 setAxis:1];
  [v15 setAlignment:1];
  *(v0 + v14) = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002455A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002455F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1002456B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_100245714(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10024577C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1002457D8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100245840@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_100245900@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1002459C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t outlined destroy of FloatingPointFormatStyle<Double>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MOSuggestionSheetPrivacyOverlayView.init(frame:clientIdentifier:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView] = 0;
  *&v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel] = 0;
  v11 = &v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for MOSuggestionSheetPrivacyOverlayView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a3, a4, a5, a6);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  v16 = [v15 colorWithAlphaComponent:0.8];

  [v14 setBackgroundColor:v16];
  (*((swift_isaMask & *v14) + 0xA0))(0);

  return v14;
}

uint64_t sub_100245D48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void MOSuggestionSheetPrivacyOverlayView.hide(animated:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  if (a1)
  {
    v11 = objc_opt_self();
    aBlock[4] = a3;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = a4;
    v12 = _Block_copy(aBlock);
    v13 = v5;

    [v11 animateWithDuration:v12 animations:0.2];

    _Block_release(v12);
  }

  else
  {
    v15 = [v5 layer];
    *&v14 = a5;
    [v15 setOpacity:v14];
  }
}

void closure #1 in MOSuggestionSheetPrivacyOverlayView.hide(animated:)(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setOpacity:v3];
}

Swift::Void __swiftcall MOSuggestionSheetPrivacyOverlayView.updateClientLabel()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier + 8];
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 1);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [objc_allocWithZone(ISImageDescriptor) initWithSize:350.0 scale:{350.0, v13}];
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v8;
  v15[4] = v10;
  v16 = objc_allocWithZone(ISIcon);
  v17 = v1;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithBundleIdentifier:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel();
  *(v20 + 24) = v15;
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetAppIconProvider.getAssetFor(bundleIdentifier:completion:);
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  aBlock[3] = &block_descriptor_15_3;
  v21 = _Block_copy(aBlock);

  [v19 getCGImageForImageDescriptor:v14 completion:v21];

  _Block_release(v21);
}