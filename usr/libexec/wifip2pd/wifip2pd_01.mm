uint64_t sub_1000172CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_16;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
LABEL_12:
      sub_10000AB0C(result, a2);
      if (v7 == 6)
      {
        goto LABEL_13;
      }

LABEL_16:
      sub_100017554(v3, a2);
      sub_100017554(v3, a2);
LABEL_17:
      v10 = 0;
      v11 = 1;
      return v10 | (v11 << 48);
    }

    __break(1u);
  }

  else if (!v4)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (v4)
    {
      if (v4 == 2)
      {
        v8 = Data._Representation.subscript.getter();
        v9 = *(v3 + 16);
      }

      else
      {
        v9 = v3;
        v8 = Data._Representation.subscript.getter();
      }
    }

    else
    {
      v8 = Data._Representation.subscript.getter();
      v9 = 0;
    }

    result = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Data._Representation.subscript.getter();
      v13 = v4;
      if (v4)
      {
        if (v4 == 2)
        {
          v14 = *(v3 + 16);
        }

        else
        {
          v14 = v3;
        }
      }

      else
      {
        v14 = 0;
      }

      result = v14 + 2;
      if (!__OFADD__(v14, 2))
      {
        v15 = Data._Representation.subscript.getter();
        if (v4)
        {
          if (v4 == 2)
          {
            v16 = *(v3 + 16);
          }

          else
          {
            v16 = v3;
          }
        }

        else
        {
          v16 = 0;
        }

        result = v16 + 3;
        if (!__OFADD__(v16, 3))
        {
          v17 = Data._Representation.subscript.getter();
          if (v4)
          {
            if (v4 == 2)
            {
              v18 = *(v3 + 16);
            }

            else
            {
              v18 = v3;
            }
          }

          else
          {
            v18 = 0;
          }

          result = v18 + 4;
          if (!__OFADD__(v18, 4))
          {
            v19 = Data._Representation.subscript.getter();
            if (v4)
            {
              if (v4 == 2)
              {
                v13 = *(v3 + 16);
              }

              else
              {
                v13 = v3;
              }
            }

            result = v13 + 5;
            if (!__OFADD__(v13, 5))
            {
              v20 = Data._Representation.subscript.getter();
              sub_100017554(v3, a2);
              sub_100017554(v3, a2);
              v11 = 0;
              v10 = v8 | (v12 << 8) | (v15 << 16) & 0xFFFFFFFF00FFFFFFLL | (v17 << 24) | (v19 << 32) | (v20 << 40);
              return v10 | (v11 << 48);
            }

            goto LABEL_50;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v7 = HIDWORD(result) - result;
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_100017554(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000124C8(result, a2);
  }

  return result;
}

uint64_t sub_1000175CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v101 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v102 = *(v9 - 8);
  __chkstk_darwin();
  v100 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin();
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_wifiAwareEntitlementsManager);
  if ((sub_100018634(a2, &off_1005731F0) & 1) == 0 && (sub_100018634(a2, &off_100573218) & 1) == 0)
  {
    v27 = a2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v110 = v31;
      *v30 = 67109378;
      *(v30 + 4) = [v27 processIdentifier];

      *(v30 + 8) = 2080;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v27 valueForEntitlement:v32];

      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0;
        v107 = 0u;
      }

      sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
      v90 = String.init<A>(describing:)();
      v92 = sub_100002320(v90, v91, &v110);

      *(v30 + 10) = v92;
      _os_log_impl(&_mh_execute_header, v28, v29, "Rejecting XPC connection from unentitled process with PID %d: %s", v30, 0x12u);
      sub_100002A00(v31);

      goto LABEL_41;
    }

    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_entitlement + 8);
    aBlock._countAndFlagsBits = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_entitlement);
    aBlock._object = v15;

    v16._countAndFlagsBits = 0xD00000000000001ALL;
    v16._object = 0x80000001004C29E0;
    String.append(_:)(v16);
    v17 = NSXPCConnection.has(entitlement:)(aBlock);

    if (!v17)
    {
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v34 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener);
      if (static NSObject.== infix(_:_:)())
      {
        v35 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_unlockObserver;
        swift_beginAccess();
        if (*(v3 + v35) == -1)
        {
          v36 = [v34 _queue];
          v37 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v108 = sub_100445A04;
          v109 = v37;
          aBlock._countAndFlagsBits = _NSConcreteStackBlock;
          aBlock._object = 1107296256;
          *&v107 = sub_1001C5BEC;
          *(&v107 + 1) = &unk_10057B878;
          v38 = _Block_copy(&aBlock);

          swift_beginAccess();
          notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v3 + v35), v36, v38);
          swift_endAccess();
          _Block_release(v38);
        }
      }

      v39 = a2;
      v28 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        *(v41 + 4) = [v39 processIdentifier];

        _os_log_impl(&_mh_execute_header, v28, v40, "Rejecting XPC connection from process with PID %d because device has never been unlocked", v41, 8u);
LABEL_41:

        return 0;
      }

      return 0;
    }
  }

  v99 = v9;
  v18 = [a1 _queue];
  [a2 _setQueue:v18];

  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    v108 = sub_100445A0C;
    v109 = v19;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    *&v107 = sub_10000C8B8;
    *(&v107 + 1) = &unk_10057B918;
    v20 = _Block_copy(&aBlock);
    v21 = a2;

    [v21 setInvalidationHandler:v20];
    _Block_release(v20);
    v22 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PXPCListenerProtocol];
    [v21 setExportedInterface:v22];

    [v21 setExportedObject:v3];
    [v21 activate];
    return 1;
  }

  v98 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock);
  Lock.lock()();
  v24 = [a2 processIdentifier];
  v25 = 0;
  if (*(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID + 4))
  {
    v26 = 0;
  }

  else
  {
    v26 = 0;
    if (v24 == *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID))
    {
      v25 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName);
      v26 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName + 8);
    }
  }

  v95 = v26;
  v42 = static NSObject.== infix(_:_:)();
  v96 = v7;
  if ((v42 & 1) == 0)
  {
    static NSObject.== infix(_:_:)();
  }

  NSXPCConnection.peerCodeIdentity.getter(&v110);
  v43 = v111;
  if (v111)
  {
    v94 = v110;
    v113 = v112;
    sub_100016290(&v113, &unk_100599FD0, &qword_100482530);
  }

  else
  {
    v94 = 0;
  }

  v97 = v6;
  v44 = [a2 _queue];
  Logger.init(subsystem:category:)();
  v45 = type metadata accessor for XPCSession(0);
  v46 = objc_allocWithZone(v45);
  v47 = &v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v47 = NANBitmap.Channel.operatingClass.getter;
  v47[1] = 0;
  v48 = &v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  *v48 = 0;
  *(v48 + 1) = 0;
  *&v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = 0;
  *&v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = 0;
  v49 = a2;
  UUID.init()();
  *&v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] = v49;
  *&v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue] = v44;
  (*(v103 + 16))(&v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger], v13, v104);
  v50 = &v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName];
  v51 = v95;
  *v50 = v25;
  *(v50 + 1) = v51;
  v52 = &v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  *v52 = v94;
  *(v52 + 1) = v43;
  v53 = &v46[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
  *v53 = 0;
  v53[4] = 1;
  v105.receiver = v46;
  v105.super_class = v45;
  v95 = v49;
  v94 = v44;
  v54 = objc_msgSendSuper2(&v105, "init");
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v58 = v54;
    v59 = v54;
    _os_log_impl(&_mh_execute_header, v55, v56, "%@ was created", v57, 0xCu);
    sub_100016290(v58, &qword_10058B780, &qword_100480AC0);
  }

  v60 = v97;
  v61 = v96;
  v62 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
  v63 = *&v54[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v64 = objc_opt_self();
  v65 = v63;
  v66 = [v64 wifip2pRemoteXPCInterface];
  [v65 setExportedInterface:v66];

  v67 = *&v54[v62];
  v68 = v54;
  [v67 setExportedObject:v68];
  v69 = *&v54[v62];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v69;

  v108 = sub_10002C324;
  v109 = v70;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  *&v107 = sub_10000C8B8;
  *(&v107 + 1) = &unk_10057B8C8;
  v72 = _Block_copy(&aBlock);

  [v71 setInvalidationHandler:v72];
  _Block_release(v72);

  (*(v103 + 8))(v13, v104);
  *&v68[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = v14;

  v73 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler);
  if (v73)
  {
    v74 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler + 8);

    Lock.unlock()();
    v73(v68);

    sub_100010520(v73, v74);
    return 1;
  }

  type metadata accessor for P2PTimer(0);
  v75 = v101;
  variable initialization expression of AWDLPeer.lastUpdated();
  v76 = v100;
  DispatchTime.distance(to:)();
  (*(v61 + 8))(v75, v60);
  v77 = static DispatchTimeInterval.< infix(_:_:)(v76, v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionGracePeriod);
  (*(v102 + 8))(v76, v99);
  v78 = v68;
  v79 = Logger.logObject.getter();
  if (!v77)
  {
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v78;
      *v88 = v54;
      v89 = v78;
      _os_log_impl(&_mh_execute_header, v79, v86, "Rejecting XPC connection from %@ because there is no Wi-Fi", v87, 0xCu);
      sub_100016290(v88, &qword_10058B780, &qword_100480AC0);
    }

    aBlock = 0;
    v107 = 0u;
    sub_100301920(&aBlock);
    Lock.unlock()();

    return 0;
  }

  v80 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    *(v81 + 4) = v78;
    *v82 = v54;
    v83 = v78;
    _os_log_impl(&_mh_execute_header, v79, v80, "Blocking %@ while waiting for Wi-Fi to come up", v81, 0xCu);
    sub_100016290(v82, &qword_10058B780, &qword_100480AC0);
  }

  v84 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_pendingSessions;
  swift_beginAccess();
  v85 = v78;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v84) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v84) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  Lock.unlock()();

  return 1;
}

uint64_t sub_1000185C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000185F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018634(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = *(v2 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      sub_1000189BC(0, v6, 0);
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10._countAndFlagsBits = v8;
        v10._object = v9;
        v11 = NSXPCConnection.has(entitlement:)(v10);

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1000189BC((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14;
        *(&_swiftEmptyArrayStorage[4] + v13) = v11;
        v7 += 2;
        --v6;
      }

      while (v6);
    }

    else
    {
      v14 = _swiftEmptyArrayStorage[2];
      if (!v14)
      {

LABEL_19:
        sub_1000189BC(0, v3, 0);
        v17 = (a2 + 32);
        do
        {
          if (*v17)
          {
            v18 = 0x6269726373627553;
          }

          else
          {
            v18 = 0x6873696C627550;
          }

          if (*v17)
          {
            v19 = 0xE900000000000065;
          }

          else
          {
            v19 = 0xE700000000000000;
          }

          v20._object = 0x80000001004B8650;
          v21 = v19;
          v20._countAndFlagsBits = 0xD00000000000001ELL;
          v22 = NSXPCConnection.has(capability:for:)(*&v18, v20);

          v24 = _swiftEmptyArrayStorage[2];
          v23 = _swiftEmptyArrayStorage[3];
          if (v24 >= v23 >> 1)
          {
            sub_1000189BC((v23 > 1), v24 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v24 + 1;
          *(&_swiftEmptyArrayStorage[4] + v24) = v22;
          ++v17;
          --v3;
        }

        while (v3);
        v25 = v24 + 1;
        v15 = 1;
        v26 = 32;
        do
        {
          v15 &= *(_swiftEmptyArrayStorage + v26++);
          --v25;
        }

        while (v25);
LABEL_31:

        return v15 & 1;
      }
    }

    v15 = 0;
    for (i = 32; ; ++i)
    {
      if (v15)
      {
        v15 = 1;
        if (v14 == 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = *(_swiftEmptyArrayStorage + i);
        if (v14 == 1)
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_19;
          }

          v15 = 1;
          return v15 & 1;
        }
      }

      if (!--v14)
      {
        __break(1u);
        return result;
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

char *sub_1000188C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D348, &qword_100486950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000189BC(char *a1, int64_t a2, char a3)
{
  result = sub_1000188C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Bool __swiftcall NSXPCConnection.has(entitlement:)(Swift::String entitlement)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100016290(v8, &qword_10058BA80, &qword_1004818C0);
  }

  return 0;
}

uint64_t sub_100018AB4(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100018BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Lock.lock()();
  v10 = objc_opt_self();
  v11 = [v10 currentConnection];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 processIdentifier];
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID;
  *v14 = v13;
  *(v14 + 4) = v12 == 0;
  v15 = (a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName);
  *v15 = a2;
  v15[1] = a3;

  Lock.unlock()();
  switch(a1)
  {
    case 2:
      v16 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener) endpoint];
      goto LABEL_10;
    case 1:
      v16 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener) endpoint];
      goto LABEL_10;
    case 0:
      v16 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener) endpoint];
LABEL_10:
      v17 = v16;
      (*(a5 + 16))(a5);
      goto LABEL_12;
  }

  v17 = [v10 currentConnection];
  [v17 invalidate];
LABEL_12:
}

double NSXPCConnection.peerCodeIdentity.getter@<D0>(uint64_t a1@<X8>)
{
  [v1 auditToken];
  sub_100018DD0(v5, *(&v5 + 1), v6, *(&v6 + 1), &v5);
  result = *&v5;
  v4 = v6;
  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v7;
  return result;
}

void sub_100018DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10)
  {
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100037644(v20, qword_10059B5B8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *token.val = a1;
      *v23 = 136315138;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100002320(v25, v26, &v41);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create SecTask from Audit Token: %s", v23, 0xCu);
      sub_100002A00(v24);
    }

    goto LABEL_21;
  }

  v11 = v10;
  v12 = SecTaskCopySigningIdentifier(v10, 0);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_16;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v14 = *&token.val[2];
  if (!*&token.val[2])
  {
LABEL_16:
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100037644(v28, qword_10059B5B8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = 0;
      *token.val = v32;
      *v31 = 136315138;
      sub_10005DC58(&qword_100590FD0, &qword_100497BC8);
      v33 = String.init<A>(describing:)();
      v35 = sub_100002320(v33, v34, &token);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to obtain code signing identifier: %s", v31, 0xCu);
      sub_100002A00(v32);
    }

LABEL_21:
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 0;
    v36 = 0;
    goto LABEL_22;
  }

  v15 = *token.val;
  v16 = SecTaskCopyTeamIdentifier();
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *token.val = 0;
      *&token.val[2] = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v18 = *&token.val[2];
      if (*&token.val[2])
      {
        v19 = *token.val;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_25;
    }
  }

  v19 = 0;
  v18 = 0;
LABEL_25:
  CodeSignStatus = SecTaskGetCodeSignStatus(v11);
  if (qword_10058AA10 != -1)
  {
    swift_once();
  }

  v38 = dword_100590FB8;
  if (qword_10058AA18 != -1)
  {
    swift_once();
  }

  v39 = dword_100590FBC | v38;
  if (qword_10058AA20 != -1)
  {
    swift_once();
  }

  v40 = dword_100590FC0;

  v36 = ((v40 | v39) & CodeSignStatus) == v39;
LABEL_22:
  *a5 = v15;
  *(a5 + 8) = v14;
  *(a5 + 16) = v19;
  *(a5 + 24) = v18;
  *(a5 + 32) = v36;
}

id sub_100019228(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v4[10];
  *(v10 + 24) = v4[11];
  *(v10 + 32) = *(v5 + 6);
  *(v10 + 48) = v4[14];
  *(v10 + 56) = v9;
  v11 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v11 = sub_1000134C8;
  *(v11 + 1) = v10;

  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &v2[*(*v2 + 232)], v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v14 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v15 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v16 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v14 = sub_1003876AC;
  *(v14 + 1) = v13;
  v17 = a1;
  sub_100010520(v15, v16);
  return [*&v17[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] activate];
}

uint64_t sub_1000194A8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000194E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100019648()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100019684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  if (sub_10001991C(a3) & 1) != 0 || (sub_10001991C(a4))
  {
    v21[0] = a1;
    v21[1] = a2;
    memset(&v21[2], 0, 24);
    v22 = a5;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = a6;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = DispatchWorkItem.init(flags:block:)();

    v13 = *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];

    v13(v21, v6);
  }

  else
  {
    v15 = v6;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = [*(&v15->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v16, v17, "Invalidating XPC connection to process with PID %d", v18, 8u);
    }

    else
    {

      v16 = v15;
    }

    v19 = *(&v15->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v19 invalidate];
  }
}

uint64_t sub_10001991C(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager])
  {
    v3 = *&v1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];

    LOBYTE(v3) = sub_100018634(v3, a1);

    if (v3)
    {
      return 1;
    }
  }

  v5 = v1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v8 = 67109634;
    *(v8 + 4) = [*&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] processIdentifier];

    *(v8 + 8) = 2080;
    v9 = Array.description.getter();
    v11 = sub_100002320(v9, v10, &v12);

    *(v8 + 10) = v11;
    *(v8 + 18) = 2080;
    *(v8 + 20) = sub_100002320(0xD00000000000001ELL, 0x80000001004B8650, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Process with PID %d missing capabilities (Required: %s) for entitlement: %s", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

unint64_t sub_100019B10()
{
  v1 = *(*v0 + 616);
  v2 = (v0 + *(sub_10005DC58(&qword_10059A668, &qword_1004B3868) + 40) + v1);
  return *v2 | (*(v2 + 4) << 32) | (*(v2 + 5) << 40);
}

unint64_t sub_100019B9C(unint64_t a1)
{
  if (qword_10058AAC0 != -1)
  {
    v30 = a1;
    swift_once();
    a1 = v30;
  }

  v1 = *(off_100591878 + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 >> 40;
  v3 = (0x801004u >> (8 * BYTE4(a1))) & 0xFFC;
  for (i = off_100591878 + 32; ; i += 16)
  {
    if (v3 != (0x801004u >> (8 * i[1])))
    {
      goto LABEL_6;
    }

    v5 = i[2];
    if (BYTE5(a1) <= 3u)
    {
      break;
    }

    switch(BYTE5(a1))
    {
      case 4u:
        if (v5 == 4)
        {
          goto LABEL_28;
        }

        break;
      case 5u:
        if (v5 == 5)
        {
          goto LABEL_28;
        }

        break;
      case 6u:
        if (v5 == 6)
        {
          goto LABEL_28;
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_6:
    if (!--v1)
    {
      return 0;
    }
  }

  if (BYTE5(a1) == 2)
  {
    if (v5 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  if (BYTE5(a1) == 3)
  {
    if (v5 == 3)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

LABEL_22:
  if ((v5 - 2) < 5 || ((v2 ^ v5)) && (((3u >> (BYTE4(a1) & 7)) & 1) != 0 || (v5 - 2) < 5u || (a1 & 0x10000000000) != 0 || (v5 & 1) == 0))
  {
    goto LABEL_6;
  }

LABEL_28:
  v6 = a1;
  v7 = *i;
  v8 = *(i + 1);
  v9 = qword_10058AAC8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(off_100591880 + 2);
  if (!v10)
  {
LABEL_67:
    v26 = *(v8 + 16);
    if (v26)
    {
      v27 = 0;
      while (*(v8 + 4 * v27 + 32) != v6)
      {
        if (v26 == ++v27)
        {
          goto LABEL_71;
        }
      }

      if (v27 <= 0xF)
      {
        result = v7;
        if (v7 < 0x83)
        {
          LOBYTE(v29) = 0;
          v22 = 1 << v27;
          return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
        }

        if (v6 <= 0xFF)
        {
          LOBYTE(v29) = 0;
          LOWORD(v22) = v6;
          return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
        }

        __break(1u);
        goto LABEL_84;
      }
    }

    else
    {
LABEL_71:
    }

    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = off_100591880 + 16 * v11 + 32;
    if (v3 != (0x801004u >> (8 * *v12)))
    {
      goto LABEL_32;
    }

    v13 = v12[1];
    v14 = *(v12 + 1);
    if (v2 > 3u)
    {
      break;
    }

    if (v2 == 2)
    {
      if (v13 == 2)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v2 != 3)
      {
LABEL_50:
        if (v13 - 2) < 5 || ((v2 ^ v13))
        {
          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (v13 == 3)
      {
        goto LABEL_52;
      }
    }

LABEL_32:
    if (++v11 == v10)
    {
      goto LABEL_67;
    }
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      if (v13 == 5)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      if (v13 == 6)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_32;
  }

  if (v13 != 4)
  {
    goto LABEL_32;
  }

LABEL_52:
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_32;
  }

  v16 = 0;
  v17 = v14 + 32;
  while (1)
  {
    v18 = v17 + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      LODWORD(v22) = *v18;
      v23 = v19 + 32;
      while (*(v23 + 4 * v21) != v6)
      {
        if (v20 == ++v21)
        {
          goto LABEL_55;
        }
      }

      if (v21 <= 7)
      {
        v24 = *(v8 + 16);
        if (v24)
        {
          v25 = 0;
          while (*(v8 + 4 * v25 + 32) != v22)
          {
            if (v24 == ++v25)
            {
              goto LABEL_55;
            }
          }

          if (v25 <= 0xF)
          {
            break;
          }
        }
      }
    }

LABEL_55:
    if (++v16 == v15)
    {
      goto LABEL_32;
    }
  }

  result = v7;
  if (v7 < 0x83)
  {
    v22 = 1 << v25;
    goto LABEL_81;
  }

  if (v22 > 0xFF)
  {
LABEL_84:
    __break(1u);
    return result;
  }

LABEL_81:
  v29 = 1 << v21;
  return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
}

uint64_t sub_100019F94()
{
  v1 = v0 + *(*v0 + 584);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_10059A650, &qword_1004B3850) + 40));
}

uint64_t WiFiInterface.description.getter()
{
  v7 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 91;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + *(*v0 + 104)));
  v2._countAndFlagsBits = 15453;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3 = WiFiInterface.macAddress.getter();
  v4._countAndFlagsBits = WiFiAddress.description.getter(v3);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t WiFiInterface.macAddress.getter()
{
  v1 = sub_10005DC58(&unk_10059B160, &qword_1004B3050) - 8;
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = *(*v0 + 128);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059B160, &qword_1004B3050);
  v5 = &v3[*(v1 + 48)];
  v6 = *(v5 + 2);
  v7 = *v5;
  sub_100016290(v3, &unk_10059B160, &qword_1004B3050);
  return v7 | (v6 << 16);
}

uint64_t WiFiAddress.description.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004817D0;
  *(v7 + 56) = &type metadata for UInt8;
  *(v7 + 64) = &protocol witness table for UInt8;
  *(v7 + 32) = v1;
  *(v7 + 96) = &type metadata for UInt8;
  *(v7 + 104) = &protocol witness table for UInt8;
  *(v7 + 72) = v2;
  *(v7 + 136) = &type metadata for UInt8;
  *(v7 + 144) = &protocol witness table for UInt8;
  *(v7 + 112) = v3;
  *(v7 + 176) = &type metadata for UInt8;
  *(v7 + 184) = &protocol witness table for UInt8;
  *(v7 + 152) = v4;
  *(v7 + 216) = &type metadata for UInt8;
  *(v7 + 224) = &protocol witness table for UInt8;
  *(v7 + 192) = v5;
  *(v7 + 256) = &type metadata for UInt8;
  *(v7 + 264) = &protocol witness table for UInt8;
  *(v7 + 232) = v6;

  return String.init(format:_:)();
}

uint64_t sub_10001A2A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656C62616E65;
  }

  else
  {
    v3 = 0x64656C6261736964;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656C62616E65;
  }

  else
  {
    v5 = 0x64656C6261736964;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

void sub_10001A34C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  (*(v7 + 16))(v10, v2 + v12, v6, v8);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    v14 = (v3 + *(a2 + 48));
    if (*v14)
    {
      (*v14)(a1);
    }

    (*(v3 + *(a2 + 44)))(a1);
    (*(v7 + 24))(v3 + v12, a1, v6);
    v15 = *(v3 + *(a2 + 56));
    if (v15)
    {
      v15(a1);
    }

    sub_1002B3C50(0, a1, a2);
  }
}

uint64_t sub_10001A54C()
{
  v1 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = *(*v0 + 464);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v6 + 7);
  sub_100016290(v3, &unk_10059B150, &qword_1004B3070);
  return HIBYTE(v6);
}

void sub_10001A63C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  WiFiInterface.linkState.setter(1);
  WiFiInterface.preferences.getter();
  v10 = Preferences.nanMACAddress.getter(v3, v7, v8, v9);
  (*(v4 + 8))(v6, v3);
  if ((v10 & 0x1000000000000) != 0)
  {
    static WiFiAddress.random()(v12);
  }

  WiFiAddress.linkLocalAddress()(v11);
  WiFiInterface.macAddress.setter(v13 & 0xFFFFFFFFFFFFLL);
  sub_10005DC58(&unk_10059B0B0, &qword_100487150);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100480F40;
  v15 = WiFiInterface.macAddress.getter();
  *(v14 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v15 & 0xFFFFFFFFFFFFLL);
  *(v14 + 40) = v16;
  *(v14 + 48) = v17;
  *(v14 + 56) = v18;
  WiFiInterface.ipv6Addresses.setter(v14);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = WiFiInterface.description.getter();
    v25 = v24;

    v26 = sub_100002320(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Updated %s", v21, 0xCu);
    sub_100002A00(v22);
  }

  else
  {
  }
}

uint64_t sub_10001A960(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_10001636C(a1 & 1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_10001AA24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t getEnumTagSinglePayload for NANMasterRank(uint64_t a1, int a2)
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

uint64_t sub_10001AAB8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  result = sub_10001ADEC();
  if ((result & 1) != v3)
  {
    if (sub_10001ADEC())
    {
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      v7 = type metadata accessor for DispatchTime();
      (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    }

    else
    {
      v8 = type metadata accessor for DispatchTime();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    }

    v9 = *(*v1 + 520);
    swift_beginAccess();
    sub_10001AEDC(v5, v2 + v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10001AC1C(char *a1, uint64_t a2)
{
  BYTE8(v3) = 0;
  *&v3 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v3 + 1);
}

uint64_t sub_10001AC84(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001ACCC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001AD14(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001AD5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001ADA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001ADEC()
{
  v1 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = *(*v0 + 560);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v6 + 7);
  sub_100016290(v3, &unk_10059B150, &qword_1004B3070);
  return HIBYTE(v6);
}

uint64_t sub_10001AEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100597330, &unk_100481FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v45 = a4;
  v46 = a3;
  v44 = a2;
  v47 = a1;
  v7 = type metadata accessor for DispatchTime();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v39 - v10;
  v11 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C2F0();
  v48 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v12 + 8))(v14, v11);
  v16 = v6;
  *(v6 + 16) = v15;
  swift_getObjectType();
  v17 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v18 = v39;
  v19 = v47;
  + infix(_:_:)();
  v20 = *(v40 + 8);
  v21 = v9;
  v22 = v41;
  v20(v21, v41);
  v23 = v46;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v20(v18, v22);
  v24 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v25 = type metadata accessor for DispatchTimeInterval();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v16 + v24, v19, v25);
  v28 = v44;
  *(v16 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v44;
  v27(v16 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v23, v25);
  v29 = v45;
  v27(v16 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v45, v25);
  v30 = (v16 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v31 = v43;
  *v30 = v42;
  v30[1] = v31;
  v32 = qword_10059B510;
  v33 = *algn_10059B518;
  v34 = v28;
  v35 = *(*algn_10059B518 + 16);
  v36 = v34;

  v35(v16, v32, v33);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v37 = *(v26 + 8);
  v37(v29, v25);
  v37(v46, v25);
  v37(v47, v25);
  return v16;
}

uint64_t sub_10001B3C8(char a1)
{
  swift_beginAccess();
  v2 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v2, &v5);
  v3 = v5;
  swift_endAccess();
  v5 = a1;
  swift_beginAccess();
  ObservableWiFiProperty.wrappedValue.setter(&v5, v2);
  swift_endAccess();
  return sub_10001AAB8(v3);
}

void ObservableWiFiProperty.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(*(*(v2 + 24) + 16));
  (*(*(*(a1 + 16) - 8) + 16))(a2, v2 + *(a1 + 44));
  v5 = *(*(v2 + 24) + 16);

  os_unfair_lock_unlock(v5);
}

void sub_10001B568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v24 - v10;
  os_unfair_lock_lock(*(*(v3 + 24) + 16));
  v11 = *(a2 + 44);
  v12 = v7[2];
  v12(v9, v3 + v11, v6);
  v13 = a1;
  v25 = *(a2 + 24);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = v7[1];
  v27 = v7 + 1;
  v26(v9, v6);
  if (a1)
  {
    os_unfair_lock_unlock(*(*(v3 + 24) + 16));
  }

  else
  {
    v12(v28, v3 + v11, v6);
    v14 = v7[3];
    v15 = v3 + *(a2 + 44);
    v24 = v13;
    v14(v15, v13, v6);
    sub_10001B930(a2);
    swift_beginAccess();
    type metadata accessor for UUID();
    v16 = v25;
    type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken(0, v6, v25, v17);
    sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    NANBitmap.Channel.operatingClass.getter();
    v29 = v18;
    __chkstk_darwin();
    *(&v24 - 2) = v6;
    *(&v24 - 1) = v16;
    v19 = type metadata accessor for Dictionary.Values();
    swift_getFunctionTypeMetadata2();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v19);
    v20 = Sequence.compactMap<A>(_:)();

    os_unfair_lock_unlock(*(*(v3 + 24) + 16));
    v29 = v20;
    __chkstk_darwin();
    *(&v24 - 4) = v6;
    *(&v24 - 3) = v16;
    v21 = v28;
    v22 = v24;
    *(&v24 - 2) = v28;
    *(&v24 - 1) = v22;
    v23 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v23);
    Sequence.forEach(_:)();

    v26(v21, v6);
  }
}

void sub_10001B930(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin();
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v27[-v6];
  v8 = __chkstk_darwin();
  v10 = &v27[-v9];
  v11 = *(v3 + 16);
  (v11)(&v27[-v9], v1, a1, v8);
  v11(v7, v1, a1);
  v11(v5, v1, a1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136315650;
    v15 = (v10 + *(a1 + 48));
    v28 = v13;
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v3 + 8);

    v18(v10, a1);
    v19 = sub_100002320(v16, v17, &v30);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = (*v7)(v7 + *(a1 + 44));
    v22 = v21;
    v18(v7, a1);
    v23 = sub_100002320(v20, v22, &v30);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2048;
    swift_beginAccess();
    type metadata accessor for UUID();
    type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken(0, *(a1 + 16), *(a1 + 24), v24);
    sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v25 = Dictionary.count.getter();

    v18(v5, a1);
    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v12, v28, "Updated %s to %s, will notify %ld observers", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v3 + 8);
    v26(v5, a1);

    v26(v10, a1);
    v26(v7, a1);
  }
}

uint64_t storeEnumTagSinglePayload for NANMasterRank(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for P2PTimer(uint64_t a1)
{
  result = qword_10058FC48;
  if (!qword_10058FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t variable initialization expression of AWDLPeer.lastUpdated()
{
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  return (*(*algn_10059B518 + 8))();
}

uint64_t sub_10001BDD0()
{
  v1 = *(*v0 + 152);
  v2 = *(v0 + v1);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10038067C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_10000E074(v4);
  }

  sub_10000E084(v2);
  return v3;
}

uint64_t WiFiInterface.linkState.setter(char a1)
{
  v3 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v4 = a1 & 1;
  v10 = a1 & 1;
  v5 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v6 = *(v5 + 40);
  if (*(v3 + v6) != (a1 & 1))
  {
    v7 = v5;
    (*(v3 + *(v5 + 48)))(&v10);
    (*(v3 + *(v7 + 44)))(&v10);
    *(v3 + v6) = v4;
    v8 = *(v3 + *(v7 + 56));
    if (v8)
    {
      v8(&v10);
    }

    sub_1002B2490(0, v4);
  }

  return swift_endAccess();
}

uint64_t sub_10001BFF4(char a1)
{
  v16 = 0u;
  v17 = 0u;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v4, v3, &v16, KeyPath, 0x10uLL);

  v15 = 0;

  if (getifaddrs(&v15))
  {

    v6 = 0;
  }

  else
  {
    v7 = v15;
    if (v15)
    {
      do
      {
        if (!v7->ifa_name)
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        ifa_addr = v7->ifa_addr;
        ifa_flags = v7->ifa_flags;
        v7 = v7->ifa_next;
        v12 = String.init(cString:)() == v4 && v11 == v3;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!ifa_addr)
          {
            goto LABEL_24;
          }

          if (ifa_addr->sa_family == 18)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      while (v7);
      LOWORD(ifa_flags) = 0;
LABEL_17:
      v8 = v15;
      v6 = ifa_flags & 0xFFBE;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }

    freeifaddrs(v8);
  }

  if (a1)
  {
    v13 = 65;
  }

  else
  {
    v13 = 0;
  }

  LOWORD(v17) = v6 | v13;

  AppleDevice.send(request:data:)(1, &v16);
}

void AppleDevice.send(request:data:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(v2 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  sub_10001C288(v3);
  v5 = ioctl(_:_:_:)();
  if (v5 == -1)
  {
    v5 = errno.getter();
LABEL_5:
    v6 = v5;
    sub_10000B02C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_10001C288(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1004B4E88[a1];
  }
}

uint64_t sub_10001C2A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C2F0()
{
  result = qword_10058FBF0;
  if (!qword_10058FBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058FBF0);
  }

  return result;
}

uint64_t _s8Dispatch0A4TimeV7CoreP2PE8register5timeryAD0D6PTimerC_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v10 = *(a1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v11 = *(a1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler + 8);
  aBlock[4] = v10;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100567188;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10001C560();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_10001C560()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10001C2A8(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CB24(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10001C638(uint64_t a1)
{
  sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = *(*v1 + 592);
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &qword_1005995E8, &unk_1004B3040);
  swift_beginAccess();
  sub_10001C750(a1, v1 + v5);
  swift_endAccess();
  sub_10001C7C0(v4);
  sub_100016290(a1, &qword_1005995E8, &unk_1004B3040);
  return sub_100016290(v4, &qword_1005995E8, &unk_1004B3040);
}

uint64_t sub_10001C750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C7C0(uint64_t a1)
{
  v3 = *v1;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin();
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin();
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v31 = &v30 - v8;
  v34 = *(v3 + 440);
  v33 = *(v3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v30 - v13;
  v36 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *(*v1 + 112);
  v16 = *(*v1 + 592);
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v15, AssociatedTypeWitness);
  sub_100012400(a1, v9, &qword_1005995E8, &unk_1004B3040);
  v17 = v32;
  sub_100012400(v1 + v16, v32, &qword_1005995E8, &unk_1004B3040);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = *(v35 + 80);
  v20 = (v12 + v19 + v18) & ~v19;
  v21 = (v7 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = v33;
  *(v22 + 24) = v23;
  (*(v11 + 32))(v22 + v18, v14, AssociatedTypeWitness);
  sub_10001CEA8(v31, v22 + v20, &qword_1005995E8, &unk_1004B3040);
  sub_10001CEA8(v17, v22 + v21, &qword_1005995E8, &unk_1004B3040);
  aBlock[4] = sub_10001CFB0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579C98;
  v24 = _Block_copy(aBlock);
  v25 = v36;
  v26 = v37;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v28 = v38;
  v27 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v42 + 8))(v28, v27);
  (*(v40 + 8))(v26, v41);
}

uint64_t sub_10001CD08()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  v11 = (v9 + v7 + v8) & ~v7;
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v8, v12);
  v13(v0 + v11, v12);

  return _swift_deallocObject(v0, v11 + v9, v10 | 7);
}

uint64_t sub_10001CEA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001CF14()
{
  result = qword_10058BCC0;
  if (!qword_10058BCC0)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchWorkItemFlags, v3, v0, v1);
    atomic_store(result, &qword_10058BCC0);
  }

  return result;
}

uint64_t sub_10001CF6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 5)
  {
    return sub_1000B17D8(a2, a3, a4, a5, a6);
  }

  if (a7 == 4 || a7 == 1)
  {
  }

  return v7;
}

uint64_t sub_10001CFB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v0 + ((*(v6 + 64) + v7 + v8) & ~v7);

  return sub_10001D0E0(v0 + v4, v0 + v8, v9, v1, v2);
}

uint64_t sub_10001D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  sub_10005DC58(&qword_1005995F0, &qword_1004B3058);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v25 = v12;
  __chkstk_darwin();
  v14 = &v23 - v13;
  v15 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v15();
  sub_100012400(a2, v9, &qword_1005995E8, &unk_1004B3040);
  v16 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 0, 1, v16);
  sub_100012400(v26, v7, &qword_1005995E8, &unk_1004B3040);
  v17(v7, 0, 1, v16);
  v18 = v24;
  v19 = swift_getAssociatedConformanceWitness();
  v20 = sub_1003F2DDC();
  v21 = sub_10000CADC(&qword_100599608, &qword_1005995E8, &unk_1004B3040, byte_1004B05A8);
  RadioResourceControls.update<A>(from:to:)(v9, v7, v18, v16, v19, &off_100576220, v20, v21);
  sub_100016290(v7, &qword_1005995F0, &qword_1004B3058);
  sub_100016290(v9, &qword_1005995F0, &qword_1004B3058);
  return (*(v25 + 8))(v14, v18);
}

void sub_10001D428(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_10001D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RadioResourceControls.update<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a6;
  v50 = a5;
  v51 = a8;
  v42 = a7;
  v49 = a3;
  v52 = a2;
  v10 = type metadata accessor for UUID();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin();
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = *(a4 - 8);
  __chkstk_darwin();
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v42 - v16;
  __chkstk_darwin();
  v18 = &v42 - v17;
  v19 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v20 = __chkstk_darwin();
  v22 = &v42 - v21;
  v24 = *(v23 + 56);
  v25 = *(*(v19 - 8) + 16);
  v25(&v42 - v21, a1, v19, v20);
  (v25)(&v22[v24], v52, v19);
  v26 = *(v14 + 48);
  LODWORD(a1) = v26(v22, 1, a4);
  result = v26(&v22[v24], 1, a4);
  if (a1 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    (*(v14 + 32))(v18, &v22[v24], a4);
    (*(v50 + 8))(v18, a4, v48, v51, v49);
    return (*(v14 + 8))(v18, a4);
  }

  v28 = *(v14 + 32);
  if (result == 1)
  {
    v28(v18, v22, a4);
    (*(v50 + 16))(v18, a4, v48, v51, v49);
    return (*(v14 + 8))(v18, a4);
  }

  v29 = v47;
  v28(v47, v22, a4);
  v30 = &v22[v24];
  v31 = v46;
  v28(v46, v30, a4);
  v32 = v29;
  v33 = v51;
  dispatch thunk of Identifiable.id.getter();
  v34 = v43;
  dispatch thunk of Identifiable.id.getter();
  LOBYTE(v29) = static UUID.== infix(_:_:)();
  v35 = *(v44 + 8);
  v36 = v34;
  v37 = v45;
  v35(v36, v45);
  v35(v13, v37);
  if (v29)
  {
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      (*(v50 + 8))(v31, a4, v48, v33, v49);
    }
  }

  else
  {
    v38 = v49;
    v39 = v50;
    v40 = v48;
    (*(v50 + 16))(v32, a4, v48, v33, v49, v50);
    (*(v39 + 8))(v31, a4, v40, v33, v38);
  }

  v41 = *(v14 + 8);
  v41(v31, a4);
  return (v41)(v32, a4);
}

uint64_t sub_10001DC4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

uint64_t sub_10001DE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 20);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 20);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10001DEE0@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  *a1 = result;
  return result;
}

uint64_t WiFiAwarePairedDevice.keyStoreID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10001DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RadioConstraint(0, a3, a4, v7);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10001E058(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 != a5 || a2 != a6)
  {
    return result;
  }

  v10 = a7 & 0xFF00000000;
  if ((a3 & 0xFF00000000) != 0x300000000)
  {
    if (v10 == 0x300000000 || a3 != a7 || ((0x801004u >> ((a3 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a7 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(a3) <= 3u)
    {
      if (BYTE5(a3) == 2)
      {
        if (BYTE5(a7) != 2)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (BYTE5(a3) == 3)
      {
        if (BYTE5(a7) != 3)
        {
          return 0;
        }

        goto LABEL_5;
      }
    }

    else
    {
      switch(BYTE5(a3))
      {
        case 4u:
          if (BYTE5(a7) != 4)
          {
            return 0;
          }

          goto LABEL_5;
        case 5u:
          if (BYTE5(a7) != 5)
          {
            return 0;
          }

          goto LABEL_5;
        case 6u:
          if (BYTE5(a7) != 6)
          {
            return 0;
          }

          goto LABEL_5;
      }
    }

    if (BYTE5(a7) - 2 < 5 || (((a7 >> 40) ^ (a3 >> 40)) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v10 != 0x300000000)
  {
    return 0;
  }

LABEL_5:
  v11 = a8 & 0xFF00000000;
  if ((a4 & 0xFF00000000) == 0x300000000)
  {
    if (v11 == 0x300000000)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v11 == 0x300000000 || a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a4) <= 3u)
  {
    if (BYTE5(a4) == 2)
    {
      if (BYTE5(a8) != 2)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (BYTE5(a4) == 3)
    {
      if (BYTE5(a8) != 3)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    switch(BYTE5(a4))
    {
      case 4u:
        if (BYTE5(a8) != 4)
        {
          return 0;
        }

        goto LABEL_7;
      case 5u:
        if (BYTE5(a8) != 5)
        {
          return 0;
        }

        goto LABEL_7;
      case 6u:
        if (BYTE5(a8) != 6)
        {
          return 0;
        }

        goto LABEL_7;
    }
  }

  if (BYTE5(a8) - 2 < 5 || (((a8 >> 40) ^ (a4 >> 40)) & 1) != 0)
  {
    return 0;
  }

LABEL_7:
  v12 = a8 & 0xFF000000000000;
  if ((a4 & 0xFF000000000000) == 0x4000000000000)
  {
    if (v12 != 0x4000000000000)
    {
      return 0;
    }
  }

  else if (v12 == 0x4000000000000 || ((a8 ^ a4) & 0xFF000000000000) != 0)
  {
    return 0;
  }

  v13 = HIBYTE(a8);
  if (HIBYTE(a4) == 6)
  {
    if (v13 != 6)
    {
      return 0;
    }
  }

  else if (v13 == 6 || HIBYTE(a4) != v13)
  {
    return 0;
  }

  return 1;
}

void sub_10001E2C0(unint64_t a1, uint64_t a2, intptr_t a3)
{
  v76 = a3;
  LODWORD(v3) = a2;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v75 - 8);
  __chkstk_darwin();
  v74 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v79 = *(v73 - 8);
  __chkstk_darwin();
  v72 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(type metadata accessor for DriverEvent(0) - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin();
  v70 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v54 - v9;
  __chkstk_darwin();
  v12 = &v54 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return;
  }

  v78 = v5;
  v17 = qword_10058AA38;

  if (v17 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v18 = static OS_dispatch_queue.p2p;
    *v16 = static OS_dispatch_queue.p2p;
    (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    (*(v14 + 8))(v16, v13);
    if ((v18 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v20 = sub_10001F104(v3);
    v21 = v20;
    v66 = *(a1 + 172);
    if (v20 != 3)
    {
      break;
    }

    v22 = 1;
LABEL_10:
    *v12 = v22;
    swift_storeEnumTagMultiPayload();
    sub_10001251C(v12, v10, type metadata accessor for DriverEvent);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v62 = v21;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      v28 = DriverEvent.description.getter();
      v29 = v12;
      v31 = v30;
      sub_100012468(v10, type metadata accessor for DriverEvent);
      v32 = sub_100002320(v28, v31, aBlock);
      v12 = v29;

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s", v26, 0xCu);
      sub_100002A00(v27);
    }

    else
    {

      sub_100012468(v10, type metadata accessor for DriverEvent);
    }

    v13 = v78;
    v16 = v79;
    os_unfair_lock_lock(*(*(a1 + 24) + 16));
    v33 = swift_allocObject();
    v77 = v33;
    *(v33 + 16) = 0;
    v34 = (v33 + 16);
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    swift_beginAccess();
    v54 = a1;
    v3 = *(a1 + 32);
    v35 = *(v3 + 64);
    v56 = v3 + 64;
    v14 = 1 << *(v3 + 32);
    v36 = -1;
    if (v14 < 64)
    {
      v36 = ~(-1 << v14);
    }

    a1 = v36 & v35;

    v64 = v34;
    swift_beginAccess();
    v37 = 0;
    v55 = (v14 + 63) >> 6;
    v60 = v8 + 7;
    v59 = v82;
    v58 = (v13 + 8);
    v57 = v16 + 1;
    v63 = v12;
    v61 = v3;
    while (a1)
    {
LABEL_21:
      v39 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v40 = *(*(v3 + 56) + ((v37 << 9) | (8 * v39)));
      v10 = *(v40 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      if (v10)
      {
        v41 = *v64 + 1;
        if (__OFADD__(*v64, 1))
        {
          goto LABEL_28;
        }

        v79 = *(v40 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
        *(v77 + 16) = v41;
        v68 = *(v40 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
        v78 = v40;
        v42 = v70;
        sub_10001251C(v12, v70, type metadata accessor for DriverEvent);
        v43 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v44 = (v60 + v43) & 0xFFFFFFFFFFFFFFF8;
        v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
        v46 = (v45 + 11) & 0xFFFFFFFFFFFFFFF8;
        v47 = swift_allocObject();
        v48 = v79;
        *(v47 + 16) = v10;
        *(v47 + 24) = v48;
        sub_100016DFC(v42, v47 + v43, type metadata accessor for DriverEvent);
        *(v47 + v44) = v65;
        *(v47 + v45) = v77;
        v49 = (v47 + v46);
        v50 = v66;
        *v49 = v62;
        v49[1] = v50;
        *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
        v82[2] = sub_10001F9CC;
        v82[3] = v47;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v82[0] = sub_10000C8B8;
        v82[1] = &unk_10055FD98;
        v67 = _Block_copy(aBlock);
        v69 = v10;
        v51 = v79;
        sub_10001F89C(v10, v79);
        sub_10001F89C(v10, v51);

        v16 = v68;

        v13 = v72;
        static DispatchQoS.unspecified.getter();
        v80 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v52 = v74;
        v8 = v75;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v14 = v67;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v3 = v61;
        _Block_release(v14);

        sub_100010520(v69, v79);
        v53 = v52;
        v12 = v63;
        (*v58)(v53, v8);
        (*v57)(v13, v73);
      }
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v55)
      {

        os_unfair_lock_unlock(*(*(v54 + 24) + 16));
        sub_100012468(v12, type metadata accessor for DriverEvent);
        goto LABEL_25;
      }

      a1 = *(v56 + 8 * v38);
      ++v37;
      if (a1)
      {
        v37 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  if (v20 == 2)
  {
    v22 = 0;
    goto LABEL_10;
  }

  if (v20 == 1)
  {
    IOAllowPowerChange(v66, v76);
  }

LABEL_25:
}

uint64_t sub_10001ECCC()
{
  v1 = *(type metadata accessor for DriverEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_10001CF6C(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 41));
      break;
    case 1:
      type metadata accessor for DriverEvent.AWDL(0);
      v7 = swift_getEnumCaseMultiPayload();
      if (v7 > 6)
      {
        switch(v7)
        {
          case 7:
            sub_1000B2258(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
            break;
          case 9:

            break;
          case 10:
            v10 = type metadata accessor for DispatchTimeInterval();
            v11 = *(*(v10 - 8) + 8);
            v11(v0 + v3, v10);
            v12 = type metadata accessor for AWDLIdleActivity(0);
            v11(v5 + *(v12 + 20), v10);
            break;
        }
      }

      else
      {
        switch(v7)
        {
          case 1:
            sub_100048C4C(*(v5 + 8), *(v5 + 16), *(v5 + 24));
            v13 = v5 + *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
            v14 = type metadata accessor for AWDLActionFrame.Header(0);
            v15 = *(v14 + 32);
            v16 = type metadata accessor for DispatchTimeInterval();
            v17 = *(*(v16 - 8) + 8);
            v17(v13 + v15, v16);
            v17(v13 + *(v14 + 36), v16);

            break;
          case 2:

            break;
          case 4:
            v8 = *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 80);
            v9 = type metadata accessor for DispatchTimeInterval();
            (*(*(v9 - 8) + 8))(v5 + v8, v9);

            type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);

            break;
        }
      }

      break;
    case 0:
      v26 = *(v5 + 360);
      v24 = *(v5 + 320);
      v25 = *(v5 + 336);
      v22 = *(v5 + 288);
      v23 = *(v5 + 304);
      v20 = *(v5 + 256);
      v21 = *(v5 + 272);
      v19 = *(v5 + 224);
      sub_1000B1F88(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 176), *(v5 + 184), *(v5 + 192), *(v5 + 200), *(v5 + 208), *(v5 + 216), v19, *(&v19 + 1), *(v5 + 240), *(v5 + 248), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), *(v5 + 352), v26, HIBYTE(v26));
      break;
  }

  return _swift_deallocObject(v0, ((((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10001F104(int a1)
{
  if (a1 == -536870272)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == -536870144)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == -536870288)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t DriverEvent.description.getter()
{
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F33C(v0, v4, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return DriverEvent.shortDescription.getter();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10018541C(v4, v2, type metadata accessor for DriverEvent.AWDL);
      v7 = DriverEvent.AWDL.description.getter();
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
    }

    else
    {
      v8 = v4[1];
      v10[0] = *v4;
      v10[1] = v8;
      *(&v10[1] + 10) = *(v4 + 26);
      v7 = DriverEvent.Infra.description.getter();
      sub_100185528(v10);
    }
  }

  else
  {
    memcpy(v10, v4, 0x16AuLL);
    sub_100185558(v10, v9);
    v7 = DriverEvent.NAN.description.getter();
    sub_1001854F8(v10);
    sub_1001854F8(v10);
  }

  return v7;
}

uint64_t sub_10001F33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DriverEvent.shortDescription.getter()
{
  v1 = v0;
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F33C(v1, v5, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      memcpy(v33, v5, 0x16AuLL);
      v13 = DriverEvent.NAN.shortDescription.getter();
      sub_1001854F8(v33);
      return v13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_10018541C(v5, v3, type metadata accessor for DriverEvent.AWDL);
      v11 = DriverEvent.AWDL.shortDescription.getter();
      sub_1001853BC(v3, type metadata accessor for DriverEvent.AWDL);
      return v11;
    }

    v14 = *v5;
    v15 = v5[1];
    v17 = v5[2];
    v16 = v5[3];
    v18 = v5[4];
    v19 = *(v5 + 40);
    v20 = *(v5 + 41);
    if (v20 <= 4)
    {
      if (v20 <= 1)
      {
        if (!v20)
        {
          return 0xD000000000000010;
        }

        v23 = &type metadata for InfraScanStartEvent;
      }

      else
      {
        v23 = &type metadata for InfraScanCompleteEvent;
        v24 = &type metadata for InfraAssociationStartEvent;
        if (v20 != 3)
        {
          v24 = &type metadata for InfraAssociationJoinStatus;
        }

        if (v20 != 2)
        {
          v23 = v24;
        }
      }
    }

    else
    {
      if (v20 > 7)
      {
        if (v20 != 8)
        {
          if (v20 == 9)
          {
            return 0xD000000000000013;
          }

          if (v17 | v15 | v14 | v16 | v18)
          {
            v26 = 0;
          }

          else
          {
            v26 = v19 == 0;
          }

          if (v26)
          {
            return 0x6863207265776F50;
          }

          v27 = v17 | v15 | v16 | v18;
          if (v19)
          {
            v28 = 0;
          }

          else
          {
            v28 = v14 == 1;
          }

          if (!v28 || v27 != 0)
          {
            v31 = v14 == 2 && v27 == 0;
            if (v19 == 0 && v31)
            {
              return 0x6168632044495353;
            }

            else
            {
              return 0x6863204449535342;
            }
          }

          return 0xD000000000000014;
        }

        return 0xD000000000000015;
      }

      if (v20 != 5)
      {
        if (v20 == 6)
        {
          return 0xD000000000000012;
        }

        return 0xD000000000000015;
      }

      v23 = &type metadata for InfraAssociationReadyEvent;
    }

    v33[0] = v23;
    sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
    v25 = String.init<A>(describing:)();
    sub_10001CF6C(v14, v15, v17, v16, v18, v19, v20);
    return v25;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000013;
    }

    return 0xD000000000000014;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v7 = *v5;
    v33[0] = 0x206D6574737953;
    v33[1] = 0xE700000000000000;
    if (v7)
    {
      v8 = 0x656B617720646964;
    }

    else
    {
      v8 = 0x656C73206C6C6977;
    }

    if (v7)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEA00000000007065;
    }

    v10 = v9;
    String.append(_:)(*&v8);
  }

  else
  {
    v21 = *v5;
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v22._countAndFlagsBits = 0x676F646863746157;
    v22._object = 0xEF20746573655220;
    String.append(_:)(v22);
    v32[7] = v21;
    _print_unlocked<A, B>(_:_:)();
  }

  return v33[0];
}

uint64_t sub_10001F89C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001F8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F93C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F984(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F9CC()
{
  v1 = *(type metadata accessor for DriverEvent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 4);
  v12 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001FA84(v6, v7, v0 + v2, v8, v9, v10, v11, v12);
}

uint64_t sub_10001FA84(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v26 = a8;
  v25 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for DispatchQoS();
  v16 = *(v27 - 8);
  v17 = __chkstk_darwin();
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(a3, v17);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = v25;
  *(v20 + 32) = a6;
  *(v20 + 36) = v21;
  *(v20 + 40) = v26;
  aBlock[4] = sub_10001FDDC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055FDE8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v15, v13);
  (*(v16 + 8))(v19, v27);
}

uint64_t sub_10001FDEC(uint64_t a1, uint64_t a2, int a3, io_connect_t a4, intptr_t a5)
{
  result = swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v12;
    result = swift_beginAccess();
    if (*(a2 + 16) == v12 && a3 == 2)
    {
      return IOAllowPowerChange(a4, a5);
    }
  }

  return result;
}

uint64_t sub_10001FE8C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10001FEDC(void *a1)
{
  v465 = a1;
  v2.isa = v1->isa;
  v438 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  __chkstk_darwin();
  v439 = &v415 - v3;
  v417 = sub_10005DC58(&qword_10059A650, &qword_1004B3850);
  __chkstk_darwin();
  v416 = &v415 - v4;
  v447 = *(v2.isa + 55);
  v464 = v1;
  v5 = *(v2.isa + 54);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v462 = AssociatedTypeWitness;
  v463 = v7;
  __chkstk_darwin();
  v448 = &v415 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v452 = &v415 - v9;
  __chkstk_darwin();
  v457 = &v415 - v10;
  __chkstk_darwin();
  v427 = &v415 - v11;
  __chkstk_darwin();
  v426 = &v415 - v12;
  v425 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
  __chkstk_darwin();
  v424 = &v415 - v13;
  v423 = sub_10005DC58(&unk_10059A670, &qword_1004B3870);
  __chkstk_darwin();
  v422 = &v415 - v14;
  type metadata accessor for SymmetricKeySize();
  __chkstk_darwin();
  v420 = &v415 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059A690, &unk_1004884D0);
  __chkstk_darwin();
  v421 = &v415 - v16;
  v436 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  __chkstk_darwin();
  v437 = &v415 - v17;
  v18 = swift_getAssociatedTypeWitness();
  *&v459 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v431 = v18;
  v19 = swift_getAssociatedTypeWitness();
  v434 = *(v19 - 8);
  v435 = v19;
  __chkstk_darwin();
  v432 = &v415 - v20;
  v453 = type metadata accessor for DispatchTimeInterval();
  v450 = *(v453 - 8);
  __chkstk_darwin();
  v445 = (&v415 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v449 = (&v415 - v22);
  __chkstk_darwin();
  v456 = (&v415 - v23);
  v455 = type metadata accessor for DispatchTime();
  v446 = *(v455 - 8);
  __chkstk_darwin();
  v443 = v24;
  v444 = &v415 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v454 = &v415 - v25;
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  v419 = *(BeaconInformation - 8);
  __chkstk_darwin();
  v429 = &v415 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  __chkstk_darwin();
  v451 = &v415 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v440 = &v415 - v28;
  v461 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v418 = &v415 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v428 = &v415 - v30;
  __chkstk_darwin();
  v32 = &v415 - v31;
  __chkstk_darwin();
  v460 = (&v415 - v33);
  v34 = type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v441 = &v415 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v415 - v36;
  __chkstk_darwin();
  v39 = &v415 - v38;
  v40 = type metadata accessor for DispatchPredicate();
  v41 = *(v40 - 8);
  __chkstk_darwin();
  v43 = (&v415 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v442 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v44 = *v442;
  *v43 = *v442;
  (*(v41 + 104))(v43, enum case for DispatchPredicate.onQueue(_:), v40);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  (*(v41 + 8))(v43, v40);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_167;
  }

  v46 = v465;
  sub_1000238F0(v465, v39, type metadata accessor for DriverEvent);
  v47 = v34;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100023A78(v39, type metadata accessor for DriverEvent);
  }

  else
  {
    memcpy(v477, v39, 0x16AuLL);
    v48 = DriverEvent.NAN.peerAttributes.getter();
    if (v49)
    {
      v50 = v48;
      v51 = v49;
      v415 = v34;
      v52 = v464;
      v53 = *(v464->isa + 57);
      swift_beginAccess();
      sub_10040CA94(v50 & 0xFFFFFFFFFFFFLL, *(&v52->isa + v53));
      v55 = v54;
      swift_endAccess();
      if (!v55)
      {
        v55 = sub_1002DF098(_swiftEmptyArrayStorage);
      }

      v56 = v460;
      sub_10040CD68(v50 & 0xFFFFFFFFFFFFLL, v460);
      sub_1002E23CC(v51, v55);

      sub_10040E430(v56, v50 & 0xFFFFFFFFFFFFLL);
      sub_10040CD68(v50 & 0xFFFFFFFFFFFFLL, v32);
      v57 = &v32[*(v461 + 11)];
      v58 = *v57;
      v59 = v57[2];
      sub_100023A78(v32, type metadata accessor for NANPeer);
      if ((v59 & 1) == 0)
      {
        sub_1004119A4();
        sub_1000479A0(v58);
      }

      sub_1001854F8(v477);
      v46 = v465;
      v47 = v415;
    }

    else
    {
      sub_1001854F8(v477);
      v46 = v465;
    }
  }

  sub_1000238F0(v46, v37, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100023A78(v37, type metadata accessor for DriverEvent);
      return;
    }

    memcpy(v475, v37, 0x16AuLL);
    memcpy(v476, v37, 0x16AuLL);
    v83 = sub_100185198(v476);
    v84 = v464;
    switch(v83)
    {
      case 1:
        NANBitmap.Channel.operatingClass.getter();
        v241 = *v240;
        v242 = *(v240 + 1);
        v243 = *(v84->isa + 87);
        LODWORD(v240) = *(&v84->isa + v243);
        *(&v84->isa + v243) = v241;
        sub_10041156C(v240);
        v244 = v84 + *(v84->isa + 88);
        *v244 = v242;
        v244[8] = 0;
        return;
      case 2:
      case 3:
      case 5:
      case 6:
      case 7:
      case 13:
      case 16:
      case 20:
      case 22:
        NANBitmap.Channel.operatingClass.getter();
        v113 = sub_1001854F8(v475);
        goto LABEL_118;
      case 4:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 17:
        NANBitmap.Channel.operatingClass.getter();
        goto LABEL_118;
      case 15:
        NANBitmap.Channel.operatingClass.getter();
        sub_10040DD50(v236, v237, v238, v239);
        sub_1003AA900(v46);
        goto LABEL_119;
      case 18:
        NANBitmap.Channel.operatingClass.getter();
        if (*(v252 + 56))
        {
          goto LABEL_168;
        }

        v253 = v252;
        v254 = *(v252 + 64);
        v255 = *(v252 + 72);
        LODWORD(v460) = *(v252 + 76);
        v256 = *(v252 + 77);
        v257 = *(v252 + 24);
        v462 = *(v252 + 88);
        v463 = v257;
        v258 = *(v252 + 40);
        v259 = v84;
        v260 = *(v252 + 12);
        v261 = *(v84->isa + 57);
        v262 = *(v252 + 10);
        swift_beginAccess();
        v263 = *(&v259->isa + v261);
        memcpy(v466, v475, 0x16AuLL);
        NANBitmap.Channel.operatingClass.getter();
        sub_100012400(v264, v467, &unk_10059A6D0, &qword_1004B3890);
        v465 = (v262 | (v260 << 16));
        sub_10040CA94(v465, v263);
        v266 = v265;
        swift_endAccess();
        v267 = v254;
        if (!v266)
        {
          v266 = sub_1002DF098(_swiftEmptyArrayStorage);
        }

        v268 = v428;
        sub_10040CD68(v465, v428);
        v269 = *(v253 + 20);
        v270 = v268 + *(v461 + 7);
        *v270 = *(v253 + 16);
        *(v270 + 4) = v269;
        type metadata accessor for P2PTimer(0);
        v271 = v429;
        variable initialization expression of AWDLPeer.lastUpdated();
        *v271 = v255;
        *(v271 + 4) = v460;
        *(v271 + 5) = v256;
        *(v271 + 8) = v267;
        v272 = v462;
        v273 = v463;
        *(v271 + 16) = v463;
        *(v271 + 24) = v272;
        *v467 = v258;
        v274 = sub_10005DC58(&unk_100597510, &qword_100495350);
        v275 = sub_10000CADC(&qword_10059A6E0, &unk_100597510, &qword_100495350, &protocol conformance descriptor for [A]);
        v276 = Collection<>.nanIE.getter(v274, v275);
        if (v276)
        {
          sub_1002E23CC(v276, v266);
        }

        v277 = v455;
        v278 = v456;
        v279 = v449;
        v280 = v446;
        v281 = v419;
        v282 = v268 + *(v461 + 10);
        if ((*(v282 + 16) & 1) == 0 && !*(v282 + 8))
        {
          *(v282 + 12) = v273;
        }

        v283 = v461;
        v284 = *(v461 + 8);
        v285 = v428;
        sub_100016290(v428 + v284, &qword_1005954D0, &unk_1004AF470);
        sub_100423C3C(v429, v285 + v284, type metadata accessor for NANPeer.LastBeaconInformation);
        (*(v281 + 56))(v285 + v284, 0, 1, BeaconInformation);
        v286 = v454;
        variable initialization expression of AWDLPeer.lastUpdated();
        sub_1001854F8(v475);
        (*(v280 + 40))(v285 + *(v283 + 24), v286, v277);
        v287 = v465;
        sub_10040E430(v285, v465);
        v288 = v418;
        sub_10040CD68(v287, v418);
        v289 = v288 + *(v283 + 44);
        v290 = *v289;
        LOBYTE(v287) = *(v289 + 2);
        sub_100023A78(v288, type metadata accessor for NANPeer);
        if ((v287 & 1) == 0)
        {
          *v467 = v290;
          sub_10041C8AC(v467);
        }

        sub_10040ED24();
        *v279 = 8;
        v291 = enum case for DispatchTimeInterval.seconds(_:);
        v292 = v450;
        v293 = v453;
        v461 = *(v450 + 104);
        (v461)(v279, enum case for DispatchTimeInterval.seconds(_:), v453);
        v294 = v278;
        v295 = static DispatchTimeInterval.< infix(_:_:)(v279, v278);
        v296 = *(v292 + 8);
        v296(v279, v293);
        v296(v294, v293);
        if (!v295)
        {
          goto LABEL_168;
        }

        sub_10040E9C0(v294);
        *v279 = 3;
        (v461)(v279, v291, v293);
        v297 = static DispatchTimeInterval.< infix(_:_:)(v279, v294);
        v296(v279, v293);
        v298 = v296(v294, v293);
        if (!v297)
        {
          goto LABEL_168;
        }

        sub_10040CAE8(v298, v299, v300, v301);
        v302 = sub_100349DAC(v465);

        if (!v302)
        {
          goto LABEL_168;
        }

        v303 = v462;
        v304 = v303 - (v303 & 0x7FFFF);
        if (v303 < (v303 & 0x7FFFF))
        {
          __break(1u);
        }

        else
        {
          v305 = v462 & 0x7FFFFF;
          if (v462 >= (v462 & 0x7FFFFF))
          {
            v306 = (v463 - (v463 & 0x7FFFF));
            if (v463 >= (v463 & 0x7FFFF))
            {
              v307 = v463 & 0x7FFFFF;
              if (v463 >= (v463 & 0x7FFFFF))
              {
                if (v304 == v306 || v462 - (v462 & 0x7FFFFF) == v463 - (v463 & 0x7FFFFF))
                {
                  goto LABEL_168;
                }

                *&v459 = v463 - (v463 & 0x7FFFFF);
                v461 = (v462 - (v462 & 0x7FFFFF));
                v308 = Logger.logObject.getter();
                LODWORD(v460) = static os_log_type_t.error.getter();
                v464 = v308;
                if (os_log_type_enabled(v308, v460))
                {
                  v309 = swift_slowAlloc();
                  v458 = swift_slowAlloc();
                  *v467 = v458;
                  *v309 = 136317186;
                  v310 = WiFiAddress.description.getter(v465);
                  v312 = sub_100002320(v310, v311, v467);

                  *(v309 + 4) = v312;
                  *(v309 + 12) = 2080;
                  v313 = NANTimeSynchronizationFunction.description.getter(v463);
                  v315 = sub_100002320(v313, v314, v467);

                  *(v309 + 14) = v315;
                  *(v309 + 22) = 2080;
                  v316 = NANTimeSynchronizationFunction.description.getter(v303);
                  v318 = sub_100002320(v316, v317, v467);

                  *(v309 + 24) = v318;
                  *(v309 + 32) = 2080;
                  v319 = NANTimeSynchronizationFunction.description.getter(v306);
                  v321 = sub_100002320(v319, v320, v467);

                  *(v309 + 34) = v321;
                  *(v309 + 42) = 2080;
                  v322 = NANTimeSynchronizationFunction.description.getter(v304);
                  v324 = sub_100002320(v322, v323, v467);

                  *(v309 + 44) = v324;
                  *(v309 + 52) = 2080;
                  v325 = NANTimeSynchronizationFunction.description.getter(v459);
                  v327 = sub_100002320(v325, v326, v467);

                  *(v309 + 54) = v327;
                  *(v309 + 62) = 2080;
                  v328 = NANTimeSynchronizationFunction.description.getter(v461);
                  v330 = sub_100002320(v328, v329, v467);

                  *(v309 + 64) = v330;
                  *(v309 + 72) = 2048;
                  *(v309 + 74) = v307 >> 19;
                  *(v309 + 82) = 2048;
                  *(v309 + 84) = v305 >> 19;
                  v331 = v464;
                  _os_log_impl(&_mh_execute_header, v464, v460, "Peer %s not synced.\nTSF: %s:%s\nDW TSF: %s:%s\nDW0 TSF: %s:%s\nDW Count: %ld:%ld\n(Peer:Local)", v309, 0x5Cu);
                  swift_arrayDestroy();

LABEL_168:
                  sub_1001854F8(v475);
                  return;
                }

LABEL_167:

                goto LABEL_168;
              }

LABEL_172:
              __break(1u);
              JUMPOUT(0x100023794);
            }

LABEL_171:
            __break(1u);
            goto LABEL_172;
          }
        }

        __break(1u);
        goto LABEL_171;
      case 19:
        NANBitmap.Channel.operatingClass.getter();
        v333 = v332;

        v335 = Logger.logObject.getter();
        v336 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v335, v336))
        {
          v337 = swift_slowAlloc();
          v338 = swift_slowAlloc();
          *&v466[0] = v338;
          *v337 = 136315138;
          v339 = WiFiInterface.description.getter();
          v341 = v340;

          v342 = sub_100002320(v339, v341, v466);

          *(v337 + 4) = v342;
          _os_log_impl(&_mh_execute_header, v335, v336, "Attempting to submit low latency statistics for %s", v337, 0xCu);
          sub_100002A00(v338);
        }

        else
        {
        }

        v349 = *(v333 + 35);
        *v474 = *v333;
        *&v474[15] = *(v333 + 15);
        v350 = *(v333 + 33);
        memcpy(v473, (v333 + 20), sizeof(v473));
        v352 = *(v333 + 344);
        v351 = *(v333 + 352);
        v353 = v350 | (v349 << 16);
        v354 = *(v333 + 360);
        v355 = v460;
        sub_10040CD68(v353, v460);
        LOBYTE(v349) = sub_1002E0E3C();
        sub_100023A78(v355, type metadata accessor for NANPeer);
        LODWORD(v465) = (v349 & 1) == 0;
        v356 = v334 + *(*v334 + 760);
        swift_beginAccess();
        v357 = *(v356 + 8);
        if (v357 && (*(v356 + 16) & 1) == 0)
        {
          v352 = *v356;
          v354 = *(v356 + 16);

          if (*(v356 + 8))
          {
            *(v356 + 16) = 1;
          }

          v351 = v357;
        }

        LODWORD(v463) = v354;
        v358 = *(AssociatedConformanceWitness + 152);
        swift_checkMetadataState();
        v359 = v432;
        v358();
        v466[0] = *v474;
        *(v466 + 15) = *&v474[15];
        v360 = v465;
        BYTE3(v466[1]) = v465;
        memcpy(&v466[1] + 4, v473, 0x144uLL);
        *(&v466[21] + 1) = v352;
        *&v466[22] = v351;
        v361 = v463;
        BYTE8(v466[22]) = v463;
        v362 = v435;
        v363 = swift_getAssociatedConformanceWitness();
        (*(v363 + 24))(v466, v362, v363);
        (*(v434 + 8))(v359, v362);
        *v467 = *v474;
        *&v467[15] = *&v474[15];
        v468 = v360;
        memcpy(v469, v473, sizeof(v469));
        v470 = v352;
        v471 = v351;
        v472 = v361;
        sub_100423634(v467);
        return;
      case 21:
        NANBitmap.Channel.operatingClass.getter();
        v246 = *v245;
        swift_retain_n();
        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          *&v466[0] = swift_slowAlloc();
          *v249 = 136315394;
          if (v246)
          {
            if (v246 == 1)
            {
              v250 = 0xE500000000000000;
              v251 = 0x7A48472035;
            }

            else
            {
              v251 = 0x7A48472036;
              v250 = 0xE500000000000000;
            }
          }

          else
          {
            v250 = 0xE700000000000000;
            v251 = 0x7A484720342E32;
          }

          v398 = sub_100002320(v251, v250, v466);

          *(v249 + 4) = v398;
          *(v249 + 12) = 2080;
          v399 = WiFiInterface.description.getter();
          v401 = v400;

          v402 = sub_100002320(v399, v401, v466);

          *(v249 + 14) = v402;
          _os_log_impl(&_mh_execute_header, v247, v248, "Attempting to update soft AP band to %s for %s", v249, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        swift_unownedRetainStrong();
        sub_1003F0114(v246);
        goto LABEL_119;
      default:
        NANBitmap.Channel.operatingClass.getter();
        v86 = *(v85 + 2);
        v87 = *v85;
        v88 = v440;
        sub_10041127C(v440);
        v89 = v88 + *(v458 + 40);
        *v89 = v87;
        *(v89 + 4) = v86;
        sub_1004112F0(v88);
        return;
    }
  }

  v61 = v464;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v62 = *(v464->isa + 12);
      swift_beginAccess();
      v63 = v462;
      v64 = v463;
      v65 = v457;
      v456 = *(v463 + 16);
      (v456)(v457, v61 + v62, v462);
      v66 = swift_getAssociatedConformanceWitness();
      v67 = v66[8];
      v465 = v66;
      v461 = v67;
      v68 = v67(v63);
      v70 = *(v64 + 8);
      v69 = v64 + 8;
      v460 = v70;
      (v70)(v65, v63);
      if ((v68 & 0x1000000000000) != 0)
      {
        v68 = WiFiInterface.macAddress.getter();
      }

      v71 = WiFiInterface.macAddress.getter();
      if (!static WiFiAddress.!= infix(_:_:)(v68 & 0xFFFFFFFFFFFFLL, v71 & 0xFFFFFFFFFFFFLL))
      {
        return;
      }

      v463 = v69;
      swift_retain_n();
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *&v459 = swift_slowAlloc();
        v476[0] = v459;
        *v74 = 136315394;
        v75 = WiFiAddress.description.getter(v68 & 0xFFFFFFFFFFFFLL);
        v77 = sub_100002320(v75, v76, v476);

        *(v74 + 4) = v77;
        *(v74 + 12) = 2080;
        v78 = WiFiInterface.macAddress.getter();

        v79 = WiFiAddress.description.getter(v78 & 0xFFFFFFFFFFFFLL);
        v81 = v80;

        v82 = sub_100002320(v79, v81, v476);

        *(v74 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v72, v73, "MAC address changed event with unexpected MAC address %s, expected %s", v74, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v122 = v452;
      v123 = v462;
      (v456)(v452, v61 + v62, v462);
      v124 = (v461)(v123, v465);
      (v460)(v122, v123);
      v125 = v451;
      WiFiInterface.$macAddress.getter(v451);
      if ((v124 & 0x1000000000000) != 0)
      {
        v130 = *(v458 + 40);
        LOBYTE(v124) = *(v125 + v130);
        v126.i32[0] = *(v125 + v130 + 1);
        v128 = vmovl_u8(v126).u64[0];
        LOBYTE(v129) = *(v125 + v130 + 5);
      }

      else
      {
        v127 = vdupq_n_s64(v124);
        v128 = vmovn_s32(vuzp1q_s32(vshlq_u64(v127, xmmword_1004817A0), vshlq_u64(v127, xmmword_100481790)));
        v129 = v124 >> 40;
        v130 = *(v458 + 40);
      }

      v131 = v125 + v130;
      *v131 = v124;
      *(v131 + 1) = vuzp1_s8(v128, v128).u32[0];
      *(v131 + 5) = v129;
      WiFiInterface.$macAddress.setter(v125);
      v132 = *(v61->isa + 59);
      v133 = *(&v61->isa + v132);
      if (v133)
      {

        v134 = WiFiInterface.macAddress.getter();
        (*(*v133 + 264))(v134 & 0xFFFFFFFFFFFFLL);
      }

      sub_10005DC58(&unk_10059B0B0, &qword_100487150);
      v135 = swift_allocObject();
      v459 = xmmword_100480F40;
      *(v135 + 16) = xmmword_100480F40;
      v136 = WiFiInterface.macAddress.getter();
      *(v135 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v136 & 0xFFFFFFFFFFFFLL);
      *(v135 + 40) = v137;
      *(v135 + 48) = v138;
      *(v135 + 56) = v139;
      WiFiInterface.ipv6Addresses.setter(v135);
      v140 = *(&v61->isa + v132);
      if (v140)
      {
        v141 = swift_allocObject();
        *(v141 + 16) = v459;

        v142 = WiFiInterface.macAddress.getter();
        *(v141 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v142 & 0xFFFFFFFFFFFFLL);
        *(v141 + 40) = v143;
        *(v141 + 48) = v144;
        *(v141 + 56) = v145;
        v146 = v141;
        v61 = v464;
        (*(*v140 + 360))(v146);
      }

      v147 = *(&v61->isa + *(v61->isa + 60));
      if (!v147)
      {
        return;
      }

      v148 = *(*v147 + 168);

      v150 = v448;
      v148(v149);
      v151 = v462;
      v152 = (v461)(v462, v465);
      (v460)(v150, v151);
      v154 = (*(*v147 + 296))(v476);
      if ((v152 & 0x1000000000000) != 0)
      {
        v159 = *(v458 + 40);
        LOBYTE(v152) = *(v153 + v159);
        v155.i32[0] = *(v153 + v159 + 1);
        v157 = vmovl_u8(v155).u64[0];
        LOBYTE(v158) = *(v153 + v159 + 5);
      }

      else
      {
        v156 = vdupq_n_s64(v152);
        v157 = vmovn_s32(vuzp1q_s32(vshlq_u64(v156, xmmword_1004817A0), vshlq_u64(v156, xmmword_100481790)));
        v158 = v152 >> 40;
        v159 = *(v458 + 40);
      }

      v201 = v153 + v159;
      *v201 = v152;
      *(v201 + 1) = vuzp1_s8(v157, v157).u32[0];
      *(v201 + 5) = v158;
      v154(v476, 0);
      v202 = swift_allocObject();
      *(v202 + 16) = v459;
      v203 = (*(*v147 + 256))();
      *(v202 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v203 & 0xFFFFFFFFFFFFLL);
      *(v202 + 40) = v204;
      *(v202 + 48) = v205;
      *(v202 + 56) = v206;
      (*(*v147 + 360))(v202);
    }

    else
    {
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Channel list updated", v112, 2u);
      }

LABEL_118:
      sub_10040CAE8(v113, v114, v115, v116);
      sub_10033E130(v46);
    }

    goto LABEL_119;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if ((*v37 & 1) == 0)
    {
      sub_10040E940(0);
    }

    return;
  }

  v90 = *v37;
  if (v90 > 2)
  {
    if (v90 != 3)
    {
      v415 = v47;
      if (v90 == 4)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "Driver interface was powered on", v119, 2u);
        }

        *(&v61->isa + *(v61->isa + 68)) = 1;
        isa = v61->isa;
        if (*(&v61->isa + *(v61->isa + 66)) == 1 && *(&v61->isa + *(v61->isa + 67)) == 1)
        {
          v121 = v441;
          *v441 = 5;
          swift_storeEnumTagMultiPayload();
          sub_10001FEDC(v121);
          sub_100023A78(v121, type metadata accessor for DriverEvent);
          isa = v61->isa;
        }

        *(&v61->isa + *(isa + 70)) = 0;
        goto LABEL_119;
      }

      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        *v198 = 0;
        _os_log_impl(&_mh_execute_header, v196, v197, "Driver interface was ready", v198, 2u);
      }

      *(&v61->isa + *(v61->isa + 66)) = 0;
      *(&v61->isa + *(v61->isa + 70)) = 0;

      v199 = WiFiInterface.linkState.getter();
      if (v199)
      {
        v200 = v437;
        WiFiInterface.$linkState.getter(v437);
        MutableDriverProperty.restore()();
        sub_100016290(v200, &unk_10059B0C0, &unk_1004AD460);
      }

      else
      {
        WiFiInterface.linkState.setter(1);
      }

      v221 = v440;
      WiFiInterface.$macAddress.getter(v440);
      MutableDriverProperty.restore()();
      sub_100016290(v221, &unk_10059B160, &qword_1004B3050);
      v222 = v439;
      WiFiInterface.$ipv6Addresses.getter(v439);
      MutableDriverProperty.restore()();
      sub_100016290(v222, &unk_10059A6C0, &qword_1004AD478);
      WiFiInterface.linkState.setter(v199 & 1);
      v223 = *(v61->isa + 59);
      if (*(&v61->isa + v223))
      {
        *(&v61->isa + v223) = 0;

        sub_10040FB70();
      }

      v343 = *(v61->isa + 60);
      v344 = *(&v61->isa + v343);
      if (v344)
      {
        v345 = v61;
        v346 = *(*v344 + 208);

        LOBYTE(v346) = v346(v347);

        *(&v345->isa + v343) = 0;

        v348 = sub_10040EF90();

        (*(*v348 + 216))(v346 & 1);
      }

      v181 = v441;
      *v441 = 1;
LABEL_126:
      swift_storeEnumTagMultiPayload();
      sub_10001FEDC(v181);
      sub_100023A78(v181, type metadata accessor for DriverEvent);
      return;
    }

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "Driver interface was re-created", v179, 2u);
    }

    *(&v61->isa + *(v61->isa + 67)) = 1;
    v180 = v456;
    if (*(&v61->isa + *(v61->isa + 66)) == 1 && *(&v61->isa + *(v61->isa + 68)) == 1)
    {
      v181 = v441;
      *v441 = 5;
      goto LABEL_126;
    }

    type metadata accessor for P2PTimer(0);
    v207 = v454;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v180 = 5;
    v463 = *(v450 + 104);
    v208 = v453;
    (v463)(v180, enum case for DispatchTimeInterval.seconds(_:), v453);
    v465 = *v442;
    v209 = swift_allocObject();
    swift_weakInit();
    v210 = v446;
    v211 = v444;
    v212 = v455;
    (*(v446 + 16))(v444, v207, v455);
    v213 = (*(v210 + 80) + 40) & ~*(v210 + 80);
    v214 = swift_allocObject();
    v215 = v447;
    *(v214 + 2) = v459;
    *(v214 + 3) = v215;
    *(v214 + 4) = v209;
    (*(v210 + 32))(&v214[v213], v211, v212);
    v216 = v449;
    v217 = v463;
    (v463)(v449, enum case for DispatchTimeInterval.never(_:), v208);
    v218 = v445;
    *v445 = 100;
    v217(v218, enum case for DispatchTimeInterval.milliseconds(_:), v208);
    swift_allocObject();
    v219 = v465;

    v220 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v456, v219, v216, v218, sub_10042348C, v214);
    (*(v210 + 8))(v454, v455);

    *(&v464->isa + *(v464->isa + 70)) = v220;
LABEL_119:

    return;
  }

  if (!*v37)
  {
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&_mh_execute_header, v160, v161, "Watchdog reset in progress", v162, 2u);
    }

    if (*(&v61->isa + *(v61->isa + 69)))
    {
      return;
    }

    type metadata accessor for P2PTimer(0);
    v163 = v454;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v456 = 10;
    v164 = v61;
    v462 = *(v450 + 104);
    v165 = v453;
    (v462)();
    v463 = *v442;
    v166 = swift_allocObject();
    swift_weakInit();
    v167 = v446;
    v168 = v444;
    (*(v446 + 16))(v444, v163, v455);
    v169 = (*(v167 + 80) + 40) & ~*(v167 + 80);
    v170 = swift_allocObject();
    v171 = v447;
    *(v170 + 2) = v459;
    *(v170 + 3) = v171;
    *(v170 + 4) = v166;
    (*(v167 + 32))(&v170[v169], v168, v455);
    v172 = v449;
    v173 = v462;
    (v462)(v449, enum case for DispatchTimeInterval.never(_:), v165);
    v174 = v445;
    *v445 = 100;
    v173(v174, enum case for DispatchTimeInterval.milliseconds(_:), v165);
    swift_allocObject();
    v175 = v463;
    v176 = sub_100423588;
LABEL_70:
    *(&v164->isa + *(v164->isa + 69)) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v456, v175, v172, v174, v176, v170);

    sub_10040CAE8(v192, v193, v194, v195);
    sub_10033E130(v465);

    (*(v167 + 8))(v454, v455);
    return;
  }

  if (v90 != 1)
  {
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&_mh_execute_header, v182, v183, "Driver interface was removed", v184, 2u);
    }

    *(&v61->isa + *(v61->isa + 93)) = 0;
    if (*(&v61->isa + *(v61->isa + 69)))
    {
      return;
    }

    *(&v61->isa + *(v61->isa + 66)) = 1;
    *(&v61->isa + *(v61->isa + 68)) = 0;
    *(&v61->isa + *(v61->isa + 67)) = 0;
    type metadata accessor for P2PTimer(0);
    v185 = v454;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v456 = 20;
    v164 = v61;
    v462 = *(v450 + 104);
    v186 = v453;
    (v462)();
    v463 = *v442;
    v187 = swift_allocObject();
    swift_weakInit();
    v167 = v446;
    v188 = v444;
    (*(v446 + 16))(v444, v185, v455);
    v189 = (*(v167 + 80) + 40) & ~*(v167 + 80);
    v170 = swift_allocObject();
    v190 = v447;
    *(v170 + 2) = v459;
    *(v170 + 3) = v190;
    *(v170 + 4) = v187;
    (*(v167 + 32))(&v170[v189], v188, v455);
    v172 = v449;
    v191 = v462;
    (v462)(v449, enum case for DispatchTimeInterval.never(_:), v186);
    v174 = v445;
    *v445 = 100;
    v191(v174, enum case for DispatchTimeInterval.milliseconds(_:), v186);
    swift_allocObject();
    v175 = v463;
    v176 = sub_1004234A4;
    goto LABEL_70;
  }

  v91 = *(&v464->isa + *(v464->isa + 69));
  v92 = Logger.logObject.getter();
  v93 = v453;
  if (v91)
  {
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v92, v94, "Watchdog reset completed", v95, 2u);
      v93 = v453;
    }

    *(&v61->isa + *(v61->isa + 69)) = 0;

    v96 = v456;
    sub_10040E9C0(v456);
    v98 = v449;
    v97 = v450;
    *v449 = 1;
    (*(v97 + 104))(v98, enum case for DispatchTimeInterval.seconds(_:), v93);
    v99 = static DispatchTimeInterval.< infix(_:_:)(v96, v98);
    v100 = *(v97 + 8);
    v100(v98, v93);
    v100(v96, v93);
    if (v99)
    {

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v476[0] = v104;
        *v103 = 136315138;
        v105 = v456;
        sub_10040E9C0(v456);
        v106 = DispatchTimeInterval.description.getter();
        v108 = v107;

        v100(v105, v453);
        v109 = sub_100002320(v106, v108, v476);

        *(v103 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v101, v102, "Last watchdog occurred %s ago, skipping restore", v103, 0xCu);
        sub_100002A00(v104);
        v61 = v464;
      }

      else
      {
      }

      sub_10040E940(0);
      sub_10041CDC4(v61);
      return;
    }

    v226 = v437;
    WiFiInterface.$linkState.getter(v437);
    MutableDriverProperty.restore()();
    sub_100016290(v226, &unk_10059B0C0, &unk_1004AD460);
    v227 = *(v61->isa + 59);
    v228 = *(&v61->isa + v227);
    if (v228)
    {
      v229 = *(*v228 + 208);

      v231 = v229(v230);
      v61 = v464;
      LOBYTE(v229) = v231;

      v232 = *(&v61->isa + v227);
      if (v229)
      {
        if (v232)
        {
          v233 = *(*v232 + 216);

          v233(0);
          v61 = v464;

          v234 = *(&v61->isa + v227);
          if (v234)
          {
            v235 = *(*v234 + 216);

            v235(1);
          }
        }
      }

      else if (v232)
      {
        v364 = *(*v232 + 232);

        v364(v365);

        MutableDriverProperty.restore()();
        sub_100016290(v226, &unk_10059B0C0, &unk_1004AD460);
      }
    }

    v366 = *(&v61->isa + *(v61->isa + 60));
    if (v366)
    {
      v367 = *(*v366 + 232);

      v367(v368);

      MutableDriverProperty.restore()();
      sub_100016290(v226, &unk_10059B0C0, &unk_1004AD460);
    }

    sub_100418460();
    v369 = Logger.logObject.getter();
    v370 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v369, v370))
    {
      v371 = swift_slowAlloc();
      *v371 = 0;
      _os_log_impl(&_mh_execute_header, v369, v370, "Deriving multicast management keys", v371, 2u);
    }

    static SymmetricKeySize.bits128.getter();
    v372 = v421;
    SymmetricKey.init(size:)();
    v373 = type metadata accessor for SymmetricKey();
    v374 = *(*(v373 - 8) + 56);
    v374(v372, 0, 1, v373);
    v375 = v464;
    v376 = *(v464->isa + 97);
    swift_beginAccess();
    sub_1000B1B78(v372, v375 + v376, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v374(v372, 0, 1, v373);
    v377 = *(v375->isa + 98);
    swift_beginAccess();
    sub_1000B1B78(v372, v375 + v377, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v374(v372, 0, 1, v373);
    v378 = *(v375->isa + 99);
    swift_beginAccess();
    sub_1000B1B78(v372, v375 + v378, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    v379 = v422;
    sub_10041138C(v422);
    MutableDriverProperty.restore()();
    sub_100016290(v379, &unk_10059A670, &qword_1004B3870);
    v380 = v424;
    sub_100411400(v424);
    MutableDriverProperty.restore()();
    sub_100016290(v380, &qword_10059A6A0, &qword_1004B0738);
    v381 = *(v375->isa + 12);
    swift_beginAccess();
    v382 = v462;
    v383 = v463;
    v384 = v426;
    v461 = *(v463 + 16);
    (v461)(v426, v375 + v381, v462);
    v385 = swift_getAssociatedConformanceWitness();
    v460 = *(v385 + 56);
    v386 = (v460)(v382, v385);
    v387 = *(v383 + 8);
    v388 = v382;
    v463 = v383 + 8;
    v389 = v387;
    v387(v384, v388);
    v390 = sub_100019F94();
    v391 = v465;
    if (v386 != 2)
    {
      v393 = v390;
      if (v386)
      {
        v394 = 0x64656C62616E65;
      }

      else
      {
        v394 = 0x64656C6261736964;
      }

      if (v386)
      {
        v395 = 0xE700000000000000;
      }

      else
      {
        v395 = 0xE800000000000000;
      }

      if (v393)
      {
        v396 = 0x64656C62616E65;
      }

      else
      {
        v396 = 0x64656C6261736964;
      }

      if (v393)
      {
        v397 = 0xE700000000000000;
      }

      else
      {
        v397 = 0xE800000000000000;
      }

      if (v394 == v396 && v395 == v397)
      {

        v375 = v464;
        goto LABEL_165;
      }

      LODWORD(v459) = _stringCompareWithSmolCheck(_:_:expecting:)();

      v375 = v464;
      if (v459)
      {
        goto LABEL_165;
      }
    }

    v392 = v416;
    sub_100411208(v416);
    MutableDriverProperty.restore()();
    sub_100016290(v392, &qword_10059A650, &qword_1004B3850);
LABEL_165:
    v403 = v375 + v381;
    v404 = v427;
    v405 = v462;
    (v461)(v427, v403, v462);
    v406 = (v460)(v405, v385);
    v389(v404, v405);
    v407 = sub_10040E940(v406 & 1);
    sub_10040DD50(v407, v408, v409, v410);
    sub_1003AA900(v391);

    sub_10040CAE8(v411, v412, v413, v414);
    sub_10033E130(v391);

    sub_10041CDC4(v375);
    return;
  }

  v224 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v92, v224))
  {
    v225 = swift_slowAlloc();
    *v225 = 0;
    _os_log_impl(&_mh_execute_header, v92, v224, "Watchdog reset completed without a watchdog being in progress", v225, 2u);
  }
}

uint64_t sub_1000237F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000238F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000239B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100023B38(uint64_t a1)
{
  type metadata accessor for Logger();
  v3 = *(v1 + 32);

  sub_100023BC0(a1, v3);
}

void sub_100023BC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100023E94(a1);
    }

    else
    {
      sub_100027648(a1, v4, type metadata accessor for DriverEvent);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = DriverEvent.shortDescription.getter();
        v18 = v17;
        sub_1000473F0(v4, type metadata accessor for DriverEvent);
        v19 = sub_100002320(v16, v18, &v20);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to dispatch event %s because the AWDLInterface was deallocated before the event was received from the driver", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {

        sub_1000473F0(v4, type metadata accessor for DriverEvent);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100023E94(uint64_t a1)
{
  *&v409 = a1;
  v393 = 0;
  v2 = *v1;
  v382 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  __chkstk_darwin();
  v381 = &v369 - v3;
  v396 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  __chkstk_darwin();
  v397 = &v369 - v4;
  v378 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  __chkstk_darwin();
  v377 = &v369 - v5;
  sub_10005DC58(&unk_10059B090, &unk_1004B1830);
  __chkstk_darwin();
  v407 = &v369 - v6;
  v7 = type metadata accessor for AWDLPeer(0);
  v374 = *(v7 - 8);
  v375 = v7;
  __chkstk_darwin();
  v371 = (&v369 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v391 = type metadata accessor for DispatchTimeInterval();
  v387 = *(v391 - 8);
  __chkstk_darwin();
  v386 = (&v369 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v385 = &v369 - v10;
  __chkstk_darwin();
  v392 = (&v369 - v11);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v379 = &v369 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v373 = &v369 - v13;
  v394 = type metadata accessor for DispatchTime();
  v389 = *(v394 - 8);
  __chkstk_darwin();
  v384 = &v369 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v369 - v15;
  v383 = v16;
  __chkstk_darwin();
  v372 = &v369 - v17;
  type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  __chkstk_darwin();
  v380 = (&v369 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v395 = *(v2 + 440);
  v19 = *(v395 + 8);
  v408 = v1;
  v20 = *(v2 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v405 = *(v23 - 8);
  v406 = v23;
  __chkstk_darwin();
  v388 = &v369 - v24;
  type metadata accessor for AWDLIdleActivity(0);
  __chkstk_darwin();
  v404 = &v369 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = v19;
  v402 = v20;
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(v26 - 8);
  v400 = v26;
  v401 = v27;
  __chkstk_darwin();
  v398 = (&v369 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v403 = &v369 - v29;
  __chkstk_darwin();
  v31 = &v369 - v30;
  __chkstk_darwin();
  v33 = &v369 - v32;
  v34 = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v37 = type metadata accessor for Preferences(0, v34, v35, v36);
  v370 = *(v37 - 8);
  __chkstk_darwin();
  v39 = &v369 - v38;
  type metadata accessor for AWDLActionFrame.Header(0);
  __chkstk_darwin();
  v41 = (&v369 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v376 = &v369 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v369 - v44;
  sub_100027648(v409, &v369 - v44, type metadata accessor for DriverEvent);
  *&v409 = v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v386 = v39;
    v397 = v31;
    v398 = v41;
    v396 = v33;
    v53 = v403;
    v54 = v404;
    v56 = v406;
    v55 = v407;
    *&v409 = AssociatedTypeWitness;
    v399 = AssociatedConformanceWitness;
    v57 = v405;
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for DriverEvent.AWDL(0);
      v58 = v57;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v270 = *(v45 + 1);
          v271 = *(v45 + 2);
          v272 = *(v45 + 3);
          v273 = sub_10005DC58(&qword_10058C7C8, &unk_100481FE0);
          v274 = v398;
          sub_10003DFE0(&v45[*(v273 + 48)], v398, type metadata accessor for AWDLActionFrame.Header);
          if ((v270 & 0xC0000000) == 0x40000000)
          {
            sub_10003E048((v270 & 0xFFFFFFFF00FF01FFLL), v271, v272, v274);
          }

          sub_100048C4C(v270, v271, v272);
          v66 = type metadata accessor for AWDLActionFrame.Header;
          v67 = v274;
          goto LABEL_12;
        case 2u:
          v239 = *(v45 + 5);
          *&v416[16] = *(v45 + 4);
          v417 = v239;
          v418 = *(v45 + 6);
          v240 = *(v45 + 1);
          v413 = *v45;
          v414 = v240;
          v241 = *(v45 + 3);
          v415 = *(v45 + 2);
          *v416 = v241;
          v242 = *(v399 + 152);
          swift_checkMetadataState();
          v243 = v388;
          v242();
          v244 = swift_getAssociatedConformanceWitness();
          (*(v244 + 104))(&v413, v56, v244);
          sub_100187110(&v413);
          goto LABEL_86;
        case 3u:
          v245 = *(v45 + 3);
          v415 = *(v45 + 2);
          *v416 = v245;
          *&v416[10] = *(v45 + 58);
          v246 = *(v45 + 1);
          v413 = *v45;
          v414 = v246;
          v247 = *(v399 + 152);
          swift_checkMetadataState();
          v243 = v388;
          v247();
          v248 = swift_getAssociatedConformanceWitness();
          (*(v248 + 112))(&v413, v56, v248);
LABEL_86:
          (*(v57 + 8))(v243, v56);
          return;
        case 4u:
          v211 = v380;
          sub_10003DFE0(v45, v380, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          v212 = v408;
          v213 = *v408;
          v214 = *(v408 + *(*v408 + 528));
          *(v211 + 96) = v214;
          v215 = *(v211 + 104);
          v216 = __OFSUB__(v215, v214);
          v217 = v215 - v214;
          if (v216)
          {
            goto LABEL_161;
          }

          *(v211 + 104) = v217;
          v218 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
          v219 = v218;
          *(v211 + *(v218 + 160)) = v214;
          v220 = *(v212 + *(v213 + 536));
          v221 = v394;
          v222 = v389;
          if (v220 == 2)
          {
            v223 = Logger.logObject.getter();
            v224 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v223, v224))
            {
              v225 = swift_slowAlloc();
              *v225 = 0;
              _os_log_impl(&_mh_execute_header, v223, v224, "Cannot set same SSID for low latency statistics, same SSID value is unknown", v225, 2u);
            }
          }

          else
          {
            *(v211 + *(v218 + 148)) = v220 & 1;
          }

          v322 = *(*v212 + 544);
          swift_beginAccess();
          v323 = v212 + v322;
          v324 = v373;
          sub_100012400(v323, v373, &unk_100597330, &unk_100481FA0);
          v325 = (*(v222 + 48))(v324, 1, v221);
          v326 = v372;
          if (v325 == 1)
          {
            sub_100016290(v324, &unk_100597330, &unk_100481FA0);
            v327 = Logger.logObject.getter();
            v328 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v327, v328))
            {
              v329 = swift_slowAlloc();
              *v329 = 0;
              _os_log_impl(&_mh_execute_header, v327, v328, "Cannot set session duration for low latency statistics, session start time is unknown", v329, 2u);
            }
          }

          else
          {
            (*(v222 + 32))(v372, v324, v221);
            type metadata accessor for P2PTimer(0);
            v407 = v219;
            v330 = v221;
            v331 = v390;
            variable initialization expression of AWDLPeer.lastUpdated();
            v332 = v392;
            DispatchTime.distance(to:)();
            v333 = *(v222 + 8);
            v333(v331, v330);
            v333(v326, v330);
            (*(v387 + 40))(v380 + *(v407 + 20), v332, v391);
          }

          v334 = v388;
          v335 = *(v399 + 152);
          swift_checkMetadataState();
          v335();
          v336 = swift_getAssociatedConformanceWitness();
          v54 = v380;
          (*(v336 + 96))(v380, v56, v336);
          (*(v57 + 8))(v334, v56);
          v138 = type metadata accessor for AWDLStatistics.LowLatencyStatistics;
          goto LABEL_121;
        case 5u:
          v275 = *v45;
          v276 = v45[1];
          sub_10005DC58(qword_10058C850, &unk_100486F10);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000018;
          *(inited + 40) = 0x80000001004C2FC0;
          *(inited + 16) = xmmword_100483520;
          *(inited + 48) = v275;
          *(inited + 72) = &type metadata for UInt8;
          *(inited + 80) = 0xD00000000000001BLL;
          *(inited + 88) = 0x80000001004C2FE0;
          *(inited + 120) = &type metadata for UInt8;
          *(inited + 96) = v276;
          v278 = sub_1000827F8(inited);
          swift_setDeallocating();
          sub_10005DC58(&qword_10058BB40, &unk_100480E70);
          swift_arrayDestroy();
          *&v413 = sub_100030D3C();
          __chkstk_darwin();
          v279 = v402;
          v280 = v395;
          *(&v369 - 2) = v402;
          *(&v369 - 1) = v280;
          type metadata accessor for AWDLInterface.StateMonitoringClient(255, v279, v280, v281);
          v282 = type metadata accessor for Dictionary.Values();

          swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v282);
          *&v413 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v369 - 4) = v279;
          *(&v369 - 3) = v280;
          *(&v369 - 2) = v278;
          v283 = type metadata accessor for Array();
          swift_getWitnessTable(&protocol conformance descriptor for [A], v283);
          Sequence.forEach(_:)();

          return;
        case 6u:
          LODWORD(v407) = *v45;
          *&v409 = *(v45 + 1);
          v289 = *(v45 + 4);
          *&v413 = sub_100030D3C();
          __chkstk_darwin();
          v290 = v402;
          v291 = v395;
          *(&v369 - 2) = v402;
          *(&v369 - 1) = v291;
          type metadata accessor for AWDLInterface.StateMonitoringClient(255, v290, v291, v292);
          v293 = type metadata accessor for Dictionary.Values();

          swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v293);
          *&v413 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v369 - 4) = v290;
          *(&v369 - 3) = v291;
          *(&v369 - 16) = v407;
          *(&v369 - 4) = v289;
          *(&v369 - 3) = v409;
          v294 = type metadata accessor for Array();
          swift_getWitnessTable(&protocol conformance descriptor for [A], v294);
          Sequence.forEach(_:)();

          return;
        case 7u:
          LOBYTE(v415) = v45[32];
          v249 = *(v45 + 1);
          v413 = *v45;
          v414 = v249;
          v250 = v408;
          v251 = v401;
          if (v415 & 1) == 0 || (, , , , v252 = v386, WiFiInterface.preferences.getter(), v253 = Preferences.reportSoftErrorsWithTTR.getter(v37), (*(v370 + 8))(v252, v37), (v253))
          {
            v254 = *(*v250 + 96);
            swift_beginAccess();
            v255 = v250 + v254;
            v256 = v396;
            v257 = v400;
            (*(v251 + 16))(v396, v255, v400);
            v258 = swift_getAssociatedConformanceWitness();
            v259 = v393;
            (*(v258 + 144))(&v413, v257, v258);
            if (v259)
            {
              (*(v251 + 8))(v256, v257);
              sub_100476D28(&v413, v410);
              swift_errorRetain();
              v260 = Logger.logObject.getter();
              v261 = static os_log_type_t.error.getter();
              sub_1000B0D98(&v413);

              if (os_log_type_enabled(v260, v261))
              {
                v262 = swift_slowAlloc();
                v263 = swift_slowAlloc();
                v264 = swift_slowAlloc();
                v410[0] = v264;
                *v262 = 136315394;
                v265 = AWDLSoftErrorReport.description.getter();
                v267 = v266;
                sub_1000B0D98(&v413);
                v268 = sub_100002320(v265, v267, v410);

                *(v262 + 4) = v268;
                *(v262 + 12) = 2112;
                swift_errorRetain();
                v269 = _swift_stdlib_bridgeErrorToNSError();
                *(v262 + 14) = v269;
                *v263 = v269;
                _os_log_impl(&_mh_execute_header, v260, v261, "Failed while sending a soft error report: %s because: %@", v262, 0x16u);
                sub_100016290(v263, &qword_10058B780, &qword_100480AC0);

                sub_100002A00(v264);
              }

              else
              {

                sub_1000B0D98(&v413);
              }
            }

            else
            {
              (*(v251 + 8))(v256, v257);
              sub_100476D28(&v413, v410);
              v361 = Logger.logObject.getter();
              v362 = static os_log_type_t.default.getter();
              sub_1000B0D98(&v413);
              if (os_log_type_enabled(v361, v362))
              {
                v363 = swift_slowAlloc();
                v364 = swift_slowAlloc();
                v410[0] = v364;
                *v363 = 136315138;
                v365 = AWDLSoftErrorReport.description.getter();
                v367 = v366;
                sub_1000B0D98(&v413);
                v368 = sub_100002320(v365, v367, v410);

                *(v363 + 4) = v368;
                _os_log_impl(&_mh_execute_header, v361, v362, "Successfully reported soft error: %s", v363, 0xCu);
                sub_100002A00(v364);
              }

              else
              {

                sub_1000B0D98(&v413);
              }
            }

            return;
          }

          sub_1000B0D98(&v413);
          v90 = Logger.logObject.getter();
          LOBYTE(v319) = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v90, v319))
          {
            goto LABEL_154;
          }

          v320 = swift_slowAlloc();
          *v320 = 0;
          v321 = "Tap to radar disabled, skipping reporting";
          goto LABEL_153;
        case 8u:
          v295 = *(v45 + 2);
          v296 = *v45;
          swift_beginAccess();
          sub_10004B66C(v296 | (v295 << 16), v55);
          swift_endAccess();
          if ((*(v374 + 48))(v55, 1, v375) == 1)
          {
            sub_100016290(v55, &unk_10059B090, &unk_1004B1830);
            return;
          }

          v54 = v371;
          sub_10003DFE0(v55, v371, type metadata accessor for AWDLPeer);
          sub_10004B9FC(v54);
          v138 = type metadata accessor for AWDLPeer;
          goto LABEL_121;
        case 9u:
          v407 = *v45;
          v234 = *(v399 + 152);
          v235 = v45[8];
          swift_checkMetadataState();
          v236 = v388;
          v234();
          v237 = swift_getAssociatedConformanceWitness();
          v238 = v407;
          (*(v237 + 88))(v407, v235, v56, v237);

          (*(v58 + 8))(v236, v56);
          return;
        case 0xAu:
          sub_10003DFE0(v45, v54, type metadata accessor for AWDLIdleActivity);
          sub_1004582B8(v54);
          v138 = type metadata accessor for AWDLIdleActivity;
          goto LABEL_121;
        case 0xBu:
          v196 = v408;
          if ((*(v408 + *(*v408 + 768)) & 1) == 0)
          {
            v197 = *(*v408 + 96);
            swift_beginAccess();
            v198 = v401;
            v199 = v196 + v197;
            v200 = v53;
            v201 = v400;
            (*(v401 + 16))(v53, v199, v400);
            v202 = swift_getAssociatedConformanceWitness();
            v203 = (*(v202 + 32))(v201, v202);
            (*(v198 + 8))(v200, v201);
            sub_100450EC0(v203 & 1);
            v204 = sub_10044D224(0);
            if (v204)
            {
              v205 = v204;
              v410[0] = sub_100030D3C();
              __chkstk_darwin();
              v206 = v402;
              v207 = v395;
              *(&v369 - 2) = v402;
              *(&v369 - 1) = v207;
              type metadata accessor for AWDLInterface.StateMonitoringClient(255, v206, v207, v208);
              v209 = type metadata accessor for Dictionary.Values();

              swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v209);
              v410[0] = Sequence.filter(_:)();
              __chkstk_darwin();
              *(&v369 - 4) = v206;
              *(&v369 - 3) = v207;
              *(&v369 - 2) = v205;
              v210 = type metadata accessor for Array();
              swift_getWitnessTable(&protocol conformance descriptor for [A], v210);
              Sequence.forEach(_:)();
            }
          }

          return;
        case 0xCu:
          v226 = v408;
          v227 = *(*v408 + 96);
          swift_beginAccess();
          v228 = v401;
          v229 = v226 + v227;
          v230 = v53;
          v231 = v400;
          (*(v401 + 16))(v53, v229, v400);
          v232 = swift_getAssociatedConformanceWitness();
          v233 = (*(v232 + 56))(v231, v232);
          (*(v228 + 8))(v230, v231);
          sub_100030B20(v233);
          return;
        case 0xDu:
          *&v413 = sub_100030D3C();
          __chkstk_darwin();
          v284 = v402;
          v285 = v395;
          *(&v369 - 2) = v402;
          *(&v369 - 1) = v285;
          type metadata accessor for AWDLInterface.StateMonitoringClient(255, v284, v285, v286);
          v287 = type metadata accessor for Dictionary.Values();

          swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v287);
          *&v413 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v369 - 2) = v284;
          *(&v369 - 1) = v285;
          v288 = type metadata accessor for Array();
          swift_getWitnessTable(&protocol conformance descriptor for [A], v288);
          Sequence.forEach(_:)();

          return;
        case 0xEu:
          v181 = v408;
          v182 = *(*v408 + 752);
          swift_beginAccess();
          v183 = *(v181 + v182);
          v184 = 1 << *(v183 + 32);
          v185 = -1;
          if (v184 < 64)
          {
            v185 = ~(-1 << v184);
          }

          v186 = v185 & *(v183 + 56);
          v187 = (v184 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          i = 0;
          v189 = v393;
          if (v186)
          {
            goto LABEL_67;
          }

          break;
        default:
          v59 = *v45;
          v60 = v408;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 67109120;
            *(v63 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v61, v62, "Realtime mode updated %{BOOL}d", v63, 8u);
          }

          v64 = *(*v60 + 488);
          v65 = *(v60 + v64);
          *(v60 + v64) = v59;
          sub_10044DFD4(v65);
          return;
      }

      while (1)
      {
        v190 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_160;
        }

        if (v190 >= v187)
        {
          break;
        }

        v186 = *(v183 + 56 + 8 * v190);
        ++i;
        if (v186)
        {
          for (i = v190; ; v190 = i)
          {
            v191 = __clz(__rbit64(v186));
            v186 &= v186 - 1;
            v192 = *(v183 + 48) + 24 * (v191 | (v190 << 6));
            v193 = *v192;
            v194 = *(v192 + 8);
            v195 = *(v192 + 16);
            LOBYTE(v192) = *(v192 + 17);
            *&v413 = v193;
            *(&v413 + 1) = v194;
            LOBYTE(v414) = v195;
            BYTE1(v414) = v192;

            sub_100458124(&v413, v181);

            if (!v186)
            {
              break;
            }

LABEL_67:
            ;
          }
        }
      }

      v412 = _swiftEmptyArrayStorage;
      v297 = *(*v181 + 760);
      swift_beginAccess();

      v299 = sub_100474558(v298, &v412);

      *(v181 + v297) = v299;

      v300 = v412;
      if (*(v412 + 2))
      {
        v301 = *(*v181 + 96);
        swift_beginAccess();
        v302 = v400;
        v303 = v401;
        v304 = v397;
        (*(v401 + 16))(v397, v181 + v301, v400);
        *&v413 = 0;
        *(&v413 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v305._countAndFlagsBits = 0xD000000000000035;
        v305._object = 0x80000001004C3000;
        String.append(_:)(v305);
        v306 = *(v300 + 2);
        v307 = _swiftEmptyArrayStorage;
        *&v409 = v300;
        if (v306)
        {
          v411 = _swiftEmptyArrayStorage;
          sub_1000C0464(0, v306, 0);
          v307 = v411;
          v308 = v300 + 49;
          do
          {
            v309 = *(v308 - 17);
            v310 = *(v308 - 9);
            v311 = *(v308 - 1);

            DNSRecords.Identifier.description.getter(v309, v310, v311);
            v313 = v312;
            v315 = v314;

            v411 = v307;
            v317 = v307[2];
            v316 = v307[3];
            if (v317 >= v316 >> 1)
            {
              sub_1000C0464((v316 > 1), v317 + 1, 1);
              v307 = v411;
            }

            v308 += 24;
            v307[2] = v317 + 1;
            v318 = &v307[2 * v317];
            v318[4] = v313;
            v318[5] = v315;
            --v306;
          }

          while (v306);
          v302 = v400;
          v303 = v401;
          v304 = v397;
        }

        v411 = v307;
        sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
        sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0, &protocol conformance descriptor for [A]);
        v356 = BidirectionalCollection<>.joined(separator:)();
        v358 = v357;

        v359._countAndFlagsBits = v356;
        v359._object = v358;
        String.append(_:)(v359);

        v360 = swift_getAssociatedConformanceWitness();
        v414 = 0uLL;
        LOBYTE(v415) = 0;
        (*(v360 + 144))(&v413, v302, v360);
        if (v189)
        {

          (*(v303 + 8))(v304, v302);
        }

        else
        {
          (*(v303 + 8))(v304, v302);
        }
      }

      return;
    }

    v66 = type metadata accessor for DriverEvent;
    v67 = v45;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v68 = v408;
    if (EnumCaseMultiPayload == 5)
    {
      v69 = *(*v408 + 96);
      swift_beginAccess();
      v70 = v400;
      v71 = v401;
      v72 = v398;
      (*(v401 + 16))(v398, &v68[v69], v400);
      v73 = swift_getAssociatedConformanceWitness();
      v74 = (*(v73 + 64))(v70, v73);
      (*(v71 + 8))(v72, v70);
      if ((v74 & 0x1000000000000) != 0)
      {
        v74 = WiFiInterface.macAddress.getter();
      }

      v75 = WiFiInterface.macAddress.getter();
      if (static WiFiAddress.!= infix(_:_:)(v74 & 0xFFFFFFFFFFFFLL, v75 & 0xFFFFFFFFFFFFLL))
      {
        swift_retain_n();
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v410[0] = swift_slowAlloc();
          *v78 = 136315394;
          v79 = WiFiAddress.description.getter(v74 & 0xFFFFFFFFFFFFLL);
          v81 = sub_100002320(v79, v80, v410);

          *(v78 + 4) = v81;
          *(v78 + 12) = 2080;
          v82 = WiFiInterface.macAddress.getter();

          v83 = WiFiAddress.description.getter(v82 & 0xFFFFFFFFFFFFLL);
          v85 = v84;

          v86 = sub_100002320(v83, v85, v410);

          *(v78 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v76, v77, "MAC address changed event with unexpected MAC address %s, expected %s", v78, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v101 = v397;
        WiFiInterface.$macAddress.getter(v397);
        v102 = v101 + *(v396 + 40);
        *v102 = v74;
        *(v102 + 2) = BYTE2(v74);
        *(v102 + 3) = BYTE3(v74);
        *(v102 + 4) = BYTE4(v74);
        *(v102 + 5) = BYTE5(v74);
        WiFiInterface.$macAddress.setter(v101);
        sub_10005DC58(&unk_10059B0B0, &qword_100487150);
        v103 = swift_allocObject();
        v409 = xmmword_100480F40;
        *(v103 + 16) = xmmword_100480F40;
        v104 = WiFiInterface.macAddress.getter();
        *(v103 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v104 & 0xFFFFFFFFFFFFLL);
        *(v103 + 40) = v105;
        *(v103 + 48) = v106;
        *(v103 + 56) = v107;
        WiFiInterface.ipv6Addresses.setter(v103);
        v108 = *(*v68 + 624);
        v109 = *&v68[v108];
        if (v109)
        {

          v110 = WiFiInterface.macAddress.getter();
          (*(*v109 + 264))(v110 & 0xFFFFFFFFFFFFLL);

          v111 = *&v68[v108];
          if (v111)
          {
            v112 = swift_allocObject();
            *(v112 + 16) = v409;

            v113 = WiFiInterface.macAddress.getter();
            *(v112 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v113 & 0xFFFFFFFFFFFFLL);
            *(v112 + 40) = v114;
            *(v112 + 48) = v115;
            *(v112 + 56) = v116;
            (*(*v111 + 360))(v112);
          }
        }
      }
    }

    return;
  }

  v50 = v408;
  if (EnumCaseMultiPayload == 3)
  {
    if (*v45)
    {
      *(v408 + *(*v408 + 512)) = 1;
      swift_unownedRetainStrong();
      v51 = sub_10001A54C();

      v52 = v51 & 1;
    }

    else
    {
      sub_10004D020(EnumCaseMultiPayload, v47, v48, v49);
      sub_100375F6C();

      *(v50 + *(*v50 + 512)) = 0;
      v52 = 0;
    }

    WiFiInterface.linkState.setter(v52);
    return;
  }

  v87 = *v45;
  v88 = *v408;
  if (v87 > 2)
  {
    if (v87 != 3)
    {
      if (v87 != 4)
      {
        v142 = *(v88 + 160);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&_mh_execute_header, v143, v144, "Driver interface was ready", v145, 2u);
        }

        *(v50 + *(*v50 + 704)) = 0;

        v146 = WiFiInterface.linkState.getter();
        if (v146)
        {
          v147 = v377;
          WiFiInterface.$linkState.getter(v377);
          MutableDriverProperty.restore()();
          sub_100016290(v147, &unk_10059B0C0, &unk_1004AD460);
        }

        else
        {
          WiFiInterface.linkState.setter(1);
        }

        v161 = v397;
        WiFiInterface.$macAddress.getter(v397);
        MutableDriverProperty.restore()();
        sub_100016290(v161, &unk_10059B160, &qword_1004B3050);
        v162 = v381;
        WiFiInterface.$ipv6Addresses.getter(v381);
        MutableDriverProperty.restore()();
        sub_100016290(v162, &unk_10059A6C0, &qword_1004AD478);
        v163 = WiFiInterface.linkState.setter(v146 & 1);
        v167 = *(*v50 + 624);
        v168 = *(v50 + v167);
        if (v168)
        {
          v169 = (v168 + *(*v168 + 104));
          v171 = *v169;
          v170 = v169[1];
          *(v50 + v167) = 0;

          v172 = v393;
          sub_10045291C();
          if (v172)
          {

            swift_errorRetain();
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              *&v409 = v142;
              v177 = v176;
              v178 = swift_slowAlloc();
              *&v413 = v178;
              *v175 = 136315394;
              v179 = sub_100002320(v171, v170, &v413);

              *(v175 + 4) = v179;
              *(v175 + 12) = 2112;
              swift_errorRetain();
              v180 = _swift_stdlib_bridgeErrorToNSError();
              *(v175 + 14) = v180;
              *v177 = v180;
              _os_log_impl(&_mh_execute_header, v173, v174, "Failed to recover the low latency interface %s: %@", v175, 0x16u);
              sub_100016290(v177, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v178);
            }

            else
            {
            }

            v172 = 0;
          }

          else
          {
          }
        }

        else
        {
          v172 = v393;
        }

        sub_10004D020(v163, v164, v165, v166);
        sub_100374938();

        if (*(v50 + *(*v50 + 768)) == 1)
        {
          sub_10044B904();
          if (v172)
          {
            swift_errorRetain();
            v337 = Logger.logObject.getter();
            v338 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v337, v338))
            {
              v339 = swift_slowAlloc();
              v340 = swift_slowAlloc();
              *v339 = 138412290;
              swift_errorRetain();
              v341 = _swift_stdlib_bridgeErrorToNSError();
              *(v339 + 4) = v341;
              *v340 = v341;
              _os_log_impl(&_mh_execute_header, v337, v338, "Failed to suspend AWDL after interface recovery: %@", v339, 0xCu);
              sub_100016290(v340, &qword_10058B780, &qword_100480AC0);
            }

            else
            {
            }
          }
        }

        v342 = *(*v50 + 552);
        swift_beginAccess();
        v343 = *(v50 + v342);
        v344 = 1 << *(v343 + 32);
        v345 = -1;
        if (v344 < 64)
        {
          v345 = ~(-1 << v344);
        }

        v346 = v345 & *(v343 + 56);
        v347 = (v344 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v348 = 0;
        while (v346)
        {
          v349 = v348;
LABEL_137:
          v350 = __clz(__rbit64(v346));
          v346 &= v346 - 1;
          v410[0] = *(*(v343 + 48) + ((v349 << 9) | (8 * v350)));
          sub_10045B758(v410);
        }

        while (1)
        {
          v349 = v348 + 1;
          if (__OFADD__(v348, 1))
          {
            break;
          }

          if (v349 >= v347)
          {

            swift_beginAccess();
            type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v402, v399, v351);
            WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
            swift_endAccess();
            if (v352)
            {
              v353 = Logger.logObject.getter();
              v354 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v353, v354))
              {
                v355 = swift_slowAlloc();
                *v355 = 0;
                _os_log_impl(&_mh_execute_header, v353, v354, "Failed to clear all previous peer presence after interface recovery", v355, 2u);
              }
            }

            else
            {
              sub_10045B94C(sub_10045B91C, 0);
            }

            sub_10045BBA0();
            *(v50 + *(*v50 + 664)) = 0;
            return;
          }

          v346 = *(v343 + 56 + 8 * v349);
          ++v348;
          if (v346)
          {
            v348 = v349;
            goto LABEL_137;
          }
        }

        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
        JUMPOUT(0x100027510);
      }

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Driver interface was powered on", v98, 2u);
      }

      *(v50 + *(*v50 + 680)) = 1;
      v99 = *v50;
      if (*(v50 + *(*v50 + 664)) == 1 && *(v50 + *(*v50 + 672)) == 1)
      {
        v100 = v376;
        *v376 = 5;
        swift_storeEnumTagMultiPayload();
        sub_100023E94(v100);
        sub_1000473F0(v100, type metadata accessor for DriverEvent);
        v99 = *v50;
      }

      v95 = *(v99 + 704);
LABEL_36:
      *(v50 + v95) = 0;

      return;
    }

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "Driver interface was re-created", v137, 2u);
    }

    *(v50 + *(*v50 + 672)) = 1;
    if (*(v50 + *(*v50 + 664)) != 1 || *(v50 + *(*v50 + 680)) != 1)
    {
      type metadata accessor for P2PTimer(0);
      v148 = v390;
      variable initialization expression of AWDLPeer.lastUpdated();
      *v392 = 700;
      v407 = *(v387 + 104);
      (v407)();
      *&v409 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v149 = swift_allocObject();
      v406 = v149;
      swift_weakInit();
      v150 = v389;
      v151 = v384;
      v152 = v394;
      (*(v389 + 16))(v384, v148, v394);
      v153 = (*(v150 + 80) + 40) & ~*(v150 + 80);
      v154 = swift_allocObject();
      v155 = v395;
      *(v154 + 2) = v402;
      *(v154 + 3) = v155;
      *(v154 + 4) = v149;
      (*(v150 + 32))(&v154[v153], v151, v152);
      v156 = v385;
      v157 = v391;
      v158 = v407;
      (v407)(v385, enum case for DispatchTimeInterval.never(_:), v391);
      v159 = v386;
      *v386 = 100;
      (v158)(v159, enum case for DispatchTimeInterval.milliseconds(_:), v157);
      swift_allocObject();
      v160 = v409;

      v133 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v392, v160, v156, v159, sub_100476958, v154);
      (*(v150 + 8))(v390, v394);

      v134 = *(*v50 + 704);
      goto LABEL_58;
    }

    v54 = v376;
    *v376 = 5;
    swift_storeEnumTagMultiPayload();
    sub_100023E94(v54);
    v138 = type metadata accessor for DriverEvent;
LABEL_121:
    v66 = v138;
    v67 = v54;
LABEL_12:
    sub_1000473F0(v67, v66);
    return;
  }

  if (!*v45)
  {
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Watchdog reset in progress", v119, 2u);
    }

    if (*(v50 + *(*v50 + 688)))
    {
      return;
    }

    type metadata accessor for P2PTimer(0);
    v120 = v390;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v392 = 10;
    v407 = *(v387 + 104);
    (v407)();
    *&v409 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v121 = swift_allocObject();
    v406 = v121;
    swift_weakInit();
    v122 = v389;
    v123 = v384;
    v124 = v394;
    (*(v389 + 16))(v384, v120, v394);
    v125 = (*(v122 + 80) + 40) & ~*(v122 + 80);
    v126 = swift_allocObject();
    v127 = v395;
    *(v126 + 2) = v402;
    *(v126 + 3) = v127;
    *(v126 + 4) = v121;
    (*(v122 + 32))(&v126[v125], v123, v124);
    v128 = v385;
    v129 = v391;
    v130 = v407;
    (v407)(v385, enum case for DispatchTimeInterval.never(_:), v391);
    v131 = v386;
    *v386 = 100;
    (v130)(v131, enum case for DispatchTimeInterval.milliseconds(_:), v129);
    swift_allocObject();
    v132 = v409;

    v133 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v392, v132, v128, v131, sub_100476A3C, v126);
    (*(v122 + 8))(v390, v394);

    v134 = *(*v50 + 688);
LABEL_58:
    *(v50 + v134) = v133;

    return;
  }

  if (v87 != 1)
  {
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Driver interface was removed", v141, 2u);
    }

    *(v50 + *(*v50 + 664)) = 1;
    *(v50 + *(*v50 + 680)) = 0;
    *(v50 + *(*v50 + 672)) = 0;
    return;
  }

  v89 = *(v408 + *(v88 + 688));
  v90 = Logger.logObject.getter();
  if (v89)
  {
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Watchdog reset completed", v92, 2u);
    }

    type metadata accessor for P2PTimer(0);
    v93 = v379;
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v389 + 56))(v93, 0, 1, v394);
    v94 = *(*v50 + 696);
    swift_beginAccess();
    sub_1000B1B78(v93, v50 + v94, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    v95 = *(*v50 + 688);
    goto LABEL_36;
  }

  v319 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v90, v319))
  {
    v320 = swift_slowAlloc();
    *v320 = 0;
    v321 = "Watchdog reset completed without a watchdog being in progress";
LABEL_153:
    _os_log_impl(&_mh_execute_header, v90, v319, v321, v320, 2u);
  }

LABEL_154:
}

uint64_t sub_10002754C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000275E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000276D8()
{
  v1 = *(v0 + 5);
  if ((v1 - 2) >= 5)
  {
    v2 = *(v0 + 4);
    if (v2 == 2)
    {
      if (qword_10058AAC8 != -1)
      {
        swift_once();
      }

      v3 = *(off_100591880 + 2);
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          v5 = off_100591880 + 16 * i + 32;
          v6 = v5[1];
          if (*v5 >= 2u && (v6 - 2) > 4u)
          {
            v8 = *(v5 + 1);
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = 0;
              v11 = v8 + 32;
              do
              {
                v12 = v11 + 16 * v10++;
                v13 = *(v12 + 8);
                v14 = *(v13 + 16);
                v15 = (v13 + 32);
                while (v14)
                {
                  v16 = *v15++;
                  --v14;
                  if (v16 == *v0)
                  {
                    goto LABEL_51;
                  }
                }
              }

              while (v10 != v9);
            }
          }
        }
      }

      _StringGuts.grow(_:)(58);
      v47._object = 0x80000001004BD410;
      v47._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v47);
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 0x7A48472036;
      v50._object = 0xE500000000000000;
      String.append(_:)(v50);
      v51._countAndFlagsBits = 32;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      if (v1)
      {
        v45 = 0x7A484D202B3034;
      }

      else
      {
        v45 = 0x7A484D202D3034;
      }

      if (v1)
      {
        v46 = 0x7A484D202D3034;
      }

      else
      {
        v46 = 0x7A484D202B3034;
      }

      goto LABEL_71;
    }

    if (qword_10058AAC0 != -1)
    {
      v55 = *(v0 + 4);
      swift_once();
      v2 = v55;
    }

    v17 = *(off_100591878 + 2);
    if (!v17)
    {
LABEL_53:
      v36 = v2;
      _StringGuts.grow(_:)(58);
      v37._object = 0x80000001004BD410;
      v37._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v37);
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v1;
      String.append(_:)(v38);

      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      if (v36)
      {
        v41 = 0x7A48472035;
      }

      else
      {
        v41 = 0x7A484720342E32;
      }

      if (v36)
      {
        v42 = 0xE500000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      v43 = v42;
      String.append(_:)(*&v41);

      v44._countAndFlagsBits = 32;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      if (v39)
      {
        v45 = 0x7A484D202B3034;
      }

      else
      {
        v45 = 0x7A484D202D3034;
      }

      if (v39)
      {
        v46 = 0x7A484D202D3034;
      }

      else
      {
        v46 = 0x7A484D202B3034;
      }

LABEL_71:
      v52 = 0xE700000000000000;
      String.append(_:)(*&v45);

      v53._countAndFlagsBits = 544370464;
      v53._object = 0xE400000000000000;
      String.append(_:)(v53);
      v54._countAndFlagsBits = v46;
      v54._object = 0xE700000000000000;
      String.append(_:)(v54);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v18 = 0;
    v6 = (v1 & 1) == 0;
    v19 = off_100591878 + 32;
    if (v2)
    {
      v20 = 16;
    }

    else
    {
      v20 = 4;
    }

    while (1)
    {
      v21 = &v19[16 * v18];
      v22 = v21[2];
      v23 = *(v21 + 1);
      v24 = v21[1];
      if (v24)
      {
        if (v24 == 1 && v20 == 16)
        {
LABEL_33:
          if ((v22 - 2) >= 5u && ((v22 ^ v1) & 1) == 0)
          {
            v25 = *(v23 + 16);
            v26 = (v23 + 32);
            while (v25)
            {
              v27 = *v26++;
              --v25;
              if (v27 == *v0)
              {
                return;
              }
            }
          }
        }
      }

      else if (v20 == 4)
      {
        goto LABEL_33;
      }

      if (++v18 == v17)
      {
        v28 = 0;
        while (1)
        {
          v29 = &v19[16 * v28];
          v30 = v29[2];
          v31 = *(v29 + 1);
          v32 = v29[1];
          if (v32)
          {
            if (v32 == 1 && v20 == 16)
            {
LABEL_46:
              if (v30 - 2) >= 5u && ((v30 ^ v1))
              {
                v33 = *(v31 + 16);
                v34 = (v31 + 32);
                while (v33)
                {
                  v35 = *v34++;
                  --v33;
                  if (v35 == *v0)
                  {
LABEL_51:
                    *(v0 + 5) = v6;
                    return;
                  }
                }
              }
            }
          }

          else if (v20 == 4)
          {
            goto LABEL_46;
          }

          if (++v28 == v17)
          {
            goto LABEL_53;
          }
        }
      }
    }
  }
}

char *sub_100027BF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_100027CF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10030E5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100027D10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 1 && ((*(a7 + 56))(a6, a7) & 1) != 0)
  {
    (*(a7 + 32))(8, a6, a7);
    v13 = __chkstk_darwin();
    (*(a7 + 24))(0, 2, sub_10002D4F0, v13);
  }

  if (a3 > 0 || (v14 = (*(a7 + 56))(a6, a7), a2 >= 1) && (v14 & 1) == 0)
  {
    v15 = __chkstk_darwin();
    v14 = (*(a7 + 24))(1, 2, sub_1003F0E4C, v15);
  }

  if ((a4 & 0xFF00000000) != 0x300000000)
  {
    v16 = TimeBitmap.all.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    if ((a4 & 0xFE00000000) != 0)
    {
      v14 = RadioSchedule.reserve(_:with:)(v17, v18, v19, 9, a6, a7);
    }

    else
    {
      v14 = RadioSchedule.set(_:to:with:)(v17, v18, v19, a4 & 0xFF01FFFFFFFFLL, 1, 9, a6, a7);
    }
  }

  if (HIBYTE(a5) == 6 || a5 >> 57 == 0 || BYTE6(a5) == 0 || BYTE6(a5) == 4)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v24 = a5 & 0xFF00000000;
  if ((a5 & 0xFF00000000) == 0)
  {
    v14 = (*(a7 + 32))(1, a6, a7);
    LOBYTE(a5) = v14;
    if (BYTE6(a5) == 4)
    {
      return v14;
    }

LABEL_28:
    if (BYTE6(a5) <= 1u)
    {
      if (!BYTE6(a5))
      {
        v25 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v26 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v27 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v25, v25, v25, *v26);
        return RadioSchedule.set(_:to:with:)(v27, v28, v29, v23, 2, a5, a6, a7);
      }

      v37 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v38 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v39 = v37;
      v40 = v37;
LABEL_40:
      v27 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v39, v40, v38, v38);
      return RadioSchedule.set(_:to:with:)(v27, v28, v29, v23, 2, a5, a6, a7);
    }

    if (BYTE6(a5) == 2)
    {
      if (((*(a7 + 56))(a6, a7) & 1) == 0)
      {
        v42 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v43 = *TimeBitmap.Slot.OF.unsafeMutableAddressor();
        v38 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v39 = v42;
        v40 = v43;
        goto LABEL_40;
      }

      if (v24)
      {
        v30 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v31 = *v30;
        v32 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v33 = *v30;
        v34 = *v32;
        v35 = v31;
        v36 = *v30;
      }

      else
      {
        v46 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v34 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v35 = v46;
        v33 = v34;
        v36 = v34;
      }

      v27 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v35, v34, v33, v36);
    }

    else
    {
      if (((*(a7 + 56))(a6, a7) & 1) == 0)
      {
        v44 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
        v47 = *v44;
        v48 = v44[2];
        v45 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
        TimeBitmap.SlotsView.formUnion(_:)(*v45, v45[1], v45[2]);
        v27 = TimeBitmap.inverted()(v47, *(&v47 + 1), v48);
        return RadioSchedule.set(_:to:with:)(v27, v28, v29, v23, 2, a5, a6, a7);
      }

      if (v24)
      {
        v41 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      }

      else
      {
        v41 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      }

      v27 = TimeBitmap.inverted()(*v41, v41[1], v41[2]);
    }

    LOBYTE(a5) = 1;
    return RadioSchedule.set(_:to:with:)(v27, v28, v29, v23, 2, a5, a6, a7);
  }

  LOBYTE(a5) = 1;
  if (BYTE6(a5) != 4)
  {
    goto LABEL_28;
  }

  return v14;
}

uint64_t DispatchTimeInterval.description.getter()
{
  v0 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin();
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v6 = *(v18 - 8);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.UnitsFormatStyle();
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100028EF8();
  v17[1] = 1000000000 * v13;
  v17[2] = (v13 >> 63) & 0xFFFFFFFFC4653600;
  v17[0] = (v13 * 0x3B9ACA00uLL) >> 64;
  sub_10005DC58(&qword_10058FEE0, &unk_100493990);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004938F0;
  static Duration.UnitsFormatStyle.Unit.days.getter();
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
  static Duration.UnitsFormatStyle.Unit.microseconds.getter();
  static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
  sub_100029108(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v23 + 8))(v2, v24);
  (*(v21 + 8))(v5, v22);
  (*(v6 + 8))(v8, v18);
  sub_100029568(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v15 = v19;
  Duration.formatted<A>(_:)();
  (*(v20 + 8))(v12, v15);
  return v25;
}

uint64_t sub_100028650(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 2)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3(result);
      v9 = 0;
      v10 = v8;
      return v10 | (v9 << 16);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 2)
      {
        goto LABEL_11;
      }

LABEL_12:
      v10 = 0;
      v9 = 1;
      return v10 | (v9 << 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100028704(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    return a1 | (v18 << 8);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = a1 >> 8;
      return a1 | (v18 << 8);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void sub_1000288C0(int a1)
{
  v2 = v1;
  v55 = a1;
  v53 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  __chkstk_darwin();
  v54 = &v46 - v3;
  v4 = type metadata accessor for DispatchTimeInterval();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin();
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v7 = &v46 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  __chkstk_darwin();
  v15 = &v46 - v14;
  v16 = *(*v2 + 520);
  swift_beginAccess();
  sub_100012400(v2 + v16, v7, &unk_100597330, &unk_100481FA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100016290(v7, &unk_100597330, &unk_100481FA0);
LABEL_7:
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 16777472;
      v31[4] = v55;
      _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring scan end event because no scan in progress with status: %hhu", v31, 5u);
    }

    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  if ((sub_10001ADEC() & 1) == 0)
  {
    (*(v9 + 8))(v15, v8);
    goto LABEL_7;
  }

  v17 = *(v9 + 16);
  v49 = v15;
  v17(v13, v15, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56[0] = v47;
    *v20 = 136315394;
    type metadata accessor for P2PTimer(0);
    v46 = v18;
    variable initialization expression of AWDLPeer.lastUpdated();
    v21 = v50;
    DispatchTime.distance(to:)();
    v22 = *(v9 + 8);
    v48 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v11, v8);
    v23 = DispatchTimeInterval.description.getter();
    v24 = v19;
    v26 = v25;
    (*(v51 + 8))(v21, v52);
    v22(v13, v8);
    v27 = sub_100002320(v23, v26, v56);

    *(v20 + 4) = v27;
    *(v20 + 12) = 256;
    *(v20 + 14) = v55;
    v28 = v46;
    _os_log_impl(&_mh_execute_header, v46, v24, "Infra scan complete (duration: %s), status: %hhu)", v20, 0xFu);
    sub_100002A00(v47);
  }

  else
  {

    v22 = *(v9 + 8);
    v48 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v13, v8);
  }

  *(v2 + *(*v2 + 536)) = 0;

  sub_10001B3C8(0);
  v32 = v2 + *(*v2 + 592);
  swift_beginAccess();
  v33 = v53;
  v34 = v32 + *(v53 + 36);
  v35 = *(v34 + 16);
  v36 = *(v34 + 20);
  v38 = *(v34 + 24);
  v37 = *(v34 + 28);
  v39 = v32;
  v40 = v54;
  sub_100012400(v39, v54, &qword_1005995E8, &unk_1004B3040);
  v41 = v40 + *(v33 + 36);
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 20) = v36;
  *(v41 + 16) = v35;
  *(v41 + 24) = v38;
  *(v41 + 28) = v37;
  sub_10001C638(v40);
  v22(v49, v8);
  v42 = *(*v2 + 544);
  v43 = *(v2 + v42);
  v44 = __CFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v42) = v45;
  }
}

unint64_t sub_100028EF8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
LABEL_7:
    v10 = v8 * v9;
    v11 = (v8 * v9) >> 64;
    v12 = v8 <= 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    if (v11 == v10 >> 63)
    {
      return v10;
    }

    else
    {
      return v13;
    }
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else
  {
    if (v7 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void *sub_100029108(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v29 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_10058B380, &unk_10047F4B0);
    v8 = static _SetStorage.allocate(capacity:)();
    v9 = 0;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v34 = v11;
    v35 = v8 + 56;
    v12 = *(v10 + 64);
    v31 = v7;
    v32 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v30 = (v10 + 16);
    while (1)
    {
      v33 = v9;
      v34(v36, v32 + v13 * v9, v2);
      sub_10001F8AC(&qword_10058B388, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v8 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        while (1)
        {
          v21 = v10;
          v34(v5, *(v8 + 48) + v17 * v13, v2);
          sub_10001F8AC(&unk_10058B390, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = *v14;
          (*v14)(v5, v2);
          if (v22)
          {
            break;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v10 = v21;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_8;
          }
        }

        v23(v36, v2);
        v10 = v21;
      }

      else
      {
LABEL_8:
        v24 = v36;
        *(v35 + 8 * v18) = v20 | v19;
        result = (*v30)(*(v8 + 48) + v17 * v13, v24, v2);
        v26 = *(v8 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
          return result;
        }

        *(v8 + 16) = v28;
      }

      v9 = v33 + 1;
      if (v33 + 1 == v31)
      {
        return v8;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t P2PTimer.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 8);
  v4(v1 + v2, v3);

  v4(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v3);
  v4(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_100029568(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000295B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UUID();
  __chkstk_darwin();
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v14)
  {
    dispatch thunk of Identifiable.id.getter();
    v19[3] = a2;
    v19[4] = a3;
    v17 = sub_1000297D4(v19);
    (*(*(a2 - 8) + 16))(v17, a1, a2);
    swift_beginAccess();
    sub_100029838(v19, v8);
    swift_endAccess();
    return sub_10002A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1000297D4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100029838(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100029954(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10002A264(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_100016290(a1, &unk_100597470, &unk_1004B07E0);
    sub_1003AD518(a2, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_100016290(v9, &unk_100597470, &unk_1004B07E0);
  }

  return result;
}

uint64_t sub_100029954(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000299A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000299F0(uint64_t a1)
{
  sub_10002AA40(v14);
  v3 = v16[0];
  v4 = v15 | (*v16 << 32);
  v10[0] = v14[0];
  v10[1] = v14[1];
  v11 = v15;
  *v13 = *&v16[1];
  *&v13[15] = *&v16[16];
  v12 = v16[0];
  sub_10002ACB8(v10);
  v5 = *(a1 + 36);
  if (v5 << 32 == 0x300000000)
  {
    LOBYTE(v5) = 3;
  }

  v6 = (v4 & 0xFF00000000) == 0x300000000 || v3 == 3;
  if (v6)
  {
    if (v5 != 3)
    {
      return sub_10002A698();
    }
  }

  else
  {
    v6 = v5 == 3;
    v7 = (0x801004u >> (8 * v5)) & 0xFFC;
    if (v6 || ((0x801004u >> (8 * BYTE4(v4))) & 0xFFC) != v7)
    {
      return sub_10002A698();
    }
  }

  if (((*(a1 + 24) | (*(a1 + 28) << 32)) & 0xFF00000000) != 0x300000000) != (*(v1 + qword_1005960F0 + 28) << 32 == 0x300000000) && (sub_10002B29C(*(v1 + qword_1005960F0 + 40), *(a1 + 40)))
  {
    return sub_10002B38C();
  }

  return sub_10002A698();
}

void *sub_100029B34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_100029B78()
{
  v1 = v0;
  v2 = sub_1000303DC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = *v0;
  v7 = v2 + 32;
  v87 = _swiftEmptyArrayStorage;
  v85 = v2;
  v86 = v1;
  v83 = v6;
  v84 = *(v2 + 16);
  v82 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      goto LABEL_60;
    }

    if (*(v6 + 16))
    {
      mapID = *(v7 + v5);
      v8 = sub_10002D078(mapID);
      if (v9)
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {

      return v87;
    }
  }

  v89 = v5;
  v10 = *(*(v6 + 56) + 8 * v8);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v18 = &_swiftEmptyDictionarySingleton;
    v19 = v107;
    v20 = v105;
LABEL_28:
    v105 = v20;
    v107 = v19;
    v42 = *(v18 + 2);
    if (v42)
    {
      sub_10005DC58(&qword_1005987D0, &qword_1004B0740);
      v43 = swift_allocObject();
      v44 = j__malloc_size(v43);
      v45 = v44 - 32;
      if (v44 < 32)
      {
        v45 = v44 - 25;
      }

      v43[2] = v42;
      v43[3] = 2 * (v45 >> 3);
      v46 = sub_100315A68(&v109, (v43 + 4), v42, v18);
      v47 = v109;
      v48 = v18;
      swift_bridgeObjectRetain_n();
      sub_1000E290C(v47);
      if (v46 != v42)
      {
        goto LABEL_61;
      }

      v109 = v43;
      sub_100314F10(&v109);

      v49 = *(v109 + 2);
      if (v49)
      {
        v50 = v109 + 37;
        v51 = _swiftEmptyArrayStorage;
        do
        {
          v56 = *(v50 - 5) | (*(v50 - 1) << 32) | (*v50 << 40);
          v57 = NANBitmap.Channel.init(channel:)(v56);
          if ((v58 & 0x100) == 0)
          {
            if (*(v48 + 2))
            {
              v59 = v57;
              v60 = v58;
              v61 = sub_1003E09BC(v56);
              if (v62)
              {
                v63 = (*(v48 + 7) + 24 * v61);
                v64 = *v63;
                v65 = v63[1];
                v66 = v63[2];
                v67 = TimeBitmap.zero.unsafeMutableAddressor();
                if (!static TimeBitmap.__derived_struct_equals(_:_:)(v64, v65, v66, *v67, v67[1], v67[2]))
                {
                  v68 = TimeBitmap.nanBitmap.getter(v64, v65, v66);
                  v70 = v69;
                  v72 = v71;
                  v88 = v59 & 0xFFFF00FFFFFF00FFLL | v88 & 0xFF000000FF00;
                  static NANAvailabilityEntry.committedEntry(on:for:)(v88, v60 & 1, v68, v69, v71, v110);
                  sub_1000124C8(v70, v72);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v51 = sub_100116E4C(0, *(v51 + 2) + 1, 1, v51);
                  }

                  v74 = *(v51 + 2);
                  v73 = *(v51 + 3);
                  if (v74 >= v73 >> 1)
                  {
                    v51 = sub_100116E4C((v73 > 1), v74 + 1, 1, v51);
                  }

                  *(v51 + 2) = v74 + 1;
                  v52 = &v51[56 * v74];
                  v53 = v110[0];
                  v54 = v110[1];
                  v55 = v110[2];
                  v52[80] = v111;
                  *(v52 + 3) = v54;
                  *(v52 + 4) = v55;
                  *(v52 + 2) = v53;
                }
              }
            }
          }

          v50 += 8;
          --v49;
        }

        while (v49);
      }

      else
      {

        v51 = _swiftEmptyArrayStorage;
      }

      v4 = v84;
      v3 = v85;
      v5 = v89;
      v7 = v82;
      v6 = v83;
      if (*(v51 + 2))
      {
        v75 = NANAttribute.Availability.Control.committedChange.unsafeMutableAddressor();
        v76.rawValue = NANAttribute.Availability.Control.init(mapID:with:)(mapID, v75->rawValue).rawValue;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v77 = v87;
        }

        else
        {
          v77 = sub_100116F70(0, *(v87 + 2) + 1, 1, v87);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_100116F70((v78 > 1), v79 + 1, 1, v77);
        }

        *(v77 + 2) = v79 + 1;
        v87 = v77;
        v80 = &v77[16 * v79];
        v80[32] = 0;
        *(v80 + 17) = v76;
        *(v80 + 5) = v51;
      }

      else
      {
      }

      v1 = v86;
    }

    else
    {

      v3 = v85;
      v1 = v86;
      v6 = v83;
      v4 = v84;
      v5 = v89;
      v7 = v82;
    }

    goto LABEL_4;
  }

  v97 = v1[5];
  v96 = *(v1 + 9);
  v94 = *(v1 + 6) | (*(v1 + 14) << 32);
  v95 = *(v1 + 8) | (*(v1 + 18) << 32);
  v12 = *(v1 + 21);
  v13 = *(v1 + 20);
  v14 = *(v1 + 4);
  v15 = v13 << 32;
  v93 = v12 << 40;

  v16 = 0;
  v17 = (v10 + 71);
  v92 = v14 | v15;
  v18 = &_swiftEmptyDictionarySingleton;
  v19 = v107;
  v20 = v105;
  v21 = v98;
  v90 = v11;
  v91 = v10;
  while (v16 < *(v10 + 16))
  {
    v22 = *(v17 - 23);
    v108 = *(v17 - 15);
    v106 = *(v17 - 7);
    v104 = *(v17 - 3);
    v103 = *(v17 - 2);
    v102 = *(v17 - 1);
    v101 = *v17;
    v19 = v19 & 0xFFFF000000000000 | v92 | v93;
    v20 = v20 & 0xFFFF000000000000 | v94;
    v21 = v21 & 0xFFFF000000000000 | v95;
    v23 = RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(*(v17 - 39), *(v17 - 31), v96, mapID, v19, v20, v21, v97);
    if ((v23 & 0xFF00000000) == 0x300000000)
    {
      goto LABEL_11;
    }

    v24 = v23;
    v99 = v21;
    v25 = v20;
    v26 = v19;
    v27 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v27;
    v30 = sub_1003E09BC(v24 & 0xFFFFFFFFFFFFLL);
    v31 = *(v27 + 2);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_58;
    }

    v34 = v29;
    if (*(v27 + 3) >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v27;
        if ((v29 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_10046B4A4();
        v18 = v109;
        if ((v34 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_100310664(v33, isUniquelyReferenced_nonNull_native);
      v18 = v109;
      v35 = sub_1003E09BC(v24 & 0xFFFFFFFFFFFFLL);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_62;
      }

      v30 = v35;
      if ((v34 & 1) == 0)
      {
LABEL_21:
        *&v18[8 * (v30 >> 6) + 64] |= 1 << v30;
        v37 = *(v18 + 6) + 8 * v30;
        *v37 = v24;
        *(v37 + 4) = BYTE4(v24);
        *(v37 + 5) = BYTE5(v24);
        v38 = *(v18 + 7) + 24 * v30;
        *v38 = xmmword_1004841D0;
        *(v38 + 16) = 0;
        v39 = *(v18 + 2);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_59;
        }

        *(v18 + 2) = v41;
      }
    }

    TimeBitmap.SlotsView.formUnion(_:)(v22, v108, v106 | (v104 << 32) | (v103 << 40) | (v102 << 48) | (v101 << 56));
    v19 = v26;
    v20 = v25;
    v21 = v99;
    v11 = v90;
    v10 = v91;
LABEL_11:
    ++v16;
    v17 += 40;
    if (v11 == v16)
    {
      v98 = v21;

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10002A264(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002A440(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10046CAA8();
      goto LABEL_7;
    }

    sub_1003129D0(v17, a3 & 1);
    v23 = sub_10002A440(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002DD860(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  sub_100002A00(v21);

  return sub_100029954(a1, v21);
}

unint64_t sub_10002A440(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100085198(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002A4D8(a1, v2);
}

unint64_t sub_10002A4D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_100085198(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_10002A698()
{
  sub_10002AA40(v35);
  v38 = v36;
  v39 = v37;
  sub_10002AC5C(&v38, v41);
  sub_10002ACB8(v35);
  v33 = v38;
  v34 = v39;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + *(*Strong + 744)) == 1)
    {
      if (sub_10002ACE8(v33 | (BYTE4(v33) << 32) | (BYTE5(v33) << 40), DWORD2(v33) | (WORD6(v33) << 32)))
      {
        v2 = sub_100019B10();
        RadioResources.SymbolicChannel.Resolver.primaryChannel.setter(v2 & 0xFFFFFFFFFFFFLL);
        v3 = sub_10002AF00();
        RadioResources.SymbolicChannel.Resolver.secondaryChannel.setter(v3 & 0xFFFFFFFFFFFFLL);
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = (v0 + qword_1005960F0);
  v6 = *(v0 + qword_1005960F0 + 8) & 1;
  v7 = *(v0 + qword_1005960F0 + 9) & 1;
  *&v29 = &_swiftEmptyDictionarySingleton;
  BYTE8(v29) = v6;
  BYTE9(v29) = v7;
  LODWORD(v30) = v33;
  WORD2(v30) = WORD2(v33);
  WORD6(v30) = WORD6(v33);
  DWORD2(v30) = DWORD2(v33);
  WORD2(v31) = WORD2(v34);
  LODWORD(v31) = v34;
  *(&v31 + 1) = *(&v34 + 1);
  v32 = _swiftEmptyArrayStorage;
  v8 = qword_1005960F8;
  swift_beginAccess();
  v9 = *(v0 + v8);

  sub_10002AF5C(v9, &v29);

  v41[0] = v29;
  v41[1] = v30;
  v41[2] = v31;
  v42 = v32;
  sub_10002996C(v41, v40);
  sub_10002B214(v41);
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    if (*(v10 + *(*v10 + 744)) == 1 && v4)
    {
      v11 = v10;
      v12 = (sub_10002AF00() & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)() & 1) != 0;
      v13 = v11 + *(*v11 + 632);
      swift_beginAccess();
      v14 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
      LOBYTE(v25) = *(v13 + *(v14 + 40));
      BYTE1(v25) = v12;
      MutableDriverProperty.wrappedValue.setter(&v25, v14);
      swift_endAccess();
      v15 = *v5;
      v16 = v5[1];
      v17 = v5[2];
      v18 = v5[3];
      v19 = v5[4];
      v20 = v5[5];
      v21 = v5[6];
      v40[0] = v15;
      v40[1] = v16;
      v40[2] = v17;
      v40[3] = v18;
      v40[4] = v19;
      v40[5] = v20;
      v40[6] = v21;
      *&v25 = v15;
      *(&v25 + 1) = v16;
      *&v26 = v17;
      *(&v26 + 1) = v18;
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v28 = v21;
      sub_10002996C(&v25, &v24);
      v22 = sub_100029B78();
      sub_1000299A4(v15, v16, v17, v18, v19, v20, v21);
      sub_1000306E8(v22);
    }
  }

  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  return sub_10002ACB8(&v25);
}

uint64_t sub_10002AA40@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + qword_1005960F0);
  v4 = *(v1 + qword_1005960F0);
  v5 = *(v1 + qword_1005960F0 + 8);
  v7 = *(v1 + qword_1005960F0 + 16);
  v6 = *(v1 + qword_1005960F0 + 24);
  v8 = *(v1 + qword_1005960F0 + 32);
  v9 = *(v1 + qword_1005960F0 + 40);
  v10 = *(v1 + qword_1005960F0 + 48);
  if (v4)
  {
    v33 = v7 >> 40;
    v34 = HIDWORD(v7);
    v11 = *(v1 + qword_1005960F0);
    v12 = v5;
    v13 = (v5 >> 8) & 1;
    v14 = v7;
    v15 = v6;
    v16 = v8;
    v17 = v9;
    v18 = v10;
  }

  else
  {
    v32 = *(v1 + qword_1005960F0 + 8);
    v30 = *(v1 + qword_1005960F0 + 32);
    v31 = *(v1 + qword_1005960F0 + 24);
    v13 = *(v1 + qword_1005960F0 + 40);
    v19 = *(v1 + qword_1005960F0 + 48);
    v20 = Channel.nanPrimary.unsafeMutableAddressor();
    v21 = *v20;
    v22 = *(v20 + 2);
    v36 = &_swiftEmptyDictionarySingleton;
    LOWORD(v37) = 0;
    DWORD2(v37) = v21;
    WORD6(v37) = v22;
    WORD2(v38) = 3;
    LODWORD(v38) = 0;
    WORD6(v38) = 3;
    DWORD2(v38) = 0;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v23 = *v3;
    v24 = v3[1];
    v25 = v3[3];
    v26 = v3[4];
    v27 = v3[5];
    v33 = v3[6];
    v34 = v3[2];
    *v3 = &_swiftEmptyDictionarySingleton;
    *(v3 + 1) = v37;
    *(v3 + 3) = v38;
    v3[5] = _swiftEmptyArrayStorage;
    v3[6] = _swiftEmptyArrayStorage;
    sub_10002996C(&v36, v35);
    sub_1000299A4(v23, v24, v34, v25, v26, v27, v33);
    v10 = v19;
    v9 = v13;
    v8 = v30;
    v6 = v31;
    v5 = v32;
    v4 = 0;
    v14 = DWORD2(v37);
    LOBYTE(v34) = BYTE12(v37);
    LOBYTE(v33) = BYTE13(v37);
    v15 = v38 | (WORD2(v38) << 32);
    v16 = DWORD2(v38) | (WORD6(v38) << 32);
    v17 = v39;
    v18 = v40;
    LOBYTE(v13) = BYTE1(v37);
    v12 = v37;
    v11 = v36;
  }

  v28 = v12 & 1;
  result = sub_10002AC10(v4, v5, v7, v6, v8, v9, v10);
  *a1 = v11;
  *(a1 + 8) = v28;
  *(a1 + 9) = v13;
  *(a1 + 16) = v14;
  *(a1 + 20) = v34;
  *(a1 + 21) = v33;
  *(a1 + 24) = v15;
  *(a1 + 28) = WORD2(v15);
  *(a1 + 32) = v16;
  *(a1 + 36) = WORD2(v16);
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_10002AC10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002ACE8(unint64_t a1, unint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_100019B10();
    if (a1 != v5 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      goto LABEL_22;
    }

    if (BYTE5(a1) <= 3u)
    {
      if (BYTE5(a1) == 2)
      {
        if (BYTE5(v5) != 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (BYTE5(a1) != 3)
        {
LABEL_20:
          if (BYTE5(v5) - 2 < 5 || (((v5 >> 40) ^ (a1 >> 40)) & 1) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        if (BYTE5(v5) != 3)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      switch(BYTE5(a1))
      {
        case 4u:
          if (BYTE5(v5) != 4)
          {
            goto LABEL_22;
          }

          break;
        case 5u:
          if (BYTE5(v5) != 5)
          {
            goto LABEL_22;
          }

          break;
        case 6u:
          if (BYTE5(v5) == 6)
          {
            break;
          }

LABEL_22:

          return 1;
        default:
          goto LABEL_20;
      }
    }

LABEL_25:
    v6 = sub_10002AF00();

    v7 = v6 & 0xFF00000000;
    if ((a2 & 0xFF00000000) == 0x300000000)
    {
      return v7 != 0x300000000;
    }

    if (v7 != 0x300000000 && a2 == v6 && (0x801004u >> ((a2 >> 29) & 0xF8)) == (0x801004u >> ((v6 >> 29) & 0xF8)))
    {
      if (BYTE5(a2) <= 3u)
      {
        if (BYTE5(a2) == 2)
        {
          return BYTE5(v6) != 2;
        }

        if (BYTE5(a2) == 3)
        {
          return BYTE5(v6) != 3;
        }
      }

      else
      {
        switch(BYTE5(a2))
        {
          case 4u:
            return BYTE5(v6) != 4;
          case 5u:
            return BYTE5(v6) != 5;
          case 6u:
            return BYTE5(v6) != 6;
        }
      }

      if (BYTE5(v6) - 2 >= 5 && (((v6 >> 40) ^ (a2 >> 40)) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_10002AF00()
{
  v1 = *(*v0 + 624);
  v2 = (v0 + *(sub_10005DC58(&qword_10059A660, &qword_1004B3860) + 40) + v1);
  return *v2 | (*(v2 + 2) << 32);
}

uint64_t sub_10002AF5C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10005DC58(&qword_1005962F8, &unk_1004B0760);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = sub_100016290(v4, &qword_1005962F8, &unk_1004B0760))
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(a1 + 48);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 16))(v4, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = *(a1 + 56) + 40 * v13;
    v17 = &v4[*(v21 + 48)];
    sub_10002B154(v16, v17);
    v18 = *(v17 + 3);
    v19 = *(v17 + 4);
    sub_100029B34(v17, v18);
    (*(v19 + 8))(v22, &type metadata for RadioResourceSchedule, &off_100596298, v18, v19);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B214(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_10002AA40(v16);
  v6 = v1 + qword_1005960F0;
  v7 = *(v1 + qword_1005960F0);
  v8 = *(v1 + qword_1005960F0 + 8);
  v9 = *(v1 + qword_1005960F0 + 16);
  v10 = *(v1 + qword_1005960F0 + 24);
  v11 = *(v1 + qword_1005960F0 + 32);
  v12 = *(v1 + qword_1005960F0 + 40);
  v13 = *(v1 + qword_1005960F0 + 48);
  v14 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v14;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_1000299A4(v7, v8, v9, v10, v11, v12, v13);
  sub_1000299F0(v16);
  return sub_10002ACB8(v16);
}

uint64_t sub_10002B29C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v5 = 0;
      do
      {
        if (*(a1 + v5 + 39))
        {
          v6 = 0x100000000000000;
        }

        else
        {
          v6 = 0;
        }

        v7 = v6 | (*(a1 + v5 + 38) << 48) | (*(a1 + v5 + 37) << 40) | (*(a1 + v5 + 36) << 32);
        if (*(a2 + v5 + 39))
        {
          v8 = 0x100000000000000;
        }

        else
        {
          v8 = 0;
        }

        v9 = static RadioResources.PreferredChannel.__derived_struct_equals(_:_:)(v7 | *(a1 + v5 + 32), v8 | (*(a2 + v5 + 38) << 48) | (*(a2 + v5 + 37) << 40) | (*(a2 + v5 + 36) << 32) | *(a2 + v5 + 32));
        if ((v9 & 1) == 0)
        {
          break;
        }

        v5 += 8;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002B38C()
{
  sub_10002AA40(v8);
  v0 = sub_100029B78();
  sub_10002ACB8(v8);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if ((*(Strong + *(*Strong + 744)) & 1) == 0)
  {
  }

  v2 = Strong;
  v3 = (sub_10002AF00() & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)() & 1) != 0;
  v5 = v2 + *(*v2 + 632);
  swift_beginAccess();
  v6 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
  v7[0] = *(v5 + *(v6 + 40));
  v7[1] = v3;
  MutableDriverProperty.wrappedValue.setter(v7, v6);
  swift_endAccess();
  sub_1000306E8(v0);
}

uint64_t sub_10002B4C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002B508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_10002B550@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, *(v3 + 80), *(v3 + 88), v4);
  sub_10002B68C();
  v5 = type metadata accessor for Dictionary.Keys();

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v5);
  v8 = sub_10002B84C(sub_100374904, 0, v5, &type metadata for DNSRecords.Identifier, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);

  *a1 = v8;
  return result;
}

unint64_t sub_10002B68C()
{
  result = qword_10058AC58;
  if (!qword_10058AC58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.PTR, &type metadata for DNSRecords.PTR, v0, v1);
    atomic_store(result, &qword_10058AC58);
  }

  return result;
}

uint64_t sub_10002B6E0(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  v5 = *a2;
  if (a2[8])
  {
    v6 = 0;
    v7 = 0;
    *(&v9 + 1) = a2[3];
    *&v9 = *(a2 + 1);
    v8 = v9 >> 32;
    v10 = v5 | (v9 << 32);
    v11 = 28;
    v12 = 30;
    LODWORD(v5) = 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v8 = 0;
    v7 = 16;
    v6 = 2;
  }

  v16 = 1;
  v17 = a1;
  v18 = BYTE2(a1);
  v19 = BYTE3(a1);
  v20 = BYTE4(a1);
  v21 = BYTE5(a1);
  v22 = 0;
  v23 = v7;
  v24 = v6;
  v25 = 0;
  v26 = v5;
  v27 = 0;
  v28 = v11;
  v29 = v12;
  v30 = 0;
  v31 = 0;
  v32 = v10;
  v33 = v8;
  v34 = 0;
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a3, &v16, &v35, 0, v13, v14);
}

uint64_t sub_10002B84C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  __chkstk_darwin();
  v35 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = dispatch thunk of Collection.count.getter();
  if (!v18)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v40 = v18;
  v44 = ContiguousArray.init()();
  v31 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v40);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v26 = v10;
    v27 = a5;
    v20 = 0;
    v32 = (v41 + 16);
    v33 = (v41 + 8);
    v34 = v8;
    while (!__OFADD__(v20, 1))
    {
      v41 = v20 + 1;
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v13;
      v23 = v13;
      v24 = AssociatedTypeWitness;
      (*v32)(v22);
      v21(v43, 0);
      v25 = v42;
      v37(v23, v39);
      if (v25)
      {
        (*v33)(v23, v24);
        (*(v29 + 8))(v17, v30);

        return (*(v26 + 32))(v28, v39, v27);
      }

      v42 = 0;
      (*v33)(v23, v24);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v20;
      v13 = v23;
      if (v41 == v40)
      {
        (*(v29 + 8))(v17, v30);
        return v44;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002BC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v6;
    v29 = *(a1 + 36);
    v9 = *(a1 + 48) + 24 * v5;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);

    DNSRecords.Identifier.description.getter(v10, v11, v12);
    v14 = v13;
    v16 = v15;

    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_1000C0464((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v8);
    if ((v20 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v5 & 0x3F));
    if (v21)
    {
      v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v8 << 6;
      v23 = v8 + 1;
      v24 = (a1 + 64 + 8 * v8);
      while (v23 < (v7 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_10002BEB8(v5, v29, 0);
          v7 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v5, v29, 0);
    }

LABEL_4:
    v6 = v28 + 1;
    v5 = v7;
    if (v28 + 1 == v27)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t sub_10002BEB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10002BEC4(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 49);
    do
    {
      v4 = *(v3 - 1);
      v5 = *(v3 - 9);
      v6 = *(v3 - 17);
      v7 = *v3;
      v3 += 24;
      v8 = v4 | (v7 << 8);

      sub_10046F77C(&v10, v6, v5, v8);

      --v2;
    }

    while (v2);
    return v11;
  }

  return a2;
}

uint64_t sub_10002BF54()
{
  v1 = swift_slowAlloc();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x1D2uLL, v1, v1 + 0x2000, 0, v2, v3);

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *(v1 + v5);
    if (v7)
    {
      break;
    }

LABEL_2:
    if (++v5 == 0x2000)
    {

      return v6;
    }
  }

  v8 = 0;
  while (((1 << v8) & ~v7) != 0)
  {
LABEL_6:
    if (++v8 == 8)
    {
      goto LABEL_2;
    }
  }

  v9 = (8 * v5) + v8;
  if ((v9 & 0x10000) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100117180(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_100117180((v10 > 1), v11 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v11 + 1;
    *&v6[2 * v11 + 32] = v9;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C184(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v13[0] = a1;
  v13[1] = a2;
  memset(&v13[2], 0, 24);
  v14 = a3;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = DispatchWorkItem.init(flags:block:)();

  v10 = *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v10(v13, v7);
}

void sub_10002C354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  v5 = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, v5);
}

uint64_t sub_10002C3F0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  sub_10002C184(a5, v12, a6, a7);
}

void sub_10002C48C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    if (v7)
    {
      v8 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
      v9 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue);
      *v4 = v9;
      (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
      sub_10001F89C(v7, v8);
      v10 = v9;
      LOBYTE(v9) = _dispatchPreconditionTest(_:)();
      (*(v2 + 8))(v4, v1);
      if ((v9 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v11 = v6;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v6;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "%@ was invalidated", v14, 0xCu);
        sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
      }

      v7();
      sub_100010520(v7, v8);
    }
  }
}

id sub_10002C6E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger, v1, v3);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ was destroyed", v9, 0xCu);
    sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
  }

  (*(v2 + 8))(v5, v1);
  [*&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] invalidate];
  v12 = type metadata accessor for XPCSession(0);
  v14.receiver = v6;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_10002CA18(uint64_t result)
{
  if (*(v1 + 9))
  {
    return result;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_10002CA2C(uint64_t result, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  if (!a2)
  {
    __break(1u);
    return result;
  }

  v4 = v3;
  LOBYTE(isUniquelyReferenced_nonNull_native) = a2;
  v6 = result;
  v7 = *(v3 + 4);
  v8 = *(v3 + 20);
  v9 = *(v3 + 21);
  v10 = *(v3 + 6) | (*(v3 + 14) << 32);
  v11 = *(v4 + 8) | (*(v4 + 18) << 32);
  v12 = *(v4 + 5);
  v13 = *(v4 + 9);
  v14 = NANMapID.primary.unsafeMutableAddressor();
  result = RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(v6, isUniquelyReferenced_nonNull_native, v13, *v14, v7 | (v8 << 32) | (v9 << 40), v10, v11, v12);
  if ((result & 0xFF00000000) != 0x300000000)
  {
    result = sub_10002CDAC(result & 0xFFFFFFFFFFFFLL);
    if ((result & 0x100) == 0)
    {
      v15 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      *&v40 = *v4;
      v17 = sub_10002D078(v15);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_35;
      }

      v6 = v18;
      if (v16[3] >= v22)
      {
        v8 = a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10002D154(v22, isUniquelyReferenced_nonNull_native);
        v16 = v40;
        v17 = sub_10002D078(v15);
        v8 = a3;
        if ((v6 & 1) != (v23 & 1))
        {
LABEL_7:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_8;
        }
      }

      *v4 = v16;
      if (v6)
      {
        return (v8)(v16[7] + 8 * v17);
      }

      goto LABEL_29;
    }
  }

LABEL_8:
  if (isUniquelyReferenced_nonNull_native != 2 || v6 >= 2)
  {
    v40 = *v4;
    v17 = sub_1000303DC();
    v15 = v17;
    v24 = *(v17 + 16);
    if (v24)
    {
      v25 = 0;
      v8 = a3;
      while (1)
      {
        if (v25 >= *(v15 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v37 = v17;
          sub_10046C94C();
          v17 = v37;
          v16 = v40;
          *v4 = v40;
          if (v6)
          {
            return (v8)(v16[7] + 8 * v17);
          }

LABEL_29:
          v36 = v17;
          sub_10002D508(v17, v15, _swiftEmptyArrayStorage, v16);
          v17 = v36;
          return (v8)(v16[7] + 8 * v17);
        }

        v6 = *(v15 + v25 + 32);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v4;
        v39 = *v4;
        v17 = sub_10002D078(v6);
        v29 = v27[2];
        v30 = (v28 & 1) == 0;
        v21 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v21)
        {
          goto LABEL_33;
        }

        LOBYTE(isUniquelyReferenced_nonNull_native) = v28;
        if (v27[3] < v31)
        {
          break;
        }

        if (v26)
        {
          goto LABEL_19;
        }

        v35 = v17;
        sub_10046C94C();
        v17 = v35;
        v27 = v39;
        *v4 = v39;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

LABEL_20:
        v27[(v17 >> 6) + 8] |= 1 << v17;
        *(v27[6] + v17) = v6;
        *(v27[7] + 8 * v17) = _swiftEmptyArrayStorage;
        v33 = v27[2];
        v21 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v21)
        {
          goto LABEL_34;
        }

        v27[2] = v34;
LABEL_12:
        ++v25;
        v17 = a3(v27[7] + 8 * v17);
        if (v24 == v25)
        {
          goto LABEL_24;
        }
      }

      sub_10002D154(v31, v26);
      v27 = v39;
      v17 = sub_10002D078(v6);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v32 & 1))
      {
        goto LABEL_7;
      }

LABEL_19:
      *v4 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_24:
  }

  return result;
}